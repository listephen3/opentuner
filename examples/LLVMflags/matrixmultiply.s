	.text
	.file	"matrixmultiply.bc"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	callq	_Z4testIfEvv
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_0:
	.long	1216348160              # float 262144
	.section	.text._Z4testIfEvv,"axG",@progbits,_Z4testIfEvv,comdat
	.weak	_Z4testIfEvv
	.p2align	4, 0x90
	.type	_Z4testIfEvv,@function
_Z4testIfEvv:                           # @_Z4testIfEvv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, %r14
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, %r15
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, %rbx
	movl	$512, %edi              # imm = 0x200
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB1_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	(%rbx,%rax,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	4(%rcx,%rdx,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	addq	$2, %rdx
	cmpq	$512, %rdx              # imm = 0x200
	jne	.LBB1_2
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	incq	%rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB1_1
# BB#4:
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ZNSolsEPFRSoS_E        # TAILCALL
.Lfunc_end1:
	.size	_Z4testIfEvv, .Lfunc_end1-_Z4testIfEvv
	.cfi_endproc

	.section	.text._Z16make_test_matrixIfEPPT_v,"axG",@progbits,_Z16make_test_matrixIfEPPT_v,comdat
	.weak	_Z16make_test_matrixIfEPPT_v
	.p2align	4, 0x90
	.type	_Z16make_test_matrixIfEPPT_v,@function
_Z16make_test_matrixIfEPPT_v:           # @_Z16make_test_matrixIfEPPT_v
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
	pushq	%rbx
	pushq	%rax
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %r14
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r14,%r15,8)
	incq	%r15
	cmpq	$512, %r15              # imm = 0x200
	jne	.LBB2_1
	.p2align	4, 0x90
.LBB2_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movq	(%r14,%rbx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	imull	%ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	leaq	1(%rcx), %rdx
	imull	%ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 4(%rax,%rcx,4)
	leaq	2(%rcx), %rdx
	imull	%ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 8(%rax,%rcx,4)
	leaq	3(%rcx), %rdx
	imull	%ebx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 12(%rax,%rcx,4)
	addq	$4, %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jne	.LBB2_3
# BB#4:                                 # %.preheader7
                                        #   in Loop: Header=BB2_2 Depth=1
	incq	%rbx
	cmpq	$512, %rbx              # imm = 0x200
	jne	.LBB2_2
# BB#5:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_Z16make_test_matrixIfEPPT_v, .Lfunc_end2-_Z16make_test_matrixIfEPPT_v
	.cfi_endproc

	.section	.text._Z14SeqMatrixMult3IfEviPPT_S2_S2_,"axG",@progbits,_Z14SeqMatrixMult3IfEviPPT_S2_S2_,comdat
	.weak	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.p2align	4, 0x90
	.type	_Z14SeqMatrixMult3IfEviPPT_S2_S2_,@function
_Z14SeqMatrixMult3IfEviPPT_S2_S2_:      # @_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movslq	%edi, %r8
	testq	%r8, %r8
	jle	.LBB3_10
# BB#1:                                 # %.lr.ph11.i.preheader
	leal	-1(%rdi), %r11d
	leal	-2(%rdi), %r9d
	leaq	24(%rdx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$1, %r15d
	movb	%r11b, %r14b
	.p2align	4, 0x90
.LBB3_2:                                # %.lr.ph11.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_8 Depth 2
	cmpl	%edi, %r15d
	je	.LBB3_9
# BB#3:                                 # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%r11d, %ecx
	subl	%r13d, %ecx
	movl	%r9d, %r10d
	subl	%r13d, %r10d
	movq	(%rdx,%r13,8), %r12
	testb	$3, %cl
	movq	%r15, %rbx
	je	.LBB3_6
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	movb	%r14b, %cl
	andb	$3, %cl
	movzbl	%cl, %ecx
	negl	%ecx
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB3_5:                                # %.lr.ph.i.prol
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rbx,8), %rax
	movss	(%r12,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rax,%r13,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%r12,%rbx,4)
	movss	%xmm0, (%rax,%r13,4)
	incq	%rbx
	incl	%ecx
	jne	.LBB3_5
.LBB3_6:                                # %.lr.ph.preheader.i.split
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$3, %r10d
	jb	.LBB3_9
# BB#7:                                 # %.lr.ph.preheader.i.split.split
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%edi, %r10d
	subl	%ebx, %r10d
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
	leaq	12(%r12,%rbx,4), %rbx
	.p2align	4, 0x90
.LBB3_8:                                # %.lr.ph.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rax), %rcx
	movss	-12(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%r13,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -12(%rbx)
	movss	%xmm0, (%rcx,%r13,4)
	movq	-16(%rax), %rcx
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%r13,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rbx)
	movss	%xmm0, (%rcx,%r13,4)
	movq	-8(%rax), %rcx
	movss	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%r13,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -4(%rbx)
	movss	%xmm0, (%rcx,%r13,4)
	movq	(%rax), %rcx
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%r13,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%rbx)
	movss	%xmm0, (%rcx,%r13,4)
	addq	$32, %rax
	addq	$16, %rbx
	addl	$-4, %r10d
	jne	.LBB3_8
.LBB3_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r13
	incq	%r15
	addb	$3, %r14b
	cmpq	%r8, %r13
	jl	.LBB3_2
.LBB3_10:                               # %_Z9TransposeIfEviPPT_.exit
	testq	%r8, %r8
	movq	-56(%rbp), %r13         # 8-byte Reload
	jle	.LBB3_22
# BB#11:                                # %.preheader7.preheader
	leal	-1(%rdi), %r9d
	movl	%edi, %r15d
	andl	$3, %r15d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_12:                               # %.preheader7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_19 Depth 3
	testl	%edi, %edi
	je	.LBB3_21
# BB#13:                                # %.preheader.preheader
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	(%r13,%r10,8), %r11
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_14:                               # %.preheader
                                        #   Parent Loop BB3_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_19 Depth 3
	xorps	%xmm1, %xmm1
	testl	%edi, %edi
	je	.LBB3_20
# BB#15:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_14 Depth=2
	movq	(%rsi,%r10,8), %rbx
	movq	(%rdx,%r14,8), %rax
	xorps	%xmm0, %xmm0
	testl	%r15d, %r15d
	movl	$0, %ecx
	je	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %.lr.ph.prol
                                        #   Parent Loop BB3_12 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rbx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	incq	%rcx
	cmpl	%ecx, %r15d
	jne	.LBB3_16
.LBB3_17:                               # %.lr.ph.preheader.split
                                        #   in Loop: Header=BB3_14 Depth=2
	cmpl	$3, %r9d
	movaps	%xmm0, %xmm1
	jb	.LBB3_20
# BB#18:                                # %.lr.ph.preheader38
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	%edi, %r12d
	subl	%ecx, %r12d
	leaq	(%rax,%rcx,4), %rax
	leaq	(%rbx,%rcx,4), %rbx
	.p2align	4, 0x90
.LBB3_19:                               # %.lr.ph
                                        #   Parent Loop BB3_12 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rbx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	12(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm2
	addss	%xmm0, %xmm2
	movq	4(%rbx), %xmm0          # xmm0 = mem[0],zero
	movq	4(%rax), %xmm3          # xmm3 = mem[0],zero
	mulps	%xmm0, %xmm3
	addss	%xmm3, %xmm2
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	addss	%xmm2, %xmm3
	mulss	12(%rax), %xmm1
	addss	%xmm3, %xmm1
	addq	$16, %rax
	addq	$16, %rbx
	addl	$-4, %r12d
	movaps	%xmm1, %xmm0
	jne	.LBB3_19
.LBB3_20:                               # %._crit_edge
                                        #   in Loop: Header=BB3_14 Depth=2
	movss	%xmm1, (%r11,%r14,4)
	incq	%r14
	cmpl	%edi, %r14d
	jne	.LBB3_14
.LBB3_21:                               # %._crit_edge12
                                        #   in Loop: Header=BB3_12 Depth=1
	incq	%r10
	cmpq	%r8, %r10
	jl	.LBB3_12
.LBB3_22:                               # %._crit_edge14
	testq	%r8, %r8
	jle	.LBB3_32
# BB#23:                                # %.lr.ph11.i21.preheader
	leal	-1(%rdi), %r11d
	leal	-2(%rdi), %r10d
	leaq	24(%rdx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r9d, %r9d
	movl	$1, %r15d
	movb	%r11b, %r14b
	.p2align	4, 0x90
.LBB3_24:                               # %.lr.ph11.i21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_30 Depth 2
	cmpl	%edi, %r15d
	je	.LBB3_31
# BB#25:                                # %.lr.ph.preheader.i22
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	%r11d, %ecx
	subl	%r9d, %ecx
	movl	%r10d, %r13d
	subl	%r9d, %r13d
	movq	(%rdx,%r9,8), %r12
	testb	$3, %cl
	movq	%r15, %rcx
	je	.LBB3_28
# BB#26:                                #   in Loop: Header=BB3_24 Depth=1
	movb	%r14b, %cl
	andb	$3, %cl
	movzbl	%cl, %ebx
	negl	%ebx
	movq	%r15, %rcx
	.p2align	4, 0x90
.LBB3_27:                               # %.lr.ph.i27.prol
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rcx,8), %rax
	movss	(%r12,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rax,%r9,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%r12,%rcx,4)
	movss	%xmm0, (%rax,%r9,4)
	incq	%rcx
	incl	%ebx
	jne	.LBB3_27
.LBB3_28:                               # %.lr.ph.preheader.i22.split
                                        #   in Loop: Header=BB3_24 Depth=1
	cmpl	$3, %r13d
	jb	.LBB3_31
# BB#29:                                # %.lr.ph.preheader.i22.split.split
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	%edi, %eax
	subl	%ecx, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %rbx
	leaq	12(%r12,%rcx,4), %rcx
	.p2align	4, 0x90
.LBB3_30:                               # %.lr.ph.i27
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbx), %rsi
	movss	-12(%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi,%r9,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -12(%rcx)
	movss	%xmm0, (%rsi,%r9,4)
	movq	-16(%rbx), %rsi
	movss	-8(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi,%r9,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rcx)
	movss	%xmm0, (%rsi,%r9,4)
	movq	-8(%rbx), %rsi
	movss	-4(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi,%r9,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -4(%rcx)
	movss	%xmm0, (%rsi,%r9,4)
	movq	(%rbx), %rsi
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi,%r9,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%rcx)
	movss	%xmm0, (%rsi,%r9,4)
	addq	$32, %rbx
	addq	$16, %rcx
	addl	$-4, %eax
	jne	.LBB3_30
.LBB3_31:                               # %._crit_edge.i31
                                        #   in Loop: Header=BB3_24 Depth=1
	incq	%r9
	incq	%r15
	addb	$3, %r14b
	cmpq	%r8, %r9
	jl	.LBB3_24
.LBB3_32:                               # %_Z9TransposeIfEviPPT_.exit33
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_Z14SeqMatrixMult3IfEviPPT_S2_S2_, .Lfunc_end3-_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_matrixmultiply.cpp,@function
_GLOBAL__sub_I_matrixmultiply.cpp:      # @_GLOBAL__sub_I_matrixmultiply.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rbp
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end4:
	.size	_GLOBAL__sub_I_matrixmultiply.cpp, .Lfunc_end4-_GLOBAL__sub_I_matrixmultiply.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_matrixmultiply.cpp

	.ident	"clang version 3.9.0 (trunk 263061)"
	.section	".note.GNU-stack","",@progbits
