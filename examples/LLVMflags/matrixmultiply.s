	.file	"matrixmultiply.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
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
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r14,%r15,8)
	incq	%r15
	cmpl	$512, %r15d             # imm = 0x200
	jl	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	imull	%eax, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movq	(%r14,%rbx,8), %rcx
	vmovss	%xmm0, (%rcx,%rax,4)
	incq	%rax
	cmpl	$512, %eax              # imm = 0x200
	jl	.LBB1_3
# BB#4:                                 #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	cmpl	$512, %ebx              # imm = 0x200
	jl	.LBB1_2
# BB#5:                                 # %_Z16make_test_matrixIfEPPT_v.exit
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %r15
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r15,%r12,8)
	incq	%r12
	cmpl	$512, %r12d             # imm = 0x200
	jl	.LBB1_6
	.align	16, 0x90
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	imull	%eax, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssl	%ecx, %xmm0, %xmm0
	movq	(%r15,%rbx,8), %rcx
	vmovss	%xmm0, (%rcx,%rax,4)
	incq	%rax
	cmpl	$512, %eax              # imm = 0x200
	jl	.LBB1_8
# BB#9:                                 #   in Loop: Header=BB1_7 Depth=1
	incq	%rbx
	cmpl	$512, %ebx              # imm = 0x200
	jl	.LBB1_7
# BB#10:                                # %_Z16make_test_matrixIfEPPT_v.exit14
	movl	$4096, %edi             # imm = 0x1000
	callq	_Znam
	movq	%rax, %r12
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	$2048, %edi             # imm = 0x800
	callq	_Znam
	movq	%rax, (%r12,%r13,8)
	incq	%r13
	cmpl	$512, %r13d             # imm = 0x200
	jl	.LBB1_11
	.align	16, 0x90
.LBB1_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_13:                               #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	imull	%eax, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	vcv