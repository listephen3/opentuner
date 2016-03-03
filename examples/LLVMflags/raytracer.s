	.file	"raytracer.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin0:
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movl	$13, %edi
	callq	srand48
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
.Ltmp0:
	movl	$52, %edi
	callq	_Znwm
.Ltmp1:
# BB#1:
	movl	$0, (%rax)
	movl	$-971223040, 4(%rax)    # imm = 0xFFFFFFFFC61C5000
	movl	$-1046478848, 8(%rax)   # imm = 0xFFFFFFFFC1A00000
	movl	$1176256512, 12(%rax)   # imm = 0x461C4000
	movl	$1287568416, 16(%rax)   # imm = 0x4CBEBC20
	movl	$1045220557, 20(%rax)   # imm = 0x3E4CCCCD
	movl	$1045220557, 24(%rax)   # imm = 0x3E4CCCCD
	movl	$1045220557, 28(%rax)   # imm = 0x3E4CCCCD
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_5
# BB#2:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_4
# BB#3:
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_4:
	addq	$8, -56(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-56(%rbp), %rsi
.Ltmp2:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp3:
.LBB0_6:
.Ltmp4:
	movl	$52, %edi
	callq	_Znwm
.Ltmp5:
# BB#7:
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
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_11
# BB#8:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_10
# BB#9:
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_10:
	addq	$8, -56(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-56(%rbp), %rsi
.Ltmp6:
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp7:
.LBB0_12:
.Ltmp8:
	movl	$52, %edi
	callq	_Znwm
.Ltmp9:
# BB#13:
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$-1082130432, 4(%rax)   # imm = 0xFFFFFFFFBF800000
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1073741824, 12(%rax)   # imm = 0x40000000
	movl	$1082130432, 16(%rax)   # imm = 0x40800000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1061326684, 24(%rax)   # imm = 0x3F428F5C
	movl	$1055622431, 28(%rax)   # imm = 0x3EEB851F
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_17
# BB#14:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_16
# BB#15:
	movq	-88(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_16:
	addq	$8, -56(%rbp)
	jmp	.LBB0_18
.LBB0_17:
	movq	-56(%rbp), %rsi
.Ltmp10:
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp11:
.LBB0_18:
.Ltmp12:
	movl	$52, %edi
	callq	_Znwm
.Ltmp13:
# BB#19:
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$0, 4(%rax)
	movl	$-1043857408, 8(%rax)   # imm = 0xFFFFFFFFC1C80000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1059481190, 20(%rax)   # imm = 0x3F266666
	movl	$1061494456, 24(%rax)   # imm = 0x3F451EB8
	movl	$1064849900, 28(%rax)   # imm = 0x3F7851EC
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_23
# BB#20:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_22
# BB#21:
	movq	-96(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_22:
	addq	$8, -56(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	movq	-56(%rbp), %rsi
.Ltmp14:
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp15:
.LBB0_24:
.Ltmp16:
	movl	$52, %edi
	callq	_Znwm
.Ltmp17:
# BB#25:
	movl	$-1062207488, (%rax)    # imm = 0xFFFFFFFFC0B00000
	movl	$0, 4(%rax)
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1063675494, 24(%rax)   # imm = 0x3F666666
	movl	$1063675494, 28(%rax)   # imm = 0x3F666666
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_29
# BB#26:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_28
# BB#27:
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_28:
	addq	$8, -56(%rbp)
	jmp	.LBB0_30
.LBB0_29:
	movq	-56(%rbp), %rsi
.Ltmp18:
	leaq	-64(%rbp), %rdi
	leaq	-104(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp19:
.LBB0_30:
.Ltmp20:
	movl	$52, %edi
	callq	_Znwm
.Ltmp21:
# BB#31:
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
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_35
# BB#32:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_34
# BB#33:
	movq	-112(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_34:
	addq	$8, -56(%rbp)
	jmp	.LBB0_36
.LBB0_35:
	movq	-56(%rbp), %rsi
.Ltmp22:
	leaq	-64(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp23:
.LBB0_36:
.Ltmp24:
	leaq	-64(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
.Ltmp25:
# BB#37:
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_39
# BB#38:
	movl	$.L__unnamed_1, %edi
	callq	puts
.LBB0_39:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	movq	-32(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	cmpq	-32(%rbp), %rbx
	je	.LBB0_43
# BB#40:
	leaq	-32(%rbp), %r14
	leaq	-40(%rbp), %r15
	.align	16, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-8(%rax), %rdi
	addq	$-8, %rax
	movq	%rax, -56(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_42
# BB#49:                                #   in Loop: Header=BB0_41 Depth=1
	callq	_ZdlPv
.LBB0_42:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	movq	-32(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	cmpq	-32(%rbp), %rbx
	jne	.LBB0_41
.LBB0_43:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_45
# BB#44:
	callq	_ZdlPv
.LBB0_45:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_46:
.Ltmp26:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_48
# BB#47:
	movq	%rax, %rdi
	callq	_ZdlPv
.LBB0_48:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Ltmp36:
	.size	main, .Ltmp36-main
	.cfi_endproc
.Leh_func_end0:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
.Lset0 = .Ltmp0-.Leh_func_begin0        # >> Call Site 1 <<
	.long	.Lset0
.Lset1 = .Ltmp25-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp25
	.long	.Lset1
.Lset2 = .Ltmp26-.Leh_func_begin0       #     jumps to .Ltmp26
	.long	.Lset2
	.byte	0                       #   On action: cleanup
.Lset3 = .Ltmp25-.Leh_func_begin0       # >> Call Site 2 <<
	.long	.Lset3
.Lset4 = .Leh_func_end0-.Ltmp25         #   Call between .Ltmp25 and .Leh_func_end0
	.long	.Lset4
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	-4656421774475395072    # double -0.0020833334419876337
.LCPI1_2:
	.quad	4611686018427387904     # double 2
.LCPI1_3:
	.quad	4607182418800017408     # double 1
.LCPI1_4:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI1_5:
	.quad	4564848582410108928     # double 0.0015625000232830644
.LCPI1_6:
	.quad	-4616189618054758400    # double -1
.LCPI1_7:
	.quad	4608683618854764544     # double 1.3333333730697632
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_8:
	.long	1065353216              # float 1
.LCPI1_9:
	.long	1132396544              # float 255
.LCPI1_10:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_11:
	.zero	16
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI1_3(%rip), %xmm1
	leaq	-56(%rbp), %r12
	leaq	-76(%rbp), %r13
	movq	%rax, %r14
	movq	%rax, -136(%rbp)        # 8-byte Spill
	.align	16, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	vmovsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	vaddsd	.LCPI1_0(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_1(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_2(%rip), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LCPI1_4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)       # 16-byte Spill
	xorl	%r15d, %r15d
	vxorps	%xmm0, %xmm0, %xmm0
	.align	16, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	%xmm0, -88(%rbp)        # 8-byte Spill
	vaddsd	.LCPI1_0(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_5(%rip), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vaddsd	.LCPI1_6(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_4(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_7(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovaps	-112(%rbp), %xmm1       # 16-byte Reload
	vinsertps	$16, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0],xmm0[2,3]
	vmovq	%xmm0, -56(%rbp)
	movl	$-1082130432, -48(%rbp) # imm = 0xFFFFFFFFBF800000
	vmovq	-56(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI1_8(%rip), %xmm0, %xmm0
	vucomiss	.LCPI1_10, %xmm0
	jbe	.LBB1_6
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI1_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-56(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -56(%rbp)
	vmulss	-52(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -52(%rbp)
	vmulss	-48(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovq	%xmm0, -72(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	leaq	-72(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, (%r14,%r15)
	vmovss	%xmm1, 8(%r14,%r15)
	vmovsd	.LCPI1_3(%rip), %xmm1
	vmovsd	-88(%rbp), %xmm0        # 8-byte Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$12, %r15
	cmpl	$7680, %r15d            # imm = 0x1E00
	jne	.LBB1_4
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	addq	$7680, %r14             # imm = 0x1E00
	vmovsd	-128(%rbp), %xmm0       # 8-byte Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-120(%rbp), %rcx        # 8-byte Reload
	incl	%ecx
	cmpl	$480, %ecx              # imm = 0x1E0
	jne	.LBB1_3
# BB#8:
	xorl	%ebx, %ebx
	vmovss	.LCPI1_9(%rip), %xmm0
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	$8, %esi
	.align	16, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	imull	$31, %ebx, %ecx
	movl	$255, %eax
	vmovss	.LCPI1_8(%rip), %xmm1
	vucomiss	-8(%rdi,%rsi), %xmm1
	movl	$255, %edx
	jbe	.LBB1_11
# BB#10:                                #   in Loop: Header=BB1_9 Depth=1
	vmulss	-8(%rdi,%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rdx
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=1
	addl	%edx, %ecx
	imull	$31, %ecx, %ecx
	vmovss	.LCPI1_8(%rip), %xmm1
	vucomiss	-4(%rdi,%rsi), %xmm1
	jbe	.LBB1_13
# BB#12:                                #   in Loop: Header=BB1_9 Depth=1
	vmulss	-4(%rdi,%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rax
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=1
	addl	%eax, %ecx
	imull	$31, %ecx, %ebx
	movl	$255, %eax
	vmovss	.LCPI1_8(%rip), %xmm1
	vucomiss	(%rdi,%rsi), %xmm1
	jbe	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_9 Depth=1
	vmulss	(%rdi,%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rax
.LBB1_15:                               #   in Loop: Header=BB1_9 Depth=1
	addl	%eax, %ebx
	addq	$12, %rsi
	cmpq	$3686408, %rsi          # imm = 0x384008
	jne	.LBB1_9
# BB#16:
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
.Ltmp48:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Ltmp48-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,@function
_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_: # @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	ret
.Ltmp54:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_, .Ltmp54-_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1073741824              # float 2
.LCPI3_2:
	.long	2139095040              # float +Inf
.LCPI3_5:
	.long	1065353216              # float 1
.LCPI3_7:
	.long	1063675494              # float 0.899999976
.LCPI3_8:
	.long	1036831949              # float 0.100000001
.LCPI3_10:
	.long	953267991               # float 9.99999974E-5
.LCPI3_11:
	.long	1063828014              # float 0.909090876
.LCPI3_12:
	.long	1066192077              # float 1.10000002
.LCPI3_15:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_1:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.zero	4
	.zero	4
.LCPI3_4:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
.LCPI3_9:
	.long	953267991               # float 9.99999974E-5
	.long	953267991               # float 9.99999974E-5
	.zero	4
	.zero	4
.LCPI3_13:
	.long	1065353216              # float 1
	.long	2147483648              # float -0
	.zero	4
	.zero	4
.LCPI3_14:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_6:
	.quad	4613937818241073152     # double 3
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	8(%rbx), %rax
	subq	(%rbx), %rax
	sarq	$3, %rax
	vmovss	.LCPI3_0(%rip), %xmm1
	vmovaps	.LCPI3_1(%rip), %xmm0
	je	.LBB3_45
# BB#1:
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	vmovss	.LCPI3_2(%rip), %xmm0
	vmovaps	%xmm0, -176(%rbp)       # 16-byte Spill
	movl	$1, %r15d
	.align	16, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	leal	-1(%r15), %r13d
	movl	$2139095040, -44(%rbp)  # imm = 0x7F800000
	movl	$2139095040, -48(%rbp)  # imm = 0x7F800000
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB3_7
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	-44(%rbp), %xmm0
	jbe	.LBB3_5
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	vmovss	-48(%rbp), %xmm0
	vmovss	%xmm0, -44(%rbp)
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	vmovaps	-176(%rbp), %xmm0       # 16-byte Reload
	vucomiss	-44(%rbp), %xmm0
	jbe	.LBB3_7
# BB#6:                                 #   in Loop: Header=BB3_2 Depth=1
	vmovss	-44(%rbp), %xmm0
	vmovaps	%xmm0, -176(%rbp)       # 16-byte Spill
	movl	%r13d, %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	movl	%r15d, %eax
	movq	8(%rbx), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	incl	%r15d
	cmpq	%rcx, %rax
	jb	.LBB3_2
# BB#8:
	movq	-192(%rbp), %r15        # 8-byte Reload
	testq	%r15, %r15
	vmovaps	.LCPI3_1(%rip), %xmm0
	vmovss	.LCPI3_0(%rip), %xmm1
	je	.LBB3_45
# BB#9:
	vmovq	(%r14), %xmm0
	vmovdqa	-176(%rbp), %xmm2       # 16-byte Reload
	vpshufd	$0, %xmm2, %xmm1        # xmm1 = xmm2[0,0,0,0]
	vmulps	%xmm1, %xmm0, %xmm0
	vmulss	8(%r14), %xmm2, %xmm1
	vmovq	(%r12), %xmm2
	vaddps	%xmm0, %xmm2, %xmm2
	vaddss	8(%r12), %xmm1, %xmm3
	vmovq	(%r15), %xmm0
	vsubps	%xmm0, %xmm2, %xmm6
	vsubss	8(%r15), %xmm3, %xmm5
	vmulps	%xmm6, %xmm6, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm5, %xmm5, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vucomiss	%xmm4, %xmm0
	ja	.LBB3_11
# BB#10:
	vmovss	%xmm3, -260(%rbp)       # 4-byte Spill
	vmovaps	%xmm2, -256(%rbp)       # 16-byte Spill
	vmovq	%xmm6, %rax
	vmovaps	%xmm5, %xmm3
	jmp	.LBB3_12
.LBB3_11:
	vmovss	%xmm3, -260(%rbp)       # 4-byte Spill
	vmovaps	%xmm2, -256(%rbp)       # 16-byte Spill
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovss	%xmm5, -228(%rbp)       # 4-byte Spill
	vmovaps	%xmm6, -176(%rbp)       # 16-byte Spill
	callq	sqrt
	vpxor	%xmm4, %xmm4, %xmm4
	vmovsd	.LCPI3_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovdqa	-176(%rbp), %xmm2       # 16-byte Reload
	vmulss	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, %ecx
	vpshufd	$1, %xmm2, %xmm1        # xmm1 = xmm2[1,0,0,0]
	vmulss	%xmm0, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	vmovss	-228(%rbp), %xmm1       # 4-byte Reload
	vmulss	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm3
.LBB3_12:
	vmovq	(%r14), %xmm1
	vmovq	%rax, %xmm0
	vmulps	%xmm0, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	8(%r14), %xmm3, %xmm2
	movq	%r14, %rcx
	vaddss	%xmm2, %xmm1, %xmm1
	vucomiss	%xmm4, %xmm1
	movq	-184(%rbp), %r12        # 8-byte Reload
	ja	.LBB3_14
# BB#13:
	xorl	%r14d, %r14d
	jmp	.LBB3_15
.LBB3_14:
	vxorps	.LCPI3_4(%rip), %xmm0, %xmm0
	vxorps	.LCPI3_4(%rip), %xmm3, %xmm3
	vmovq	%xmm0, %rax
	movb	$1, %r14b
.LBB3_15:
	vmovss	44(%r15), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB3_17
# BB#16:
	vmovss	48(%r15), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB3_28
.LBB3_17:
	cmpl	$4, (%r12)
	jle	.LBB3_18
.LBB3_28:
	vmovss	%xmm3, -228(%rbp)       # 4-byte Spill
	movq	8(%rbx), %rcx
	xorl	%r14d, %r14d
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	vmovaps	-256(%rbp), %xmm2       # 16-byte Reload
	vmovss	-260(%rbp), %xmm3       # 4-byte Reload
	je	.LBB3_29
# BB#30:
	vmovq	%rax, %xmm0
	vmovaps	%xmm0, -288(%rbp)       # 16-byte Spill
	vmulps	.LCPI3_9(%rip), %xmm0, %xmm0
	vmovss	-228(%rbp), %xmm1       # 4-byte Reload
	vmulss	.LCPI3_10(%rip), %xmm1, %xmm1
	vaddps	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm0, -176(%rbp)       # 16-byte Spill
	vaddss	%xmm1, %xmm3, %xmm0
	vmovss	%xmm0, -184(%rbp)       # 4-byte Spill
	vpxor	%xmm4, %xmm4, %xmm4
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	movl	%r14d, %r13d
	movq	(%rbx), %rcx
	movq	(%rcx,%r13,8), %rcx
	vmovss	32(%rcx), %xmm0
	vucomiss	%xmm4, %xmm0
	jbe	.LBB3_43
# BB#32:                                #   in Loop: Header=BB3_31 Depth=1
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rax
	vmovq	(%rax), %xmm0
	vsubps	%xmm2, %xmm0, %xmm0
	vmovss	8(%rax), %xmm1
	vsubss	%xmm3, %xmm1, %xmm1
	vmovq	%xmm0, -128(%rbp)
	vmovss	%xmm1, -120(%rbp)
	vmovq	-128(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm4, %xmm0
	jbe	.LBB3_34
# BB#33:                                #   in Loop: Header=BB3_31 Depth=1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI3_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-128(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -128(%rbp)
	vmulss	-124(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -124(%rbp)
	vmulss	-120(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -120(%rbp)
.LBB3_34:                               #   in Loop: Header=BB3_31 Depth=1
	movq	8(%rbx), %rax
	xorl	%r12d, %r12d
	subq	(%rbx), %rax
	sarq	$3, %rax
	vmovaps	.LCPI3_14(%rip), %xmm0
	vmovss	.LCPI3_5(%rip), %xmm1
	je	.LBB3_40
	.align	16, 0x90
.LBB3_35:                               #   Parent Loop BB3_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, %r14d
	je	.LBB3_38
# BB#36:                                #   in Loop: Header=BB3_35 Depth=2
	movl	%r12d, %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	vmovaps	-176(%rbp), %xmm0       # 16-byte Reload
	vmovq	%xmm0, -152(%rbp)
	vmovss	-184(%rbp), %xmm0       # 4-byte Reload
	vmovss	%xmm0, -144(%rbp)
	leaq	-152(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB3_37
.LBB3_38:                               #   in Loop: Header=BB3_35 Depth=2
	incl	%r12d
	movq	8(%rbx), %rax
	subq	(%rbx), %rax
	sarq	$3, %rax
	cmpq	%rax, %r12
	jb	.LBB3_35
# BB#39:                                #   in Loop: Header=BB3_31 Depth=1
	vmovaps	.LCPI3_14(%rip), %xmm0
	vmovss	.LCPI3_5(%rip), %xmm1
	jmp	.LBB3_40
.LBB3_37:                               #   in Loop: Header=BB3_31 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	.align	16, 0x90
.LBB3_40:                               #   in Loop: Header=BB3_31 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	vmovq	20(%rax), %xmm2
	vmulps	%xmm0, %xmm2, %xmm0
	vmulss	28(%rax), %xmm1, %xmm1
	vmovq	-128(%rbp), %xmm2
	vmovaps	-288(%rbp), %xmm3       # 16-byte Reload
	vmulps	%xmm2, %xmm3, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmovss	-228(%rbp), %xmm3       # 4-byte Reload
	vmulss	-120(%rbp), %xmm3, %xmm3
	vaddss	%xmm3, %xmm2, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	vucomiss	%xmm2, %xmm3
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jbe	.LBB3_42
# BB#41:                                #   in Loop: Header=BB3_31 Depth=1
	vmovdqa	%xmm3, %xmm2
.LBB3_42:                               #   in Loop: Header=BB3_31 Depth=1
	vpshufd	$0, %xmm2, %xmm3        # xmm3 = xmm2[0,0,0,0]
	vmulps	%xmm3, %xmm0, %xmm0
	vmulss	%xmm2, %xmm1, %xmm1
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rax
	vmovq	32(%rax), %xmm2
	vmulps	%xmm2, %xmm0, %xmm0
	vmulss	40(%rax), %xmm1, %xmm1
	vmovd	%edx, %xmm2
	vaddss	%xmm0, %xmm2, %xmm2
	vmovd	%xmm2, %esi
	vpshufd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0,0,0]
	vmovd	%ecx, %xmm2
	vaddss	%xmm0, %xmm2, %xmm0
	vmovd	%xmm0, %edx
	movq	%rdx, %rax
	shlq	$32, %rax
	orq	%rsi, %rax
	vmovd	%r15d, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %r15d
	vmovaps	-256(%rbp), %xmm2       # 16-byte Reload
	vmovss	-260(%rbp), %xmm3       # 4-byte Reload
	vpxor	%xmm4, %xmm4, %xmm4
.LBB3_43:                               #   in Loop: Header=BB3_31 Depth=1
	incl	%r14d
	movq	8(%rbx), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %r14
	jb	.LBB3_31
	jmp	.LBB3_44
.LBB3_18:
	movq	%rcx, %r13
	vmovq	(%r13), %xmm0
	vmovq	%rax, %xmm1
	vmovaps	%xmm1, -176(%rbp)       # 16-byte Spill
	vmulps	%xmm1, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	8(%r13), %xmm3, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI3_5(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI3_6(%rip), %xmm1
	vmovss	%xmm3, -228(%rbp)       # 4-byte Spill
	callq	pow
	vmovsd	%xmm0, -200(%rbp)       # 8-byte Spill
	vmovaps	-176(%rbp), %xmm3       # 16-byte Reload
	vmulps	.LCPI3_1(%rip), %xmm3, %xmm0
	vmovss	-228(%rbp), %xmm5       # 4-byte Reload
	vaddss	%xmm5, %xmm5, %xmm1
	vmovq	(%r13), %xmm2
	vmulps	%xmm3, %xmm2, %xmm3
	vpshufd	$1, %xmm3, %xmm4        # xmm4 = xmm3[1,0,0,0]
	vaddss	%xmm4, %xmm3, %xmm3
	vmovss	8(%r13), %xmm4
	vmulss	%xmm5, %xmm4, %xmm5
	vaddss	%xmm5, %xmm3, %xmm3
	vpshufd	$0, %xmm3, %xmm5        # xmm5 = xmm3[0,0,0,0]
	vmulps	%xmm5, %xmm0, %xmm0
	vmulss	%xmm3, %xmm1, %xmm1
	vsubps	%xmm0, %xmm2, %xmm0
	vsubss	%xmm1, %xmm4, %xmm1
	vmovq	%xmm0, -64(%rbp)
	vmovss	%xmm1, -56(%rbp)
	vmovq	-64(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB3_20
# BB#19:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI3_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-64(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -64(%rbp)
	vmulss	-60(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -60(%rbp)
	vmulss	-56(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -56(%rbp)
.LBB3_20:
	vmovaps	-176(%rbp), %xmm0       # 16-byte Reload
	vmulps	.LCPI3_9(%rip), %xmm0, %xmm1
	vmovaps	%xmm1, -224(%rbp)       # 16-byte Spill
	vmovss	-228(%rbp), %xmm0       # 4-byte Reload
	vmulss	.LCPI3_10(%rip), %xmm0, %xmm2
	vmovss	%xmm2, -288(%rbp)       # 4-byte Spill
	vmovaps	-256(%rbp), %xmm0       # 16-byte Reload
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-260(%rbp), %xmm1       # 4-byte Reload
	vaddss	%xmm2, %xmm1, %xmm1
	vmovq	%xmm0, -80(%rbp)
	vmovss	%xmm1, -72(%rbp)
	movl	(%r12), %eax
	incl	%eax
	movl	%eax, -84(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-84(%rbp), %rcx
	movq	%rbx, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm0, %xmm3
	vmovaps	%xmm1, %xmm4
	vmovss	44(%r15), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm5, %xmm5, %xmm5
	vucomiss	%xmm5, %xmm1
	jne	.LBB3_21
	jnp	.LBB3_27
.LBB3_21:
	vmovss	%xmm4, -308(%rbp)       # 4-byte Spill
	vmovaps	%xmm3, -304(%rbp)       # 16-byte Spill
	vmovaps	-176(%rbp), %xmm1       # 16-byte Reload
	vmovss	-228(%rbp), %xmm4       # 4-byte Reload
	testb	%r14b, %r14b
	je	.LBB3_22
# BB#23:
	vmovss	.LCPI3_12(%rip), %xmm0
	jmp	.LBB3_24
.LBB3_29:
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	jmp	.LBB3_44
.LBB3_22:
	vmovss	.LCPI3_11(%rip), %xmm0
.LBB3_24:
	vmovaps	%xmm1, %xmm2
	vmovq	(%r13), %xmm1
	vmulps	%xmm1, %xmm2, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmovss	8(%r13), %xmm3
	vmulss	%xmm3, %xmm4, %xmm4
	vaddss	%xmm4, %xmm2, %xmm2
	vmulss	%xmm0, %xmm0, %xmm4
	vpshufd	$0, %xmm0, %xmm5        # xmm5 = xmm0[0,0,0,0]
	vmulps	%xmm5, %xmm1, %xmm1
	vmovaps	%xmm1, -336(%rbp)       # 16-byte Spill
	vmulss	%xmm0, %xmm3, %xmm1
	vmovss	%xmm1, -340(%rbp)       # 4-byte Spill
	vinsertps	$16, %xmm0, %xmm2, %xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[2,3]
	vinsertps	$16, %xmm2, %xmm2, %xmm1 # xmm1 = xmm2[0,0,2,3]
	vmulps	%xmm0, %xmm1, %xmm0
	vmovaps	.LCPI3_13(%rip), %xmm1
	vsubps	%xmm0, %xmm1, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vmulss	%xmm0, %xmm4, %xmm0
	vmovss	.LCPI3_5(%rip), %xmm2
	vsubss	%xmm0, %xmm2, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, -352(%rbp)       # 8-byte Spill
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	-352(%rbp), %xmm1       # 8-byte Reload
	vsubsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmovaps	-176(%rbp), %xmm2       # 16-byte Reload
	vmulps	%xmm1, %xmm2, %xmm1
	vmovss	-228(%rbp), %xmm2       # 4-byte Reload
	vmulss	%xmm0, %xmm2, %xmm0
	vmovaps	-336(%rbp), %xmm2       # 16-byte Reload
	vaddps	%xmm1, %xmm2, %xmm1
	vmovss	-340(%rbp), %xmm2       # 4-byte Reload
	vaddss	%xmm0, %xmm2, %xmm0
	vmovq	%xmm1, -96(%rbp)
	vmovss	%xmm0, -88(%rbp)
	vmovq	-96(%rbp), %xmm1
	vmulps	%xmm1, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB3_26
# BB#25:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI3_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-96(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -96(%rbp)
	vmulss	-92(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -92(%rbp)
	vmulss	-88(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -88(%rbp)
.LBB3_26:
	vmovaps	-256(%rbp), %xmm0       # 16-byte Reload
	vsubps	-224(%rbp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmovss	-260(%rbp), %xmm1       # 4-byte Reload
	vsubss	-288(%rbp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovq	%xmm0, -112(%rbp)
	vmovss	%xmm1, -104(%rbp)
	movl	(%r12), %eax
	incl	%eax
	movl	%eax, -116(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-116(%rbp), %rcx
	movq	%rbx, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm1, %xmm5
	vmovaps	-304(%rbp), %xmm3       # 16-byte Reload
	vmovss	-308(%rbp), %xmm4       # 4-byte Reload
.LBB3_27:
	movq	%r15, -192(%rbp)        # 8-byte Spill
	vmovsd	-200(%rbp), %xmm1       # 8-byte Reload
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmulss	.LCPI3_7(%rip), %xmm1, %xmm1
	vaddss	.LCPI3_8(%rip), %xmm1, %xmm1
	vpshufd	$0, %xmm1, %xmm2        # xmm2 = xmm1[0,0,0,0]
	vmulps	%xmm2, %xmm3, %xmm2
	vmulss	%xmm1, %xmm4, %xmm3
	vmovss	.LCPI3_5(%rip), %xmm4
	vsubss	%xmm1, %xmm4, %xmm1
	vpshufd	$0, %xmm1, %xmm4        # xmm4 = xmm1[0,0,0,0]
	vmulps	%xmm4, %xmm0, %xmm0
	vmulss	%xmm1, %xmm5, %xmm1
	vmovss	44(%r15), %xmm4
	vpshufd	$0, %xmm4, %xmm5        # xmm5 = xmm4[0,0,0,0]
	vmulps	%xmm5, %xmm0, %xmm0
	vmulss	%xmm4, %xmm1, %xmm1
	vaddps	%xmm0, %xmm2, %xmm0
	vaddss	%xmm1, %xmm3, %xmm1
	vmovq	20(%r15), %xmm2
	vmulps	%xmm2, %xmm0, %xmm0
	vmulss	28(%r15), %xmm1, %xmm1
	vmovq	%xmm0, %rax
	vmovd	%xmm1, %r15d
.LBB3_44:
	vmovq	%rax, %xmm0
	movq	-192(%rbp), %rax        # 8-byte Reload
	vmovq	32(%rax), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovd	%r15d, %xmm1
	vaddss	40(%rax), %xmm1, %xmm1
.LBB3_45:
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp66:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp66-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,"axG",@progbits,_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,comdat
	.weak	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.align	16, 0x90
	.type	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,@function
_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_: # @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp73:
	.cfi_offset %rbx, -32
.Ltmp74:
	.cfi_offset %r14, -24
	movq	%r8, %r14
	movq	%rcx, %rbx
	vmovq	(%rdi), %xmm0
	vmovq	(%rsi), %xmm1
	vsubps	%xmm1, %xmm0, %xmm1
	vmovss	8(%rdi), %xmm0
	vsubss	8(%rsi), %xmm0, %xmm0
	vmovq	(%rdx), %xmm2
	vmulps	%xmm2, %xmm1, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	8(%rdx), %xmm0, %xmm3
	vaddss	%xmm3, %xmm2, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	vucomiss	%xmm3, %xmm2
	jbe	.LBB4_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB4_7
.LBB4_2:
	vmulps	%xmm1, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm3, %xmm3, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	16(%rdi), %xmm0
	jbe	.LBB4_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB4_7
.LBB4_4:
	vmovss	%xmm3, -20(%rbp)        # 4-byte Spill
	vmovss	16(%rdi), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	callq	sqrtf
	movb	$1, %al
	testq	%rbx, %rbx
	je	.LBB4_7
# BB#5:
	testq	%r14, %r14
	vmovss	-20(%rbp), %xmm2        # 4-byte Reload
	je	.LBB4_7
# BB#6:
	vsubss	%xmm0, %xmm2, %xmm1
	vmovss	%xmm1, (%rbx)
	vaddss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, (%r14)
.LBB4_7:
                                        # kill: AL<def> AL<kill> EAX<kill>
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp75:
	.size	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_, .Ltmp75-_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	8(%r13), %rax
	cmpq	16(%r13), %rax
	je	.LBB5_6
# BB#1:
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB5_3
# BB#2:
	movq	-8(%rax), %rcx
	movq	%rcx, (%rax)
.LBB5_3:
	movq	8(%r13), %rdi
	leaq	8(%rdi), %rax
	movq	%rax, 8(%r13)
	movq	(%rbx), %rbx
	leaq	-8(%rdi), %rdx
	subq	%r15, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_5
# BB#4:
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	%r15, %rsi
	callq	memmove
.LBB5_5:
	movq	%rbx, (%r15)
	jmp	.LBB5_18
.LBB5_6:
	movl	$1, %esi
	movl	$__unnamed_2, %edx
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, %rcx
	movq	%r15, %r14
	subq	(%r13), %r14
	xorl	%r12d, %r12d
	testq	%rcx, %rcx
	je	.LBB5_9
# BB#7:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB5_19
# BB#8:
	leaq	(,%rcx,8), %rdi
	movq	%rcx, %r12
	callq	_Znwm
	movq	%r12, %rcx
	movq	%rax, %r12
.LBB5_9:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	sarq	$3, %r14
	shlq	$3, %r14
	addq	%r12, %r14
	je	.LBB5_11
# BB#10:
	movq	(%rbx), %rax
	movq	%rax, (%r14)
.LBB5_11:
	movq	(%r13), %rsi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rbx
	sarq	$3, %rbx
	je	.LBB5_13
# BB#12:
	movq	%r12, %rdi
	callq	memmove
.LBB5_13:
	incq	%rbx
	movq	8(%r13), %rdx
	subq	%r15, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB5_15
# BB#14:
	leaq	(%r12,%rbx,8), %rdi
	movq	%r15, %rsi
	callq	memmove
.LBB5_15:
	addq	%r14, %rbx
	leaq	(%r12,%rbx,8), %rbx
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB5_17
# BB#16:
	callq	_ZdlPv
.LBB5_17:
	movq	%r12, (%r13)
	movq	%rbx, 8(%r13)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%r13)
.LBB5_18:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB5_19:
	callq	_ZSt17__throw_bad_allocv
.Ltmp87:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp87-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	subq	%rax, %rcx
	cmpq	%rsi, %rcx
	jb	.LBB6_7
# BB#1:
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movq	%rax, %rcx
	cmpq	%rsi, %rax
	jae	.LBB6_3
# BB#2:
	movq	%rsi, %rcx
.LBB6_3:
	addq	%rcx, %rax
	movq	8(%rdi), %rcx
	subq	(%rdi), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	jb	.LBB6_5
# BB#4:
	movq	%rax, %rcx
	shrq	$61, %rcx
	je	.LBB6_6
.LBB6_5:
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
.LBB6_6:
	popq	%rbp
	ret
.LBB6_7:
	movq	%rdx, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp93:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc, .Ltmp93-_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_3,@function
__unnamed_3:                            # @3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	movl	$__unnamed_4, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$__unnamed_4, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	ret
.Ltmp99:
	.size	__unnamed_3, .Ltmp99-__unnamed_3
	.cfi_endproc

	.type	__unnamed_4,@object     # @0
	.local	__unnamed_4
	.comm	__unnamed_4,1,1
	.type	dont_optimize_me,@object # @dont_optimize_me
	.bss
	.globl	dont_optimize_me
	.align	4
dont_optimize_me:
	.long	0                       # 0x0
	.size	dont_optimize_me, 4

	.type	__unnamed_2,@object     # @1
	.section	.rodata.str1.1,"aMS",@progbits,1
__unnamed_2:
	.asciz	"vector::_M_insert_aux"
	.size	__unnamed_2, 22

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	__unnamed_3
	.type	.L__unnamed_1,@object   # @2
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.L__unnamed_1:
	.asciz	"ERROR: WRONG ANSWER"
	.size	.L__unnamed_1, 20


	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
