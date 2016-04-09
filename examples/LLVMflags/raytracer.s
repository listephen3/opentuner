	.text
	.file	"raytracer.bc"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
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
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
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
	pushq	%r12
	pushq	%rbx
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movl	$13, %edi
	callq	srand48
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
.Ltmp3:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp4:
# BB#1:
	leaq	-464(%rbp), %r14
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1176256512, -128(%rbp) # imm = 0x461C4000
	leaq	-448(%rbp), %r15
	movss	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	$0, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-432(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-128(%rbp), %rdx
	leaq	-124(%rbp), %r8
	leaq	-120(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -176(%rbp)
.Ltmp5:
	leaq	-56(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp6:
# BB#2:
.Ltmp7:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp8:
# BB#3:
	leaq	-416(%rbp), %r14
	movss	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1082130432, -116(%rbp) # imm = 0x40800000
	leaq	-400(%rbp), %r15
	movss	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_5(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1065353216, -112(%rbp) # imm = 0x3F800000
	movl	$1056964608, -108(%rbp) # imm = 0x3F000000
	leaq	-384(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %r8
	leaq	-108(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -168(%rbp)
.Ltmp9:
	leaq	-56(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp10:
# BB#4:
.Ltmp11:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp12:
# BB#5:
	leaq	-368(%rbp), %r14
	movss	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_8(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1073741824, -104(%rbp) # imm = 0x40000000
	leaq	-352(%rbp), %r15
	movss	.LCPI1_9(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_10(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_11(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1065353216, -100(%rbp) # imm = 0x3F800000
	movl	$0, -96(%rbp)
	leaq	-336(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-104(%rbp), %rdx
	leaq	-100(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -160(%rbp)
.Ltmp13:
	leaq	-56(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp14:
# BB#6:
.Ltmp15:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp16:
# BB#7:
	leaq	-320(%rbp), %r14
	movss	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_12(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1077936128, -92(%rbp)  # imm = 0x40400000
	leaq	-304(%rbp), %r15
	movss	.LCPI1_13(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_14(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_15(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1065353216, -88(%rbp)  # imm = 0x3F800000
	movl	$0, -84(%rbp)
	leaq	-288(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-92(%rbp), %rdx
	leaq	-88(%rbp), %r8
	leaq	-84(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -152(%rbp)
.Ltmp17:
	leaq	-56(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp18:
# BB#8:
.Ltmp19:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp20:
# BB#9:
	leaq	-272(%rbp), %r14
	movss	.LCPI1_16(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_8(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1077936128, -80(%rbp)  # imm = 0x40400000
	leaq	-256(%rbp), %r15
	movss	.LCPI1_9(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	callq	_ZN4Vec3IfEC2Efff
	movl	$1065353216, -76(%rbp)  # imm = 0x3F800000
	movl	$0, -72(%rbp)
	leaq	-240(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-80(%rbp), %rdx
	leaq	-76(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -144(%rbp)
.Ltmp21:
	leaq	-56(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp22:
# BB#10:
.Ltmp23:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, %r12
.Ltmp24:
# BB#11:
	leaq	-224(%rbp), %r14
	movss	.LCPI1_17(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_18(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	_ZN4Vec3IfEC2Efff
	movl	$1077936128, -68(%rbp)  # imm = 0x40400000
	leaq	-208(%rbp), %r15
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	leaq	-192(%rbp), %rbx
	movss	.LCPI1_19(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movq	%rbx, (%rsp)
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %r8
	leaq	-60(%rbp), %r9
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	movq	%r12, -136(%rbp)
.Ltmp25:
	leaq	-56(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
.Ltmp26:
# BB#12:
.Ltmp27:
	leaq	-56(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
.Ltmp28:
# BB#13:
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB1_15
# BB#14:
.Ltmp29:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.Ltmp30:
	jmp	.LBB1_15
.LBB1_19:
.Ltmp31:
	movq	%rax, %rbx
.Ltmp32:
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
.Ltmp33:
# BB#20:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB1_15:                               # %.preheader.backedge
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%rbp), %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	testb	%al, %al
	jne	.LBB1_18
# BB#16:                                #   in Loop: Header=BB1_15 Depth=1
	leaq	-56(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	testq	%rbx, %rbx
	je	.LBB1_15
	jmp	.LBB1_17
.LBB1_18:
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	xorl	%eax, %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_21:
.Ltmp34:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\257\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp30-.Ltmp3          #   Call between .Ltmp3 and .Ltmp30
	.long	.Ltmp31-.Lfunc_begin0   #     jumps to .Ltmp31
	.byte	0                       #   On action: cleanup
	.long	.Ltmp32-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp33-.Ltmp32         #   Call between .Ltmp32 and .Ltmp33
	.long	.Ltmp34-.Lfunc_begin0   #     jumps to .Ltmp34
	.byte	1                       #   On action: 1
	.long	.Ltmp33-.Lfunc_begin0   # >> Call Site 3 <<
	.long	.Lfunc_end1-.Ltmp33     #   Call between .Ltmp33 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev,@function
_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev:   # @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
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
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev, .Lfunc_end2-_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB3_2
# BB#1:
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	addq	$8, 8(%rbx)
	jmp	.LBB3_3
.LBB3_2:
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB3_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_, .Lfunc_end3-_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Efff,"axG",@progbits,_ZN4Vec3IfEC2Efff,comdat
	.weak	_ZN4Vec3IfEC2Efff
	.p2align	4, 0x90
	.type	_ZN4Vec3IfEC2Efff,@function
_ZN4Vec3IfEC2Efff:                      # @_ZN4Vec3IfEC2Efff
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	movss	%xmm0, (%rdi)
	movss	%xmm1, 4(%rdi)
	movss	%xmm2, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN4Vec3IfEC2Efff, .Lfunc_end4-_ZN4Vec3IfEC2Efff
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Ef,"axG",@progbits,_ZN4Vec3IfEC2Ef,comdat
	.weak	_ZN4Vec3IfEC2Ef
	.p2align	4, 0x90
	.type	_ZN4Vec3IfEC2Ef,@function
_ZN4Vec3IfEC2Ef:                        # @_ZN4Vec3IfEC2Ef
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
	movss	%xmm0, (%rdi)
	movss	%xmm0, 4(%rdi)
	movss	%xmm0, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_ZN4Vec3IfEC2Ef, .Lfunc_end5-_ZN4Vec3IfEC2Ef
	.cfi_endproc

	.section	.text._ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,"axG",@progbits,_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,comdat
	.weak	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.p2align	4, 0x90
	.type	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_,@function
_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_: # @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %r10
	movl	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movl	(%rdx), %eax
	movl	%eax, 12(%rdi)
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdi)
	movl	8(%rcx), %eax
	movl	%eax, 28(%rdi)
	movq	(%rcx), %rax
	movq	%rax, 20(%rdi)
	movl	8(%r10), %eax
	movl	%eax, 40(%rdi)
	movq	(%r10), %rax
	movq	%rax, 32(%rdi)
	movl	(%r9), %eax
	movl	%eax, 44(%rdi)
	movl	(%r8), %eax
	movl	%eax, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_, .Lfunc_end6-_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4564848582410108928     # double 0.0015625000232830644
.LCPI7_2:
	.quad	-4616189618054758400    # double -1
.LCPI7_3:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI7_4:
	.quad	4608683618854764544     # double 1.3333333730697632
.LCPI7_5:
	.quad	4566950262379380736     # double 0.0020833334419876337
.LCPI7_6:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI7_7:
	.long	3212836864              # float -1
.LCPI7_8:
	.long	1132396544              # float 255
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.p2align	4, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	movq	%rax, %r15
	leaq	3686400(%r15), %r12
	movq	%r15, %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	12(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	24(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	36(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	48(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	60(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	72(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	84(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	96(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	108(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	120(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	132(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	144(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	156(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	168(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	180(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	192(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	204(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	216(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	228(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	240(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	252(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	264(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	276(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	288(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	300(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	312(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	324(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	336(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	348(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	360(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	372(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	384(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	396(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	408(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	420(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	432(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	444(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	456(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	468(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	480(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	492(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	504(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	516(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	528(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	540(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	552(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	564(%r15), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	576(%r15), %rbx
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	12(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	24(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	36(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	48(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	60(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	72(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	84(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	96(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	108(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	120(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	132(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	144(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	156(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	168(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	180(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	192(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	204(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	216(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	228(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	240(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	252(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	264(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	276(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	288(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	300(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	312(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	324(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	336(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	348(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	360(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	372(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	384(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	396(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	408(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	420(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	432(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	444(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	456(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	468(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	480(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	492(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	504(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	516(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	528(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	540(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	552(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	564(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	576(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	588(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	600(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	612(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	624(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	leaq	636(%rbx), %rdi
	callq	_ZN4Vec3IfEC2Ev
	addq	$648, %rbx              # imm = 0x288
	cmpq	%r12, %rbx
	jne	.LBB7_1
# BB#2:
	xorl	%ecx, %ecx
	xorpd	%xmm0, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_5(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_6(%rip), %xmm7   # xmm7 = mem[0],zero
	leaq	-120(%rbp), %r12
	movss	.LCPI7_7(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	leaq	-104(%rbp), %r13
	movq	%r15, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB7_3:                                # %.preheader12.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movq	-88(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB7_4:                                # %.preheader12
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm5, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	%ecx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	addsd	.LCPI7_0(%rip), %xmm1
	mulsd	%xmm6, %xmm1
	addsd	%xmm1, %xmm1
	movapd	%xmm7, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movq	%r12, %rdi
	movaps	%xmm8, %xmm2
	callq	_ZN4Vec3IfEC2Efff
	movq	%r12, %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	xorps	%xmm0, %xmm0
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	$0, -56(%rbp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movss	%xmm0, (%r15)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, 4(%r15)
	movss	%xmm1, 8(%r15)
	leal	1(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	addsd	.LCPI7_0(%rip), %xmm0
	mulsd	.LCPI7_1(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	.LCPI7_2(%rip), %xmm0
	mulsd	.LCPI7_3(%rip), %xmm0
	mulsd	.LCPI7_4(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI7_0(%rip), %xmm1
	mulsd	.LCPI7_5(%rip), %xmm1
	addsd	%xmm1, %xmm1
	movsd	.LCPI7_6(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	.LCPI7_3(%rip), %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movq	%r12, %rdi
	movss	.LCPI7_7(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	callq	_ZN4Vec3IfEC2Efff
	movq	%r12, %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	xorps	%xmm0, %xmm0
	movq	%r13, %rdi
	callq	_ZN4Vec3IfEC2Ef
	movl	$0, -56(%rbp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	leaq	-56(%rbp), %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movss	.LCPI7_7(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI7_6(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	.LCPI7_5(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movss	%xmm0, 12(%r15)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, 16(%r15)
	movss	%xmm1, 20(%r15)
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addl	$2, %r14d
	addq	$24, %r15
	cmpl	$640, %r14d             # imm = 0x280
	jne	.LBB7_4
# BB#5:                                 #   in Loop: Header=BB7_3 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm7, %xmm0
	incl	%ecx
	xorl	%eax, %eax
	cmpl	$480, %ecx              # imm = 0x1E0
	jne	.LBB7_3
# BB#6:
	leaq	-48(%rbp), %r13
	xorl	%ebx, %ebx
	movq	-80(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB7_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r14d
	shll	$5, %r14d
	subl	%ebx, %r14d
	movl	$1065353216, -44(%rbp)  # imm = 0x3F800000
	leaq	(%r15,%rax), %rsi
	leaq	-44(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %r12
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_8(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
	addl	%r14d, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -52(%rbp)  # imm = 0x3F800000
	leaq	4(%r15,%r12), %rsi
	leaq	-52(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -48(%rbp)  # imm = 0x3F800000
	leaq	8(%r15,%r12), %rsi
	movq	%r13, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -44(%rbp)  # imm = 0x3F800000
	leaq	12(%r15,%r12), %rsi
	leaq	-44(%rbp), %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -52(%rbp)  # imm = 0x3F800000
	leaq	16(%r15,%r12), %rsi
	movq	%r14, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -48(%rbp)  # imm = 0x3F800000
	leaq	20(%r15,%r12), %rsi
	movq	%r13, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -44(%rbp)  # imm = 0x3F800000
	leaq	24(%r15,%r12), %rsi
	leaq	-44(%rbp), %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -52(%rbp)  # imm = 0x3F800000
	leaq	28(%r15,%r12), %rsi
	movq	%r14, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -48(%rbp)  # imm = 0x3F800000
	leaq	32(%r15,%r12), %rsi
	movq	%r13, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -44(%rbp)  # imm = 0x3F800000
	leaq	36(%r15,%r12), %rsi
	leaq	-44(%rbp), %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$5, %ebx
	subl	%eax, %ebx
	movl	$1065353216, -52(%rbp)  # imm = 0x3F800000
	leaq	40(%r15,%r12), %rsi
	movq	%r14, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	addl	%ebx, %eax
	movl	%eax, %r14d
	shll	$5, %r14d
	subl	%eax, %r14d
	movl	$1065353216, -48(%rbp)  # imm = 0x3F800000
	leaq	44(%r15,%r12), %rsi
	movq	%r13, %rdi
	callq	_ZSt3minIfERKT_S2_S2_
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rax
	mulss	.LCPI7_8(%rip), %xmm0
	cvttss2si	%xmm0, %rbx
	addl	%r14d, %ebx
	addq	$48, %rax
	cmpq	$3686400, %rax          # imm = 0x384000
	jne	.LBB7_7
# BB#8:
	testq	%r15, %r15
	je	.LBB7_10
# BB#9:
	movq	%r15, %rdi
	callq	_ZdaPv
.LBB7_10:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Lfunc_end7-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp70:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	movq	%rax, -24(%rbp)
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv, .Lfunc_end8-_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	movq	%rax, -24(%rbp)
	movq	$1, -16(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv, .Lfunc_end9-_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	addq	$-8, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv, .Lfunc_end10-_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev,@function
_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev:   # @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev, .Lfunc_end11-_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev
	.cfi_endproc

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev, .Lfunc_end13-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev, .Lfunc_end14-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSaIP6SphereIfEEC2Ev,"axG",@progbits,_ZNSaIP6SphereIfEEC2Ev,comdat
	.weak	_ZNSaIP6SphereIfEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIP6SphereIfEEC2Ev,@function
_ZNSaIP6SphereIfEEC2Ev:                 # @_ZNSaIP6SphereIfEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_ZNSaIP6SphereIfEEC2Ev, .Lfunc_end15-_ZNSaIP6SphereIfEEC2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev, .Lfunc_end16-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E,@function
_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E: # @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E, .Lfunc_end17-_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev, .Lfunc_end18-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPP6SphereIfEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPP6SphereIfEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPP6SphereIfEEvT_S4_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPP6SphereIfEEvT_S4_,@function
_ZSt8_DestroyIPP6SphereIfEEvT_S4_:      # @_ZSt8_DestroyIPP6SphereIfEEvT_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_ZSt8_DestroyIPP6SphereIfEEvT_S4_, .Lfunc_end19-_ZSt8_DestroyIPP6SphereIfEEvT_S4_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_, .Lfunc_end20-_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m
	.cfi_startproc
# BB#0:
	testq	%rsi, %rsi
	je	.LBB21_2
# BB#1:
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	popq	%rbp
.LBB21_2:
	retq
.Lfunc_end21:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m, .Lfunc_end21-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev, .Lfunc_end22-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rdi
	callq	_ZdlPv
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m, .Lfunc_end23-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m
	.cfi_endproc

	.section	.text._ZNSaIP6SphereIfEED2Ev,"axG",@progbits,_ZNSaIP6SphereIfEED2Ev,comdat
	.weak	_ZNSaIP6SphereIfEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIP6SphereIfEED2Ev,@function
_ZNSaIP6SphereIfEED2Ev:                 # @_ZNSaIP6SphereIfEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_ZNSaIP6SphereIfEED2Ev, .Lfunc_end24-_ZNSaIP6SphereIfEED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev, .Lfunc_end25-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_, .Lfunc_end26-_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	%rsi, -48(%rbp)
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.LBB27_2
# BB#1:
	leaq	-8(%rsi), %rdx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	movq	8(%rbx), %r14
	leaq	8(%r14), %rax
	movq	%rax, 8(%rbx)
	movq	(%r15), %rbx
	leaq	-48(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdi
	leaq	-8(%r14), %rsi
	movq	%r14, %rdx
	callq	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_
	movq	%r15, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rbx, (%rax)
	jmp	.LBB27_3
.LBB27_2:
	movl	$1, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, %r12
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	movq	%rax, -72(%rbp)
	leaq	-48(%rbp), %r13
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	callq	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	movq	%rax, %r12
	leaq	(%r12,%r14,8), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_
	movq	(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	movq	%rax, %r15
	movq	(%r15), %r13
	movq	%rbx, %rdi
	callq	_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_
	leaq	8(%rax), %rdx
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	movq	%r14, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_
	movq	%rax, %r14
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m
	movq	%r12, (%rbx)
	movq	%r14, 8(%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%rbx)
.LBB27_3:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Lfunc_end27-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv, .Lfunc_end28-_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	movq	(%rdx), %rax
	movq	%rax, (%rsi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_, .Lfunc_end29-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_,comdat
	.weak	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_,@function
_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_: # @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	callq	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_, .Lfunc_end30-_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv, .Lfunc_end31-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv, .Lfunc_end32-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	%r13, -56(%rbp)
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	%r15, %rax
	subq	%rbx, %rax
	cmpq	%r13, %rax
	jb	.LBB33_2
# BB#1:
	movq	%rbx, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%r15, %rbx
	movq	%rbx, %rcx
	cmovaq	%r15, %rcx
	cmpq	%rax, %rbx
	cmovbq	%r15, %rcx
	movq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_2:
	movq	%r12, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end33:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc, .Lfunc_end33-_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"axG",@progbits,_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,comdat
	.weak	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,@function
_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_: # @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp156:
	.cfi_offset %rbx, -32
.Ltmp157:
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
	retq
.Lfunc_end34:
	.size	_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, .Lfunc_end34-_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv: # @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv, .Lfunc_end35-_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm: # @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.cfi_startproc
# BB#0:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB36_2
# BB#1:
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv
	popq	%rbp
.LBB36_2:
	retq
.Lfunc_end36:
	.size	_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm, .Lfunc_end36-_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_
	.p2align	4, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	callq	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_, .Lfunc_end37-_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_, .Lfunc_end38-_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,@function
_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_: # @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	callq	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	popq	%rbp
	retq
.Lfunc_end39:
	.size	_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_, .Lfunc_end39-_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,"axG",@progbits,_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,comdat
	.weak	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_,@function
_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_: # @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.cfi_startproc
# BB#0:
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
	retq
.Lfunc_end40:
	.size	_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_, .Lfunc_end40-_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,@function
_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_: # @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_
	popq	%rbp
	retq
.Lfunc_end41:
	.size	_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_, .Lfunc_end41-_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,"axG",@progbits,_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,comdat
	.weak	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_,@function
_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_: # @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_, .Lfunc_end42-_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_
	.p2align	4, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp185:
	.cfi_offset %rbx, -24
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rdi, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	sarq	$3, %rdx
	subq	%rax, %rbx
	testq	%rdx, %rdx
	je	.LBB43_2
# BB#1:
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	memmove
.LBB43_2:                               # %._crit_edge
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_, .Lfunc_end43-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_,"axG",@progbits,_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_,comdat
	.weak	_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_
	.p2align	4, 0x90
	.type	_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_,@function
_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_: # @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_, .Lfunc_end44-_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end45:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv, .Lfunc_end45-_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
.Lfunc_end46:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv, .Lfunc_end46-_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	.cfi_endproc

	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	cmovbq	%rsi, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end47:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end47-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end48:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_, .Lfunc_end48-_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_
	.cfi_endproc

	.section	.text._ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv, .Lfunc_end49-_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end50:
	.size	_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv, .Lfunc_end50-_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.LBB51_2
# BB#1:
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	_Znwm
	popq	%rbp
	retq
.LBB51_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end51:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv, .Lfunc_end51-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E
	.p2align	4, 0x90
	.type	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	callq	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_
	popq	%rbp
	retq
.Lfunc_end52:
	.size	_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E, .Lfunc_end52-_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_,comdat
	.weak	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_,@function
_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_: # @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_
	popq	%rbp
	retq
.Lfunc_end53:
	.size	_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_, .Lfunc_end53-_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_
	.p2align	4, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	callq	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_
	popq	%rbp
	retq
.Lfunc_end54:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_, .Lfunc_end54-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_
	.cfi_endproc

	.section	.text._ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_,comdat
	.weak	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_,@function
_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_:  # @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	callq	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	popq	%rbp
	retq
.Lfunc_end55:
	.size	_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_, .Lfunc_end55-_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_,@function
_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_: # @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	callq	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	popq	%rbp
	retq
.Lfunc_end56:
	.size	_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_, .Lfunc_end56-_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,comdat
	.weak	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_,@function
_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_: # @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_
	popq	%rbp
	retq
.Lfunc_end57:
	.size	_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_, .Lfunc_end57-_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_
	.cfi_endproc

	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp231:
	.cfi_offset %rbx, -32
.Ltmp232:
	.cfi_offset %r14, -24
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rcx
	subq	%rcx, %rax
	movq	%rax, %rbx
	sarq	$3, %rbx
	je	.LBB58_2
# BB#1:
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	memmove
.LBB58_2:
	leaq	(%r14,%rbx,8), %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end58:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_, .Lfunc_end58-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_,@function
_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_: # @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_, .Lfunc_end59-_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_
	.cfi_endproc

	.section	.text._ZN4Vec3IfEC2Ev,"axG",@progbits,_ZN4Vec3IfEC2Ev,comdat
	.weak	_ZN4Vec3IfEC2Ev
	.p2align	4, 0x90
	.type	_ZN4Vec3IfEC2Ev,@function
_ZN4Vec3IfEC2Ev:                        # @_ZN4Vec3IfEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	movl	$0, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end60:
	.size	_ZN4Vec3IfEC2Ev, .Lfunc_end60-_ZN4Vec3IfEC2Ev
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI61_0:
	.quad	4607182418800017408     # double 1
	.section	.text._ZN4Vec3IfE9normalizeEv,"axG",@progbits,_ZN4Vec3IfE9normalizeEv,comdat
	.weak	_ZN4Vec3IfE9normalizeEv
	.p2align	4, 0x90
	.type	_ZN4Vec3IfE9normalizeEv,@function
_ZN4Vec3IfE9normalizeEv:                # @_ZN4Vec3IfE9normalizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp242:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	_ZNK4Vec3IfE7length2Ev
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB61_4
# BB#1:
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB61_3
# BB#2:                                 # %call.sqrt
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB61_3:                               # %.split
	movsd	.LCPI61_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rbx)
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%rbx)
	mulss	8(%rbx), %xmm0
	movss	%xmm0, 8(%rbx)
.LBB61_4:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end61:
	.size	_ZN4Vec3IfE9normalizeEv, .Lfunc_end61-_ZN4Vec3IfE9normalizeEv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI62_0:
	.long	2139095040              # float +Inf
.LCPI62_1:
	.long	1063828014              # float 0.909090876
.LCPI62_2:
	.long	1066192077              # float 1.10000002
.LCPI62_3:
	.long	1065353216              # float 1
.LCPI62_6:
	.long	1073741824              # float 2
.LCPI62_7:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI62_4:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI62_5:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.p2align	4, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp246:
	.cfi_offset %rbx, -56
.Ltmp247:
	.cfi_offset %r12, -48
.Ltmp248:
	.cfi_offset %r13, -40
.Ltmp249:
	.cfi_offset %r14, -32
.Ltmp250:
	.cfi_offset %r15, -24
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	$2139095040, -84(%rbp)  # imm = 0x7F800000
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	testq	%rax, %rax
	je	.LBB62_12
# BB#1:
	movq	%rbx, -192(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movss	.LCPI62_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
	movl	$3, %r12d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB62_2:                               # %.lr.ph195
                                        # =>This Inner Loop Header: Depth=1
	movl	$2139095040, -44(%rbp)  # imm = 0x7F800000
	movl	$2139095040, -52(%rbp)  # imm = 0x7F800000
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	leaq	-44(%rbp), %rcx
	leaq	-52(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB62_3
# BB#4:                                 #   in Loop: Header=BB62_2 Depth=1
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%r13, %rbx
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_5
# BB#6:                                 #   in Loop: Header=BB62_2 Depth=1
	movl	-52(%rbp), %r15d
	movl	%r15d, -44(%rbp)
	movd	%r15d, %xmm0
	jmp	.LBB62_7
	.p2align	4, 0x90
.LBB62_3:                               #   in Loop: Header=BB62_2 Depth=1
	movq	%r13, %rbx
	jmp	.LBB62_9
	.p2align	4, 0x90
.LBB62_5:                               #   in Loop: Header=BB62_2 Depth=1
	movd	%xmm0, %r15d
.LBB62_7:                               #   in Loop: Header=BB62_2 Depth=1
	movss	-48(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_9
# BB#8:                                 #   in Loop: Header=BB62_2 Depth=1
	movl	%r15d, -84(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movd	%r15d, %xmm0
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
.LBB62_9:                               #   in Loop: Header=BB62_2 Depth=1
	leal	-2(%r12), %r13d
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r13
	jae	.LBB62_10
# BB#42:                                # %.lr.ph195.1
                                        #   in Loop: Header=BB62_2 Depth=1
	movl	$2139095040, -44(%rbp)  # imm = 0x7F800000
	movl	$2139095040, -52(%rbp)  # imm = 0x7F800000
	movq	%rbx, %rdi
	movq	%rbx, %r15
	movq	%r13, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	leaq	-44(%rbp), %rcx
	leaq	-52(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB62_48
# BB#43:                                #   in Loop: Header=BB62_2 Depth=1
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_44
# BB#45:                                #   in Loop: Header=BB62_2 Depth=1
	movl	-52(%rbp), %r14d
	movl	%r14d, -44(%rbp)
	movd	%r14d, %xmm0
	jmp	.LBB62_46
	.p2align	4, 0x90
.LBB62_44:                              #   in Loop: Header=BB62_2 Depth=1
	movd	%xmm0, %r14d
.LBB62_46:                              #   in Loop: Header=BB62_2 Depth=1
	movss	-48(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_48
# BB#47:                                #   in Loop: Header=BB62_2 Depth=1
	movl	%r14d, -84(%rbp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movd	%r14d, %xmm0
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
.LBB62_48:                              #   in Loop: Header=BB62_2 Depth=1
	leal	-1(%r12), %r13d
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r13
	jae	.LBB62_49
# BB#50:                                # %.lr.ph195.2
                                        #   in Loop: Header=BB62_2 Depth=1
	movl	$2139095040, -44(%rbp)  # imm = 0x7F800000
	movl	$2139095040, -52(%rbp)  # imm = 0x7F800000
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	leaq	-44(%rbp), %rcx
	leaq	-52(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB62_56
# BB#51:                                #   in Loop: Header=BB62_2 Depth=1
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_52
# BB#53:                                #   in Loop: Header=BB62_2 Depth=1
	movl	-52(%rbp), %r14d
	movl	%r14d, -44(%rbp)
	movd	%r14d, %xmm0
	jmp	.LBB62_54
	.p2align	4, 0x90
.LBB62_52:                              #   in Loop: Header=BB62_2 Depth=1
	movd	%xmm0, %r14d
.LBB62_54:                              #   in Loop: Header=BB62_2 Depth=1
	movss	-48(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB62_56
# BB#55:                                #   in Loop: Header=BB62_2 Depth=1
	movl	%r14d, -84(%rbp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movd	%r14d, %xmm0
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
.LBB62_56:                              #   in Loop: Header=BB62_2 Depth=1
	movl	%r12d, %r14d
	movq	%r15, %r13
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	addl	$3, %r12d
	cmpq	%rax, %r14
	jb	.LBB62_2
	jmp	.LBB62_11
.LBB62_10:
	movq	%rbx, %r13
	jmp	.LBB62_11
.LBB62_49:
	movq	%r15, %r13
.LBB62_11:                              # %._crit_edge
	movq	-144(%rbp), %r12        # 8-byte Reload
	testq	%r12, %r12
	movq	-192(%rbp), %r14        # 8-byte Reload
	je	.LBB62_12
# BB#13:
	leaq	-208(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	_ZN4Vec3IfEC2Ef
	leaq	-84(%rbp), %rsi
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -584(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -580(%rbp)
	movss	%xmm1, -576(%rbp)
	leaq	-584(%rbp), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -136(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -132(%rbp)
	movss	%xmm1, -128(%rbp)
	leaq	-136(%rbp), %rdi
	movq	%r12, %rsi
	callq	_ZNK4Vec3IfEmiERKS0_
	movss	%xmm0, -80(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -76(%rbp)
	movss	%xmm1, -72(%rbp)
	leaq	-80(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	movl	$953267991, -56(%rbp)   # imm = 0x38D1B717
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	ucomiss	.LCPI62_7, %xmm0
	jbe	.LBB62_14
# BB#15:
	leaq	-80(%rbp), %rdi
	callq	_ZNK4Vec3IfEngEv
	movss	%xmm0, -80(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -76(%rbp)
	movss	%xmm1, -72(%rbp)
	movss	.LCPI62_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB62_16
.LBB62_12:                              # %._crit_edge.thread
	leaq	-184(%rbp), %rdi
	movss	.LCPI62_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	callq	_ZN4Vec3IfEC2Ef
	movss	-184(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-180(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-176(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB62_35
.LBB62_14:
	movss	.LCPI62_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB62_16:
	movss	%xmm0, -64(%rbp)        # 4-byte Spill
	movss	44(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI62_7, %xmm0
	jbe	.LBB62_17
# BB#25:
	cmpl	$4, (%r14)
	jg	.LBB62_19
	jmp	.LBB62_26
.LBB62_17:
	movss	48(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB62_19
# BB#18:
	cmpl	$5, (%r14)
	jge	.LBB62_19
.LBB62_26:
	leaq	44(%r12), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	leaq	-80(%rbp), %r14
	movq	%rbx, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	addss	.LCPI62_3(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI62_4(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -260(%rbp)
	movl	$1065353216, -256(%rbp) # imm = 0x3F800000
	movl	$1036831949, -252(%rbp) # imm = 0x3DCCCCCD
	leaq	-260(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	leaq	-252(%rbp), %rdx
	callq	_Z3mixIfET_RKS0_S2_S2_
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
	movss	%xmm0, -264(%rbp)
	movl	$1073741824, -248(%rbp) # imm = 0x40000000
	leaq	-248(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -536(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -532(%rbp)
	movss	%xmm1, -528(%rbp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	movss	%xmm0, -244(%rbp)
	leaq	-536(%rbp), %rdi
	leaq	-244(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -552(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -548(%rbp)
	movss	%xmm1, -544(%rbp)
	leaq	-552(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNK4Vec3IfEmiERKS0_
	movss	%xmm0, -568(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -564(%rbp)
	movss	%xmm1, -560(%rbp)
	leaq	-568(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -488(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -484(%rbp)
	movss	%xmm1, -480(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-488(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -504(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -500(%rbp)
	movss	%xmm1, -496(%rbp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -240(%rbp)
	leaq	-504(%rbp), %rdi
	leaq	-240(%rbp), %rcx
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movss	%xmm0, -520(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -516(%rbp)
	movss	%xmm1, -512(%rbp)
	leaq	-280(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	_ZN4Vec3IfEC2Ef
	movq	-592(%rbp), %r14        # 8-byte Reload
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI62_7, %xmm0
	jne	.LBB62_27
	jnp	.LBB62_30
.LBB62_27:
	movss	-64(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -236(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%r15, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	movaps	%xmm0, -624(%rbp)       # 16-byte Spill
	movss	-64(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm3
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	movss	.LCPI62_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	movss	%xmm0, -212(%rbp)       # 4-byte Spill
	leaq	-236(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -456(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -452(%rbp)
	movss	%xmm1, -448(%rbp)
	movaps	-624(%rbp), %xmm0       # 16-byte Reload
	mulss	-64(%rbp), %xmm0        # 4-byte Folded Reload
	xorps	.LCPI62_5(%rip), %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movss	-212(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB62_29
# BB#28:                                # %call.sqrt
	movapd	%xmm1, %xmm0
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB62_29:                              # %.split
	subsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -232(%rbp)
	leaq	-80(%rbp), %rbx
	leaq	-232(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -440(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -436(%rbp)
	movss	%xmm1, -432(%rbp)
	leaq	-456(%rbp), %rdi
	leaq	-440(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -472(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -468(%rbp)
	movss	%xmm1, -464(%rbp)
	leaq	-472(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	leaq	-56(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -408(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -404(%rbp)
	movss	%xmm1, -400(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-408(%rbp), %rsi
	callq	_ZNK4Vec3IfEmiERKS0_
	movss	%xmm0, -424(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -420(%rbp)
	movss	%xmm1, -416(%rbp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -228(%rbp)
	leaq	-424(%rbp), %rdi
	leaq	-228(%rbp), %rcx
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movss	%xmm0, -280(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -276(%rbp)
	movss	%xmm1, -272(%rbp)
.LBB62_30:
	leaq	-520(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -392(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -388(%rbp)
	movss	%xmm1, -384(%rbp)
	movss	.LCPI62_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm0        # 4-byte Folded Reload
	movss	%xmm0, -224(%rbp)
	leaq	-280(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -360(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -356(%rbp)
	movss	%xmm1, -352(%rbp)
	leaq	-360(%rbp), %rdi
	movq	%r14, %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -376(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -372(%rbp)
	movss	%xmm1, -368(%rbp)
	leaq	-392(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -344(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -340(%rbp)
	movss	%xmm1, -336(%rbp)
	leaq	20(%r12), %rsi
	leaq	-344(%rbp), %rdi
	callq	_ZNK4Vec3IfEmlERKS0_
	movss	%xmm0, -208(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -204(%rbp)
	movss	%xmm1, -200(%rbp)
	jmp	.LBB62_34
.LBB62_19:                              # %.preheader.preheader
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB62_34
	.p2align	4, 0x90
.LBB62_20:                              # %.lr.ph194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_22 Depth 2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rax
	movss	32(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI62_7, %xmm0
	jbe	.LBB62_33
# BB#21:                                #   in Loop: Header=BB62_20 Depth=1
	leaq	-608(%rbp), %rdi
	movss	.LCPI62_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	callq	_ZN4Vec3IfEC2Ef
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rdi
	leaq	-136(%rbp), %rsi
	callq	_ZNK4Vec3IfEmiERKS0_
	movss	%xmm0, -168(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -164(%rbp)
	movss	%xmm1, -160(%rbp)
	leaq	-168(%rbp), %rdi
	callq	_ZN4Vec3IfE9normalizeEv
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	testq	%rax, %rax
	movl	$0, %r12d
	je	.LBB62_32
	.p2align	4, 0x90
.LBB62_22:                              # %.lr.ph
                                        #   Parent Loop BB62_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, %ebx
	je	.LBB62_31
# BB#23:                                #   in Loop: Header=BB62_22 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %r14
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -96(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -92(%rbp)
	movss	%xmm1, -88(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -112(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -108(%rbp)
	movss	%xmm1, -104(%rbp)
	movq	%r14, %rdi
	leaq	-112(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-148(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB62_24
.LBB62_31:                              #   in Loop: Header=BB62_22 Depth=2
	leal	1(%r12), %r14d
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r14
	jae	.LBB62_32
# BB#36:                                # %.lr.ph.1
                                        #   in Loop: Header=BB62_22 Depth=2
	cmpl	%r14d, %ebx
	je	.LBB62_38
# BB#37:                                #   in Loop: Header=BB62_22 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %r15
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -96(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -92(%rbp)
	movss	%xmm1, -88(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -112(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -108(%rbp)
	movss	%xmm1, -104(%rbp)
	movq	%r15, %rdi
	leaq	-112(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-148(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB62_24
.LBB62_38:                              #   in Loop: Header=BB62_22 Depth=2
	leal	2(%r12), %r15d
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r15
	jae	.LBB62_32
# BB#39:                                # %.lr.ph.2
                                        #   in Loop: Header=BB62_22 Depth=2
	incl	%r14d
	cmpl	%r14d, %ebx
	je	.LBB62_41
# BB#40:                                #   in Loop: Header=BB62_22 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %r14
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -96(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -92(%rbp)
	movss	%xmm1, -88(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movss	%xmm0, -112(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -108(%rbp)
	movss	%xmm1, -104(%rbp)
	movq	%r14, %rdi
	leaq	-112(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-148(%rbp), %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB62_24
.LBB62_41:                              #   in Loop: Header=BB62_22 Depth=2
	leal	3(%r12), %r12d
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %r12
	jb	.LBB62_22
	jmp	.LBB62_32
.LBB62_24:                              #   in Loop: Header=BB62_20 Depth=1
	xorps	%xmm0, %xmm0
	leaq	-608(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Ef
	.p2align	4, 0x90
.LBB62_32:                              # %.loopexit
                                        #   in Loop: Header=BB62_20 Depth=1
	movq	-144(%rbp), %r12        # 8-byte Reload
	leaq	20(%r12), %rdi
	leaq	-608(%rbp), %rsi
	callq	_ZNK4Vec3IfEmlERKS0_
	movss	%xmm0, -312(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -308(%rbp)
	movss	%xmm1, -304(%rbp)
	movl	$0, -220(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	movss	%xmm0, -216(%rbp)
	leaq	-220(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	callq	_ZSt3maxIfERKT_S2_S2_
	leaq	-312(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNK4Vec3IfEmlERKf
	movss	%xmm0, -296(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -292(%rbp)
	movss	%xmm1, -288(%rbp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	movq	(%rax), %rsi
	addq	$32, %rsi
	leaq	-296(%rbp), %rdi
	callq	_ZNK4Vec3IfEmlERKS0_
	movss	%xmm0, -328(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -324(%rbp)
	movss	%xmm1, -320(%rbp)
	leaq	-208(%rbp), %rdi
	leaq	-328(%rbp), %rsi
	callq	_ZN4Vec3IfEpLERKS0_
.LBB62_33:                              # %.preheader
                                        #   in Loop: Header=BB62_20 Depth=1
	incl	%ebx
	movq	%r13, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB62_20
.LBB62_34:                              # %.loopexit38
	addq	$32, %r12
	leaq	-208(%rbp), %rdi
	movq	%r12, %rsi
	callq	_ZNK4Vec3IfEplERKS0_
	movaps	%xmm0, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	movss	%xmm0, -184(%rbp)
	movss	%xmm2, -180(%rbp)
	movss	%xmm1, -176(%rbp)
.LBB62_35:
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Lfunc_end62-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZSt3minIfERKT_S2_S2_,"axG",@progbits,_ZSt3minIfERKT_S2_S2_,comdat
	.weak	_ZSt3minIfERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minIfERKT_S2_S2_,@function
_ZSt3minIfERKT_S2_S2_:                  # @_ZSt3minIfERKT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rsi), %xmm0
	cmovaq	%rsi, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end63:
	.size	_ZSt3minIfERKT_S2_S2_, .Lfunc_end63-_ZSt3minIfERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfE7length2Ev,"axG",@progbits,_ZNK4Vec3IfE7length2Ev,comdat
	.weak	_ZNK4Vec3IfE7length2Ev
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfE7length2Ev,@function
_ZNK4Vec3IfE7length2Ev:                 # @_ZNK4Vec3IfE7length2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end64:
	.size	_ZNK4Vec3IfE7length2Ev, .Lfunc_end64-_ZNK4Vec3IfE7length2Ev
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm:  # @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	leaq	(,%rsi,8), %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end65:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm, .Lfunc_end65-_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm
	.cfi_endproc

	.section	.text._ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,"axG",@progbits,_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,comdat
	.weak	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.p2align	4, 0x90
	.type	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,@function
_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_: # @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp263:
	.cfi_offset %rbx, -48
.Ltmp264:
	.cfi_offset %r12, -40
.Ltmp265:
	.cfi_offset %r14, -32
.Ltmp266:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r12
	callq	_ZNK4Vec3IfEmiERKS0_
	movss	%xmm0, -48(%rbp)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -40(%rbp)
	leaq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNK4Vec3IfE3dotERKS0_
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB66_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB66_9
.LBB66_2:
	leaq	-48(%rbp), %rdi
	movq	%rdi, %rsi
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	callq	_ZNK4Vec3IfE3dotERKS0_
	movss	-36(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm1
	mulss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	16(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB66_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB66_9
.LBB66_4:
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jnp	.LBB66_6
# BB#5:                                 # %call.sqrt
	movaps	%xmm1, %xmm0
	callq	sqrtf
	movss	-36(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
.LBB66_6:                               # %.split
	movb	$1, %al
	testq	%r15, %r15
	je	.LBB66_9
# BB#7:                                 # %.split
	testq	%r14, %r14
	je	.LBB66_9
# BB#8:
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, (%r15)
	addss	%xmm0, %xmm2
	movss	%xmm2, (%r14)
.LBB66_9:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_, .Lfunc_end66-_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEplERKS0_,"axG",@progbits,_ZNK4Vec3IfEplERKS0_,comdat
	.weak	_ZNK4Vec3IfEplERKS0_
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfEplERKS0_,@function
_ZNK4Vec3IfEplERKS0_:                   # @_ZNK4Vec3IfEplERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	addss	(%rsi), %xmm0
	addss	4(%rsi), %xmm1
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	addss	8(%rsi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	_ZNK4Vec3IfEplERKS0_, .Lfunc_end67-_ZNK4Vec3IfEplERKS0_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmlERKf,"axG",@progbits,_ZNK4Vec3IfEmlERKf,comdat
	.weak	_ZNK4Vec3IfEmlERKf
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfEmlERKf,@function
_ZNK4Vec3IfEmlERKf:                     # @_ZNK4Vec3IfEmlERKf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	mulss	8(%rdi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	_ZNK4Vec3IfEmlERKf, .Lfunc_end68-_ZNK4Vec3IfEmlERKf
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmiERKS0_,"axG",@progbits,_ZNK4Vec3IfEmiERKS0_,comdat
	.weak	_ZNK4Vec3IfEmiERKS0_
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfEmiERKS0_,@function
_ZNK4Vec3IfEmiERKS0_:                   # @_ZNK4Vec3IfEmiERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	(%rsi), %xmm0
	subss	4(%rsi), %xmm1
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	_ZNK4Vec3IfEmiERKS0_, .Lfunc_end69-_ZNK4Vec3IfEmiERKS0_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfE3dotERKS0_,"axG",@progbits,_ZNK4Vec3IfE3dotERKS0_,comdat
	.weak	_ZNK4Vec3IfE3dotERKS0_
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfE3dotERKS0_,@function
_ZNK4Vec3IfE3dotERKS0_:                 # @_ZNK4Vec3IfE3dotERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	(%rsi), %xmm0
	mulss	4(%rsi), %xmm1
	addss	%xmm0, %xmm1
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	8(%rsi), %xmm0
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end70:
	.size	_ZNK4Vec3IfE3dotERKS0_, .Lfunc_end70-_ZNK4Vec3IfE3dotERKS0_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI71_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.text._ZNK4Vec3IfEngEv,"axG",@progbits,_ZNK4Vec3IfEngEv,comdat
	.weak	_ZNK4Vec3IfEngEv
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfEngEv,@function
_ZNK4Vec3IfEngEv:                       # @_ZNK4Vec3IfEngEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movaps	.LCPI71_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm3, %xmm0
	xorps	%xmm3, %xmm1
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	_ZNK4Vec3IfEngEv, .Lfunc_end71-_ZNK4Vec3IfEngEv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI72_0:
	.long	1065353216              # float 1
	.section	.text._Z3mixIfET_RKS0_S2_S2_,"axG",@progbits,_Z3mixIfET_RKS0_S2_S2_,comdat
	.weak	_Z3mixIfET_RKS0_S2_S2_
	.p2align	4, 0x90
	.type	_Z3mixIfET_RKS0_S2_S2_,@function
_Z3mixIfET_RKS0_S2_S2_:                 # @_Z3mixIfET_RKS0_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	.LCPI72_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	mulss	(%rdi), %xmm0
	addss	%xmm2, %xmm0
	popq	%rbp
	retq
.Lfunc_end72:
	.size	_Z3mixIfET_RKS0_S2_S2_, .Lfunc_end72-_Z3mixIfET_RKS0_S2_S2_
	.cfi_endproc

	.section	.text._ZNK4Vec3IfEmlERKS0_,"axG",@progbits,_ZNK4Vec3IfEmlERKS0_,comdat
	.weak	_ZNK4Vec3IfEmlERKS0_
	.p2align	4, 0x90
	.type	_ZNK4Vec3IfEmlERKS0_,@function
_ZNK4Vec3IfEmlERKS0_:                   # @_ZNK4Vec3IfEmlERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	(%rsi), %xmm0
	mulss	4(%rsi), %xmm1
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	8(%rsi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3IfEC2Efff
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	_ZNK4Vec3IfEmlERKS0_, .Lfunc_end73-_ZNK4Vec3IfEmlERKS0_
	.cfi_endproc

	.section	.text._ZN4Vec3IfEpLERKS0_,"axG",@progbits,_ZN4Vec3IfEpLERKS0_,comdat
	.weak	_ZN4Vec3IfEpLERKS0_
	.p2align	4, 0x90
	.type	_ZN4Vec3IfEpLERKS0_,@function
_ZN4Vec3IfEpLERKS0_:                    # @_ZN4Vec3IfEpLERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	(%rdi), %xmm0
	movss	%xmm0, (%rdi)
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	4(%rdi), %xmm0
	movss	%xmm0, 4(%rdi)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	8(%rdi), %xmm0
	movss	%xmm0, 8(%rdi)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end74:
	.size	_ZN4Vec3IfEpLERKS0_, .Lfunc_end74-_ZN4Vec3IfEpLERKS0_
	.cfi_endproc

	.section	.text._ZSt3maxIfERKT_S2_S2_,"axG",@progbits,_ZSt3maxIfERKT_S2_S2_,comdat
	.weak	_ZSt3maxIfERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxIfERKT_S2_S2_,@function
_ZSt3maxIfERKT_S2_S2_:                  # @_ZSt3maxIfERKT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rdi), %xmm0
	cmovaq	%rsi, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end75:
	.size	_ZSt3maxIfERKT_S2_S2_, .Lfunc_end75-_ZSt3maxIfERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"axG",@progbits,_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,comdat
	.weak	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,@function
_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_: # @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp297:
	.cfi_offset %rbx, -32
.Ltmp298:
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
	retq
.Lfunc_end76:
	.size	_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, .Lfunc_end76-_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp299:
	.cfi_def_cfa_offset 16
.Ltmp300:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp301:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	(%rdi), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv, .Lfunc_end77-_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
.Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp304:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	8(%rdi), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv, .Lfunc_end78-_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp307:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end79:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv, .Lfunc_end79-_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_: # @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp308:
	.cfi_def_cfa_offset 16
.Ltmp309:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp310:
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end80:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_, .Lfunc_end80-_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl: # @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp311:
	.cfi_def_cfa_offset 16
.Ltmp312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp313:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	shlq	$3, %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl, .Lfunc_end81-_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_raytracer.cpp,@function
_GLOBAL__sub_I_raytracer.cpp:           # @_GLOBAL__sub_I_raytracer.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp314:
	.cfi_def_cfa_offset 16
.Ltmp315:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp316:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end82:
	.size	_GLOBAL__sub_I_raytracer.cpp, .Lfunc_end82-_GLOBAL__sub_I_raytracer.cpp
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
