	.file	"raytracer.bc"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rax
	ret
.Ltmp2:
	.size	__cxx_global_var_init, .Ltmp2-__cxx_global_var_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	3323744256              # float -10004
.LCPI1_1:
	.long	3248488448              # float -20
.LCPI1_2:
	.long	1045220557              # float 0.200000003
.LCPI1_3:
	.long	1065353216              # float 1
.LCPI1_4:
	.long	1050924810              # float 0.319999993
.LCPI1_5:
	.long	1052266988              # float 0.360000014
.LCPI1_6:
	.long	1084227584              # float 5
.LCPI1_7:
	.long	3212836864              # float -1
.LCPI1_8:
	.long	3245342720              # float -15
.LCPI1_9:
	.long	1063675494              # float 0.899999976
.LCPI1_10:
	.long	1061326684              # float 0.75999999
.LCPI1_11:
	.long	1055622431              # float 0.460000008
.LCPI1_12:
	.long	3251109888              # float -25
.LCPI1_13:
	.long	1059481190              # float 0.649999976
.LCPI1_14:
	.long	1061494456              # float 0.76999998
.LCPI1_15:
	.long	1064849900              # float 0.970000028
.LCPI1_16:
	.long	3232759808              # float -5.5
.LCPI1_17:
	.long	1101004800              # float 20
.LCPI1_18:
	.long	3253731328              # float -30
.LCPI1_19:
	.long	1077936128              # float 3
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin1:
	.cfi_lsda 3, .Lexception1
# BB#0:                                 # %bb
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
	subq	$360, %rsp              # imm = 0x168
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
	movl	$13, %edi
	callq	srand48
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
.Ltmp3:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -152(%rbp)        # 8-byte Spill
.Ltmp4:
# BB#1:                                 # %bb48
	movq	%rsp, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	-16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	leaq	-16(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rax, -208(%rbp)        # 8-byte Spill
	leaq	-16(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	vmovss	.LCPI1_0(%rip), %xmm1
	vmovss	.LCPI1_1(%rip), %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1176256512, -16(%rbx)  # imm = 0x461C4000
	vmovss	.LCPI1_2(%rip), %xmm0
	movq	%r12, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$0, -16(%rax)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$0, -16(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r15, (%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %rcx
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rbx, -16(%rax)
.Ltmp5:
	leaq	-64(%rbp), %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp6:
# BB#2:                                 # %bb49
.Ltmp7:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -152(%rbp)        # 8-byte Spill
.Ltmp8:
# BB#3:                                 # %bb56
	vmovss	.LCPI1_1(%rip), %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	_ZN4Vec3IfEC2Efff
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$1082130432, (%rax)     # imm = 0x40800000
	vmovss	.LCPI1_3(%rip), %xmm0
	vmovss	.LCPI1_4(%rip), %xmm1
	vmovss	.LCPI1_5(%rip), %xmm2
	movq	-224(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1065353216, (%r14)     # imm = 0x3F800000
	movq	-232(%rbp), %r15        # 8-byte Reload
	movl	$1056964608, (%r15)     # imm = 0x3F000000
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-240(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r12, (%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	movq	%r14, %r8
	movq	%r15, %r9
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, (%rsi)
.Ltmp9:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp10:
# BB#4:                                 # %bb57
.Ltmp11:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -72(%rbp)         # 8-byte Spill
.Ltmp12:
# BB#5:                                 # %bb64
	vmovss	.LCPI1_6(%rip), %xmm0
	vmovss	.LCPI1_7(%rip), %xmm1
	vmovss	.LCPI1_8(%rip), %xmm2
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZN4Vec3IfEC2Efff
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$1073741824, (%rax)     # imm = 0x40000000
	vmovss	.LCPI1_9(%rip), %xmm0
	vmovss	.LCPI1_10(%rip), %xmm1
	vmovss	.LCPI1_11(%rip), %xmm2
	movq	-256(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movq	-264(%rbp), %r12        # 8-byte Reload
	movl	$1065353216, (%r12)     # imm = 0x3F800000
	movq	-272(%rbp), %r14        # 8-byte Reload
	movl	$0, (%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-280(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r15, (%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, (%rsi)
.Ltmp13:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp14:
# BB#6:                                 # %bb65
.Ltmp15:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -72(%rbp)         # 8-byte Spill
.Ltmp16:
# BB#7:                                 # %bb72
	vmovss	.LCPI1_6(%rip), %xmm0
	vmovss	.LCPI1_12(%rip), %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	_ZN4Vec3IfEC2Efff
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$1077936128, (%rax)     # imm = 0x40400000
	vmovss	.LCPI1_13(%rip), %xmm0
	vmovss	.LCPI1_14(%rip), %xmm1
	vmovss	.LCPI1_15(%rip), %xmm2
	movq	-296(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movq	-304(%rbp), %r12        # 8-byte Reload
	movl	$1065353216, (%r12)     # imm = 0x3F800000
	movq	-312(%rbp), %r14        # 8-byte Reload
	movl	$0, (%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-320(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r15, (%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, (%rsi)
.Ltmp17:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp18:
# BB#8:                                 # %bb73
.Ltmp19:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -72(%rbp)         # 8-byte Spill
.Ltmp20:
# BB#9:                                 # %bb80
	vmovss	.LCPI1_16(%rip), %xmm0
	vmovss	.LCPI1_8(%rip), %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	_ZN4Vec3IfEC2Efff
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$1077936128, (%rax)     # imm = 0x40400000
	vmovss	.LCPI1_9(%rip), %xmm0
	movq	-336(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	vmovaps	%xmm0, %xmm1
	vmovaps	%xmm0, %xmm2
	callq	_ZN4Vec3IfEC2Efff
	movq	-344(%rbp), %r12        # 8-byte Reload
	movl	$1065353216, (%r12)     # imm = 0x3F800000
	movq	-352(%rbp), %r14        # 8-byte Reload
	movl	$0, (%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-360(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r15, (%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, (%rsi)
.Ltmp21:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp22:
# BB#10:                                # %bb81
.Ltmp23:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -72(%rbp)         # 8-byte Spill
.Ltmp24:
# BB#11:                                # %bb88
	vmovss	.LCPI1_17(%rip), %xmm1
	vmovss	.LCPI1_18(%rip), %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	_ZN4Vec3IfEC2Efff
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$1077936128, (%rax)     # imm = 0x40400000
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-376(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	-384(%rbp), %r12        # 8-byte Reload
	movl	$0, (%r12)
	movq	-392(%rbp), %r14        # 8-byte Reload
	movl	$0, (%r14)
	vmovss	.LCPI1_19(%rip), %xmm0
	movq	-400(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	subq	$16, %rsp
	movq	%r15, (%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	addq	$16, %rsp
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, (%rsi)
.Ltmp25:
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp26:
# BB#12:                                # %bb89
.Ltmp27:
	leaq	-64(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
.Ltmp28:
# BB#13:                                # %bb91
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB1_15
# BB#14:                                # %bb122
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB1_15:                               # %bb139
	leaq	-64(%rbp), %rbx
	movq	%rbx, %rdi
	callq	main_bb126
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB1_16:                               # %bb140
.Ltmp29:
	movq	%rax, %rbx
.Ltmp30:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
.Ltmp31:
# BB#17:                                # %bb144
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB1_18:                               # %bb147
.Ltmp32:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Ltmp44:
	.size	main, .Ltmp44-main
	.cfi_endproc
.Leh_func_end1:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table1:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
.Lset0 = .Ltmp3-.Leh_func_begin1        # >> Call Site 1 <<
	.long	.Lset0
.Lset1 = .Ltmp28-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp28
	.long	.Lset1
.Lset2 = .Ltmp29-.Leh_func_begin1       #     jumps to .Ltmp29
	.long	.Lset2
	.byte	0                       #   On action: cleanup
.Lset3 = .Ltmp28-.Leh_func_begin1       # >> Call Site 2 <<
	.long	.Lset3
.Lset4 = .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.long	.Lset4
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lset5 = .Ltmp30-.Leh_func_begin1       # >> Call Site 3 <<
	.long	.Lset5
.Lset6 = .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.long	.Lset6
.Lset7 = .Ltmp32-.Leh_func_begin1       #     jumps to .Ltmp32
	.long	.Lset7
	.byte	1                       #   On action: 1
.Lset8 = .Ltmp31-.Leh_func_begin1       # >> Call Site 4 <<
	.long	.Lset8
.Lset9 = .Leh_func_end1-.Ltmp31         #   Call between .Ltmp31 and .Leh_func_end1
	.long	.Lset9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,@function
_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev:   # @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	popq	%rbp
	ret
.Ltmp50:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev, .Ltmp50-_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.LBB3_4
# BB#1:                                 # %bb9
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_3
# BB#2:                                 # %codeRepl.i
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i
.LBB3_3:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16.exit
	addq	$8, 8(%rbx)
	jmp	.LBB3_5
.LBB3_4:                                # %bb25
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB3_5:                                # %bb27
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp59:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_, .Ltmp59-_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.cfi_endproc

	.section	.text._ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,"axG",@progbits,_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,comdat
	.weak	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.align	16, 0x90
	.type	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,@function
_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_: # @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %r10
	movl	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	vmovss	(%rdx), %xmm0
	vmovss	%xmm0, 12(%rdi)
	vmovss	(%rdx), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rdi)
	movl	8(%rcx), %eax
	movl	%eax, 28(%rdi)
	movq	(%rcx), %rax
	movq	%rax, 20(%rdi)
	movl	8(%r10), %eax
	movl	%eax, 40(%rdi)
	movq	(%r10), %rax
	movq	%rax, 32(%rdi)
	vmovss	(%r9), %xmm0
	vmovss	%xmm0, 44(%rdi)
	vmovss	(%r8), %xmm0
	vmovss	%xmm0, 48(%rdi)
	popq	%rbp
	ret
.Ltmp65:
	.size	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_, .Ltmp65-_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Efff,"axG",@progbits,_ZN4Vec3IfEC2Efff,comdat
	.weak	_ZN4Vec3IfEC2Efff
	.align	16, 0x90
	.type	_ZN4Vec3IfEC2Efff,@function
_ZN4Vec3IfEC2Efff:                      # @_ZN4Vec3IfEC2Efff
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	vmovss	%xmm0, (%rdi)
	vmovss	%xmm1, 4(%rdi)
	vmovss	%xmm2, 8(%rdi)
	popq	%rbp
	ret
.Ltmp71:
	.size	_ZN4Vec3IfEC2Efff, .Ltmp71-_ZN4Vec3IfEC2Efff
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Ef,"axG",@progbits,_ZN4Vec3IfEC2Ef,comdat
	.weak	_ZN4Vec3IfEC2Ef
	.align	16, 0x90
	.type	_ZN4Vec3IfEC2Ef,@function
_ZN4Vec3IfEC2Ef:                        # @_ZN4Vec3IfEC2Ef
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	vmovss	%xmm0, (%rdi)
	vmovss	%xmm0, 4(%rdi)
	vmovss	%xmm0, 8(%rdi)
	popq	%rbp
	ret
.Ltmp77:
	.size	_ZN4Vec3IfEC2Ef, .Ltmp77-_ZN4Vec3IfEC2Ef
	.cfi_endproc

	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_startproc
# BB#0:                                 # %bb104
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %r8
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-20(%rbp), %r8
	movq	%rbx, %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77
	movl	-20(%rbp), %r14d
	movq	%rbx, %rdi
	callq	_ZdaPv
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp86:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Ltmp86-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp93:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	movq	%rax, -16(%rbp)
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp94:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv, .Ltmp94-_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rax, -8(%rbp)
	movq	$1, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp100:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv, .Ltmp100-_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	addq	$-8, 8(%rdi)
	popq	%rbp
	ret
.Ltmp106:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv, .Ltmp106-_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,@function
_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev:   # @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.cfi_startproc
# BB#0:                                 # %bb11
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	popq	%rbp
	ret
.Ltmp112:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev, .Ltmp112-_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.cfi_endproc

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	16, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:                                 # %bb
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Ltmp113:
	.size	__clang_call_terminate, .Ltmp113-__clang_call_terminate

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	ret
.Ltmp119:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_, .Ltmp119-_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp125:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv, .Ltmp125-_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	shlq	$3, %rcx
	subq	%rcx, %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp131:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl, .Ltmp131-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	ret
.Ltmp137:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv, .Ltmp137-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_,@function
_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_: # @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	ret
.Ltmp143:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_, .Ltmp143-_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"axG",@progbits,_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,comdat
	.weak	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,@function
_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_: # @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp150:
	.cfi_offset %rbx, -32
.Ltmp151:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	cmpq	(%rax), %rbx
	sete	%al
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp152:
	.size	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, .Ltmp152-_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp158:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv, .Ltmp158-_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	8(%rdi), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp164:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv, .Ltmp164-_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_: # @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	ret
.Ltmp170:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_, .Ltmp170-_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp176:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv, .Ltmp176-_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Ev,"axG",@progbits,_ZN4Vec3IfEC2Ev,comdat
	.weak	_ZN4Vec3IfEC2Ev
	.align	16, 0x90
	.type	_ZN4Vec3IfEC2Ev,@function
_ZN4Vec3IfEC2Ev:                        # @_ZN4Vec3IfEC2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	movl	$0, 8(%rdi)
	popq	%rbp
	ret
.Ltmp182:
	.size	_ZN4Vec3IfEC2Ev, .Ltmp182-_ZN4Vec3IfEC2Ev
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI24_0:
	.long	1073741824              # float 2
.LCPI24_1:
	.long	1065353216              # float 1
.LCPI24_3:
	.long	1066192077              # float 1.10000002
.LCPI24_4:
	.long	1063828014              # float 0.909090876
.LCPI24_6:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_2:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_5:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp189:
	.cfi_offset %rbx, -56
.Ltmp190:
	.cfi_offset %r12, -48
.Ltmp191:
	.cfi_offset %r13, -40
.Ltmp192:
	.cfi_offset %r14, -32
.Ltmp193:
	.cfi_offset %r15, -24
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$2139095040, -68(%rbp)  # imm = 0x7F800000
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB24_2
# BB#1:                                 # %codeRepl403
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	subq	$16, %rsp
	leaq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-68(%rbp), %r9
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106
	addq	$16, %rsp
	movq	-48(%rbp), %rbx
.LBB24_2:                               # %bb135
	testq	%rbx, %rbx
	je	.LBB24_3
# BB#4:                                 # %bb138
	leaq	-80(%rbp), %r13
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Ef
	leaq	-68(%rbp), %rsi
	movq	%r12, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -112(%rbp)
	vmovss	%xmm1, -104(%rbp)
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNK4Vec3IfEplERKS0_
	vmovq	%xmm0, -96(%rbp)
	vmovss	%xmm1, -88(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNK4Vec3IfEmiERKS0_
	vmovq	%xmm0, -128(%rbp)
	vmovss	%xmm1, -120(%rbp)
	leaq	-128(%rbp), %rdi
	callq	_ZNK4Vec3IfE7length2Ev
	vucomiss	.LCPI24_6, %xmm0
	jbe	.LBB24_6
# BB#5:                                 # %codeRepl.i
	leaq	-128(%rbp), %rdi
	callq	_ZN4Vec3IfE9normalizeEv17_
.LBB24_6:                               # %_ZN4Vec3IfE9normalizeEv17.exit
	movl	$953267991, -132(%rbp)  # imm = 0x38D1B717
	leaq	-128(%rbp), %rsi
	movq	%r12, %rdi
	callq	_ZNK4Vec3IfE3dotERKS0_
	vucomiss	.LCPI24_6, %xmm0
	jbe	.LBB24_7
# BB#8:                                 # %bb153
	leaq	-128(%rbp), %rdi
	callq	_ZNK4Vec3IfEngEv
	vmovss	%xmm0, -128(%rbp)
	vextractps	$1, %xmm0, -124(%rbp)
	vmovss	%xmm1, -120(%rbp)
	movb	$1, %cl
	jmp	.LBB24_9
.LBB24_3:                               # %bb137
	leaq	-64(%rbp), %rdi
	vmovss	.LCPI24_0(%rip), %xmm0
	callq	_ZN4Vec3IfEC2Ef
	jmp	.LBB24_27
.LBB24_7:
	xorl	%ecx, %ecx
.LBB24_9:                               # %bb159
	vmovss	44(%rbx), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB24_11
# BB#10:                                # %bb164
	vmovss	48(%rbx), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB24_24
.LBB24_11:                              # %bb168
	movq	-552(%rbp), %rax        # 8-byte Reload
	cmpl	$4, (%rax)
	jg	.LBB24_24
# BB#12:                                # %bb171
	movl	%ecx, %r13d
	leaq	-128(%rbp), %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	vaddss	.LCPI24_1(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI24_2(%rip), %xmm1
	callq	pow
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -140(%rbp)
	movl	$1065353216, -144(%rbp) # imm = 0x3F800000
	movl	$1036831949, -148(%rbp) # imm = 0x3DCCCCCD
	leaq	-140(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	callq	_Z3mixIfET_RKS0_S2_S2_
	vmovss	%xmm0, -136(%rbp)
	movl	$1073741824, -180(%rbp) # imm = 0x40000000
	leaq	-180(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -192(%rbp)
	vmovss	%xmm1, -184(%rbp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	vmovss	%xmm0, -196(%rbp)
	leaq	-192(%rbp), %rdi
	leaq	-196(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -176(%rbp)
	vmovss	%xmm1, -168(%rbp)
	leaq	-176(%rbp), %rsi
	movq	%r12, %rdi
	callq	_ZNK4Vec3IfEmiERKS0_
	vmovq	%xmm0, -160(%rbp)
	vmovss	%xmm1, -152(%rbp)
	leaq	-160(%rbp), %rdi
	callq	_ZNK4Vec3IfE7length2Ev
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB24_14
# BB#13:                                # %codeRepl.i41
	leaq	-160(%rbp), %rdi
	callq	_ZN4Vec3IfE9normalizeEv17_
.LBB24_14:                              # %_ZN4Vec3IfE9normalizeEv17.exit42
	leaq	-128(%rbp), %rdi
	leaq	-132(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -240(%rbp)
	vmovss	%xmm1, -232(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	vmovq	%xmm0, -224(%rbp)
	vmovss	%xmm1, -216(%rbp)
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -244(%rbp)
	leaq	-224(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-244(%rbp), %rcx
	movq	%r14, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, -208(%rbp)
	vmovss	%xmm1, -200(%rbp)
	leaq	-256(%rbp), %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	_ZN4Vec3IfEC2Ef
	vmovss	44(%rbx), %xmm0
	vucomiss	.LCPI24_6, %xmm0
	jne	.LBB24_15
	jnp	.LBB24_23
.LBB24_15:                              # %bb205
	testb	%r13b, %r13b
	je	.LBB24_17
# BB#16:
	vmovss	.LCPI24_3(%rip), %xmm0
	jmp	.LBB24_18
.LBB24_24:                              # %bb276
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	testq	%rax, %rax
	je	.LBB24_26
# BB#25:                                # %codeRepl
	subq	$96, %rsp
	movq	%r13, 88(%rsp)
	leaq	-504(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	-544(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	-528(%rbp), %rax
	movq	%rax, 64(%rsp)
	leaq	-524(%rbp), %rax
	movq	%rax, 56(%rsp)
	leaq	-520(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	%rbx, 40(%rsp)
	leaq	-488(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	-440(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-436(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-472(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-416(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-432(%rbp), %rcx
	leaq	-128(%rbp), %r8
	leaq	-132(%rbp), %r9
	movq	%r14, %rdi
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279
	addq	$96, %rsp
	jmp	.LBB24_26
.LBB24_17:                              # %bb208
	vmovss	.LCPI24_4(%rip), %xmm0
.LBB24_18:                              # %bb209
	vmovss	%xmm0, -260(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%r12, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	vxorps	.LCPI24_5(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -556(%rbp)       # 4-byte Spill
	vmovss	-260(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI24_1(%rip), %xmm2
	vsubss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm0, %xmm1, %xmm0
	vsubss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, -560(%rbp)       # 4-byte Spill
	leaq	-260(%rbp), %rsi
	movq	%r12, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -288(%rbp)
	vmovss	%xmm1, -280(%rbp)
	vmovss	-560(%rbp), %xmm0       # 4-byte Reload
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB24_20
# BB#19:                                # %call.sqrt
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB24_20:                              # %.split
	vmovss	-556(%rbp), %xmm1       # 4-byte Reload
	vmulss	-260(%rbp), %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -308(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	-308(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -304(%rbp)
	vmovss	%xmm1, -296(%rbp)
	leaq	-288(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	vmovq	%xmm0, -272(%rbp)
	vmovss	%xmm1, -264(%rbp)
	leaq	-272(%rbp), %rdi
	callq	_ZNK4Vec3IfE7length2Ev
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB24_22
# BB#21:                                # %codeRepl.i43
	leaq	-272(%rbp), %rdi
	callq	_ZN4Vec3IfE9normalizeEv17_
.LBB24_22:                              # %_ZN4Vec3IfE9normalizeEv17.exit44
	leaq	-128(%rbp), %rdi
	leaq	-132(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -336(%rbp)
	vmovss	%xmm1, -328(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	_ZNK4Vec3IfEmiERKS0_
	vmovq	%xmm0, -320(%rbp)
	vmovss	%xmm1, -312(%rbp)
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -340(%rbp)
	leaq	-320(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-340(%rbp), %rcx
	movq	%r14, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovss	%xmm0, -256(%rbp)
	vextractps	$1, %xmm0, -252(%rbp)
	vmovss	%xmm1, -248(%rbp)
.LBB24_23:                              # %bb254
	leaq	-208(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -352(%rbp)
	vmovss	%xmm1, -344(%rbp)
	vmovss	.LCPI24_1(%rip), %xmm0
	vsubss	-136(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -372(%rbp)
	leaq	-256(%rbp), %rdi
	leaq	-372(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -384(%rbp)
	vmovss	%xmm1, -376(%rbp)
	leaq	44(%rbx), %rsi
	leaq	-384(%rbp), %rdi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, -368(%rbp)
	vmovss	%xmm1, -360(%rbp)
	leaq	-352(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	vmovq	%xmm0, -400(%rbp)
	vmovss	%xmm1, -392(%rbp)
	leaq	20(%rbx), %rsi
	leaq	-400(%rbp), %rdi
	callq	_ZNK4Vec3IfEmlERKS0_
	vmovss	%xmm0, -80(%rbp)
	vextractps	$1, %xmm0, -76(%rbp)
	vmovss	%xmm1, -72(%rbp)
.LBB24_26:                              # %bb349
	addq	$32, %rbx
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	vmovq	%xmm0, -64(%rbp)
	vmovss	%xmm1, -56(%rbp)
.LBB24_27:                              # %bb354
	vmovq	-64(%rbp), %xmm0
	vmovss	-56(%rbp), %xmm1
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp194:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp194-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZSt3minIfERKT_S2_S2_,"axG",@progbits,_ZSt3minIfERKT_S2_S2_,comdat
	.weak	_ZSt3minIfERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3minIfERKT_S2_S2_,@function
_ZSt3minIfERKT_S2_S2_:                  # @_ZSt3minIfERKT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	vmovss	(%rdi), %xmm0
	vucomiss	(%rsi), %xmm0
	jbe	.LBB25_2
# BB#1:                                 # %bb3
	movq	%rsi, %rdi
.LBB25_2:                               # %bb5
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp200:
	.size	_ZSt3minIfERKT_S2_S2_, .Ltmp200-_ZSt3minIfERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	ret
.Ltmp206:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv, .Ltmp206-_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm:  # @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	leaq	(,%rsi,8), %rax
	addq	(%rdi), %rax
	popq	%rbp
	ret
.Ltmp212:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm, .Ltmp212-_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.cfi_endproc

	.section	.text._ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,"axG",@progbits,_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,comdat
	.weak	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.align	16, 0x90
	.type	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,@function
_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_: # @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp219:
	.cfi_offset %rbx, -48
.Ltmp220:
	.cfi_offset %r12, -40
.Ltmp221:
	.cfi_offset %r14, -32
.Ltmp222:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r12
	callq	_ZNK4Vec3IfEmiERKS0_
	vmovq	%xmm0, -48(%rbp)
	vmovss	%xmm1, -40(%rbp)
	leaq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB28_2
# BB#1:                                 # %bb7
	xorl	%eax, %eax
	jmp	.LBB28_9
.LBB28_2:                               # %bb8
	leaq	-48(%rbp), %rdi
	movq	%rdi, %rsi
	vmovss	%xmm0, -52(%rbp)        # 4-byte Spill
	callq	_ZNK4Vec3IfE3dotERKS0_
	vmovss	-52(%rbp), %xmm2        # 4-byte Reload
	vmulss	%xmm2, %xmm2, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	16(%r12), %xmm0
	jbe	.LBB28_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB28_9
.LBB28_4:                               # %bb16
	vmovss	16(%r12), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB28_6
# BB#5:                                 # %call.sqrt
	vmovaps	%xmm1, %xmm0
	callq	sqrt
	vmovss	-52(%rbp), %xmm2        # 4-byte Reload
.LBB28_6:                               # %.split
	movb	$1, %al
	testq	%r15, %r15
	je	.LBB28_9
# BB#7:                                 # %bb27
	testq	%r14, %r14
	je	.LBB28_9
# BB#8:                                 # %bb29
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm0, %xmm2, %xmm1
	vmovss	%xmm1, (%r15)
	vaddss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, (%r14)
.LBB28_9:                               # %bb33
                                        # kill: AL<def> AL<kill> EAX<kill>
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp223:
	.size	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_, .Ltmp223-_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEplERKS0_,"axG",@progbits,_ZNK4Vec3IfEplERKS0_,comdat
	.weak	_ZNK4Vec3IfEplERKS0_
	.align	16, 0x90
	.type	_ZNK4Vec3IfEplERKS0_,@function
_ZNK4Vec3IfEplERKS0_:                   # @_ZNK4Vec3IfEplERKS0_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vaddss	(%rsi), %xmm0, %xmm0
	vaddss	4(%rsi), %xmm1, %xmm1
	vmovss	8(%rdi), %xmm2
	vaddss	8(%rsi), %xmm2, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	vmovq	-16(%rbp), %xmm0
	vmovss	-8(%rbp), %xmm1
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp229:
	.size	_ZNK4Vec3IfEplERKS0_, .Ltmp229-_ZNK4Vec3IfEplERKS0_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmlERKf,"axG",@progbits,_ZNK4Vec3IfEmlERKf,comdat
	.weak	_ZNK4Vec3IfEmlERKf
	.align	16, 0x90
	.type	_ZNK4Vec3IfEmlERKf,@function
_ZNK4Vec3IfEmlERKf:                     # @_ZNK4Vec3IfEmlERKf
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	(%rsi), %xmm2
	vmulss	(%rdi), %xmm2, %xmm0
	vmulss	4(%rdi), %xmm2, %xmm1
	vmulss	8(%rdi), %xmm2, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	vmovq	-16(%rbp), %xmm0
	vmovss	-8(%rbp), %xmm1
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp235:
	.size	_ZNK4Vec3IfEmlERKf, .Ltmp235-_ZNK4Vec3IfEmlERKf
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmiERKS0_,"axG",@progbits,_ZNK4Vec3IfEmiERKS0_,comdat
	.weak	_ZNK4Vec3IfEmiERKS0_
	.align	16, 0x90
	.type	_ZNK4Vec3IfEmiERKS0_,@function
_ZNK4Vec3IfEmiERKS0_:                   # @_ZNK4Vec3IfEmiERKS0_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vsubss	(%rsi), %xmm0, %xmm0
	vsubss	4(%rsi), %xmm1, %xmm1
	vmovss	8(%rdi), %xmm2
	vsubss	8(%rsi), %xmm2, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	vmovq	-16(%rbp), %xmm0
	vmovss	-8(%rbp), %xmm1
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp241:
	.size	_ZNK4Vec3IfEmiERKS0_, .Ltmp241-_ZNK4Vec3IfEmiERKS0_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfE3dotERKS0_,"axG",@progbits,_ZNK4Vec3IfE3dotERKS0_,comdat
	.weak	_ZNK4Vec3IfE3dotERKS0_
	.align	16, 0x90
	.type	_ZNK4Vec3IfE3dotERKS0_,@function
_ZNK4Vec3IfE3dotERKS0_:                 # @_ZNK4Vec3IfE3dotERKS0_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vmulss	(%rsi), %xmm0, %xmm0
	vmulss	4(%rsi), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%rdi), %xmm1
	vmulss	8(%rsi), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp247:
	.size	_ZNK4Vec3IfE3dotERKS0_, .Ltmp247-_ZNK4Vec3IfE3dotERKS0_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI33_0:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.section	.text._ZNK4Vec3IfEngEv,"axG",@progbits,_ZNK4Vec3IfEngEv,comdat
	.weak	_ZNK4Vec3IfEngEv
	.align	16, 0x90
	.type	_ZNK4Vec3IfEngEv,@function
_ZNK4Vec3IfEngEv:                       # @_ZNK4Vec3IfEngEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vmovss	.LCPI33_0(%rip), %xmm2
	vxorps	%xmm2, %xmm0, %xmm0
	vxorps	%xmm2, %xmm1, %xmm1
	vmovss	8(%rdi), %xmm3
	vxorps	%xmm2, %xmm3, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	vmovq	-16(%rbp), %xmm0
	vmovss	-8(%rbp), %xmm1
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp253:
	.size	_ZNK4Vec3IfEngEv, .Ltmp253-_ZNK4Vec3IfEngEv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI34_0:
	.long	1065353216              # float 1
	.section	.text._Z3mixIfET_RKS0_S2_S2_,"axG",@progbits,_Z3mixIfET_RKS0_S2_S2_,comdat
	.weak	_Z3mixIfET_RKS0_S2_S2_
	.align	16, 0x90
	.type	_Z3mixIfET_RKS0_S2_S2_,@function
_Z3mixIfET_RKS0_S2_S2_:                 # @_Z3mixIfET_RKS0_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	vmovss	(%rdx), %xmm0
	vmulss	(%rsi), %xmm0, %xmm1
	vmovss	.LCPI34_0(%rip), %xmm2
	vsubss	%xmm0, %xmm2, %xmm0
	vmulss	(%rdi), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	popq	%rbp
	ret
.Ltmp259:
	.size	_Z3mixIfET_RKS0_S2_S2_, .Ltmp259-_Z3mixIfET_RKS0_S2_S2_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmlERKS0_,"axG",@progbits,_ZNK4Vec3IfEmlERKS0_,comdat
	.weak	_ZNK4Vec3IfEmlERKS0_
	.align	16, 0x90
	.type	_ZNK4Vec3IfEmlERKS0_,@function
_ZNK4Vec3IfEmlERKS0_:                   # @_ZNK4Vec3IfEmlERKS0_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vmulss	(%rsi), %xmm0, %xmm0
	vmulss	4(%rsi), %xmm1, %xmm1
	vmovss	8(%rdi), %xmm2
	vmulss	8(%rsi), %xmm2, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	vmovq	-16(%rbp), %xmm0
	vmovss	-8(%rbp), %xmm1
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp265:
	.size	_ZNK4Vec3IfEmlERKS0_, .Ltmp265-_ZNK4Vec3IfEmlERKS0_
	.cfi_endproc

	.section	.text._ZN4Vec3IfEpLERKS0_,"axG",@progbits,_ZN4Vec3IfEpLERKS0_,comdat
	.weak	_ZN4Vec3IfEpLERKS0_
	.align	16, 0x90
	.type	_ZN4Vec3IfEpLERKS0_,@function
_ZN4Vec3IfEpLERKS0_:                    # @_ZN4Vec3IfEpLERKS0_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	vmovss	(%rdi), %xmm0
	vaddss	(%rsi), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi)
	vmovss	4(%rdi), %xmm0
	vaddss	4(%rsi), %xmm0, %xmm0
	vmovss	%xmm0, 4(%rdi)
	vmovss	8(%rdi), %xmm0
	vaddss	8(%rsi), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rdi)
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp271:
	.size	_ZN4Vec3IfEpLERKS0_, .Ltmp271-_ZN4Vec3IfEpLERKS0_
	.cfi_endproc

	.section	.text._ZSt3maxIfERKT_S2_S2_,"axG",@progbits,_ZSt3maxIfERKT_S2_S2_,comdat
	.weak	_ZSt3maxIfERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3maxIfERKT_S2_S2_,@function
_ZSt3maxIfERKT_S2_S2_:                  # @_ZSt3maxIfERKT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	vmovss	(%rsi), %xmm0
	vucomiss	(%rdi), %xmm0
	jbe	.LBB37_2
# BB#1:                                 # %bb3
	movq	%rsi, %rdi
.LBB37_2:                               # %bb5
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp277:
	.size	_ZSt3maxIfERKT_S2_S2_, .Ltmp277-_ZSt3maxIfERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfE7length2Ev,"axG",@progbits,_ZNK4Vec3IfE7length2Ev,comdat
	.weak	_ZNK4Vec3IfE7length2Ev
	.align	16, 0x90
	.type	_ZNK4Vec3IfE7length2Ev,@function
_ZNK4Vec3IfE7length2Ev:                 # @_ZNK4Vec3IfE7length2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%rdi), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp283:
	.size	_ZNK4Vec3IfE7length2Ev, .Ltmp283-_ZNK4Vec3IfE7length2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp289:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp290:
	.cfi_offset %rbx, -56
.Ltmp291:
	.cfi_offset %r12, -48
.Ltmp292:
	.cfi_offset %r13, -40
.Ltmp293:
	.cfi_offset %r14, -32
.Ltmp294:
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movq	%rsi, -48(%rbp)
	movq	8(%r12), %rax
	cmpq	16(%r12), %rax
	je	.LBB39_6
# BB#1:                                 # %bb30
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	8(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB39_3
# BB#2:                                 # %codeRepl.i13
	movq	8(%r12), %rsi
	addq	$-8, %rsi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i
.LBB39_3:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16.exit
	addq	$8, 8(%r12)
	movq	(%rbx), %r15
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdi
	movq	8(%r12), %rbx
	addq	$-16, %rbx
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	subq	%r14, %rax
	sarq	$3, %rax
	je	.LBB39_5
# BB#4:                                 # %codeRepl.i12
	movq	8(%r12), %rsi
	addq	$-8, %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i
.LBB39_5:                               # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15.exit
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	movq	%r15, (%rax)
	jmp	.LBB39_15
.LBB39_6:                               # %bb75
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r15
	movq	%r15, %rsp
	movl	$1, %esi
	movl	$.L.str1, %edx
	movq	%r12, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	movq	%rax, -16(%rbx)
	leaq	-48(%rbp), %rdi
	movq	%r15, %rsi
	callq	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	movq	%rax, %r15
	shlq	$3, %rbx
	addq	%r15, %rbx
	je	.LBB39_8
# BB#7:                                 # %codeRepl.i17
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i
.LBB39_8:                               # %.noexc5
	movq	(%r12), %r14
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %rbx
	subq	%r14, %rbx
	sarq	$3, %rbx
	je	.LBB39_10
# BB#9:                                 # %codeRepl.i3
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i
.LBB39_10:                              # %.noexc9
	leaq	8(%r15,%rbx,8), %r14
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdi
	movq	8(%r12), %rbx
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	movq	%rax, %rbx
	subq	%r13, %rbx
	sarq	$3, %rbx
	je	.LBB39_12
# BB#11:                                # %codeRepl.i7
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i
.LBB39_12:                              # %bb160
	leaq	(%r14,%rbx,8), %rbx
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB39_14
# BB#13:                                # %codeRepl.i1
	movq	16(%r12), %rdx
	subq	(%r12), %rdx
	sarq	$3, %rdx
	movq	%r12, %rdi
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_
.LBB39_14:                              # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13.exit2
	movq	%r15, (%r12)
	movq	%rbx, 8(%r12)
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 16(%r12)
.LBB39_15:                              # %bb199
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp295:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp295-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp300:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp301:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv, .Ltmp301-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp307:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp308:
	.cfi_offset %rbx, -48
.Ltmp309:
	.cfi_offset %r12, -40
.Ltmp310:
	.cfi_offset %r14, -32
.Ltmp311:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rdi, %r14
	movq	%rsi, -40(%rbp)
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	subq	%rax, %rbx
	cmpq	-40(%rbp), %rbx
	jb	.LBB41_5
# BB#1:                                 # %bb8
	movq	%rsp, %r12
	leaq	-16(%r12), %r15
	movq	%r15, %rsp
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	movq	%rax, -16(%r12)
	leaq	-40(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB41_3
# BB#2:                                 # %bb16
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB41_4
.LBB41_3:                               # %bb19
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
.LBB41_4:                               # %bb22
	movq	%rbx, %rax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB41_5:                               # %bb7
	movq	%r15, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp312:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc, .Ltmp312-_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"axG",@progbits,_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,comdat
	.weak	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,@function
_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_: # @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp319:
	.cfi_offset %rbx, -32
.Ltmp320:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp321:
	.size	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, .Ltmp321-_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp327:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv, .Ltmp327-_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp333:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp334:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB44_4
# BB#1:                                 # %bb1
	movq	%rbx, %rax
	shrq	$61, %rax
	je	.LBB44_3
# BB#2:                                 # %codeRepl.i
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_
.LBB44_3:                               # %_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5.exit
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	_Znwm
.LBB44_4:                               # %bb10
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp335:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm, .Ltmp335-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp338:
	.cfi_def_cfa_offset 16
.Ltmp339:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp340:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp341:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv, .Ltmp341-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,@function
_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E: # @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp344:
	.cfi_def_cfa_offset 16
.Ltmp345:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp346:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	ret
.Ltmp347:
	.size	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E, .Ltmp347-_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp350:
	.cfi_def_cfa_offset 16
.Ltmp351:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp352:
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rdi
	callq	_ZdlPv
	popq	%rbp
	ret
.Ltmp353:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m, .Ltmp353-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,"axG",@progbits,_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,comdat
	.weak	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,@function
_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_: # @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp356:
	.cfi_def_cfa_offset 16
.Ltmp357:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp358:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp359:
	.size	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_, .Ltmp359-_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,"axG",@progbits,_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,comdat
	.weak	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,@function
_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_: # @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp364:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp365:
	.size	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_, .Ltmp365-_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp368:
	.cfi_def_cfa_offset 16
.Ltmp369:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp370:
	.cfi_def_cfa_register %rbp
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	ret
.Ltmp371:
	.size	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv, .Ltmp371-_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp374:
	.cfi_def_cfa_offset 16
.Ltmp375:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp376:
	.cfi_def_cfa_register %rbp
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	ret
.Ltmp377:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv, .Ltmp377-_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.cfi_endproc

	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp380:
	.cfi_def_cfa_offset 16
.Ltmp381:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp382:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jae	.LBB52_2
# BB#1:                                 # %bb3
	movq	%rsi, %rdi
.LBB52_2:                               # %bb5
	movq	%rdi, %rax
	popq	%rbp
	ret
.Ltmp383:
	.size	_ZSt3maxImERKT_S2_S2_, .Ltmp383-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp386:
	.cfi_def_cfa_offset 16
.Ltmp387:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp388:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB53_2
# BB#1:                                 # %codeRepl.i
	movq	16(%rdi), %rdx
	subq	(%rdi), %rdx
	sarq	$3, %rdx
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_
.LBB53_2:                               # %bb14
	popq	%rbp
	ret
.Ltmp389:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev, .Ltmp389-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp392:
	.cfi_def_cfa_offset 16
.Ltmp393:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp394:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	popq	%rbp
	ret
.Ltmp395:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev, .Ltmp395-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp398:
	.cfi_def_cfa_offset 16
.Ltmp399:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp400:
	.cfi_def_cfa_register %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	popq	%rbp
	ret
.Ltmp401:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev, .Ltmp401-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp404:
	.cfi_def_cfa_offset 16
.Ltmp405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp406:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	ret
.Ltmp407:
	.size	_GLOBAL__I_a, .Ltmp407-_GLOBAL__I_a
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	%rdi, (%rdx)
	popq	%rbp
	ret
.Ltmp408:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_, .Ltmp408-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_

	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	shlq	$3, %rax
	subq	%rax, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memmove
	popq	%rbp
	ret
.Ltmp409:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_, .Ltmp409-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_

	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i,@function
_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i: # @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_2_
	popq	%rbp
	ret
.Ltmp410:
	.size	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i, .Ltmp410-_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i

	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i,@function
_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i: # @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_3_codeRepl.i
	popq	%rbp
	ret
.Ltmp411:
	.size	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i, .Ltmp411-_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i

	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	callq	_ZSt17__throw_bad_allocv
.Ltmp417:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_, .Ltmp417-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv5_
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	shlq	$3, %rdx
	callq	memmove
	popq	%rbp
	ret
.Ltmp418:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_, .Ltmp418-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_

	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i,@function
_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i: # @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_6_
	popq	%rbp
	ret
.Ltmp419:
	.size	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i, .Ltmp419-_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i

	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i,@function
_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i: # @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_7_codeRepl.i
	popq	%rbp
	ret
.Ltmp420:
	.size	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i, .Ltmp420-_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i

	.align	16, 0x90
	.type	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i,@function
_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i: # @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_8_codeRepl.i
	popq	%rbp
	ret
.Ltmp421:
	.size	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i, .Ltmp421-_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i

	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_9_codeRepl.i
	popq	%rbp
	ret
.Ltmp422:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i, .Ltmp422-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i

	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i,@function
_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i: # @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_10_codeRepl.i
	popq	%rbp
	ret
.Ltmp423:
	.size	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i, .Ltmp423-_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i

	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i,@function
_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i: # @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_11_codeRepl.i
	popq	%rbp
	ret
.Ltmp424:
	.size	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i, .Ltmp424-_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i

	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	popq	%rbp
	ret
.Ltmp425:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_, .Ltmp425-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m13_

	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i,@function
_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i: # @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E12_codeRepl.i
	popq	%rbp
	ret
.Ltmp426:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i, .Ltmp426-_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_14_codeRepl.i

	.align	16, 0x90
	.type	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i,@function
_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i: # @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_4_codeRepl.i
	popq	%rbp
	ret
.Ltmp427:
	.size	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i, .Ltmp427-_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_15_codeRepl.i

	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i: # @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i
# BB#0:                                 # %.exitStub
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %rbx
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_1_
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp428:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i, .Ltmp428-_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_16_codeRepl.i

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI73_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	_ZN4Vec3IfE9normalizeEv17_,@function
_ZN4Vec3IfE9normalizeEv17_:             # @_ZN4Vec3IfE9normalizeEv17_
# BB#0:                                 # %bb
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB73_2
# BB#1:                                 # %call.sqrt
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB73_2:                               # %.exitStub
	vmovsd	.LCPI73_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	(%rbx), %xmm0, %xmm1
	vmovss	%xmm1, (%rbx)
	vmulss	4(%rbx), %xmm0, %xmm1
	vmovss	%xmm1, 4(%rbx)
	vmulss	8(%rbx), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp429:
	.size	_ZN4Vec3IfE9normalizeEv17_, .Ltmp429-_ZN4Vec3IfE9normalizeEv17_

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI74_0:
	.long	1065353216              # float 1
.LCPI74_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	movq	88(%rbp), %rbx
	movq	56(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	.align	16, 0x90
.LBB74_1:                               # %bb279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_5 Depth 2
	movl	%r14d, %r15d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	vmovss	32(%rax), %xmm0
	vucomiss	.LCPI74_1, %xmm0
	jbe	.LBB74_10
# BB#2:                                 # %bb288
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-80(%rbp), %rdi         # 8-byte Reload
	vmovss	.LCPI74_0(%rip), %xmm0
	callq	_ZN4Vec3IfEC2Ef
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, -88(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_ZNK4Vec3IfEmiERKS0_
	movq	-48(%rbp), %rdi         # 8-byte Reload
	vmovq	%xmm0, (%rdi)
	vmovss	%xmm1, 8(%rdi)
	callq	_ZNK4Vec3IfE7length2Ev
	vucomiss	.LCPI74_1, %xmm0
	jbe	.LBB74_4
# BB#3:                                 # %codeRepl.i45
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZN4Vec3IfE9normalizeEv17_
.LBB74_4:                               # %_ZN4Vec3IfE9normalizeEv17.exit46
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	%r12, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB74_9
	.align	16, 0x90
.LBB74_5:                               # %bb300
                                        #   Parent Loop BB74_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r15d, %r14d
	je	.LBB74_7
# BB#6:                                 # %bb303
                                        #   in Loop: Header=BB74_5 Depth=2
	movl	%r15d, %esi
	movq	%r12, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	%r12, %r13
	movq	(%rax), %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_ZNK4Vec3IfEmlERKf
	movq	16(%rbp), %rsi
	vmovq	%xmm0, (%rsi)
	vmovss	%xmm1, 8(%rsi)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNK4Vec3IfEplERKS0_
	movq	24(%rbp), %rsi
	vmovq	%xmm0, (%rsi)
	vmovss	%xmm1, 8(%rsi)
	movq	%r12, %rdi
	movq	%r13, %r12
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	32(%rbp), %rcx
	movq	40(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB74_8
.LBB74_7:                               # %bb319
                                        #   in Loop: Header=BB74_5 Depth=2
	incl	%r15d
	movq	%r12, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r15
	jb	.LBB74_5
	jmp	.LBB74_9
.LBB74_8:                               # %bb314
                                        #   in Loop: Header=BB74_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	movq	48(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	8(%r15), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, 8(%rcx)
	movq	(%r15), %rax
	movq	%rax, (%rcx)
	.align	16, 0x90
.LBB74_9:                               # %bb324
                                        #   in Loop: Header=BB74_1 Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_ZNK4Vec3IfEmlERKS0_
	movq	%r12, %r13
	movq	64(%rbp), %r12
	vmovq	%xmm0, (%r12)
	vmovss	%xmm1, 8(%r12)
	movq	72(%rbp), %r15
	movl	$0, (%r15)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_ZNK4Vec3IfE3dotERKS0_
	movq	80(%rbp), %rsi
	vmovss	%xmm0, (%rsi)
	movq	%r15, %rdi
	callq	_ZSt3maxIfERKT_S2_S2_
	movq	%r12, %rdi
	movq	%r13, %r12
	movq	%rax, %rsi
	callq	_ZNK4Vec3IfEmlERKf
	vmovq	%xmm0, (%rbx)
	vmovss	%xmm1, 8(%rbx)
	movq	%r12, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rsi
	addq	$32, %rsi
	movq	%rbx, %rdi
	callq	_ZNK4Vec3IfEmlERKS0_
	movq	96(%rbp), %rsi
	vmovq	%xmm0, (%rsi)
	vmovss	%xmm1, 8(%rsi)
	movq	104(%rbp), %rdi
	callq	_ZN4Vec3IfEpLERKS0_
.LBB74_10:                              # %bb343
                                        #   in Loop: Header=BB74_1 Depth=1
	incl	%r14d
	movq	%r12, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r14
	jb	.LBB74_1
# BB#11:                                # %._crit_edge.exitStub
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp430:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279, .Ltmp430-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb279

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI75_0:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1, %r12d
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB75_1
	.align	16, 0x90
.LBB75_7:                               # %bb131.bb106_crit_edge
                                        #   in Loop: Header=BB75_1 Depth=1
	incl	%r12d
.LBB75_1:                               # %bb106
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r12), %r15d
	movl	$2139095040, (%r14)     # imm = 0x7F800000
	movl	$2139095040, (%r13)     # imm = 0x7F800000
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB75_6
# BB#2:                                 # %bb113
                                        #   in Loop: Header=BB75_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	(%r14), %xmm0
	jbe	.LBB75_4
# BB#3:                                 # %bb116
                                        #   in Loop: Header=BB75_1 Depth=1
	vmovss	(%r13), %xmm0
	vmovss	%xmm0, (%r14)
.LBB75_4:                               # %bb118
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	vmovss	(%rax), %xmm0
	vucomiss	(%r14), %xmm0
	jbe	.LBB75_6
# BB#5:                                 # %bb122
                                        #   in Loop: Header=BB75_1 Depth=1
	vmovss	(%r14), %xmm0
	movq	-72(%rbp), %rax         # 8-byte Reload
	vmovss	%xmm0, (%rax)
	movl	%r15d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB75_6:                               # %bb131
                                        #   in Loop: Header=BB75_1 Depth=1
	movl	%r12d, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB75_7
# BB#8:                                 # %._crit_edge40.exitStub
	movq	16(%rbp), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp431:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106, .Ltmp431-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi_bb106

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI76_0:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp438:
	.cfi_offset %rbx, -56
.Ltmp439:
	.cfi_offset %r12, -48
.Ltmp440:
	.cfi_offset %r13, -40
.Ltmp441:
	.cfi_offset %r14, -32
.Ltmp442:
	.cfi_offset %r15, -24
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.LBB76_1
	.align	16, 0x90
.LBB76_2:                               # %bb98.bb77_crit_edge
                                        #   in Loop: Header=BB76_1 Depth=1
	addq	$4, %rbx
.LBB76_1:                               # %bb77
                                        # =>This Inner Loop Header: Depth=1
	imull	$31, %eax, %r15d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1065353216, (%rdi)     # imm = 0x3F800000
	movq	%rbx, %rsi
	callq	_ZSt3minIfERKT_S2_S2_
	vmovss	.LCPI76_0(%rip), %xmm0
	vmulss	(%rax), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rax
	addl	%r15d, %eax
	imull	$31, %eax, %r15d
	movq	%r13, %rdi
	movl	$1065353216, (%rdi)     # imm = 0x3F800000
	leaq	4(%rbx), %rsi
	callq	_ZSt3minIfERKT_S2_S2_
	vmovss	.LCPI76_0(%rip), %xmm0
	vmulss	(%rax), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rax
	addl	%r15d, %eax
	imull	$31, %eax, %r15d
	movq	%r12, %rdi
	movl	$1065353216, (%rdi)     # imm = 0x3F800000
	addq	$8, %rbx
	movq	%rbx, %rsi
	callq	_ZSt3minIfERKT_S2_S2_
	vmovss	.LCPI76_0(%rip), %xmm0
	vmulss	(%rax), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rax
	addl	%r15d, %eax
	incl	%r14d
	cmpl	$307199, %r14d          # imm = 0x4AFFF
	jbe	.LBB76_2
# BB#3:                                 # %._crit_edge.exitStub
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp443:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77, .Ltmp443-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb77
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI77_0:
	.quad	4602678819172646912     # double 0.5
.LCPI77_1:
	.quad	4564848582410108928     # double 0.0015625000232830644
.LCPI77_2:
	.quad	4607182418800017408     # double 1
.LCPI77_3:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI77_4:
	.quad	4608683618854764544     # double 1.3333333730697632
.LCPI77_5:
	.quad	-4656421774475395072    # double -0.0020833334419876337
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI77_6:
	.long	3212836864              # float -1
.LCPI77_7:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp450:
	.cfi_offset %rbx, -56
.Ltmp451:
	.cfi_offset %r12, -48
.Ltmp452:
	.cfi_offset %r13, -40
.Ltmp453:
	.cfi_offset %r14, -32
.Ltmp454:
	.cfi_offset %r15, -24
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	vmovsd	.LCPI77_2(%rip), %xmm3
	jmp	.LBB77_1
	.align	16, 0x90
.LBB77_6:                               # %bb73.bb39_crit_edge
                                        #   in Loop: Header=BB77_1 Depth=1
	movl	%eax, -68(%rbp)         # 4-byte Spill
	vmovsd	-56(%rbp), %xmm0        # 8-byte Reload
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB77_1:                               # %bb39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_2 Depth 2
	addq	$12, %rbx
	xorl	%r14d, %r14d
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.LBB77_2
	.align	16, 0x90
.LBB77_7:                               # %bb66.bb42_crit_edge
                                        #   in Loop: Header=BB77_2 Depth=2
	addq	$12, %rbx
	vmovsd	.LCPI77_2(%rip), %xmm3
	vmovsd	-48(%rbp), %xmm1        # 8-byte Reload
	vaddsd	%xmm3, %xmm1, %xmm1
.LBB77_2:                               # %bb42
                                        #   Parent Loop BB77_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	%xmm1, -48(%rbp)        # 8-byte Spill
	vmovsd	.LCPI77_0(%rip), %xmm0
	vmovaps	%xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmulsd	.LCPI77_1(%rip), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vsubsd	%xmm3, %xmm0, %xmm0
	vmovsd	.LCPI77_3(%rip), %xmm1
	vmovaps	%xmm1, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm0
	vmulsd	.LCPI77_4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vaddsd	%xmm2, %xmm1, %xmm1
	vmulsd	.LCPI77_5(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vmulsd	%xmm4, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	movq	%r13, %rdi
	vmovss	.LCPI77_6(%rip), %xmm2
	callq	_ZN4Vec3IfEC2Efff
	movq	%r13, %rdi
	callq	_ZNK4Vec3IfE7length2Ev
	vucomiss	.LCPI77_7, %xmm0
	jbe	.LBB77_4
# BB#3:                                 # %codeRepl.i
                                        #   in Loop: Header=BB77_2 Depth=2
	movq	%r13, %rdi
	callq	_ZN4Vec3IfE9normalizeEv17_
.LBB77_4:                               # %bb66
                                        #   in Loop: Header=BB77_2 Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	$0, (%r15)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovss	%xmm0, -12(%rbx)
	vextractps	$1, %xmm0, -8(%rbx)
	vmovss	%xmm1, -4(%rbx)
	incl	%r14d
	cmpl	$640, %r14d             # imm = 0x280
	jb	.LBB77_7
# BB#5:                                 # %bb73
                                        #   in Loop: Header=BB77_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	incl	%eax
	cmpl	$479, %eax              # imm = 0x1DF
	vmovsd	.LCPI77_2(%rip), %xmm3
	jbe	.LBB77_6
# BB#8:                                 # %bb76.exitStub
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp455:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39, .Ltmp455-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb39
	.cfi_endproc

	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
.Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp461:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp462:
	.cfi_offset %rbx, -32
.Ltmp463:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movl	$12, %ebx
	jmp	.LBB78_1
	.align	16, 0x90
.LBB78_2:                               # %bb36.bb35_crit_edge
                                        #   in Loop: Header=BB78_1 Depth=1
	addq	$12, %rbx
.LBB78_1:                               # %bb35
                                        # =>This Inner Loop Header: Depth=1
	leaq	-12(%r14,%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	cmpq	$3686400, %rbx          # imm = 0x384000
	jne	.LBB78_2
# BB#3:                                 # %.loopexit.exitStub
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp464:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35, .Ltmp464-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE_bb35
	.cfi_endproc

	.align	16, 0x90
	.type	main_bb126,@function
main_bb126:                             # @main_bb126
	.cfi_startproc
# BB#0:                                 # %newFuncRoot
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp471:
	.cfi_offset %rbx, -32
.Ltmp472:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	jmp	.LBB79_1
	.align	16, 0x90
.LBB79_3:                               # %bb136
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB79_1:                               # %bb128
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	testb	%al, %al
	jne	.LBB79_4
# BB#2:                                 # %bb134
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	testq	%rbx, %rbx
	je	.LBB79_1
	jmp	.LBB79_3
.LBB79_4:                               # %bb139.exitStub
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp473:
	.size	main_bb126, .Ltmp473-main_bb126
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

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
