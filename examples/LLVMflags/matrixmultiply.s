	.file	"matrixmultiply.bc"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_1,@function
__unnamed_1:                            # @1
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$__unnamed_2, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$__unnamed_2, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Ltmp2:
	.size	__unnamed_1, .Ltmp2-__unnamed_1
	.cfi_endproc

	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	callq	_Z4testIfEvv
	xorl	%eax, %eax
	popq	%rbp
	ret
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1216348160              # float 262144
	.section	.text._Z4testIfEvv,"axG",@progbits,_Z4testIfEvv,comdat
	.weak	_Z4testIfEvv
	.align	16, 0x90
	.type	_Z4testIfEvv,@function
_Z4testIfEvv:                           # @_Z4testIfEvv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, -8(%rbp)
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, -16(%rbp)
	callq	_Z16make_test_matrixIfEPPT_v
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	$512, %edi              # imm = 0x200
	movq	%rax, %rcx
	callq	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	vmovss	.LCPI2_0(%rip), %xmm0
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	incl	-32(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$511, -32(%rbp)         # imm = 0x1FF
	jg	.LBB2_6
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=2
	movslq	-36(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	vmovss	(%rcx,%rax,4), %xmm1
	vdivss	%xmm0, %xmm1, %xmm1
	vaddss	-28(%rbp), %xmm1, %xmm1
	vmovss	%xmm1, -28(%rbp)
	incl	-36(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, -36(%rbp)         # imm = 0x1FF
	jle	.LBB2_4
	jmp	.LBB2_5
.LBB2_6:
	vmovss	-28(%rbp), %xmm0
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	addq	$48, %rsp
	popq	%rbp
	jmp	_ZNSolsEPFRSoS_E        # TAILCALL
.Ltmp14:
	.size	_Z4testIfEvv, .Ltmp14-_Z4testIfEvv
	.cfi_endproc

	.section	.text._Z16make_test_matrixIfEPPT_v,"axG",@progbits,_Z16make_test_matrixIfEPPT_v,comdat
	.weak	_Z16make_test_matrixIfEPPT_v
	.align	16, 0x90
	.type	_Z16make_test_matrixIfEPPT_v,@function
_Z16make_test_matrixIfEPPT_v:           # @_Z16make_test_matrixIfEPPT_v
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	incl	-12(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$511, -12(%rbp)         # imm = 0x1FF
	jle	.LBB3_2
# BB#3:
	movl	$0, -16(%rbp)
	jmp	.LBB3_4
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
	incl	%eax
	movl	%eax, -16(%rbp)
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	cmpl	$511, -16(%rbp)         # imm = 0x1FF
	jg	.LBB3_9
# BB#5:                                 #   in Loop: Header=BB3_4 Depth=1
	movl	$0, -20(%rbp)
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_6 Depth=2
	movslq	-20(%rbp), %rcx
	imull	%ecx, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	vmovss	%xmm0, (%rax,%rcx,4)
	incl	-20(%rbp)
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, -20(%rbp)         # imm = 0x1FF
	movl	-16(%rbp), %eax
	jle	.LBB3_7
	jmp	.LBB3_8
.LBB3_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp20:
	.size	_Z16make_test_matrixIfEPPT_v, .Ltmp20-_Z16make_test_matrixIfEPPT_v
	.cfi_endproc

	.section	.text._Z14SeqMatrixMult3IfEviPPT_S2_S2_,"axG",@progbits,_Z14SeqMatrixMult3IfEviPPT_S2_S2_,comdat
	.weak	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.align	16, 0x90
	.type	_Z14SeqMatrixMult3IfEviPPT_S2_S2_,@function
_Z14SeqMatrixMult3IfEviPPT_S2_S2_:      # @_Z14SeqMatrixMult3IfEviPPT_S2_S2_
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	_Z9TransposeIfEviPPT_
	movl	$0, -36(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	incl	-36(%rbp)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_9
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=2
	vmovss	-44(%rbp), %xmm0
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	vmovss	%xmm0, (%rcx,%rax,4)
	incl	-40(%rbp)
.LBB4_3:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_8
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=2
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_5 Depth=3
	movslq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	movslq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	vmulss	(%rcx,%rax,4), %xmm0, %xmm0
	vaddss	-44(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -44(%rbp)
	incl	-48(%rbp)
.LBB4_5:                                #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB4_6
	jmp	.LBB4_7
.LBB4_9:
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	addq	$48, %rsp
	popq	%rbp
	jmp	_Z9TransposeIfEviPPT_   # TAILCALL
.Ltmp26:
	.size	_Z14SeqMatrixMult3IfEviPPT_S2_S2_, .Ltmp26-_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_endproc

	.section	.text._Z9TransposeIfEviPPT_,"axG",@progbits,_Z9TransposeIfEviPPT_,comdat
	.weak	_Z9TransposeIfEviPPT_
	.align	16, 0x90
	.type	_Z9TransposeIfEviPPT_,@function
_Z9TransposeIfEviPPT_:                  # @_Z9TransposeIfEviPPT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	incl	-20(%rbp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_6
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	incl	%eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rsi
	movq	-16(%rbp), %rcx
	leaq	(,%rax,4), %rdi
	addq	(%rcx,%rsi,8), %rdi
	shlq	$2, %rsi
	addq	(%rcx,%rax,8), %rsi
	callq	_ZSt4swapIfEvRT_S1_
	incl	-24(%rbp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB5_4
	jmp	.LBB5_5
.LBB5_6:
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp32:
	.size	_Z9TransposeIfEviPPT_, .Ltmp32-_Z9TransposeIfEviPPT_
	.cfi_endproc

	.section	.text._ZSt4swapIfEvRT_S1_,"axG",@progbits,_ZSt4swapIfEvRT_S1_,comdat
	.weak	_ZSt4swapIfEvRT_S1_
	.align	16, 0x90
	.type	_ZSt4swapIfEvRT_S1_,@function
_ZSt4swapIfEvRT_S1_:                    # @_ZSt4swapIfEvRT_S1_
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	vmovss	(%rax), %xmm0
	movq	-8(%rbp), %rax
	vmovss	%xmm0, (%rax)
	vmovss	-20(%rbp), %xmm0
	movq	-16(%rbp), %rax
	vmovss	%xmm0, (%rax)
	popq	%rbp
	ret
.Ltmp38:
	.size	_ZSt4swapIfEvRT_S1_, .Ltmp38-_ZSt4swapIfEvRT_S1_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_3,@function
__unnamed_3:                            # @2
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
	popq	%rbp
	jmp	__unnamed_1             # TAILCALL
.Ltmp44:
	.size	__unnamed_3, .Ltmp44-__unnamed_3
	.cfi_endproc

	.type	__unnamed_2,@object     # @0
	.local	__unnamed_2
	.comm	__unnamed_2,1,1
	.section	.ctors,"aw",@progbits
	.align	8
	.quad	__unnamed_3

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
