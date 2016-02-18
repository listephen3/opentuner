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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %r14
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                # %bb13.i
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r14,%r15,8)
	incq	%r15
.LBB1_1:                                # %bb4.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$511, %r15d             # imm = 0x1FF
	jle	.LBB1_2
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_3:                                # %bb37.i
                                        #   in Loop: Header=BB1_4 Depth=1
	incl	%ebx
.LBB1_4:                                # %bb17.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	cmpl	$511, %ebx              # imm = 0x1FF
	jg	.LBB1_8
# BB#5:                                 # %bb17.bb20_crit_edge.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	%ebx, %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_7:                                # %bb33.i
                                        #   in Loop: Header=BB1_6 Depth=2
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movq	(%r14,%rax,8), %rsi
	vmovss	%xmm0, (%rsi,%rdx,4)
	incq	%rdx
	addl	%ebx, %ecx
.LBB1_6:                                # %bb20.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, %edx              # imm = 0x1FF
	jle	.LBB1_7
	jmp	.LBB1_3
.LBB1_8:                                # %_Z16make_test_matrixIfEPPT_v.exit
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %r15
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_10:                               # %bb13.i51
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r15,%r12,8)
	incq	%r12
.LBB1_9:                                # %bb4.i44
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$511, %r12d             # imm = 0x1FF
	jle	.LBB1_10
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_11:                               # %bb37.i69
                                        #   in Loop: Header=BB1_12 Depth=1
	incl	%ebx
.LBB1_12:                               # %bb17.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	cmpl	$511, %ebx              # imm = 0x1FF
	jg	.LBB1_16
# BB#13:                                # %bb17.bb20_crit_edge.i57
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	%ebx, %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_15:                               # %bb33.i67
                                        #   in Loop: Header=BB1_14 Depth=2
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movq	(%r15,%rax,8), %rsi
	vmovss	%xmm0, (%rsi,%rdx,4)
	incq	%rdx
	addl	%ebx, %ecx
.LBB1_14:                               # %bb20.i60
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, %edx              # imm = 0x1FF
	jle	.LBB1_15
	jmp	.LBB1_11
.LBB1_16:                               # %_Z16make_test_matrixIfEPPT_v.exit70
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_18:                               # %bb13.i82
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%rbx,%r13,8)
	incq	%r13
.LBB1_17:                               # %bb4.i75
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$511, %r13d             # imm = 0x1FF
	jle	.LBB1_18
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_19:                               # %bb37.i100
                                        #   in Loop: Header=BB1_20 Depth=1
	incl	%r12d
.LBB1_20:                               # %bb17.i85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	cmpl	$511, %r12d             # imm = 0x1FF
	jg	.LBB1_24
# BB#21:                                # %bb17.bb20_crit_edge.i88
                                        #   in Loop: Header=BB1_20 Depth=1
	movslq	%r12d, %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_23:                               # %bb33.i98
                                        #   in Loop: Header=BB1_22 Depth=2
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movq	(%rbx,%rax,8), %rsi
	vmovss	%xmm0, (%rsi,%rdx,4)
	incq	%rdx
	addl	%r12d, %ecx
.LBB1_22:                               # %bb20.i91
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, %edx              # imm = 0x1FF
	jle	.LBB1_23
	jmp	.LBB1_19
.LBB1_24:                               # %_Z16make_test_matrixIfEPPT_v.exit101
	movl	$512, %edi              # imm = 0x200
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI1_0(%rip), %xmm1
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_29:                               # %bb28
                                        #   in Loop: Header=BB1_25 Depth=1
	incl	%eax
.LBB1_25:                               # %bb6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
	cmpl	$511, %eax              # imm = 0x1FF
	jg	.LBB1_30
# BB#26:                                # %bb6.bb9_crit_edge
                                        #   in Loop: Header=BB1_25 Depth=1
	movslq	%eax, %rcx
	xorl	%edx, %edx
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_28:                               # %bb24
                                        #   in Loop: Header=BB1_27 Depth=2
	movq	(%rbx,%rcx,8), %rsi
	vmulss	(%rsi,%rdx,4), %xmm1, %xmm2
	vaddss	%xmm2, %xmm0, %xmm0
	incq	%rdx
.LBB1_27:                               # %bb9
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$511, %edx              # imm = 0x1FF
	jle	.LBB1_28
	jmp	.LBB1_29
.LBB1_30:                               # %bb31
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp17:
	.size	_Z4testIfEvv, .Ltmp17-_Z4testIfEvv
	.cfi_endproc

	.section	.text._Z14SeqMatrixMult3IfEviPPT_S2_S2_,"axG",@progbits,_Z14SeqMatrixMult3IfEviPPT_S2_S2_,comdat
	.weak	_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.align	16, 0x90
	.type	_Z14SeqMatrixMult3IfEviPPT_S2_S2_,@function
_Z14SeqMatrixMult3IfEviPPT_S2_S2_:      # @_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	xorl	%r9d, %r9d
	movl	$1, %r8d
	xorl	%r10d, %r10d
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_12:                               # %bb30.i
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	%r10d
	incq	%r8
.LBB2_1:                                # %bb3.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	cmpl	%edi, %r10d
	jge	.LBB2_2
# BB#9:                                 # %bb3.i.bb8.i_crit_edge
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	%r10d, %r11
	movq	%r8, %rax
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_11:                               # %bb27.i
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	(%rdx,%r11,8), %rbx
	movq	(%rdx,%rax,8), %r14
	vmovss	(%rbx,%rax,4), %xmm0
	vmovss	(%r14,%r11,4), %xmm1
	vmovss	%xmm1, (%rbx,%rax,4)
	vmovss	%xmm0, (%r14,%r11,4)
	incq	%rax
.LBB2_10:                               # %bb8.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, %eax
	jl	.LBB2_11
	jmp	.LBB2_12
.LBB2_2:
	movl	$1, %r8d
	xorl	%r10d, %r10d
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_14:                               # %bb56
                                        #   in Loop: Header=BB2_3 Depth=1
	incl	%r9d
.LBB2_3:                                # %bb6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #       Child Loop BB2_7 Depth 3
	cmpl	%edi, %r9d
	jge	.LBB2_16
# BB#4:                                 # %bb6.bb10_crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	movslq	%r9d, %r14
	xorl	%r11d, %r11d
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_13:                               # %bb52
                                        #   in Loop: Header=BB2_5 Depth=2
	movq	(%rcx,%r14,8), %rax
	vmovss	%xmm0, (%rax,%r15,4)
	incl	%r11d
.LBB2_5:                                # %bb10
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_7 Depth 3
	cmpl	%edi, %r11d
	jge	.LBB2_14
# BB#6:                                 # %bb10.bb14_crit_edge
                                        #   in Loop: Header=BB2_5 Depth=2
	movslq	%r11d, %r15
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_8:                                # %bb39
                                        #   in Loop: Header=BB2_7 Depth=3
	movq	(%rsi,%r14,8), %rbx
	vmovss	(%rbx,%rax,4), %xmm1
	movq	(%rdx,%r15,8), %rbx
	vmulss	(%rbx,%rax,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	incq	%rax
.LBB2_7:                                # %bb14
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%edi, %eax
	jl	.LBB2_8
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_15:                               # %bb30.i95
                                        #   in Loop: Header=BB2_16 Depth=1
	incl	%r10d
	incq	%r8
.LBB2_16:                               # %bb3.i71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	cmpl	%edi, %r10d
	jge	.LBB2_20
# BB#17:                                # %bb3.i71.bb8.i76_crit_edge
                                        #   in Loop: Header=BB2_16 Depth=1
	movslq	%r10d, %rax
	movq	%r8, %rcx
	jmp	.LBB2_18
	.align	16, 0x90
.LBB2_19:                               # %bb27.i92
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	(%rdx,%rax,8), %rsi
	movq	(%rdx,%rcx,8), %rbx
	vmovss	(%rsi,%rcx,4), %xmm0
	vmovss	(%rbx,%rax,4), %xmm1
	vmovss	%xmm1, (%rsi,%rcx,4)
	vmovss	%xmm0, (%rbx,%rax,4)
	incq	%rcx
.LBB2_18:                               # %bb8.i76
                                        #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, %ecx
	jl	.LBB2_19
	jmp	.LBB2_15
.LBB2_20:                               # %_Z9TransposeIfEviPPT_.exit96
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp27:
	.size	_Z14SeqMatrixMult3IfEviPPT_S2_S2_, .Ltmp27-_Z14SeqMatrixMult3IfEviPPT_S2_S2_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
# BB#0:                                 # %bb
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	ret
.Ltmp33:
	.size	_GLOBAL__I_a, .Ltmp33-_GLOBAL__I_a
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.ctors,"aw",@progbits
	.align	8
	.quad	_GLOBAL__I_a

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
