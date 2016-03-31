	.text
	.file	"raytracer.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.long	0                       # float 0
	.long	3323744256              # float -10004
	.long	3248488448              # float -20
	.long	1176256512              # float 1.0E+4
.LCPI0_1:
	.long	1287568416              # float 1.0E+8
	.long	1045220557              # float 0.200000003
	.long	1045220557              # float 0.200000003
	.long	1045220557              # float 0.200000003
.LCPI0_2:
	.long	0                       # float 0
	.long	0                       # float 0
	.long	3248488448              # float -20
	.long	1082130432              # float 4
.LCPI0_3:
	.long	1098907648              # float 16
	.long	1065353216              # float 1
	.long	1050924810              # float 0.319999993
	.long	1052266988              # float 0.360000014
.LCPI0_4:
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1056964608              # float 0.5
.LCPI0_5:
	.long	1084227584              # float 5
	.long	3212836864              # float -1
	.long	3245342720              # float -15
	.long	1073741824              # float 2
.LCPI0_6:
	.long	1082130432              # float 4
	.long	1063675494              # float 0.899999976
	.long	1061326684              # float 0.75999999
	.long	1055622431              # float 0.460000008
.LCPI0_7:
	.long	1084227584              # float 5
	.long	0                       # float 0
	.long	3251109888              # float -25
	.long	1077936128              # float 3
.LCPI0_8:
	.long	1091567616              # float 9
	.long	1059481190              # float 0.649999976
	.long	1061494456              # float 0.76999998
	.long	1064849900              # float 0.970000028
.LCPI0_9:
	.long	3232759808              # float -5.5
	.long	0                       # float 0
	.long	3245342720              # float -15
	.long	1077936128              # float 3
.LCPI0_10:
	.long	1091567616              # float 9
	.long	1063675494              # float 0.899999976
	.long	1063675494              # float 0.899999976
	.long	1063675494              # float 0.899999976
.LCPI0_11:
	.long	0                       # float 0
	.long	1101004800              # float 20
	.long	3253731328              # float -30
	.long	1077936128              # float 3
.LCPI0_13:
	.long	1077936128              # float 3
	.long	1077936128              # float 3
	.long	1077936128              # float 3
	.long	0                       # float 0
.LCPI0_14:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_12:
	.long	1091567616              # float 9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp32:
	.cfi_offset %rbx, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	$13, %edi
	callq	srand48
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
.Ltmp0:
	movl	$52, %edi
	callq	_Znwm
.Ltmp1:
# BB#1:                                 # %.noexc4
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,-1.000400e+04,-2.000000e+01,1.000000e+04]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.000000e+08,2.000000e-01,2.000000e-01,2.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -112(%rbp)
	leaq	-56(%rbp), %r14
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp2:
	leaq	-64(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp3:
# BB#2:                                 # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit
.Ltmp4:
	movl	$52, %edi
	callq	_Znwm
.Ltmp5:
# BB#3:
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,-2.000000e+01,4.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_3(%rip), %xmm0   # xmm0 = [1.600000e+01,1.000000e+00,3.200000e-01,3.600000e-01]
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_4(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,5.000000e-01]
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB0_5
# BB#4:
	movq	%rax, (%rcx)
	addq	$8, -56(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %.noexc9
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp6:
	leaq	-64(%rbp), %rdi
	leaq	-104(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp7:
.LBB0_6:                                # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit11
.Ltmp8:
	movl	$52, %edi
	callq	_Znwm
.Ltmp9:
# BB#7:
	movaps	.LCPI0_5(%rip), %xmm0   # xmm0 = [5.000000e+00,-1.000000e+00,-1.500000e+01,2.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_6(%rip), %xmm0   # xmm0 = [4.000000e+00,9.000000e-01,7.600000e-01,4.600000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB0_9
# BB#8:
	movq	%rax, (%rcx)
	addq	$8, -56(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %.noexc15
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp10:
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp11:
.LBB0_10:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit17
.Ltmp12:
	movl	$52, %edi
	callq	_Znwm
.Ltmp13:
# BB#11:
	movaps	.LCPI0_7(%rip), %xmm0   # xmm0 = [5.000000e+00,0.000000e+00,-2.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_8(%rip), %xmm0   # xmm0 = [9.000000e+00,6.500000e-01,7.700000e-01,9.700000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB0_13
# BB#12:
	movq	%rax, (%rcx)
	addq	$8, -56(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               # %.noexc18
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp14:
	leaq	-64(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp15:
.LBB0_14:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit20
.Ltmp16:
	movl	$52, %edi
	callq	_Znwm
.Ltmp17:
# BB#15:
	movaps	.LCPI0_9(%rip), %xmm0   # xmm0 = [-5.500000e+00,0.000000e+00,-1.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_10(%rip), %xmm0  # xmm0 = [9.000000e+00,9.000000e-01,9.000000e-01,9.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB0_17
# BB#16:
	movq	%rax, (%rcx)
	addq	$8, -56(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %.noexc12
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp18:
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp19:
.LBB0_18:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit14
.Ltmp20:
	movl	$52, %edi
	callq	_Znwm
.Ltmp21:
# BB#19:
	movaps	.LCPI0_11(%rip), %xmm0  # xmm0 = [0.000000e+00,2.000000e+01,-3.000000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movss	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_13(%rip), %xmm0  # xmm0 = [3.000000e+00,3.000000e+00,3.000000e+00,0.000000e+00]
	movups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB0_21
# BB#20:
	movq	%rax, (%rcx)
	addq	$8, -56(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               # %.noexc6
	leaq	-32(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rsi
.Ltmp22:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp23:
.LBB0_22:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit8
.Ltmp24:
	leaq	-64(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
.Ltmp25:
# BB#23:
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_25
# BB#24:
.Ltmp26:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.Ltmp27:
.LBB0_25:                               # %.preheader.backedge.preheader
	movq	-64(%rbp), %rdi
	cmpq	-56(%rbp), %rdi
	je	.LBB0_30
# BB#26:
	leaq	-32(%rbp), %rbx
	leaq	-120(%rbp), %r15
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -120(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdi
	addq	$-8, %rdi
	movq	%rdi, -56(%rbp)
	testq	%rax, %rax
	je	.LBB0_29
# BB#28:                                #   in Loop: Header=BB0_27 Depth=1
	movq	%rax, %rdi
	callq	_ZdlPv
	movq	-56(%rbp), %rdi
.LBB0_29:                               # %.preheader.backedge.backedge
                                        #   in Loop: Header=BB0_27 Depth=1
	cmpq	%rdi, -64(%rbp)
	jne	.LBB0_27
.LBB0_30:                               # %.preheader.backedge._crit_edge
	testq	%rdi, %rdi
	je	.LBB0_32
# BB#31:
	callq	_ZdlPv
.LBB0_32:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_33:
.Ltmp28:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_35
# BB#34:
	callq	_ZdlPv
.LBB0_35:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit3
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp27-.Ltmp0          #   Call between .Ltmp0 and .Ltmp27
	.long	.Ltmp28-.Lfunc_begin0   #     jumps to .Ltmp28
	.byte	0                       #   On action: cleanup
	.long	.Ltmp27-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Lfunc_end0-.Ltmp27     #   Call between .Ltmp27 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	4564848582410108928     # double 0.0015625000232830644
	.quad	4566950262379380736     # double 0.0020833334419876337
.LCPI1_3:
	.quad	4598498563473801216     # double 0.26794919371604919
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI1_6:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_4:
	.quad	4608683618854764544     # double 1.3333333730697632
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_5:
	.long	1065353216              # float 1
.LCPI1_7:
	.long	1132396544              # float 255
.LCPI1_8:
	.long	0                       # float 0
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.p2align	4, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	leaq	3686400(%rax), %rdx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	addq	$12, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB1_1
# BB#2:
	xorl	%ecx, %ecx
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -96(%rbp)        # 16-byte Spill
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movss	.LCPI1_5(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	leaq	-64(%rbp), %r12
	leaq	-48(%rbp), %r13
	movq	%rax, %r14
	movq	%rax, -120(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB1_3:                                # %.preheader6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	xorl	%r15d, %r15d
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_4:                                # %.preheader6
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm0, %xmm4
	unpcklpd	-96(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	addpd	.LCPI1_0(%rip), %xmm0
	mulpd	.LCPI1_1(%rip), %xmm0
	addpd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	unpcklpd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	subpd	%xmm1, %xmm0
	mulpd	.LCPI1_3(%rip), %xmm0
	mulsd	.LCPI1_4(%rip), %xmm0
	cvtpd2ps	%xmm0, %xmm5
	movlpd	%xmm5, -64(%rbp)
	movl	$-1082130432, -56(%rbp) # imm = 0xFFFFFFFFBF800000
	movapd	%xmm5, %xmm1
	mulps	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	addss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	ucomiss	.LCPI1_8, %xmm0
	jbe	.LBB1_8
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm4, -112(%rbp)       # 16-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_7
# BB#6:                                 # %call.sqrt
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm1, %xmm0
	movapd	%xmm5, -144(%rbp)       # 16-byte Spill
	callq	sqrt
	movapd	-144(%rbp), %xmm5       # 16-byte Reload
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB1_7:                                # %.split
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$224, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,3]
	mulps	%xmm1, %xmm5
	movlps	%xmm5, -64(%rbp)
	xorps	.LCPI1_6(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movapd	-112(%rbp), %xmm4       # 16-byte Reload
.LBB1_8:                                # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm4, -112(%rbp)       # 16-byte Spill
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -48(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movlps	%xmm0, (%r14)
	movss	%xmm1, 8(%r14)
	movapd	-112(%rbp), %xmm0       # 16-byte Reload
	addsd	%xmm2, %xmm0
	incl	%r15d
	addq	$12, %r14
	cmpl	$640, %r15d             # imm = 0x280
	movss	.LCPI1_5(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	jb	.LBB1_4
# BB#9:                                 # %.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	movapd	-96(%rbp), %xmm0        # 16-byte Reload
	addsd	%xmm2, %xmm0
	movapd	%xmm0, -96(%rbp)        # 16-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	incl	%ecx
	cmpl	$480, %ecx              # imm = 0x1E0
	jb	.LBB1_3
# BB#10:                                # %.preheader.preheader
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, %rax
	addq	$8, %rax
	xorl	%ecx, %ecx
	movss	.LCPI1_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edx
	shll	$5, %edx
	subl	%ebx, %edx
	movss	-8(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-4(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	minss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shll	$5, %edx
	subl	%esi, %edx
	minss	%xmm3, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shll	$5, %edx
	subl	%esi, %edx
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	minss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %rbx
	addl	%edx, %ebx
	incl	%ecx
	addq	$12, %rax
	cmpl	$307200, %ecx           # imm = 0x4B000
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
	retq
.Lfunc_end1:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Lfunc_end1-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rcx
	cmpq	16(%rbx), %rcx
	je	.LBB2_4
# BB#1:
	movq	-8(%rcx), %rax
	movq	%rax, (%rcx)
	movq	8(%rbx), %rdi
	leaq	8(%rdi), %rax
	movq	%rax, 8(%rbx)
	leaq	-8(%rdi), %rdx
	subq	%r14, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB2_3
# BB#2:
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	%r14, %rsi
	callq	memmove
.LBB2_3:                                # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_.exit
	movq	(%r15), %rax
	movq	%rax, (%r14)
	jmp	.LBB2_16
.LBB2_4:
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	movl	$1, %r13d
	cmovneq	%rcx, %r13
	addq	%rcx, %r13
	jb	.LBB2_6
# BB#5:
	cmpq	%rax, %r13
	jbe	.LBB2_7
.LBB2_6:
	movq	%rax, %r13
.LBB2_7:                                # %_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc.exit
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-64(%rbp), %rcx
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.LBB2_9
# BB#8:                                 # %_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv.exit.i
	leaq	(,%r13,8), %rdi
	movq	%rcx, %r12
	callq	_Znwm
	movq	%r12, %rcx
	movq	%rax, %r12
.LBB2_9:
	movq	%r14, %rax
	subq	%rcx, %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r12,%rax)
	movq	(%rbx), %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movq	%rdx, %r15
	sarq	$3, %r15
	je	.LBB2_11
# BB#10:
	movq	%r12, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB2_11:
	leaq	8(%r12,%r15,8), %rcx
	movq	8(%rbx), %rdx
	subq	%r14, %rdx
	movq	%rdx, %r15
	sarq	$3, %r15
	je	.LBB2_13
# BB#12:
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	callq	memmove
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB2_13:
	testq	%rax, %rax
	je	.LBB2_15
# BB#14:
	movq	%rcx, %r14
	movq	%rax, %rdi
	callq	_ZdlPv
	movq	%r14, %rcx
.LBB2_15:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m.exit
	leaq	(%rcx,%r15,8), %rax
	movq	%r12, (%rbx)
	movq	%rax, 8(%rbx)
	leaq	(%r12,%r13,8), %rax
	movq	%rax, 16(%rbx)
.LBB2_16:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Lfunc_end2-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_0:
	.long	2139095040              # float +Inf
.LCPI3_2:
	.long	1073741824              # float 2
.LCPI3_4:
	.long	1063828014              # float 0.909090876
.LCPI3_6:
	.long	1066192077              # float 1.10000002
.LCPI3_8:
	.long	1065353216              # float 1
.LCPI3_10:
	.long	953267991               # float 9.99999974E-5
.LCPI3_12:
	.long	1063675494              # float 0.899999976
.LCPI3_13:
	.long	1036831949              # float 0.100000001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_1:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.zero	4
	.zero	4
.LCPI3_5:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI3_7:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
.LCPI3_9:
	.long	953267991               # float 9.99999974E-5
	.long	953267991               # float 9.99999974E-5
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_11:
	.quad	4613937818241073152     # double 3
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.p2align	4, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%r15), %rax
	movaps	.LCPI3_1(%rip), %xmm0   # xmm0 = <2,2,u,u>
	movss	.LCPI3_2(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	cmpq	%rax, 8(%r15)
	je	.LBB3_56
# BB#1:
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movss	.LCPI3_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movl	$1, %r14d
	xorps	%xmm5, %xmm5
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_2:                                # %.lr.ph68
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%r13,8), %rcx
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm0, %xmm1
	movss	8(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	8(%rbx), %xmm0
	movq	(%r12), %xmm2           # xmm2 = mem[0],zero
	mulps	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	movss	8(%r12), %xmm6          # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	addss	%xmm3, %xmm6
	ucomiss	%xmm6, %xmm5
	ja	.LBB3_11
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	mulss	%xmm1, %xmm1
	mulss	%xmm2, %xmm2
	addss	%xmm1, %xmm2
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm6, %xmm1
	mulss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	16(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB3_11
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jnp	.LBB3_6
# BB#5:                                 # %call.sqrt
                                        #   in Loop: Header=BB3_2 Depth=1
	movaps	%xmm1, %xmm0
	movaps	%xmm4, -64(%rbp)        # 16-byte Spill
	movss	%xmm6, -112(%rbp)       # 4-byte Spill
	callq	sqrtf
	movss	-112(%rbp), %xmm6       # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	movss	.LCPI3_2(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
.LBB3_6:                                # %.split
                                        #   in Loop: Header=BB3_2 Depth=1
	movaps	%xmm6, %xmm1
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm5
	jbe	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_2 Depth=1
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm1
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	ucomiss	%xmm1, %xmm4
	jbe	.LBB3_9
# BB#10:                                #   in Loop: Header=BB3_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm4
	jmp	.LBB3_11
.LBB3_9:                                # %._crit_edge281
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r15), %rax
	.p2align	4, 0x90
.LBB3_11:                               # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit.thread
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%r14d, %r13d
	movq	8(%r15), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	incl	%r14d
	cmpq	%rcx, %r13
	jb	.LBB3_2
# BB#12:                                # %._crit_edge
	movq	-232(%rbp), %r14        # 8-byte Reload
	testq	%r14, %r14
	movq	-192(%rbp), %r13        # 8-byte Reload
	movaps	.LCPI3_1(%rip), %xmm0   # xmm0 = <2,2,u,u>
	je	.LBB3_56
# BB#13:
	movq	(%r12), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm4, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm1, %xmm2
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	movq	(%rbx), %xmm5           # xmm5 = mem[0],zero
	addps	%xmm2, %xmm5
	addss	8(%rbx), %xmm4
	movq	(%r14), %xmm2           # xmm2 = mem[0],zero
	movaps	%xmm5, %xmm10
	subps	%xmm2, %xmm10
	movaps	%xmm4, %xmm14
	subss	8(%r14), %xmm14
	movaps	%xmm10, %xmm2
	mulps	%xmm2, %xmm2
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	movaps	%xmm14, %xmm2
	mulss	%xmm2, %xmm2
	addss	%xmm3, %xmm2
	xorps	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm2
	jbe	.LBB3_17
# BB#14:
	cvtss2sd	%xmm2, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_16
# BB#15:                                # %call.sqrt3
	movapd	%xmm1, %xmm0
	movaps	%xmm4, -64(%rbp)        # 16-byte Spill
	movaps	%xmm5, -144(%rbp)       # 16-byte Spill
	movaps	%xmm14, -96(%rbp)       # 16-byte Spill
	movaps	%xmm10, -80(%rbp)       # 16-byte Spill
	callq	sqrt
	xorps	%xmm6, %xmm6
	movaps	-80(%rbp), %xmm10       # 16-byte Reload
	movaps	-96(%rbp), %xmm14       # 16-byte Reload
	movaps	-144(%rbp), %xmm5       # 16-byte Reload
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
.LBB3_16:                               # %.split2
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	mulss	%xmm0, %xmm14
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm0, %xmm10
	movq	(%r12), %xmm1           # xmm1 = mem[0],zero
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
.LBB3_17:                               # %_ZN4Vec3IfE9normalizeEv.exit268
	movaps	%xmm10, %xmm2
	mulps	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	movaps	%xmm14, %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	ucomiss	%xmm6, %xmm2
	jbe	.LBB3_18
# BB#19:
	movaps	.LCPI3_5(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm10
	xorps	%xmm2, %xmm14
	movss	.LCPI3_6(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB3_20
.LBB3_18:
	movss	.LCPI3_4(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
.LBB3_20:
	movaps	%xmm10, -80(%rbp)       # 16-byte Spill
	movaps	%xmm14, -96(%rbp)       # 16-byte Spill
	movss	44(%r14), %xmm3         # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jbe	.LBB3_21
# BB#37:
	movaps	%xmm5, -144(%rbp)       # 16-byte Spill
	movaps	%xmm4, -64(%rbp)        # 16-byte Spill
	cmpl	$4, (%r13)
	jg	.LBB3_23
	jmp	.LBB3_38
.LBB3_21:
	movaps	%xmm5, -144(%rbp)       # 16-byte Spill
	movaps	%xmm4, -64(%rbp)        # 16-byte Spill
	movss	48(%r14), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jbe	.LBB3_23
# BB#22:
	cmpl	$5, (%r13)
	jge	.LBB3_23
.LBB3_38:
	movaps	%xmm6, -128(%rbp)       # 16-byte Spill
	mulps	%xmm10, %xmm1
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	addss	%xmm1, %xmm2
	mulss	%xmm14, %xmm0
	addss	%xmm2, %xmm0
	addss	.LCPI3_8(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI3_11(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm14, -96(%rbp)       # 16-byte Spill
	movaps	%xmm10, -80(%rbp)       # 16-byte Spill
	callq	pow
	movaps	-80(%rbp), %xmm8        # 16-byte Reload
	movaps	-96(%rbp), %xmm4        # 16-byte Reload
	cvtsd2ss	%xmm0, %xmm6
	mulss	.LCPI3_12(%rip), %xmm6
	movaps	%xmm8, %xmm0
	addps	%xmm0, %xmm0
	movaps	%xmm4, %xmm1
	addss	%xmm1, %xmm1
	movq	(%r12), %xmm7           # xmm7 = mem[0],zero
	movaps	%xmm8, %xmm2
	mulps	%xmm7, %xmm2
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	movss	8(%r12), %xmm5          # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm0, %xmm2
	subps	%xmm2, %xmm7
	subss	%xmm1, %xmm5
	movlps	%xmm7, -224(%rbp)
	movss	%xmm5, -216(%rbp)
	movaps	%xmm7, %xmm0
	mulps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	addss	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB3_42
# BB#39:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_41
# BB#40:                                # %call.sqrt5
	movapd	%xmm1, %xmm0
	movaps	%xmm6, -112(%rbp)       # 16-byte Spill
	movaps	%xmm7, -160(%rbp)       # 16-byte Spill
	movss	%xmm5, -44(%rbp)        # 4-byte Spill
	callq	sqrt
	movss	-44(%rbp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movaps	-160(%rbp), %xmm7       # 16-byte Reload
	movaps	-112(%rbp), %xmm6       # 16-byte Reload
	movaps	-80(%rbp), %xmm8        # 16-byte Reload
	movaps	-96(%rbp), %xmm4        # 16-byte Reload
.LBB3_41:                               # %.split4
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	mulss	%xmm0, %xmm5
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm0, %xmm7
	movlps	%xmm7, -224(%rbp)
	movss	%xmm5, -216(%rbp)
.LBB3_42:                               # %_ZN4Vec3IfE9normalizeEv.exit218
	addss	.LCPI3_13(%rip), %xmm6
	movaps	%xmm6, -112(%rbp)       # 16-byte Spill
	movaps	.LCPI3_9(%rip), %xmm1   # xmm1 = <9.99999974E-5,9.99999974E-5,u,u>
	mulps	%xmm8, %xmm1
	movaps	%xmm1, -160(%rbp)       # 16-byte Spill
	movss	.LCPI3_10(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm2
	movss	%xmm2, -44(%rbp)        # 4-byte Spill
	movaps	-144(%rbp), %xmm0       # 16-byte Reload
	addps	%xmm1, %xmm0
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	addss	%xmm2, %xmm1
	movlps	%xmm0, -296(%rbp)
	movss	%xmm1, -288(%rbp)
	movl	(%r13), %eax
	incl	%eax
	movl	%eax, -172(%rbp)
	leaq	-296(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	leaq	-172(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movaps	%xmm0, %xmm5
	movss	44(%r14), %xmm4         # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	xorps	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm4
	jne	.LBB3_43
	jnp	.LBB3_50
.LBB3_43:
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movss	%xmm1, -164(%rbp)       # 4-byte Spill
	movq	(%r12), %xmm0           # xmm0 = mem[0],zero
	movaps	-80(%rbp), %xmm9        # 16-byte Reload
	movaps	%xmm9, %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	addss	%xmm1, %xmm2
	movss	8(%r12), %xmm7          # xmm7 = mem[0],zero,zero,zero
	movaps	-96(%rbp), %xmm8        # 16-byte Reload
	movaps	%xmm8, %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
	movaps	-128(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, %xmm2
	mulss	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	mulss	%xmm3, %xmm3
	movss	.LCPI3_8(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm5
	subss	%xmm3, %xmm5
	mulss	%xmm2, %xmm5
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	shufps	$224, %xmm5, %xmm5      # xmm5 = xmm5[0,0,2,3]
	mulps	%xmm0, %xmm5
	mulss	%xmm6, %xmm7
	mulss	%xmm6, %xmm1
	xorps	.LCPI3_5(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm6
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	movaps	%xmm8, %xmm2
	movaps	%xmm9, %xmm3
	jnp	.LBB3_45
# BB#44:                                # %call.sqrt7
	movapd	%xmm1, %xmm0
	movss	%xmm7, -128(%rbp)       # 4-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movsd	%xmm6, -264(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-264(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movss	-128(%rbp), %xmm7       # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	movaps	-80(%rbp), %xmm3        # 16-byte Reload
	movaps	-96(%rbp), %xmm2        # 16-byte Reload
.LBB3_45:                               # %.split6
	subsd	%xmm0, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	mulss	%xmm0, %xmm2
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm0, %xmm3
	addps	%xmm3, %xmm5
	addss	%xmm2, %xmm7
	movlps	%xmm5, -208(%rbp)
	movss	%xmm7, -200(%rbp)
	movaps	%xmm5, %xmm0
	mulps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	addss	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movaps	-64(%rbp), %xmm2        # 16-byte Reload
	movaps	-144(%rbp), %xmm3       # 16-byte Reload
	jbe	.LBB3_49
# BB#46:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_48
# BB#47:                                # %call.sqrt9
	movapd	%xmm1, %xmm0
	movss	%xmm7, -128(%rbp)       # 4-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	callq	sqrt
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movss	-128(%rbp), %xmm7       # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	movaps	-144(%rbp), %xmm3       # 16-byte Reload
	movaps	-64(%rbp), %xmm2        # 16-byte Reload
.LBB3_48:                               # %.split8
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	mulss	%xmm0, %xmm7
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm0, %xmm5
	movlps	%xmm5, -208(%rbp)
	movss	%xmm7, -200(%rbp)
.LBB3_49:                               # %_ZN4Vec3IfE9normalizeEv.exit172
	subps	-160(%rbp), %xmm3       # 16-byte Folded Reload
	subss	-44(%rbp), %xmm2        # 4-byte Folded Reload
	movlps	%xmm3, -280(%rbp)
	movss	%xmm2, -272(%rbp)
	movl	(%r13), %eax
	incl	%eax
	movl	%eax, -168(%rbp)
	leaq	-280(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-168(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movaps	%xmm1, %xmm6
	movss	44(%r14), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	-164(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
.LBB3_50:
	movaps	-112(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm5, %xmm2
	mulss	%xmm3, %xmm1
	movss	.LCPI3_8(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm8
	movaps	%xmm8, %xmm3
	shufps	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3]
	mulps	%xmm0, %xmm3
	mulss	%xmm6, %xmm8
	movaps	%xmm4, %xmm0
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm3, %xmm0
	mulss	%xmm4, %xmm8
	addps	%xmm2, %xmm0
	addss	%xmm1, %xmm8
	movq	20(%r14), %xmm9         # xmm9 = mem[0],zero
	mulps	%xmm0, %xmm9
	mulss	28(%r14), %xmm8
	jmp	.LBB3_55
.LBB3_23:                               # %.preheader.preheader
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	xorps	%xmm9, %xmm9
	xorps	%xmm8, %xmm8
	xorl	%ebx, %ebx
	cmpq	%rax, %rcx
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
	movaps	-144(%rbp), %xmm5       # 16-byte Reload
	je	.LBB3_55
# BB#24:
	xorps	%xmm7, %xmm7
	movsd	.LCPI3_3(%rip), %xmm11  # xmm11 = mem[0],zero
	movaps	.LCPI3_7(%rip), %xmm12  # xmm12 = <1,1,u,u>
	movss	.LCPI3_8(%rip), %xmm13  # xmm13 = mem[0],zero,zero,zero
	movaps	.LCPI3_9(%rip), %xmm6   # xmm6 = <9.99999974E-5,9.99999974E-5,u,u>
	movss	.LCPI3_10(%rip), %xmm15 # xmm15 = mem[0],zero,zero,zero
	jmp	.LBB3_25
.LBB3_34:                               #   in Loop: Header=BB3_25 Depth=1
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm1
	jnp	.LBB3_36
# BB#35:                                # %call.sqrt13
                                        #   in Loop: Header=BB3_25 Depth=1
	movaps	%xmm14, -96(%rbp)       # 16-byte Spill
	movaps	%xmm10, -80(%rbp)       # 16-byte Spill
	movaps	%xmm8, -128(%rbp)       # 16-byte Spill
	movaps	%xmm9, -160(%rbp)       # 16-byte Spill
	callq	sqrtf
	movss	.LCPI3_10(%rip), %xmm15 # xmm15 = mem[0],zero,zero,zero
	movaps	.LCPI3_9(%rip), %xmm6   # xmm6 = <9.99999974E-5,9.99999974E-5,u,u>
	movss	.LCPI3_8(%rip), %xmm13  # xmm13 = mem[0],zero,zero,zero
	movaps	.LCPI3_7(%rip), %xmm12  # xmm12 = <1,1,u,u>
	movsd	.LCPI3_3(%rip), %xmm11  # xmm11 = mem[0],zero
	xorps	%xmm7, %xmm7
	movaps	-160(%rbp), %xmm9       # 16-byte Reload
	movaps	-128(%rbp), %xmm8       # 16-byte Reload
	movaps	-80(%rbp), %xmm10       # 16-byte Reload
	movaps	-96(%rbp), %xmm14       # 16-byte Reload
	movaps	-144(%rbp), %xmm5       # 16-byte Reload
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
.LBB3_36:                               # %.split12
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	jmp	.LBB3_53
	.p2align	4, 0x90
.LBB3_25:                               # %.lr.ph65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
	movq	(%rax,%rbx,8), %rdx
	movss	32(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm0
	jbe	.LBB3_54
# BB#26:                                #   in Loop: Header=BB3_25 Depth=1
	movq	(%rdx), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm5, %xmm0
	movaps	%xmm0, -192(%rbp)       # 16-byte Spill
	movss	8(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm2
	movaps	%xmm2, -112(%rbp)       # 16-byte Spill
	mulps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	addss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.LBB3_30
# BB#27:                                #   in Loop: Header=BB3_25 Depth=1
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_29
# BB#28:                                # %call.sqrt11
                                        #   in Loop: Header=BB3_25 Depth=1
	movapd	%xmm1, %xmm0
	movaps	%xmm8, -128(%rbp)       # 16-byte Spill
	movaps	%xmm9, -160(%rbp)       # 16-byte Spill
	callq	sqrt
	movss	.LCPI3_10(%rip), %xmm15 # xmm15 = mem[0],zero,zero,zero
	movaps	.LCPI3_9(%rip), %xmm6   # xmm6 = <9.99999974E-5,9.99999974E-5,u,u>
	movss	.LCPI3_8(%rip), %xmm13  # xmm13 = mem[0],zero,zero,zero
	movaps	.LCPI3_7(%rip), %xmm12  # xmm12 = <1,1,u,u>
	movsd	.LCPI3_3(%rip), %xmm11  # xmm11 = mem[0],zero
	xorps	%xmm7, %xmm7
	movaps	-160(%rbp), %xmm9       # 16-byte Reload
	movaps	-128(%rbp), %xmm8       # 16-byte Reload
	movaps	-80(%rbp), %xmm10       # 16-byte Reload
	movaps	-96(%rbp), %xmm14       # 16-byte Reload
	movaps	-144(%rbp), %xmm5       # 16-byte Reload
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
.LBB3_29:                               # %.split10
                                        #   in Loop: Header=BB3_25 Depth=1
	movapd	%xmm11, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movaps	-112(%rbp), %xmm1       # 16-byte Reload
	mulss	%xmm0, %xmm1
	movaps	%xmm1, -112(%rbp)       # 16-byte Spill
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	movaps	-192(%rbp), %xmm1       # 16-byte Reload
	mulps	%xmm0, %xmm1
	movaps	%xmm1, -192(%rbp)       # 16-byte Spill
	movq	(%r15), %rax
	movq	8(%r15), %rcx
.LBB3_30:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	%rcx, %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	movl	$0, %esi
	je	.LBB3_52
	.p2align	4, 0x90
.LBB3_31:                               # %.lr.ph
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %ebx
	je	.LBB3_51
# BB#32:                                #   in Loop: Header=BB3_31 Depth=2
	movq	(%rax,%rsi,8), %rdi
	movaps	%xmm10, %xmm1
	mulps	%xmm6, %xmm1
	movaps	%xmm14, %xmm2
	mulss	%xmm15, %xmm2
	addps	%xmm5, %xmm1
	addss	%xmm4, %xmm2
	movq	(%rdi), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm1, %xmm0
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	movaps	-192(%rbp), %xmm2       # 16-byte Reload
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	movaps	-112(%rbp), %xmm2       # 16-byte Reload
	mulss	%xmm1, %xmm2
	addss	%xmm3, %xmm2
	ucomiss	%xmm2, %xmm7
	ja	.LBB3_51
# BB#33:                                #   in Loop: Header=BB3_31 Depth=2
	movaps	%xmm0, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	mulss	%xmm0, %xmm0
	mulss	%xmm3, %xmm3
	addss	%xmm0, %xmm3
	mulss	%xmm1, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm2
	subss	%xmm2, %xmm1
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_34
.LBB3_51:                               # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit104.thread
                                        #   in Loop: Header=BB3_31 Depth=2
	leal	1(%rsi), %esi
	cmpq	%rdx, %rsi
	jb	.LBB3_31
.LBB3_52:                               #   in Loop: Header=BB3_25 Depth=1
	movaps	%xmm13, %xmm0
	movaps	%xmm12, %xmm1
.LBB3_53:                               # %.loopexit
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	20(%r14), %xmm2         # xmm2 = mem[0],zero
	mulps	%xmm1, %xmm2
	mulss	28(%r14), %xmm0
	movaps	-192(%rbp), %xmm3       # 16-byte Reload
	mulps	%xmm10, %xmm3
	movaps	%xmm3, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	addss	%xmm3, %xmm1
	movaps	-112(%rbp), %xmm3       # 16-byte Reload
	mulss	%xmm14, %xmm3
	addss	%xmm1, %xmm3
	maxss	%xmm7, %xmm3
	movaps	%xmm3, %xmm1
	shufps	$224, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,3]
	mulps	%xmm2, %xmm1
	mulss	%xmm0, %xmm3
	movq	(%rax,%rbx,8), %rdx
	movq	32(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulps	%xmm1, %xmm0
	mulss	40(%rdx), %xmm3
	addps	%xmm0, %xmm9
	addss	%xmm3, %xmm8
.LBB3_54:                               # %.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	leal	1(%rbx), %ebx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	cmpq	%rdx, %rbx
	jb	.LBB3_25
.LBB3_55:                               # %.loopexit5
	movq	32(%r14), %xmm0         # xmm0 = mem[0],zero
	addps	%xmm9, %xmm0
	addss	40(%r14), %xmm8
.LBB3_56:                               # %._crit_edge.thread
	movaps	%xmm8, %xmm1
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Lfunc_end3-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_: # @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_, .Lfunc_end4-_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_raytracer.cpp,@function
_GLOBAL__sub_I_raytracer.cpp:           # @_GLOBAL__sub_I_raytracer.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rbp
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end5:
	.size	_GLOBAL__sub_I_raytracer.cpp, .Lfunc_end5-_GLOBAL__sub_I_raytracer.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	dont_optimize_me,@object # @dont_optimize_me
	.bss
	.globl	dont_optimize_me
	.p2align	2
dont_optimize_me:
	.long	0                       # 0x0
	.size	dont_optimize_me, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: WRONG ANSWER\n"
	.size	.L.str, 21

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_raytracer.cpp

	.ident	"clang version 3.9.0 (trunk 263061)"
	.section	".note.GNU-stack","",@progbits
