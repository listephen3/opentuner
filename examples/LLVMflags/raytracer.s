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
	pushq	%rbx
	andq	$-16, %rsp
	subq	$80, %rsp
.Ltmp32:
	.cfi_offset %rbx, -24
	movl	$13, %edi
	callq	srand48
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	$0, 16(%rsp)
.Ltmp0:
	movl	$52, %edi
	callq	_Znwm
.Ltmp1:
# BB#1:
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,-1.000400e+04,-2.000000e+01,1.000000e+04]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.000000e+08,2.000000e-01,2.000000e-01,2.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, 64(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_3
# BB#2:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_4
.LBB0_3:
.Ltmp2:
	leaq	(%rsp), %rdi
	leaq	64(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp3:
.LBB0_4:                                # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit
.Ltmp4:
	movl	$52, %edi
	callq	_Znwm
.Ltmp5:
# BB#5:
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,-2.000000e+01,4.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_3(%rip), %xmm0   # xmm0 = [1.600000e+01,1.000000e+00,3.200000e-01,3.600000e-01]
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_4(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,5.000000e-01]
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, 56(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_7
# BB#6:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_8
.LBB0_7:
.Ltmp6:
	leaq	(%rsp), %rdi
	leaq	56(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp7:
.LBB0_8:                                # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit12
.Ltmp8:
	movl	$52, %edi
	callq	_Znwm
.Ltmp9:
# BB#9:
	movaps	.LCPI0_5(%rip), %xmm0   # xmm0 = [5.000000e+00,-1.000000e+00,-1.500000e+01,2.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_6(%rip), %xmm0   # xmm0 = [4.000000e+00,9.000000e-01,7.600000e-01,4.600000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, 48(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_11
# BB#10:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_12
.LBB0_11:
.Ltmp10:
	leaq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp11:
.LBB0_12:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit10
.Ltmp12:
	movl	$52, %edi
	callq	_Znwm
.Ltmp13:
# BB#13:
	movaps	.LCPI0_7(%rip), %xmm0   # xmm0 = [5.000000e+00,0.000000e+00,-2.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_8(%rip), %xmm0   # xmm0 = [9.000000e+00,6.500000e-01,7.700000e-01,9.700000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, 40(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_15
# BB#14:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_16
.LBB0_15:
.Ltmp14:
	leaq	(%rsp), %rdi
	leaq	40(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp15:
.LBB0_16:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit8
.Ltmp16:
	movl	$52, %edi
	callq	_Znwm
.Ltmp17:
# BB#17:
	movaps	.LCPI0_9(%rip), %xmm0   # xmm0 = [-5.500000e+00,0.000000e+00,-1.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_10(%rip), %xmm0  # xmm0 = [9.000000e+00,9.000000e-01,9.000000e-01,9.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, 32(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_19
# BB#18:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_20
.LBB0_19:
.Ltmp18:
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp19:
.LBB0_20:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit6
.Ltmp20:
	movl	$52, %edi
	callq	_Znwm
.Ltmp21:
# BB#21:
	movaps	.LCPI0_11(%rip), %xmm0  # xmm0 = [0.000000e+00,2.000000e+01,-3.000000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movss	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_13(%rip), %xmm0  # xmm0 = [3.000000e+00,3.000000e+00,3.000000e+00,0.000000e+00]
	movups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	je	.LBB0_23
# BB#22:
	movq	%rax, (%rsi)
	addq	$8, 8(%rsp)
	jmp	.LBB0_24
.LBB0_23:
.Ltmp22:
	leaq	(%rsp), %rdi
	leaq	24(%rsp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp23:
.LBB0_24:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit4
.Ltmp24:
	leaq	(%rsp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
.Ltmp25:
# BB#25:
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_27
# BB#26:
.Ltmp26:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.Ltmp27:
	jmp	.LBB0_27
.LBB0_33:
.Ltmp28:
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_35
# BB#34:
	callq	_ZdlPv
.LBB0_35:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit2
	movq	%rbx, %rdi
	callq	_Unwind_Resume
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_27 Depth=1
	callq	_ZdlPv
.LBB0_27:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsp), %rax
	cmpq	8(%rsp), %rax
	je	.LBB0_30
# BB#28:                                # %.lr.ph
                                        #   in Loop: Header=BB0_27 Depth=1
	movq	8(%rsp), %rax
	movq	-8(%rax), %rdi
	addq	$-8, %rax
	movq	%rax, 8(%rsp)
	testq	%rdi, %rdi
	jne	.LBB0_29
	jmp	.LBB0_27
.LBB0_30:                               # %._crit_edge
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_32
# BB#31:
	callq	_ZdlPv
.LBB0_32:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit
	xorl	%eax, %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI1_2:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
.LCPI1_3:
	.quad	4564848582410108928     # double 0.0015625000232830644
	.quad	4566950262379380736     # double 0.0020833334419876337
.LCPI1_5:
	.quad	4598498563473801216     # double 0.26794919371604919
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI1_8:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
.LCPI1_9:
	.long	1132396544              # float 255
	.long	1132396544              # float 255
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_4:
	.quad	4607182418800017408     # double 1
.LCPI1_6:
	.quad	4608683618854764544     # double 1.3333333730697632
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_7:
	.long	1065353216              # float 1
.LCPI1_10:
	.long	1593835520              # float 9.22337203E+18
.LCPI1_11:
	.long	1132396544              # float 255
.LCPI1_12:
	.long	0                       # float 0
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.p2align	4, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-16, %rsp
	subq	$112, %rsp
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	movq	%rax, %rdx
	addq	$3686400, %rdx          # imm = 0x384000
	xorps	%xmm0, %xmm0
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 48(%rcx)
	movups	%xmm0, 64(%rcx)
	movups	%xmm0, 80(%rcx)
	addq	$96, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB1_1
# BB#2:                                 # %.preheader1.preheader
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	movdqa	.LCPI1_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	movapd	.LCPI1_1(%rip), %xmm4   # xmm4 = [4.503600e+15,1.934281e+25]
	movapd	.LCPI1_2(%rip), %xmm10  # xmm10 = [5.000000e-01,5.000000e-01]
	movapd	.LCPI1_3(%rip), %xmm6   # xmm6 = [1.562500e-03,2.083333e-03]
	movsd	.LCPI1_4(%rip), %xmm8   # xmm8 = mem[0],zero
	movapd	.LCPI1_5(%rip), %xmm7   # xmm7 = [2.679492e-01,2.679492e-01]
	movsd	.LCPI1_6(%rip), %xmm5   # xmm5 = mem[0],zero
	movss	.LCPI1_7(%rip), %xmm9   # xmm9 = mem[0],zero,zero,zero
	xorps	%xmm11, %xmm11
	leaq	8(%rsp), %r13
	movq	%rax, %r15
	movq	%rax, 88(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB1_3:                                # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	%r15, 96(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movd	24(%rsp), %xmm12        # 4-byte Folded Reload
                                        # xmm12 = mem[0],zero,zero,zero
	movd	%r12d, %xmm0
	punpcklqdq	%xmm12, %xmm0   # xmm0 = xmm0[0],xmm12[0]
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm2
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	subpd	%xmm4, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	addpd	%xmm10, %xmm2
	mulpd	%xmm6, %xmm2
	addpd	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	%xmm8, %xmm1
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	unpcklpd	%xmm8, %xmm2    # xmm2 = xmm2[0],xmm8[0]
	subpd	%xmm1, %xmm2
	mulpd	%xmm7, %xmm2
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm5, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm1, 8(%rsp)
	movss	%xmm0, 12(%rsp)
	movl	$-1082130432, 16(%rsp)  # imm = 0xFFFFFFFFBF800000
	movss	8(%rsp), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm9, %xmm0
	ucomiss	%xmm11, %xmm0
	jbe	.LBB1_8
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	movdqa	%xmm12, 64(%rsp)        # 16-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_7
# BB#6:                                 # %call.sqrt
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
	movsd	.LCPI1_4(%rip), %xmm8   # xmm8 = mem[0],zero
.LBB1_7:                                # %.split
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm8, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm1, %xmm2
	movlps	%xmm2, 8(%rsp)
	mulss	16(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movdqa	64(%rsp), %xmm12        # 16-byte Reload
.LBB1_8:                                # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB1_4 Depth=2
	movdqa	%xmm12, 64(%rsp)        # 16-byte Spill
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 28(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	leaq	28(%rsp), %rax
	movq	%rax, %rbx
	movq	%rbx, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	movsd	.LCPI1_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	56(%rsp), %r15          # 8-byte Reload
	movss	%xmm0, (%r15)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, 4(%r15)
	movss	%xmm1, 8(%r15)
	incl	%r12d
	movd	%r12d, %xmm0
	punpcklqdq	64(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movdqa	.LCPI1_0(%rip), %xmm5   # xmm5 = [1127219200,1160773632,0,0]
	punpckldq	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1]
	movapd	.LCPI1_1(%rip), %xmm4   # xmm4 = [4.503600e+15,1.934281e+25]
	subpd	%xmm4, %xmm0
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm2
	punpckldq	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	subpd	%xmm4, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	addpd	.LCPI1_2(%rip), %xmm2
	mulpd	.LCPI1_3(%rip), %xmm2
	addpd	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	%xmm3, %xmm1
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	unpcklpd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	subpd	%xmm1, %xmm2
	mulpd	.LCPI1_5(%rip), %xmm2
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	.LCPI1_6(%rip), %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm1, 8(%rsp)
	movss	%xmm0, 12(%rsp)
	movl	$-1082130432, 16(%rsp)  # imm = 0xFFFFFFFFBF800000
	movss	8(%rsp), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	addss	.LCPI1_7(%rip), %xmm0
	ucomiss	.LCPI1_12, %xmm0
	jbe	.LBB1_12
# BB#9:                                 #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, %r15
	movq	%r13, %rbx
	movq	%rcx, %r14
	movq	%rdi, %r13
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_11
# BB#10:                                # %call.sqrt39
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
	movsd	.LCPI1_4(%rip), %xmm3   # xmm3 = mem[0],zero
.LBB1_11:                               # %.split38
                                        #   in Loop: Header=BB1_4 Depth=2
	movapd	%xmm3, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm1, %xmm2
	movlps	%xmm2, 8(%rsp)
	mulss	16(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movq	%r13, %rdi
	movq	%r14, %rcx
	movq	%rbx, %r13
	movq	%r15, %r14
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB1_12:                               # %_ZN4Vec3IfE9normalizeEv.exit.1
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 28(%rsp)
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movsd	.LCPI1_4(%rip), %xmm8   # xmm8 = mem[0],zero
	movss	%xmm0, 12(%r15)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, 16(%r15)
	movss	%xmm1, 20(%r15)
	incl	%r12d
	addq	$24, %r15
	cmpl	$640, %r12d             # imm = 0x280
	movss	.LCPI1_7(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movaps	%xmm7, %xmm9
	movdqa	.LCPI1_0(%rip), %xmm3   # xmm3 = [1127219200,1160773632,0,0]
	movapd	.LCPI1_1(%rip), %xmm4   # xmm4 = [4.503600e+15,1.934281e+25]
	movapd	.LCPI1_2(%rip), %xmm5   # xmm5 = [5.000000e-01,5.000000e-01]
	movapd	%xmm5, %xmm10
	movapd	.LCPI1_3(%rip), %xmm6   # xmm6 = [1.562500e-03,2.083333e-03]
	movapd	.LCPI1_5(%rip), %xmm7   # xmm7 = [2.679492e-01,2.679492e-01]
	movsd	.LCPI1_6(%rip), %xmm5   # xmm5 = mem[0],zero
	xorps	%xmm11, %xmm11
	jne	.LBB1_4
# BB#13:                                #   in Loop: Header=BB1_3 Depth=1
	movq	96(%rsp), %r15          # 8-byte Reload
	addq	$7680, %r15             # imm = 0x1E00
	movl	24(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	cmpl	$480, %eax              # imm = 0x1E0
	jne	.LBB1_3
# BB#14:
	xorl	%ebx, %ebx
	movaps	.LCPI1_8(%rip), %xmm0   # xmm0 = <1,1,u,u>
	movaps	.LCPI1_9(%rip), %xmm1   # xmm1 = <255,255,u,u>
	movss	.LCPI1_10(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	movss	.LCPI1_11(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	$8, %eax
	.p2align	4, 0x90
.LBB1_15:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	shll	$5, %ecx
	subl	%ebx, %ecx
	movq	-8(%rdi,%rax), %xmm4    # xmm4 = mem[0],zero
	minps	%xmm0, %xmm4
	mulps	%xmm1, %xmm4
	movaps	%xmm4, %xmm5
	subss	%xmm2, %xmm5
	cvttss2si	%xmm5, %rdx
	xorq	%r8, %rdx
	cvttss2si	%xmm4, %rsi
	ucomiss	%xmm2, %xmm4
	cmovaeq	%rdx, %rsi
	movd	%rsi, %xmm5
	shufps	$229, %xmm4, %xmm4      # xmm4 = xmm4[1,1,2,3]
	movaps	%xmm4, %xmm6
	subss	%xmm2, %xmm6
	cvttss2si	%xmm6, %rdx
	xorq	%r8, %rdx
	cvttss2si	%xmm4, %rsi
	ucomiss	%xmm2, %xmm4
	cmovaeq	%rdx, %rsi
	movd	%rsi, %xmm4
	punpcklqdq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0]
	movd	%xmm5, %edx
	pshufd	$78, %xmm5, %xmm4       # xmm4 = xmm5[2,3,0,1]
	movd	%xmm4, %esi
	addl	%ecx, %edx
	movl	%edx, %ecx
	shll	$5, %ecx
	subl	%edx, %ecx
	addl	%esi, %ecx
	movl	%ecx, %edx
	shll	$5, %edx
	subl	%ecx, %edx
	movss	(%rdi,%rax), %xmm4      # xmm4 = mem[0],zero,zero,zero
	minss	%xmm9, %xmm4
	mulss	%xmm3, %xmm4
	cvttss2si	%xmm4, %rbx
	addl	%edx, %ebx
	addq	$12, %rax
	cmpq	$3686408, %rax          # imm = 0x384008
	jne	.LBB1_15
# BB#16:                                # %UnifiedReturnBlock
	callq	_ZdaPv
	movl	%ebx, %eax
	leaq	-40(%rbp), %rsp
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
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-16, %rsp
	subq	$16, %rsp
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
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
	movq	(%rdx), %rbx
	leaq	-8(%rdi), %rdx
	subq	%r15, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB2_3
# BB#2:
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	%r15, %rsi
	callq	memmove
.LBB2_3:                                # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_.exit
	movq	%rbx, (%r15)
	jmp	.LBB2_17
.LBB2_4:
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	cmpq	%rax, %rcx
	je	.LBB2_18
# BB#5:
	movq	%rdx, (%rsp)            # 8-byte Spill
	testq	%rcx, %rcx
	movl	$1, %r13d
	cmovneq	%rcx, %r13
	addq	%rcx, %r13
	jb	.LBB2_7
# BB#6:
	cmpq	%rax, %r13
	jbe	.LBB2_8
.LBB2_7:
	movq	%rax, %r13
.LBB2_8:                                # %_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc.exit
	movq	%r15, %r14
	subq	(%rbx), %r14
	sarq	$3, %r14
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.LBB2_10
# BB#9:                                 # %_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv.exit.i
	leaq	(,%r13,8), %rdi
	callq	_Znwm
	movq	%rax, %r12
.LBB2_10:
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r12,%r14,8)
	movq	(%rbx), %rsi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB2_12
# BB#11:
	movq	%r12, %rdi
	callq	memmove
.LBB2_12:
	leaq	8(%r12,%r14,8), %rax
	movq	8(%rbx), %rdx
	subq	%r15, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB2_14
# BB#13:
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r15, %rsi
	callq	memmove
	movq	(%rsp), %rax            # 8-byte Reload
.LBB2_14:
	leaq	(%rax,%r14,8), %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_16
# BB#15:
	callq	_ZdlPv
.LBB2_16:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m.exit
	movq	%r12, (%rbx)
	movq	%r14, 8(%rbx)
	leaq	(%r12,%r13,8), %rax
	movq	%rax, 16(%rbx)
.LBB2_17:                               # %UnifiedReturnBlock
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_18:
	movl	$.L.str.1, %edi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end2:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Lfunc_end2-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_0:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.zero	4
	.zero	4
.LCPI3_11:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_1:
	.long	1073741824              # float 2
.LCPI3_2:
	.long	2139095040              # float +Inf
.LCPI3_4:
	.long	1065353216              # float 1
.LCPI3_5:
	.long	953267991               # float 9.99999974E-5
.LCPI3_7:
	.long	1063675494              # float 0.899999976
.LCPI3_8:
	.long	1036831949              # float 0.100000001
.LCPI3_9:
	.long	1066192077              # float 1.10000002
.LCPI3_10:
	.long	1063828014              # float 0.909090876
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_6:
	.quad	4613937818241073152     # double 3
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.p2align	4, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-16, %rsp
	subq	$400, %rsp              # imm = 0x190
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%r12, 208(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	8(%r15), %rax
	subq	(%r15), %rax
	xorl	%edi, %edi
	sarq	$3, %rax
	movaps	.LCPI3_0(%rip), %xmm13  # xmm13 = <2,2,u,u>
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB3_65
# BB#1:
	movss	.LCPI3_2(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movl	$1, %ebx
	xorps	%xmm6, %xmm6
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_2:                                # %.lr.ph45
                                        # =>This Inner Loop Header: Depth=1
	movl	$2139095040, 12(%rsp)   # imm = 0x7F800000
	movl	$2139095040, 140(%rsp)  # imm = 0x7F800000
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rax
	movq	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	(%r14), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm0, %xmm1
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	8(%r14), %xmm0
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	movss	(%r12), %xmm3           # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	movss	4(%r12), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm3, %xmm4
	movss	8(%r12), %xmm3          # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	addss	%xmm4, %xmm3
	ucomiss	%xmm3, %xmm6
	jbe	.LBB3_4
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_9
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=1
	mulss	%xmm1, %xmm1
	mulss	%xmm2, %xmm2
	addss	%xmm1, %xmm2
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	mulss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	16(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB3_6
# BB#5:                                 #   in Loop: Header=BB3_2 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_9
	.p2align	4, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	subss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_8
# BB#7:                                 # %call.sqrt
                                        #   in Loop: Header=BB3_2 Depth=1
	movapd	%xmm1, %xmm0
	movq	%r15, %r12
	movq	%rdi, %r15
	movaps	%xmm5, 16(%rsp)         # 16-byte Spill
	movss	%xmm3, 144(%rsp)        # 4-byte Spill
	callq	sqrt
	movss	144(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm6, %xmm6
	movaps	.LCPI3_0(%rip), %xmm13  # xmm13 = <2,2,u,u>
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movq	%r15, %rdi
	movq	%r12, %r15
	movq	208(%rsp), %r12         # 8-byte Reload
.LBB3_8:                                # %.split
                                        #   in Loop: Header=BB3_2 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	movaps	%xmm3, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 12(%rsp)
	addss	%xmm0, %xmm3
	movss	%xmm3, 140(%rsp)
	movb	$1, %al
.LBB3_9:                                # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	%al, %al
	je	.LBB3_14
# BB#10:                                #   in Loop: Header=BB3_2 Depth=1
	ucomiss	12(%rsp), %xmm6
	jbe	.LBB3_12
# BB#11:                                #   in Loop: Header=BB3_2 Depth=1
	movss	140(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm5
	jbe	.LBB3_14
# BB#13:                                #   in Loop: Header=BB3_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movaps	%xmm0, %xmm5
.LBB3_14:                               #   in Loop: Header=BB3_2 Depth=1
	movl	%ebx, %r13d
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	incl	%ebx
	cmpq	%rax, %r13
	jb	.LBB3_2
# BB#15:                                # %._crit_edge
	testq	%rdi, %rdi
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB3_65
# BB#16:
	movq	(%r12), %xmm0           # xmm0 = mem[0],zero
	movaps	%xmm5, %xmm1
	shufps	$224, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,3]
	mulps	%xmm0, %xmm1
	mulss	8(%r12), %xmm5
	movq	(%r14), %xmm12          # xmm12 = mem[0],zero
	addps	%xmm1, %xmm12
	addss	8(%r14), %xmm5
	movq	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movaps	%xmm12, %xmm1
	subps	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	subss	8(%rdi), %xmm0
	movd	%xmm1, %r9
	movd	%xmm0, %r8d
	movd	%r9d, %xmm1
	mulss	%xmm1, %xmm1
	movq	%r9, %rax
	shrq	$32, %rax
	movd	%eax, %xmm2
	mulss	%xmm2, %xmm2
	addss	%xmm1, %xmm2
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm0
	jbe	.LBB3_17
# BB#18:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	movq	160(%rsp), %r14         # 8-byte Reload
	jnp	.LBB3_20
# BB#19:                                # %call.sqrt3
	movapd	%xmm1, %xmm0
	movq	%rdi, %r13
	movaps	%xmm5, 16(%rsp)         # 16-byte Spill
	movaps	%xmm12, 112(%rsp)       # 16-byte Spill
	movq	%r8, %rbx
	movq	%r9, %r14
	callq	sqrt
	xorps	%xmm3, %xmm3
	movq	%r14, %r9
	movq	160(%rsp), %r14         # 8-byte Reload
	movq	%rbx, %r8
	movaps	112(%rsp), %xmm12       # 16-byte Reload
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movq	%r13, %rdi
.LBB3_20:                               # %.split2
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movd	%r9, %xmm1
	movd	%r8d, %xmm2
	mulss	%xmm0, %xmm2
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm1, %xmm0
	movd	%xmm0, %r9
	movd	%xmm2, %r8d
	jmp	.LBB3_21
.LBB3_17:
	movq	160(%rsp), %r14         # 8-byte Reload
.LBB3_21:                               # %_ZN4Vec3IfE9normalizeEv.exit52
	movd	%r9d, %xmm0
	mulss	(%r12), %xmm0
	movq	%r9, %rax
	shrq	$32, %rax
	movd	%eax, %xmm1
	mulss	4(%r12), %xmm1
	addss	%xmm0, %xmm1
	movd	%r8d, %xmm0
	mulss	8(%r12), %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm3, %xmm0
	jbe	.LBB3_22
# BB#23:
	xorl	$-2147483648, %r9d      # imm = 0xFFFFFFFF80000000
	xorl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	shlq	$32, %rax
	orq	%rax, %r9
	xorl	$-2147483648, %r8d      # imm = 0xFFFFFFFF80000000
	movb	$1, %bl
	jmp	.LBB3_24
.LBB3_22:
	xorl	%ebx, %ebx
.LBB3_24:
	movss	44(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_25
# BB#41:
	movaps	%xmm5, 16(%rsp)         # 16-byte Spill
	cmpl	$4, (%r14)
	jg	.LBB3_27
	jmp	.LBB3_42
.LBB3_25:
	movaps	%xmm5, 16(%rsp)         # 16-byte Spill
	movss	48(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_27
# BB#26:
	cmpl	$5, (%r14)
	jge	.LBB3_27
.LBB3_42:
	movaps	%xmm12, 112(%rsp)       # 16-byte Spill
	movq	%rdi, %r13
	movd	%r9d, %xmm1
	movaps	%xmm1, 144(%rsp)        # 16-byte Spill
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	shrq	$32, %r9
	movd	%r9d, %xmm2
	movaps	%xmm2, 80(%rsp)         # 16-byte Spill
	movss	4(%r12), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movd	%r8d, %xmm2
	movss	%xmm2, 96(%rsp)         # 4-byte Spill
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	.LCPI3_4(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI3_6(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movss	96(%rsp), %xmm8         # 4-byte Reload
                                        # xmm8 = mem[0],zero,zero,zero
	movaps	80(%rsp), %xmm7         # 16-byte Reload
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	cvtsd2ss	%xmm0, %xmm5
	mulss	.LCPI3_7(%rip), %xmm5
	movaps	%xmm6, %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm7, %xmm1
	addss	%xmm1, %xmm1
	movaps	%xmm8, %xmm2
	addss	%xmm2, %xmm2
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movss	(%r12), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	movss	4(%r12), %xmm3          # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm3
	addss	%xmm1, %xmm3
	movss	8(%r12), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm4
	mulss	%xmm8, %xmm4
	addss	%xmm3, %xmm4
	mulss	%xmm4, %xmm2
	shufps	$224, %xmm4, %xmm4      # xmm4 = xmm4[0,0,2,3]
	mulps	%xmm0, %xmm4
	movq	(%r12), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm4, %xmm0
	subss	%xmm2, %xmm1
	movlps	%xmm0, 336(%rsp)
	movss	%xmm1, 344(%rsp)
	movl	344(%rsp), %eax
	movl	%eax, 72(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 64(%rsp)
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	68(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	72(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB3_46
# BB#43:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_45
# BB#44:                                # %call.sqrt5
	movapd	%xmm1, %xmm0
	movaps	%xmm5, 176(%rsp)        # 16-byte Spill
	callq	sqrt
	movss	96(%rsp), %xmm8         # 4-byte Reload
                                        # xmm8 = mem[0],zero,zero,zero
	movaps	80(%rsp), %xmm7         # 16-byte Reload
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	movaps	176(%rsp), %xmm5        # 16-byte Reload
.LBB3_45:                               # %.split4
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm1, %xmm2
	movlps	%xmm2, 64(%rsp)
	mulss	72(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
.LBB3_46:                               # %_ZN4Vec3IfE9normalizeEv.exit50
	movss	%xmm8, 96(%rsp)         # 4-byte Spill
	movaps	%xmm7, 80(%rsp)         # 16-byte Spill
	movaps	%xmm6, 144(%rsp)        # 16-byte Spill
	addss	.LCPI3_8(%rip), %xmm5
	movaps	%xmm5, 176(%rsp)        # 16-byte Spill
	movss	.LCPI3_5(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm6
	movaps	%xmm7, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm8, %xmm2
	movss	%xmm2, 40(%rsp)         # 4-byte Spill
	unpcklps	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	movaps	%xmm6, 224(%rsp)        # 16-byte Spill
	movaps	112(%rsp), %xmm0        # 16-byte Reload
	addps	%xmm6, %xmm0
	movaps	16(%rsp), %xmm1         # 16-byte Reload
	addss	%xmm2, %xmm1
	movlps	%xmm0, 304(%rsp)
	movss	%xmm1, 312(%rsp)
	movl	312(%rsp), %eax
	movl	%eax, 328(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 320(%rsp)
	movl	(%r14), %eax
	incl	%eax
	movl	%eax, 204(%rsp)
	leaq	320(%rsp), %rdi
	leaq	64(%rsp), %rsi
	leaq	204(%rsp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movaps	%xmm0, %xmm5
	movaps	%xmm1, %xmm4
	movq	%r13, %rdi
	movss	44(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB3_47
	jnp	.LBB3_57
.LBB3_47:
	testb	%bl, %bl
	jne	.LBB3_48
# BB#49:
	movaps	%xmm5, 352(%rsp)        # 16-byte Spill
	movss	%xmm4, 32(%rsp)         # 4-byte Spill
	movss	.LCPI3_10(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_50
.LBB3_27:                               # %.preheader
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	xorps	%xmm13, %xmm13
	xorps	%xmm14, %xmm14
	xorps	%xmm1, %xmm1
	movaps	16(%rsp), %xmm11        # 16-byte Reload
	je	.LBB3_64
# BB#28:                                # %.lr.ph42.preheader
	movaps	%xmm12, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	movaps	%xmm3, 208(%rsp)        # 16-byte Spill
	xorps	%xmm4, %xmm4
	xorl	%ebx, %ebx
	movss	.LCPI3_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movq	%r9, %r10
	shrq	$32, %r10
	movq	%r10, 32(%rsp)          # 8-byte Spill
	xorps	%xmm13, %xmm13
	xorps	%xmm14, %xmm14
	xorps	%xmm1, %xmm1
                                        # implicit-def: %XMM0
	.p2align	4, 0x90
.LBB3_29:                               # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movss	32(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm2
	jbe	.LBB3_63
# BB#30:                                #   in Loop: Header=BB3_29 Depth=1
	movaps	%xmm1, 144(%rsp)        # 16-byte Spill
	movss	(%rax), %xmm8           # xmm8 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm7          # xmm7 = mem[0],zero,zero,zero
	subss	%xmm12, %xmm8
	subss	%xmm3, %xmm7
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm11, %xmm1
	movss	%xmm8, %xmm0            # xmm0 = xmm8[0],xmm0[1,2,3]
	movaps	%xmm7, %xmm2
	shufps	$0, %xmm0, %xmm2        # xmm2 = xmm2[0,0],xmm0[0,0]
	shufps	$226, %xmm0, %xmm2      # xmm2 = xmm2[2,0],xmm0[2,3]
	movd	%xmm2, %r13
	movd	%xmm1, %r12d
	movd	%r13d, %xmm0
	mulss	%xmm0, %xmm0
	movq	%r13, %rax
	shrq	$32, %rax
	movd	%eax, %xmm2
	mulss	%xmm2, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm4, %xmm1
	jbe	.LBB3_34
# BB#31:                                #   in Loop: Header=BB3_29 Depth=1
	cvtss2sd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_33
# BB#32:                                # %call.sqrt11
                                        #   in Loop: Header=BB3_29 Depth=1
	movapd	%xmm1, %xmm0
	movq	%r15, 224(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	movaps	%xmm12, 112(%rsp)       # 16-byte Spill
	movaps	%xmm13, 176(%rsp)       # 16-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r9, %r14
	movaps	%xmm14, 96(%rsp)        # 16-byte Spill
	movaps	%xmm8, 160(%rsp)        # 16-byte Spill
	movaps	%xmm7, 80(%rsp)         # 16-byte Spill
	callq	sqrt
	movaps	80(%rsp), %xmm7         # 16-byte Reload
	movaps	160(%rsp), %xmm8        # 16-byte Reload
	movq	32(%rsp), %r10          # 8-byte Reload
	movss	.LCPI3_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	movaps	96(%rsp), %xmm14        # 16-byte Reload
	movq	%r14, %r9
	movq	40(%rsp), %r8           # 8-byte Reload
	movaps	176(%rsp), %xmm13       # 16-byte Reload
	movaps	112(%rsp), %xmm12       # 16-byte Reload
	movaps	16(%rsp), %xmm11        # 16-byte Reload
	movq	%r15, %rdi
	movq	224(%rsp), %r15         # 8-byte Reload
.LBB3_33:                               # %.split10
                                        #   in Loop: Header=BB3_29 Depth=1
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movd	%r13, %xmm1
	movd	%r12d, %xmm2
	mulss	%xmm0, %xmm2
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm1, %xmm0
	movd	%xmm0, %r13
	movd	%xmm2, %r12d
.LBB3_34:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	movaps	%xmm5, %xmm6
	je	.LBB3_62
# BB#35:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_29 Depth=1
	movaps	%xmm7, 80(%rsp)         # 16-byte Spill
	movaps	%xmm8, 160(%rsp)        # 16-byte Spill
	movd	%r9d, %xmm9
	movss	.LCPI3_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm9
	movd	%r10d, %xmm15
	mulss	%xmm0, %xmm15
	movd	%r8d, %xmm2
	mulss	%xmm0, %xmm2
	movd	%r13d, %xmm8
	movq	%r13, %rdx
	shrq	$32, %rdx
	movd	%edx, %xmm10
	movd	%r12d, %xmm5
	xorl	%edx, %edx
	movaps	208(%rsp), %xmm1        # 16-byte Reload
	.p2align	4, 0x90
.LBB3_36:                               # %.lr.ph
                                        #   Parent Loop BB3_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edx, %ebx
	je	.LBB3_59
# BB#37:                                #   in Loop: Header=BB3_36 Depth=2
	movq	(%rax,%rdx,8), %rsi
	movaps	%xmm12, %xmm0
	addss	%xmm9, %xmm0
	movaps	%xmm1, %xmm6
	addss	%xmm15, %xmm6
	movaps	%xmm11, %xmm4
	addss	%xmm2, %xmm4
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	4(%rsi), %xmm7          # xmm7 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm3
	subss	%xmm6, %xmm7
	movss	8(%rsi), %xmm6          # xmm6 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm6
	movaps	%xmm3, %xmm0
	mulss	%xmm8, %xmm0
	movaps	%xmm7, %xmm4
	mulss	%xmm10, %xmm4
	addss	%xmm0, %xmm4
	movaps	%xmm6, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	ucomiss	%xmm0, %xmm4
	ja	.LBB3_59
# BB#38:                                #   in Loop: Header=BB3_36 Depth=2
	mulss	%xmm3, %xmm3
	mulss	%xmm7, %xmm7
	addss	%xmm3, %xmm7
	mulss	%xmm6, %xmm6
	addss	%xmm7, %xmm6
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm6
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm6
	jbe	.LBB3_39
.LBB3_59:                               #   in Loop: Header=BB3_36 Depth=2
	leal	1(%rdx), %edx
	cmpq	%rcx, %rdx
	jb	.LBB3_36
# BB#60:                                #   in Loop: Header=BB3_29 Depth=1
	movss	.LCPI3_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm6
	jmp	.LBB3_61
.LBB3_39:                               #   in Loop: Header=BB3_29 Depth=1
	movaps	%xmm14, 96(%rsp)        # 16-byte Spill
	movq	%r8, %r14
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	subss	%xmm6, %xmm0
	cvtss2sd	%xmm0, %xmm0
	sqrtsd	%xmm0, %xmm1
	xorps	%xmm6, %xmm6
	ucomisd	%xmm1, %xmm1
	jnp	.LBB3_40
# BB#58:                                # %call.sqrt13
                                        #   in Loop: Header=BB3_29 Depth=1
	movaps	%xmm12, 112(%rsp)       # 16-byte Spill
	movaps	%xmm13, 176(%rsp)       # 16-byte Spill
	movq	%r9, 224(%rsp)          # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	callq	sqrt
	xorps	%xmm6, %xmm6
	movq	32(%rsp), %r10          # 8-byte Reload
	xorps	%xmm4, %xmm4
	movq	224(%rsp), %r9          # 8-byte Reload
	movaps	176(%rsp), %xmm13       # 16-byte Reload
	movaps	112(%rsp), %xmm12       # 16-byte Reload
	movaps	16(%rsp), %xmm11        # 16-byte Reload
.LBB3_40:                               #   in Loop: Header=BB3_29 Depth=1
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %r8
	movaps	96(%rsp), %xmm14        # 16-byte Reload
	movss	.LCPI3_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB3_61:                               # %.loopexit
                                        #   in Loop: Header=BB3_29 Depth=1
	movaps	160(%rsp), %xmm8        # 16-byte Reload
	movaps	80(%rsp), %xmm7         # 16-byte Reload
.LBB3_62:                               # %.loopexit
                                        #   in Loop: Header=BB3_29 Depth=1
	unpcklps	%xmm7, %xmm8    # xmm8 = xmm8[0],xmm7[0],xmm8[1],xmm7[1]
	movq	20(%rdi), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm6, %xmm0
	unpcklps	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1]
	mulps	%xmm1, %xmm0
	mulss	28(%rdi), %xmm6
	movd	%r9d, %xmm1
	movd	%r13d, %xmm2
	mulss	%xmm1, %xmm2
	movd	%r10d, %xmm1
	shrq	$32, %r13
	movd	%r13d, %xmm3
	mulss	%xmm1, %xmm3
	addss	%xmm2, %xmm3
	movd	%r8d, %xmm1
	movd	%r12d, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm3, %xmm2
	maxss	%xmm4, %xmm2
	mulss	%xmm2, %xmm6
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm0, %xmm2
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	mulps	%xmm2, %xmm0
	mulss	40(%rax), %xmm6
	unpcklps	%xmm14, %xmm13  # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1]
	addps	%xmm0, %xmm13
	movaps	%xmm13, %xmm14
	shufps	$229, %xmm14, %xmm14    # xmm14 = xmm14[1,1,2,3]
	movaps	144(%rsp), %xmm1        # 16-byte Reload
	addss	%xmm6, %xmm1
	movaps	%xmm8, %xmm0
	movaps	208(%rsp), %xmm3        # 16-byte Reload
.LBB3_63:                               #   in Loop: Header=BB3_29 Depth=1
	leal	1(%rbx), %ebx
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	cmpq	%rax, %rbx
	jb	.LBB3_29
	jmp	.LBB3_64
.LBB3_48:
	movaps	%xmm5, 352(%rsp)        # 16-byte Spill
	movss	%xmm4, 32(%rsp)         # 4-byte Spill
	movss	.LCPI3_9(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB3_50:
	movaps	16(%rsp), %xmm8         # 16-byte Reload
	movaps	112(%rsp), %xmm9        # 16-byte Reload
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	movaps	80(%rsp), %xmm11        # 16-byte Reload
	movss	96(%rsp), %xmm10        # 4-byte Reload
                                        # xmm10 = mem[0],zero,zero,zero
	movss	(%r12), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	movss	4(%r12), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm11, %xmm2
	addss	%xmm1, %xmm2
	movss	8(%r12), %xmm7          # xmm7 = mem[0],zero,zero,zero
	movaps	%xmm10, %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
	movaps	.LCPI3_11(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	mulss	%xmm3, %xmm3
	mulss	%xmm1, %xmm1
	movss	.LCPI3_4(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm5
	subss	%xmm1, %xmm5
	mulss	%xmm3, %xmm5
	subss	%xmm5, %xmm4
	movq	(%r12), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm3
	shufps	$224, %xmm3, %xmm3      # xmm3 = xmm3[0,0,2,3]
	mulps	%xmm1, %xmm3
	mulss	%xmm0, %xmm7
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_52
# BB#51:                                # %call.sqrt7
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	movss	%xmm7, 208(%rsp)        # 4-byte Spill
	movaps	%xmm3, 368(%rsp)        # 16-byte Spill
	movsd	%xmm2, 248(%rsp)        # 8-byte Spill
	callq	sqrt
	movsd	248(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movaps	368(%rsp), %xmm3        # 16-byte Reload
	movss	208(%rsp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	movss	96(%rsp), %xmm10        # 4-byte Reload
                                        # xmm10 = mem[0],zero,zero,zero
	movaps	80(%rsp), %xmm11        # 16-byte Reload
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	movaps	112(%rsp), %xmm9        # 16-byte Reload
	movaps	16(%rsp), %xmm8         # 16-byte Reload
	movq	%rbx, %rdi
.LBB3_52:                               # %.split6
	movq	%rdi, %rbx
	subsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	mulss	%xmm0, %xmm6
	mulss	%xmm0, %xmm11
	mulss	%xmm0, %xmm10
	unpcklps	%xmm11, %xmm6   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	addps	%xmm6, %xmm3
	addss	%xmm10, %xmm7
	movlps	%xmm3, 288(%rsp)
	movss	%xmm7, 296(%rsp)
	movl	296(%rsp), %eax
	movl	%eax, 56(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 48(%rsp)
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	56(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB3_56
# BB#53:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_55
# BB#54:                                # %call.sqrt9
	movapd	%xmm1, %xmm0
	callq	sqrt
	movaps	112(%rsp), %xmm9        # 16-byte Reload
	movaps	16(%rsp), %xmm8         # 16-byte Reload
.LBB3_55:                               # %.split8
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm1, %xmm2
	movlps	%xmm2, 48(%rsp)
	mulss	56(%rsp), %xmm0
	movss	%xmm0, 56(%rsp)
.LBB3_56:                               # %_ZN4Vec3IfE9normalizeEv.exit48
	subps	224(%rsp), %xmm9        # 16-byte Folded Reload
	subss	40(%rsp), %xmm8         # 4-byte Folded Reload
	movlps	%xmm9, 256(%rsp)
	movss	%xmm8, 264(%rsp)
	movl	264(%rsp), %eax
	movl	%eax, 280(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 272(%rsp)
	movl	(%r14), %eax
	incl	%eax
	movl	%eax, 200(%rsp)
	leaq	272(%rsp), %rdi
	leaq	48(%rsp), %rsi
	leaq	200(%rsp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movq	%rbx, %rdi
	movss	32(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movaps	352(%rsp), %xmm5        # 16-byte Reload
.LBB3_57:
	movaps	176(%rsp), %xmm3        # 16-byte Reload
	movaps	%xmm3, %xmm2
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm2, %xmm5
	mulss	%xmm3, %xmm4
	movss	.LCPI3_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	shufps	$224, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,3]
	mulps	%xmm0, %xmm2
	movss	44(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	mulps	%xmm2, %xmm0
	addps	%xmm5, %xmm0
	addss	%xmm4, %xmm1
	movq	20(%rdi), %xmm13        # xmm13 = mem[0],zero
	mulps	%xmm0, %xmm13
	mulss	28(%rdi), %xmm1
	movaps	%xmm13, %xmm14
	shufps	$229, %xmm14, %xmm14    # xmm14 = xmm14[1,1,2,3]
.LBB3_64:                               # %.loopexit2
	addss	32(%rdi), %xmm13
	addss	36(%rdi), %xmm14
	addss	40(%rdi), %xmm1
	unpcklps	%xmm14, %xmm13  # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1]
.LBB3_65:
	movaps	%xmm13, %xmm0
	leaq	-40(%rbp), %rsp
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

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_raytracer.cpp,@function
_GLOBAL__sub_I_raytracer.cpp:           # @_GLOBAL__sub_I_raytracer.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	andq	$-16, %rsp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_GLOBAL__sub_I_raytracer.cpp, .Lfunc_end4-_GLOBAL__sub_I_raytracer.cpp
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

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"vector::_M_insert_aux"
	.size	.L.str.1, 22

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_raytracer.cpp

	.ident	"clang version 3.9.0 (trunk 263061)"
	.section	".note.GNU-stack","",@progbits
