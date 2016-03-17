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
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp32:
	.cfi_offset %rbx, -24
	movl	$13, %edi
	callq	srand48
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	$0, -16(%rbp)
.Ltmp0:
	movl	$52, %edi
	callq	_Znwm
.Ltmp1:
# BB#1:                                 # %invoke.cont11
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,-1.000400e+04,-2.000000e+01,1.000000e+04]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.000000e+08,2.000000e-01,2.000000e-01,2.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB0_3
# BB#2:                                 # %if.then.i
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
	jmp	.LBB0_4
.LBB0_3:                                # %if.else.i
	movq	-24(%rbp), %rsi
.Ltmp2:
	leaq	-32(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp3:
.LBB0_4:                                # %invoke.cont12
.Ltmp4:
	movl	$52, %edi
	callq	_Znwm
.Ltmp5:
# BB#5:                                 # %invoke.cont26
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,-2.000000e+01,4.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_3(%rip), %xmm0   # xmm0 = [1.600000e+01,1.000000e+00,3.200000e-01,3.600000e-01]
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_4(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,5.000000e-01]
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB0_7
# BB#6:                                 # %if.then.i176
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.i181
	movq	-24(%rbp), %rsi
.Ltmp6:
	leaq	-32(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp7:
.LBB0_8:                                # %invoke.cont27
.Ltmp8:
	movl	$52, %edi
	callq	_Znwm
.Ltmp9:
# BB#9:                                 # %invoke.cont41
	movaps	.LCPI0_5(%rip), %xmm0   # xmm0 = [5.000000e+00,-1.000000e+00,-1.500000e+01,2.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_6(%rip), %xmm0   # xmm0 = [4.000000e+00,9.000000e-01,7.600000e-01,4.600000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB0_11
# BB#10:                                # %if.then.i162
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.i167
	movq	-24(%rbp), %rsi
.Ltmp10:
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp11:
.LBB0_12:                               # %invoke.cont42
.Ltmp12:
	movl	$52, %edi
	callq	_Znwm
.Ltmp13:
# BB#13:                                # %invoke.cont56
	movaps	.LCPI0_7(%rip), %xmm0   # xmm0 = [5.000000e+00,0.000000e+00,-2.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_8(%rip), %xmm0   # xmm0 = [9.000000e+00,6.500000e-01,7.700000e-01,9.700000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB0_15
# BB#14:                                # %if.then.i123
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.i128
	movq	-24(%rbp), %rsi
.Ltmp14:
	leaq	-32(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp15:
.LBB0_16:                               # %invoke.cont57
.Ltmp16:
	movl	$52, %edi
	callq	_Znwm
.Ltmp17:
# BB#17:                                # %invoke.cont71
	movaps	.LCPI0_9(%rip), %xmm0   # xmm0 = [-5.500000e+00,0.000000e+00,-1.500000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movaps	.LCPI0_10(%rip), %xmm0  # xmm0 = [9.000000e+00,9.000000e-01,9.000000e-01,9.000000e-01]
	movups	%xmm0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB0_19
# BB#18:                                # %if.then.i89
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.i94
	movq	-24(%rbp), %rsi
.Ltmp18:
	leaq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp19:
.LBB0_20:                               # %invoke.cont72
.Ltmp20:
	movl	$52, %edi
	callq	_Znwm
.Ltmp21:
# BB#21:                                # %invoke.cont86
	movaps	.LCPI0_11(%rip), %xmm0  # xmm0 = [0.000000e+00,2.000000e+01,-3.000000e+01,3.000000e+00]
	movups	%xmm0, (%rax)
	movss	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movups	%xmm0, 16(%rax)
	movaps	.LCPI0_13(%rip), %xmm0  # xmm0 = [3.000000e+00,3.000000e+00,