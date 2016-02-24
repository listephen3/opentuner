	.file	"matrixmultiply.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	callq	_Z4testIfEvv
	xorl	%eax, %eax
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	914358272               # float 3.81469727E-6
	.section	.text._Z4testIfEvv,"axG",@progbits,_Z4testIfEvv,comdat
	.weak	_Z4testIfEvv
	.align	16, 0x90
	.type	_Z4testIfEvv,@function
_Z4testIfEvv:                           # @_Z4testIfEvv
	.cfi_startproc
# BB#0:                                 # %bb
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
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vmovss	.LCPI1_0(%rip), %xmm1
	.align	16, 0x90
.LBB1_1:                                # %bb79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	(%rbx,%rax,8), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_2:                                # %bb84
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulss	(%rcx,%rdx,4), %xmm1, %xmm2
	cmpq	$511, %rdx              # imm = 0x1FF
	leaq	1(%rdx), %rdx
	vaddss	%xmm2, %xmm0, %xmm0
	jne	.LBB1_2
# BB#3:                                 # %bb93
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB1_1
# BB#4:                                 # %bb97
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
.Ltmp15:
	.size	_Z4testIfEvv, .Ltmp15-_Z4testIfEvv
	.cfi_endproc

	.section	.text._Z16make_test_matrixIfEPPT_v,"axG",@progbits,_Z16make_test_matrixIfEPPT_v,comdat
	.weak	_Z16make_test_matrixIfEPPT_v
	.align	16, 0x90
	.type	_Z16make_test_matrixIfEPPT_v,@function
_Z16make_test_matrixIfEPPT_v:           # @_Z16make_test_matrixIfEPPT_v
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %rbx
	movl	$0, -44(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -32(%rbp)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB2_2
	.align	16, 0x90
.LBB2_1:                                # %bb99
                                        # =>This Inner Loop Header: Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movslq	-32(%rbp), %rcx
	movq	%rax, (%rbx,%rcx,8)
	movl	-32(%rbp), %eax
	incl	%eax
	movl	%eax, -64(%rbp)
	movl	%eax, -28(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -32(%rbp)
	cmpl	$512, %eax              # imm = 0x200
	jl	.LBB2_1
.LBB2_2:                                # %bb111
	movl	$0, -40(%rbp)
	movl	$0, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jg	.LBB2_7
	.align	16, 0x90
.LBB2_3:                                # %bb117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	movl	$0, -36(%rbp)
	movl	$0, -68(%rbp)
	movslq	%eax, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_4:                                # %bb121
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rsi
	imull	%eax, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssl	%edx, %xmm0, %xmm0
	movq	(%rbx,%rcx,8), %rdx
	vmovss	%xmm0, (%rdx,%rsi,4)
	incl	%esi
	movl	%esi, -52(%rbp)
	movl	%esi, -20(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -36(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -68(%rbp)
	cmpl	$512, %edx              # imm = 0x200
	jl	.LBB2_4
# BB#5:                                 # %bb132
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%edx, -60(%rbp)
	movl	%edx, -24(%rbp)
	movl	%eax, -56(%rbp)
	incl	%eax
	movl	%eax, -48(%rbp)
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$512, %eax              # imm = 0x200
	jl	.LBB2_3
# BB#6:                                 # %bb137
	movl	%eax, -12(%rbp)
.LBB2_7:                                # %bb139
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp23:
	.size	_Z16make_test_matrixIfEPPT_v, .Ltmp23-_Z16make_test_matrixIfEPPT_v
	.cfi_endproc

	.section	.text._Z14SeqMatrixMult3IfEviPPT_S2_S2_,"axG",@progbits,_Z14SeqMatrixMult3IfEviPPT_S2_S2_,comdat
	.weak	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.align	16, 0x90
	.type	_Z14SeqMatrixMult3IfEviPPT_S2_S2_,@function
_Z14SeqMatrixMult3IfEviPPT_S2_S2_:      # @_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
.Ltmp30:
	.cfi_offset %rbx, -24
                                        # kill: EDI<def> EDI<kill> RDI<def>
	testl	%edi, %edi
	jle	.LBB3_6
# BB#1:                                 # %bb137
	leal	-2(%rdi), %r8d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB3_2:                                # %bb138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	leaq	1(%r10), %r9
	movq	%r10, %rax
	cmpl	%edi, %r9d
	jge	.LBB3_5
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                # %bb147.bb147_crit_edge
                                        #   in Loop: Header=BB3_3 Depth=2
	incq	%rax
.LBB3_3:                                # %bb147
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%r10,8), %r11
	movq	8(%rdx,%rax,8), %rbx
	vmovss	4(%r11,%rax,4), %xmm0
	vmovss	(%rbx,%r10,4), %xmm1
	vmovss	%xmm1, 4(%r11,%rax,4)
	vmovss	%xmm0, (%rbx,%r10,4)
	cmpl	%eax, %r8d
	jne	.LBB3_4
.LBB3_5:                                # %bb160
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%r9, %r10
	cmpl	%edi, %r9d
	jl	.LBB3_2
.LBB3_6:                                # %bb165
	testl	%edi, %edi
	jle	.LBB3_13
# BB#7:                                 # %bb168
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB3_8:                                # %bb171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_10 Depth 3
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB3_9:                                # %bb179
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
	movq	(%rsi,%r8,8), %r10
	movq	(%rdx,%r9,8), %r11
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_10:                               # %bb190
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	(%r10,%rax,4), %xmm1
	vmulss	(%r11,%rax,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	incq	%rax
	cmpl	%edi, %eax
	jl	.LBB3_10
# BB#11:                                # %bb184
                                        #   in Loop: Header=BB3_9 Depth=2
	movq	(%rcx,%r8,8), %rax
	vmovss	%xmm0, (%rax,%r9,4)
	incq	%r9
	cmpl	%edi, %r9d
	jl	.LBB3_9
# BB#12:                                # %bb175
                                        #   in Loop: Header=BB3_8 Depth=1
	incq	%r8
	cmpl	%edi, %r8d
	jl	.LBB3_8
.LBB3_13:                               # %bb203
	testl	%edi, %edi
	jle	.LBB3_19
# BB#14:                                # %bb206
	leal	-2(%rdi), %r9d
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_15:                               # %bb207
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	leaq	1(%rsi), %r8
	movq	%rsi, %rcx
	cmpl	%edi, %r8d
	jge	.LBB3_18
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_17:                               # %bb216.bb216_crit_edge
                                        #   in Loop: Header=BB3_16 Depth=2
	incq	%rcx
.LBB3_16:                               # %bb216
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rsi,8), %rbx
	movq	8(%rdx,%rcx,8), %rax
	vmovss	4(%rbx,%rcx,4), %xmm0
	vmovss	(%rax,%rsi,4), %xmm1
	vmovss	%xmm1, 4(%rbx,%rcx,4)
	vmovss	%xmm0, (%rax,%rsi,4)
	cmpl	%ecx, %r9d
	jne	.LBB3_17
.LBB3_18:                               # %bb229
                                        #   in Loop: Header=BB3_15 Depth=1
	movq	%r8, %rsi
	cmpl	%edi, %r8d
	jl	.LBB3_15
.LBB3_19:                               # %bb234
	popq	%rbx
	popq	%rbp
	ret
.Ltmp31:
	.size	_Z14SeqMatrixMult3IfEviPPT_S2_S2_, .Ltmp31-_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_1,@function
__unnamed_1:                            # @1
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	movl	$__unnamed_2, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$__unnamed_2, %esi
	movl	$__dso_handle, %edx
	popq	%rbp
	jmp	__cxa_atexit            # TAILCALL
.Ltmp37:
	.size	__unnamed_1, .Ltmp37-__unnamed_1
	.cfi_endproc

	.type	__unnamed_2,@object     # @0
	.local	__unnamed_2
	.comm	__unnamed_2,1,1
	.section	.ctors,"aw",@progbits
	.align	8
	.quad	__unnamed_1

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
