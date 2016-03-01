	.file	"raytracer.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$13, %edi
	callq	srand48
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -72(%rbp)
	movq	$0, -56(%rbp)
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -576(%rbp)
	movq	%rax, -568(%rbp)
	movl	$0, -96(%rbp)
	movl	$-971223040, -92(%rbp)  # imm = 0xFFFFFFFFC61C5000
	movl	$-1046478848, -88(%rbp) # imm = 0xFFFFFFFFC1A00000
	movl	$1176256512, -100(%rbp) # imm = 0x461C4000
	movl	$1045220557, -112(%rbp) # imm = 0x3E4CCCCD
	movl	$1045220557, -108(%rbp) # imm = 0x3E4CCCCD
	movl	$1045220557, -104(%rbp) # imm = 0x3E4CCCCD
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movq	-568(%rbp), %rax
	movl	-88(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-568(%rbp), %rax
	vmovss	-100(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-568(%rbp), %rax
	vmovss	-100(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-568(%rbp), %rax
	movl	-104(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-112(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-568(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-136(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-568(%rbp), %rax
	vmovss	-120(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-568(%rbp), %rax
	vmovss	-116(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-568(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_1
# BB#57:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_2
.LBB0_1:                                # %._crit_edge.i137
	movb	$1, -32(%rbp)
.LBB0_2:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_7
# BB#3:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_4
# BB#5:
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %._crit_edge.i.i.i141
	movb	$1, -24(%rbp)
.LBB0_6:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i145
	addq	$8, -64(%rbp)
.LBB0_7:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -560(%rbp)
	movq	%rax, -552(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$-1046478848, -152(%rbp) # imm = 0xFFFFFFFFC1A00000
	movl	$1082130432, -164(%rbp) # imm = 0x40800000
	movl	$1065353216, -176(%rbp) # imm = 0x3F800000
	movl	$1050924810, -172(%rbp) # imm = 0x3EA3D70A
	movl	$1052266988, -168(%rbp) # imm = 0x3EB851EC
	movl	$1065353216, -180(%rbp) # imm = 0x3F800000
	movl	$1056964608, -184(%rbp) # imm = 0x3F000000
	movl	$0, -200(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -192(%rbp)
	movq	-552(%rbp), %rax
	movl	-152(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-552(%rbp), %rax
	vmovss	-164(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-552(%rbp), %rax
	vmovss	-164(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-552(%rbp), %rax
	movl	-168(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-176(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-552(%rbp), %rax
	movl	-192(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-200(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-552(%rbp), %rax
	vmovss	-184(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-552(%rbp), %rax
	vmovss	-180(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-552(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_8
# BB#58:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                # %._crit_edge.i176
	movb	$1, -32(%rbp)
.LBB0_9:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_14
# BB#10:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_11
# BB#12:
	movq	-16(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %._crit_edge.i.i.i180
	movb	$1, -24(%rbp)
.LBB0_13:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i184
	addq	$8, -64(%rbp)
.LBB0_14:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -544(%rbp)
	movq	%rax, -536(%rbp)
	movl	$1084227584, -224(%rbp) # imm = 0x40A00000
	movl	$-1082130432, -220(%rbp) # imm = 0xFFFFFFFFBF800000
	movl	$-1049624576, -216(%rbp) # imm = 0xFFFFFFFFC1700000
	movl	$1073741824, -228(%rbp) # imm = 0x40000000
	movl	$1063675494, -240(%rbp) # imm = 0x3F666666
	movl	$1061326684, -236(%rbp) # imm = 0x3F428F5C
	movl	$1055622431, -232(%rbp) # imm = 0x3EEB851F
	movl	$1065353216, -244(%rbp) # imm = 0x3F800000
	movl	$0, -248(%rbp)
	movl	$0, -264(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -256(%rbp)
	movq	-536(%rbp), %rax
	movl	-216(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-224(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-536(%rbp), %rax
	vmovss	-228(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-536(%rbp), %rax
	vmovss	-228(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-536(%rbp), %rax
	movl	-232(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-240(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-536(%rbp), %rax
	movl	-256(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-536(%rbp), %rax
	vmovss	-248(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-536(%rbp), %rax
	vmovss	-244(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-536(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_15
# BB#59:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-208(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               # %._crit_edge.i163
	movb	$1, -32(%rbp)
.LBB0_16:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_21
# BB#17:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_18
# BB#19:
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_20
.LBB0_18:                               # %._crit_edge.i.i.i167
	movb	$1, -24(%rbp)
.LBB0_20:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i171
	addq	$8, -64(%rbp)
.LBB0_21:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -528(%rbp)
	movq	%rax, -520(%rbp)
	movl	$1084227584, -288(%rbp) # imm = 0x40A00000
	movl	$0, -284(%rbp)
	movl	$-1043857408, -280(%rbp) # imm = 0xFFFFFFFFC1C80000
	movl	$1077936128, -292(%rbp) # imm = 0x40400000
	movl	$1059481190, -304(%rbp) # imm = 0x3F266666
	movl	$1061494456, -300(%rbp) # imm = 0x3F451EB8
	movl	$1064849900, -296(%rbp) # imm = 0x3F7851EC
	movl	$1065353216, -308(%rbp) # imm = 0x3F800000
	movl	$0, -312(%rbp)
	movl	$0, -328(%rbp)
	movl	$0, -324(%rbp)
	movl	$0, -320(%rbp)
	movq	-520(%rbp), %rax
	movl	-280(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-288(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-520(%rbp), %rax
	vmovss	-292(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-520(%rbp), %rax
	vmovss	-292(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-520(%rbp), %rax
	movl	-296(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-304(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-520(%rbp), %rax
	movl	-320(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-328(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-520(%rbp), %rax
	vmovss	-312(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-520(%rbp), %rax
	vmovss	-308(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-520(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_22
# BB#60:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_23
.LBB0_22:                               # %._crit_edge.i150
	movb	$1, -32(%rbp)
.LBB0_23:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_28
# BB#24:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_25
# BB#26:
	movq	-16(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_27
.LBB0_25:                               # %._crit_edge.i.i.i154
	movb	$1, -24(%rbp)
.LBB0_27:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i158
	addq	$8, -64(%rbp)
.LBB0_28:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -512(%rbp)
	movq	%rax, -504(%rbp)
	movl	$-1062207488, -352(%rbp) # imm = 0xFFFFFFFFC0B00000
	movl	$0, -348(%rbp)
	movl	$-1049624576, -344(%rbp) # imm = 0xFFFFFFFFC1700000
	movl	$1077936128, -356(%rbp) # imm = 0x40400000
	movl	$1063675494, -368(%rbp) # imm = 0x3F666666
	movl	$1063675494, -364(%rbp) # imm = 0x3F666666
	movl	$1063675494, -360(%rbp) # imm = 0x3F666666
	movl	$1065353216, -372(%rbp) # imm = 0x3F800000
	movl	$0, -376(%rbp)
	movl	$0, -392(%rbp)
	movl	$0, -388(%rbp)
	movl	$0, -384(%rbp)
	movq	-504(%rbp), %rax
	movl	-344(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-352(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-504(%rbp), %rax
	vmovss	-356(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-504(%rbp), %rax
	vmovss	-356(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-504(%rbp), %rax
	movl	-360(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-368(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-504(%rbp), %rax
	movl	-384(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-392(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-504(%rbp), %rax
	vmovss	-376(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-504(%rbp), %rax
	vmovss	-372(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-504(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_29
# BB#61:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-336(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_30
.LBB0_29:                               # %._crit_edge.i124
	movb	$1, -32(%rbp)
.LBB0_30:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_35
# BB#31:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_32
# BB#33:
	movq	-16(%rbp), %rax
	movq	-336(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_34
.LBB0_32:                               # %._crit_edge.i.i.i128
	movb	$1, -24(%rbp)
.LBB0_34:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i132
	addq	$8, -64(%rbp)
.LBB0_35:
	movl	$52, %edi
	callq	_Znwm
	movq	%rax, -496(%rbp)
	movq	%rax, -488(%rbp)
	movl	$0, -416(%rbp)
	movl	$1101004800, -412(%rbp) # imm = 0x41A00000
	movl	$-1041235968, -408(%rbp) # imm = 0xFFFFFFFFC1F00000
	movl	$1077936128, -420(%rbp) # imm = 0x40400000
	movl	$0, -432(%rbp)
	movl	$0, -428(%rbp)
	movl	$0, -424(%rbp)
	movl	$0, -436(%rbp)
	movl	$0, -440(%rbp)
	movl	$1077936128, -456(%rbp) # imm = 0x40400000
	movl	$1077936128, -452(%rbp) # imm = 0x40400000
	movl	$1077936128, -448(%rbp) # imm = 0x40400000
	movq	-488(%rbp), %rax
	movl	-408(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-416(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-488(%rbp), %rax
	vmovss	-420(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	movq	-488(%rbp), %rax
	vmovss	-420(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movq	-488(%rbp), %rax
	movl	-424(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-432(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movq	-488(%rbp), %rax
	movl	-448(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-456(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-488(%rbp), %rax
	vmovss	-440(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	movq	-488(%rbp), %rax
	vmovss	-436(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	-488(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_36
# BB#62:
	movq	-64(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-400(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movb	$0, -32(%rbp)
	jmp	.LBB0_37
.LBB0_36:                               # %._crit_edge.i
	movb	$1, -32(%rbp)
.LBB0_37:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_42
# BB#38:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_39
# BB#40:
	movq	-16(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	%rcx, (%rax)
	movb	$0, -24(%rbp)
	jmp	.LBB0_41
.LBB0_39:                               # %._crit_edge.i.i.i119
	movb	$1, -24(%rbp)
.LBB0_41:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i
	addq	$8, -64(%rbp)
.LBB0_42:
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	movl	%eax, -480(%rbp)
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_43
# BB#44:
	movl	$.L__unnamed_1, %edi
	xorl	%eax, %eax
	callq	printf
	movb	$0, -579(%rbp)
	jmp	.LBB0_45
.LBB0_43:                               # %._crit_edge
	movb	$1, -579(%rbp)
	.align	16, 0x90
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	%rax, -40(%rbp)
	cmpq	%rax, -32(%rbp)
	sete	-473(%rbp)
	cmpb	$1, -473(%rbp)
	je	.LBB0_46
# BB#50:                                #   in Loop: Header=BB0_45 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	subq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	addq	$-8, -64(%rbp)
	cmpq	$0, -464(%rbp)
	je	.LBB0_51
# BB#52:                                #   in Loop: Header=BB0_45 Depth=1
	movq	-464(%rbp), %rdi
	callq	_ZdlPv
	movb	$0, -577(%rbp)
	movb	$0, -578(%rbp)
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_46:                               # %._crit_edge187
                                        #   in Loop: Header=BB0_45 Depth=1
	movb	$1, -578(%rbp)
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_51:                               # %._crit_edge189
                                        #   in Loop: Header=BB0_45 Depth=1
	movb	$1, -577(%rbp)
	movb	$0, -578(%rbp)
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=1
	movb	-578(%rbp), %al
	testb	%al, %al
	je	.LBB0_45
# BB#48:
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_49
# BB#53:
	movb	$0, -32(%rbp)
	jmp	.LBB0_54
.LBB0_49:                               # %._crit_edge.i.i.i
	movb	$1, -32(%rbp)
.LBB0_54:
	cmpb	$1, -32(%rbp)
	jne	.LBB0_56
# BB#55:
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
.LBB0_56:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit
	xorl	%eax, %eax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	4564848582410108928     # double 0.0015625000232830644
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_3:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI1_4:
	.quad	4608683618854764544     # double 1.3333333730697632
.LCPI1_5:
	.quad	-4656421774475395072    # double -0.0020833334419876337
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_6:
	.long	1132396544              # float 255
.LCPI1_7:
	.long	0                       # float 0
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	movq	%rax, -328(%rbp)
	addq	$3686400, %rax          # imm = 0x384000
	movq	%rax, -320(%rbp)
	movq	-328(%rbp), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_5:                                # %._crit_edge114
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-296(%rbp), %rax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	$0, (%rax)
	movq	-312(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-312(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-312(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -304(%rbp)
	cmpq	-320(%rbp), %rax
	je	.LBB1_2
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	-304(%rbp), %rax
	movb	$0, -421(%rbp)
	movq	%rax, -432(%rbp)
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_2:                                # %._crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	$1, -421(%rbp)
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-432(%rbp), %rax
	movb	-421(%rbp), %cl
	movq	%rax, -296(%rbp)
	testb	%cl, %cl
	je	.LBB1_5
# BB#6:
	movq	-328(%rbp), %rax
	movq	%rax, -416(%rbp)
	movl	$0, -420(%rbp)
	leaq	-104(%rbp), %r14
	leaq	-88(%rbp), %r15
	leaq	-108(%rbp), %r12
	movl	$7680, %r13d            # imm = 0x1E00
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_10:                               # %._crit_edge116
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	-264(%rbp), %eax
	movq	-272(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movl	%eax, -420(%rbp)
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	movl	-420(%rbp), %eax
	movq	-416(%rbp), %rcx
	movl	%eax, -284(%rbp)
	movq	%rcx, -280(%rbp)
	cmpl	$480, -284(%rbp)        # imm = 0x1E0
	je	.LBB1_8
# BB#11:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -384(%rbp)
	movl	$0, -388(%rbp)
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_15:                               # %._crit_edge118
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	-240(%rbp), %eax
	movq	-248(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movl	%eax, -388(%rbp)
.LBB1_12:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-388(%rbp), %eax
	movq	-384(%rbp), %rcx
	movl	%eax, -260(%rbp)
	movq	%rcx, -256(%rbp)
	cmpl	$640, -260(%rbp)        # imm = 0x280
	je	.LBB1_13
# BB#16:                                #   in Loop: Header=BB1_12 Depth=2
	movl	-260(%rbp), %eax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm1
	vmovaps	%xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vmulsd	.LCPI1_1(%rip), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI1_2(%rip), %xmm1
	vmovaps	%xmm1, %xmm3
	vsubsd	%xmm3, %xmm0, %xmm0
	vmovsd	.LCPI1_3(%rip), %xmm1
	vmovaps	%xmm1, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm0
	vmulsd	.LCPI1_4(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movl	-284(%rbp), %eax
	vcvtsi2sdq	%rax, %xmm0, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm1
	vmulsd	.LCPI1_5(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vmulsd	%xmm4, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmovss	%xmm0, -88(%rbp)
	vmovss	%xmm1, -84(%rbp)
	movl	$-1082130432, -80(%rbp) # imm = 0xFFFFFFFFBF800000
	vmovss	-88(%rbp), %xmm0
	vmovss	-84(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-80(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	.LCPI1_7, %xmm0
	vmovss	%xmm0, -48(%rbp)
	ja	.LBB1_17
# BB#18:                                #   in Loop: Header=BB1_12 Depth=2
	movb	$0, -56(%rbp)
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_13:                               # %._crit_edge117
                                        #   in Loop: Header=BB1_12 Depth=2
	movb	$1, -361(%rbp)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_17:                               # %._crit_edge.i112
                                        #   in Loop: Header=BB1_12 Depth=2
	movb	$1, -56(%rbp)
.LBB1_19:                               #   in Loop: Header=BB1_12 Depth=2
	cmpb	$1, -56(%rbp)
	jne	.LBB1_21
# BB#20:                                #   in Loop: Header=BB1_12 Depth=2
	vcvtss2sd	-48(%rbp), %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI1_2(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-88(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -88(%rbp)
	vmulss	-84(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -84(%rbp)
	vmulss	-80(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -80(%rbp)
.LBB1_21:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -108(%rbp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	movq	-256(%rbp), %rax
	vmovq	%xmm0, (%rax)
	movq	-256(%rbp), %rax
	vmovss	%xmm1, 8(%rax)
	movl	-260(%rbp), %eax
	incl	%eax
	movl	%eax, -236(%rbp)
	movq	-256(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %ecx
	movb	$0, -361(%rbp)
	movl	%ecx, -368(%rbp)
	movq	%rax, -376(%rbp)
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-376(%rbp), %rax
	movl	-368(%rbp), %ecx
	movb	-361(%rbp), %dl
	movq	%rax, -248(%rbp)
	movl	%ecx, -240(%rbp)
	testb	%dl, %dl
	je	.LBB1_15
# BB#22:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-280(%rbp), %rax
	addq	%r13, %rax
	movq	%rax, -224(%rbp)
	movl	-284(%rbp), %eax
	incl	%eax
	movl	%eax, -212(%rbp)
	movq	-224(%rbp), %rcx
	movb	$0, -389(%rbp)
	movl	%eax, -396(%rbp)
	movq	%rcx, -408(%rbp)
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_8:                                # %._crit_edge115
                                        #   in Loop: Header=BB1_7 Depth=1
	movb	$1, -389(%rbp)
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-408(%rbp), %rax
	movl	-396(%rbp), %ecx
	movb	-389(%rbp), %dl
	movq	%rax, -272(%rbp)
	movl	%ecx, -264(%rbp)
	testb	%dl, %dl
	je	.LBB1_10
# BB#23:
	movl	$0, -352(%rbp)
	movq	$0, -360(%rbp)
	leaq	-112(%rbp), %rax
	vmovss	.LCPI1_6(%rip), %xmm0
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	jmp	.LBB1_24
	.align	16, 0x90
.LBB1_27:                               # %._crit_edge120
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-144(%rbp), %rsi
	movl	-148(%rbp), %edi
	movl	%edi, -352(%rbp)
	movq	%rsi, -360(%rbp)
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	movq	-360(%rbp), %rsi
	movl	-352(%rbp), %edi
	movq	%rsi, -208(%rbp)
	movl	%edi, -200(%rbp)
	cmpq	$307200, -208(%rbp)     # imm = 0x4B000
	je	.LBB1_25
# BB#28:                                #   in Loop: Header=BB1_24 Depth=1
	imull	$31, -200(%rbp), %esi
	movl	%esi, -196(%rbp)
	movl	$1065353216, -112(%rbp) # imm = 0x3F800000
	movq	-208(%rbp), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$2, %rsi
	addq	-328(%rbp), %rsi
	movq	%rsi, -192(%rbp)
	movq	-192(%rbp), %rsi
	vmovss	-112(%rbp), %xmm1
	vucomiss	(%rsi), %xmm1
	ja	.LBB1_29
# BB#32:                                #   in Loop: Header=BB1_24 Depth=1
	movb	$0, -57(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB1_30
	.align	16, 0x90
.LBB1_25:                               # %._crit_edge119
                                        #   in Loop: Header=BB1_24 Depth=1
	movb	$1, -333(%rbp)
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_29:                               # %._crit_edge.i104
                                        #   in Loop: Header=BB1_24 Depth=1
	movb	$1, -57(%rbp)
.LBB1_30:                               #   in Loop: Header=BB1_24 Depth=1
	movq	-72(%rbp), %rsi
	movb	-57(%rbp), %bl
	movq	%rsi, -48(%rbp)
	testb	%bl, %bl
	je	.LBB1_31
# BB#33:                                #   in Loop: Header=BB1_24 Depth=1
	movq	-192(%rbp), %rsi
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_31:                               # %._crit_edge6.i108
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-48(%rbp), %rsi
.LBB1_34:                               # %_ZSt3minIfERKT_S2_S2_.exit110
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	vmulss	(%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rsi
	addl	-196(%rbp), %esi
	imull	$31, %esi, %esi
	movl	%esi, -180(%rbp)
	movl	$1065353216, -116(%rbp) # imm = 0x3F800000
	movq	-208(%rbp), %rsi
	movq	-328(%rbp), %rdi
	leaq	(%rsi,%rsi,2), %rsi
	leaq	4(%rdi,%rsi,4), %rsi
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rsi
	vmovss	-116(%rbp), %xmm1
	vucomiss	(%rsi), %xmm1
	ja	.LBB1_35
# BB#38:                                #   in Loop: Header=BB1_24 Depth=1
	movb	$0, -57(%rbp)
	movq	%rcx, -72(%rbp)
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_35:                               # %._crit_edge.i93
                                        #   in Loop: Header=BB1_24 Depth=1
	movb	$1, -57(%rbp)
.LBB1_36:                               #   in Loop: Header=BB1_24 Depth=1
	movq	-72(%rbp), %rsi
	movb	-57(%rbp), %bl
	movq	%rsi, -48(%rbp)
	testb	%bl, %bl
	je	.LBB1_37
# BB#39:                                #   in Loop: Header=BB1_24 Depth=1
	movq	-176(%rbp), %rsi
	jmp	.LBB1_40
	.align	16, 0x90
.LBB1_37:                               # %._crit_edge6.i97
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-48(%rbp), %rsi
.LBB1_40:                               # %_ZSt3minIfERKT_S2_S2_.exit99
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	vmulss	(%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rsi
	addl	-180(%rbp), %esi
	imull	$31, %esi, %esi
	movl	%esi, -164(%rbp)
	movl	$1065353216, -120(%rbp) # imm = 0x3F800000
	movq	-208(%rbp), %rsi
	movq	-328(%rbp), %rdi
	leaq	(%rsi,%rsi,2), %rsi
	leaq	8(%rdi,%rsi,4), %rsi
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rsi
	vmovss	-120(%rbp), %xmm1
	vucomiss	(%rsi), %xmm1
	ja	.LBB1_41
# BB#44:                                #   in Loop: Header=BB1_24 Depth=1
	movb	$0, -57(%rbp)
	movq	%rdx, -72(%rbp)
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_41:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_24 Depth=1
	movb	$1, -57(%rbp)
.LBB1_42:                               #   in Loop: Header=BB1_24 Depth=1
	movq	-72(%rbp), %rsi
	movb	-57(%rbp), %bl
	movq	%rsi, -48(%rbp)
	testb	%bl, %bl
	je	.LBB1_43
# BB#45:                                #   in Loop: Header=BB1_24 Depth=1
	movq	-160(%rbp), %rsi
	jmp	.LBB1_46
	.align	16, 0x90
.LBB1_43:                               # %._crit_edge6.i
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-48(%rbp), %rsi
.LBB1_46:                               #   in Loop: Header=BB1_24 Depth=1
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	vmulss	(%rsi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rsi
	addl	-164(%rbp), %esi
	movl	%esi, -152(%rbp)
	movq	-208(%rbp), %rsi
	incq	%rsi
	movq	%rsi, -136(%rbp)
	movl	-152(%rbp), %edi
	movb	$0, -333(%rbp)
	movq	%rsi, -344(%rbp)
	movl	%edi, -348(%rbp)
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=1
	movl	-348(%rbp), %esi
	movq	-344(%rbp), %rdi
	movb	-333(%rbp), %bl
	movl	%esi, -148(%rbp)
	movq	%rdi, -144(%rbp)
	movl	-200(%rbp), %esi
	movl	%esi, -332(%rbp)
	testb	%bl, %bl
	je	.LBB1_27
# BB#47:
	movl	-332(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-328(%rbp), %rdi
	callq	_ZdaPv
	movl	-124(%rbp), %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp19:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Ltmp19-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_3:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1065353216              # float 1
.LCPI2_4:
	.long	1036831949              # float 0.100000001
.LCPI2_5:
	.long	1063675494              # float 0.899999976
.LCPI2_6:
	.long	0                       # float 0
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$888, %rsp              # imm = 0x378
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$2139095040, -100(%rbp) # imm = 0x7F800000
	movq	$0, -904(%rbp)
	movl	$0, -908(%rbp)
	leaq	-104(%rbp), %r12
	leaq	-108(%rbp), %r13
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_4:                                # %._crit_edge485
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-676(%rbp), %eax
	movq	-688(%rbp), %rcx
	movq	%rcx, -904(%rbp)
	movl	%eax, -908(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-908(%rbp), %eax
	movq	-904(%rbp), %rcx
	movl	%eax, -740(%rbp)
	movq	%rcx, -736(%rbp)
	movl	-740(%rbp), %eax
	movq	8(%rbx), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	jae	.LBB2_2
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	$2139095040, -104(%rbp) # imm = 0x7F800000
	movl	$2139095040, -108(%rbp) # imm = 0x7F800000
	movl	-740(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB2_6
# BB#7:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-736(%rbp), %rax
	movb	$0, -882(%rbp)
	movq	%rax, -896(%rbp)
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_2:                                # %._crit_edge
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -833(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_6:                                # %._crit_edge479
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -882(%rbp)
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-896(%rbp), %rax
	movb	-882(%rbp), %cl
	movq	%rax, -728(%rbp)
	testb	%cl, %cl
	je	.LBB2_9
# BB#10:                                #   in Loop: Header=BB2_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	-104(%rbp), %xmm0
	ja	.LBB2_11
# BB#12:                                #   in Loop: Header=BB2_1 Depth=1
	movb	$0, -881(%rbp)
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_9:                                # %._crit_edge480
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-728(%rbp), %rax
	jmp	.LBB2_22
.LBB2_11:                               # %._crit_edge481
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -881(%rbp)
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	cmpb	$1, -881(%rbp)
	jne	.LBB2_15
# BB#14:                                #   in Loop: Header=BB2_1 Depth=1
	vmovss	-108(%rbp), %xmm0
	vmovss	%xmm0, -104(%rbp)
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	vmovss	-100(%rbp), %xmm0
	vucomiss	-104(%rbp), %xmm0
	ja	.LBB2_16
# BB#17:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-736(%rbp), %rax
	movb	$0, -857(%rbp)
	movq	%rax, -872(%rbp)
	jmp	.LBB2_18
.LBB2_16:                               # %._crit_edge483
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -857(%rbp)
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-872(%rbp), %rax
	movb	-857(%rbp), %cl
	movq	%rax, -712(%rbp)
	testb	%cl, %cl
	je	.LBB2_19
# BB#20:                                #   in Loop: Header=BB2_1 Depth=1
	vmovss	-104(%rbp), %xmm0
	vmovss	%xmm0, -100(%rbp)
	movl	-740(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -704(%rbp)
	jmp	.LBB2_21
.LBB2_19:                               # %._crit_edge484
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-712(%rbp), %rax
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	%rax, -696(%rbp)
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	%rax, -832(%rbp)
	movq	%rax, -672(%rbp)
	movl	-740(%rbp), %eax
	incl	%eax
	movl	%eax, -660(%rbp)
	movq	-672(%rbp), %rcx
	movb	$0, -833(%rbp)
	movl	%eax, -840(%rbp)
	movq	%rcx, -848(%rbp)
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-848(%rbp), %rax
	movl	-840(%rbp), %ecx
	movb	-833(%rbp), %dl
	movq	%rax, -688(%rbp)
	movl	%ecx, -676(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -824(%rbp)
	testb	%dl, %dl
	je	.LBB2_4
# BB#23:
	movq	-824(%rbp), %rax
	movq	%rax, -656(%rbp)
	testq	%rax, %rax
	jne	.LBB2_24
# BB#25:
	movl	$1073741824, -96(%rbp)  # imm = 0x40000000
	movl	$1073741824, -92(%rbp)  # imm = 0x40000000
	movl	$1073741824, -88(%rbp)  # imm = 0x40000000
	movb	$0, -814(%rbp)
	jmp	.LBB2_26
.LBB2_24:                               # %._crit_edge486
	movb	$1, -814(%rbp)
.LBB2_26:
	cmpb	$1, -814(%rbp)
	jne	.LBB2_84
# BB#27:
	movl	$0, -120(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -112(%rbp)
	vmovss	-100(%rbp), %xmm0
	vmulss	(%r15), %xmm0, %xmm1
	vmulss	4(%r15), %xmm0, %xmm2
	vmulss	8(%r15), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	vmovss	%xmm0, -144(%rbp)
	vmovss	(%r14), %xmm0
	vmovss	4(%r14), %xmm1
	vaddss	-152(%rbp), %xmm0, %xmm0
	vaddss	-148(%rbp), %xmm1, %xmm1
	vmovss	8(%r14), %xmm2
	vaddss	-144(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	vmovss	%xmm2, -128(%rbp)
	movq	-656(%rbp), %rax
	vmovss	-136(%rbp), %xmm0
	vmovss	-132(%rbp), %xmm1
	vsubss	(%rax), %xmm0, %xmm0
	vsubss	4(%rax), %xmm1, %xmm1
	vmovss	-128(%rbp), %xmm2
	vsubss	8(%rax), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	vmovss	%xmm2, -160(%rbp)
	vmovss	-168(%rbp), %xmm0
	vmovss	-164(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-160(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	vmovss	%xmm0, -56(%rbp)
	ja	.LBB2_28
# BB#29:
	movb	$0, -64(%rbp)
	jmp	.LBB2_30
.LBB2_28:                               # %._crit_edge.i474
	movb	$1, -64(%rbp)
.LBB2_30:
	cmpb	$1, -64(%rbp)
	jne	.LBB2_32
# BB#31:
	vmovss	-56(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -168(%rbp)
	vmulss	-164(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -164(%rbp)
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -160(%rbp)
.LBB2_32:                               # %_ZN4Vec3IfE9normalizeEv.exit478
	movl	$953267991, -172(%rbp)  # imm = 0x38D1B717
	vmovss	(%r15), %xmm0
	vmovss	4(%r15), %xmm1
	vmulss	-168(%rbp), %xmm0, %xmm0
	vmulss	-164(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%r15), %xmm1
	vmulss	-160(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	ja	.LBB2_33
# BB#34:
	movb	$0, -812(%rbp)
	movb	$0, -813(%rbp)
	jmp	.LBB2_35
.LBB2_33:                               # %_ZN4Vec3IfE9normalizeEv.exit478._crit_edge
	movb	$1, -812(%rbp)
.LBB2_35:
	movb	-813(%rbp), %al
	movb	-812(%rbp), %cl
	movb	%al, -643(%rbp)
	testb	%cl, %cl
	je	.LBB2_36
# BB#37:
	vmovss	-168(%rbp), %xmm0
	vmovss	-164(%rbp), %xmm1
	vmovss	.LCPI2_1(%rip), %xmm2
	vxorps	%xmm2, %xmm0, %xmm0
	vxorps	%xmm2, %xmm1, %xmm1
	vmovss	-160(%rbp), %xmm3
	vxorps	%xmm2, %xmm3, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	vmovss	%xmm2, -160(%rbp)
	movb	$1, -811(%rbp)
	jmp	.LBB2_38
.LBB2_36:                               # %._crit_edge488
	movb	-643(%rbp), %al
	movb	%al, -811(%rbp)
.LBB2_38:
	movb	-811(%rbp), %al
	movb	%al, -642(%rbp)
	movq	-656(%rbp), %rax
	vmovss	44(%rax), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB2_39
# BB#42:
	movq	-656(%rbp), %rax
	vmovss	48(%rax), %xmm1
	vucomiss	%xmm0, %xmm1
	ja	.LBB2_43
# BB#44:
	movb	$0, -805(%rbp)
	movb	$1, -806(%rbp)
	jmp	.LBB2_45
.LBB2_39:                               # %._crit_edge489
	movb	$1, -807(%rbp)
	movb	$0, -808(%rbp)
	movb	$0, -809(%rbp)
	jmp	.LBB2_40
.LBB2_43:                               # %._crit_edge490
	movb	$1, -805(%rbp)
	movb	$0, -806(%rbp)
.LBB2_45:
	movb	-806(%rbp), %al
	movb	-805(%rbp), %cl
	movb	%al, -638(%rbp)
	testb	%cl, %cl
	je	.LBB2_46
# BB#48:
	movb	$1, -810(%rbp)
	jmp	.LBB2_47
.LBB2_46:                               # %._crit_edge492
	movb	$0, -810(%rbp)
.LBB2_47:
	movb	-810(%rbp), %al
	movb	%al, -641(%rbp)
	movb	-638(%rbp), %cl
	movb	$0, -807(%rbp)
	movb	%al, -808(%rbp)
	movb	%cl, -809(%rbp)
.LBB2_40:
	movb	-809(%rbp), %al
	movb	-808(%rbp), %cl
	movb	-807(%rbp), %dl
	movb	%al, -640(%rbp)
	movb	%cl, -639(%rbp)
	testb	%dl, %dl
	je	.LBB2_41
# BB#49:
	movb	$1, -804(%rbp)
	jmp	.LBB2_50
.LBB2_41:                               # %._crit_edge491
	movb	-639(%rbp), %al
	movb	%al, -804(%rbp)
.LBB2_50:
	movb	-804(%rbp), %al
	testb	%al, %al
	je	.LBB2_51
# BB#58:
	movq	-920(%rbp), %rax        # 8-byte Reload
	cmpl	$4, (%rax)
	jle	.LBB2_59
# BB#85:
	movb	$1, -785(%rbp)
	movb	$0, -786(%rbp)
	jmp	.LBB2_86
.LBB2_51:                               # %._crit_edge493
	movb	-640(%rbp), %al
	movb	%al, -802(%rbp)
	movb	$0, -803(%rbp)
	jmp	.LBB2_52
.LBB2_59:                               # %._crit_edge494
	movb	-640(%rbp), %al
	movb	%al, -785(%rbp)
	movb	$1, -786(%rbp)
.LBB2_86:
	movb	-786(%rbp), %al
	movb	-785(%rbp), %cl
	movb	%al, -630(%rbp)
	movb	%cl, -629(%rbp)
	movb	-630(%rbp), %al
	movb	%cl, -802(%rbp)
	movb	%al, -803(%rbp)
.LBB2_52:
	movb	-803(%rbp), %al
	movb	-802(%rbp), %cl
	movb	%al, -637(%rbp)
	testb	%cl, %cl
	je	.LBB2_60
# BB#53:
	movl	$0, -784(%rbp)
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	-472(%rbp), %r13
	leaq	-476(%rbp), %r14
	leaq	-480(%rbp), %r12
	jmp	.LBB2_54
	.align	16, 0x90
.LBB2_57:                               # %._crit_edge511
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-592(%rbp), %eax
	movl	%eax, -784(%rbp)
.LBB2_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_97 Depth 2
                                        #       Child Loop BB2_114 Depth 3
	movl	-784(%rbp), %eax
	movl	%eax, -628(%rbp)
	movl	-628(%rbp), %eax
	movq	8(%rbx), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	jae	.LBB2_55
# BB#87:                                #   in Loop: Header=BB2_54 Depth=1
	movl	-628(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	vmovss	32(%rax), %xmm0
	vucomiss	%xmm3, %xmm0
	ja	.LBB2_88
# BB#89:                                #   in Loop: Header=BB2_54 Depth=1
	movb	$0, -777(%rbp)
	jmp	.LBB2_90
	.align	16, 0x90
.LBB2_55:                               # %._crit_edge500
                                        #   in Loop: Header=BB2_54 Depth=1
	movb	$1, -741(%rbp)
	jmp	.LBB2_56
	.align	16, 0x90
.LBB2_88:                               # %._crit_edge501
                                        #   in Loop: Header=BB2_54 Depth=1
	movb	$1, -777(%rbp)
.LBB2_90:                               #   in Loop: Header=BB2_54 Depth=1
	cmpb	$1, -777(%rbp)
	jne	.LBB2_121
# BB#91:                                #   in Loop: Header=BB2_54 Depth=1
	movl	$1065353216, -456(%rbp) # imm = 0x3F800000
	movl	$1065353216, -452(%rbp) # imm = 0x3F800000
	movl	$1065353216, -448(%rbp) # imm = 0x3F800000
	movl	-628(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	vmovss	(%rax), %xmm0
	vmovss	4(%rax), %xmm1
	vsubss	-136(%rbp), %xmm0, %xmm0
	vsubss	-132(%rbp), %xmm1, %xmm1
	vmovss	8(%rax), %xmm2
	vsubss	-128(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -472(%rbp)
	vmovss	%xmm2, -464(%rbp)
	vmovss	-472(%rbp), %xmm0
	vmovss	-468(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-464(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm3, %xmm0
	vmovss	%xmm0, -56(%rbp)
	ja	.LBB2_92
# BB#93:                                #   in Loop: Header=BB2_54 Depth=1
	movb	$0, -64(%rbp)
	jmp	.LBB2_94
.LBB2_92:                               # %._crit_edge.i453
                                        #   in Loop: Header=BB2_54 Depth=1
	movb	$1, -64(%rbp)
.LBB2_94:                               #   in Loop: Header=BB2_54 Depth=1
	cmpb	$1, -64(%rbp)
	jne	.LBB2_96
# BB#95:                                #   in Loop: Header=BB2_54 Depth=1
	vcvtss2sd	-56(%rbp), %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-472(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -472(%rbp)
	vmulss	-468(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -468(%rbp)
	vmulss	-464(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -464(%rbp)
.LBB2_96:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	$0, -776(%rbp)
	jmp	.LBB2_97
	.align	16, 0x90
.LBB2_100:                              # %._crit_edge505
                                        #   in Loop: Header=BB2_97 Depth=2
	movl	-620(%rbp), %eax
	movl	%eax, -776(%rbp)
.LBB2_97:                               #   Parent Loop BB2_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_114 Depth 3
	movl	-776(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-624(%rbp), %eax
	movq	8(%rbx), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	jae	.LBB2_98
# BB#101:                               #   in Loop: Header=BB2_97 Depth=2
	movl	-628(%rbp), %eax
	cmpl	-624(%rbp), %eax
	je	.LBB2_102
# BB#105:                               #   in Loop: Header=BB2_97 Depth=2
	movl	-624(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	vmovss	-172(%rbp), %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmulss	-164(%rbp), %xmm0, %xmm2
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)
	vmovss	%xmm0, -504(%rbp)
	vmovss	-136(%rbp), %xmm0
	vmovss	-132(%rbp), %xmm1
	vaddss	-512(%rbp), %xmm0, %xmm0
	vaddss	-508(%rbp), %xmm1, %xmm1
	vmovss	-128(%rbp), %xmm2
	vaddss	-504(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -496(%rbp)
	vmovss	%xmm2, -488(%rbp)
	leaq	-496(%rbp), %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	jne	.LBB2_106
	.align	16, 0x90
.LBB2_114:                              #   Parent Loop BB2_54 Depth=1
                                        #     Parent Loop BB2_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$0, -750(%rbp)
	movb	-750(%rbp), %al
	movb	%al, -597(%rbp)
	testb	%al, %al
	je	.LBB2_115
# BB#104:                               #   in Loop: Header=BB2_114 Depth=3
	movb	$0, -749(%rbp)
	jmp	.LBB2_116
	.align	16, 0x90
.LBB2_115:                              # %._crit_edge508
                                        #   in Loop: Header=BB2_114 Depth=3
	movb	$1, -749(%rbp)
.LBB2_116:                              #   in Loop: Header=BB2_114 Depth=3
	movb	-749(%rbp), %al
	testb	%al, %al
	je	.LBB2_114
# BB#117:                               #   in Loop: Header=BB2_97 Depth=2
	movl	-624(%rbp), %eax
	incl	%eax
	movl	%eax, -596(%rbp)
	movb	$0, -751(%rbp)
	movl	%eax, -756(%rbp)
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_98:                               # %._crit_edge503
                                        #   in Loop: Header=BB2_97 Depth=2
	movb	$1, -765(%rbp)
	movb	$0, -766(%rbp)
	movb	$1, -767(%rbp)
	jmp	.LBB2_99
	.align	16, 0x90
.LBB2_102:                              # %._crit_edge504
                                        #   in Loop: Header=BB2_97 Depth=2
	movb	$0, -757(%rbp)
	movb	$1, -758(%rbp)
	jmp	.LBB2_103
.LBB2_106:                              # %._crit_edge506
                                        #   in Loop: Header=BB2_97 Depth=2
	movb	$1, -751(%rbp)
.LBB2_107:                              #   in Loop: Header=BB2_97 Depth=2
	movl	-756(%rbp), %eax
	movb	-751(%rbp), %cl
	movl	%eax, -604(%rbp)
	movb	%cl, -598(%rbp)
	movl	-604(%rbp), %eax
	movb	%cl, -757(%rbp)
	movb	%cl, -758(%rbp)
	movl	%eax, -764(%rbp)
.LBB2_103:                              #   in Loop: Header=BB2_97 Depth=2
	movl	-764(%rbp), %eax
	movb	-758(%rbp), %cl
	movb	-757(%rbp), %dl
	movl	%eax, -612(%rbp)
	movb	%cl, -606(%rbp)
	movb	%dl, -605(%rbp)
	movb	-606(%rbp), %al
	movl	-612(%rbp), %ecx
	movb	$0, -765(%rbp)
	movb	%dl, -766(%rbp)
	movb	%al, -767(%rbp)
	movl	%ecx, -772(%rbp)
.LBB2_99:                               #   in Loop: Header=BB2_97 Depth=2
	movl	-772(%rbp), %eax
	movb	-767(%rbp), %cl
	movb	-766(%rbp), %dl
	movb	%dl, -614(%rbp)
	movb	-765(%rbp), %dl
	movl	%eax, -620(%rbp)
	movb	%dl, -613(%rbp)
	testb	%cl, %cl
	je	.LBB2_100
# BB#108:                               #   in Loop: Header=BB2_54 Depth=1
	cmpb	$1, -614(%rbp)
	jne	.LBB2_110
# BB#109:                               #   in Loop: Header=BB2_54 Depth=1
	movl	$0, -528(%rbp)
	movl	$0, -524(%rbp)
	movl	$0, -520(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -456(%rbp)
	movl	$0, -448(%rbp)
.LBB2_110:                              #   in Loop: Header=BB2_54 Depth=1
	movq	-656(%rbp), %rax
	vmovss	20(%rax), %xmm0
	vmovss	24(%rax), %xmm1
	vmulss	-456(%rbp), %xmm0, %xmm0
	vmulss	-452(%rbp), %xmm1, %xmm1
	vmovss	28(%rax), %xmm2
	vmulss	-448(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -560(%rbp)
	vmovss	%xmm2, -552(%rbp)
	movl	$0, -564(%rbp)
	vmovss	-168(%rbp), %xmm0
	vmovss	-164(%rbp), %xmm1
	vmulss	-472(%rbp), %xmm0, %xmm0
	vmulss	-468(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-160(%rbp), %xmm1
	vmulss	-464(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -568(%rbp)
	vmovss	-568(%rbp), %xmm0
	vucomiss	-564(%rbp), %xmm0
	ja	.LBB2_111
# BB#118:                               #   in Loop: Header=BB2_54 Depth=1
	movb	$0, -65(%rbp)
	leaq	-564(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB2_112
.LBB2_111:                              # %._crit_edge.i
                                        #   in Loop: Header=BB2_54 Depth=1
	movb	$1, -65(%rbp)
.LBB2_112:                              #   in Loop: Header=BB2_54 Depth=1
	vxorps	%xmm3, %xmm3, %xmm3
	movq	-80(%rbp), %rax
	movb	-65(%rbp), %cl
	movq	%rax, -56(%rbp)
	testb	%cl, %cl
	je	.LBB2_113
# BB#119:                               #   in Loop: Header=BB2_54 Depth=1
	leaq	-568(%rbp), %rax
	jmp	.LBB2_120
.LBB2_113:                              # %._crit_edge6.i
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	-56(%rbp), %rax
.LBB2_120:                              # %_ZSt3maxIfERKT_S2_S2_.exit
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmulss	-560(%rbp), %xmm0, %xmm1
	vmulss	-556(%rbp), %xmm0, %xmm2
	vmulss	-552(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -584(%rbp)
	vmovss	%xmm0, -576(%rbp)
	movl	-628(%rbp), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rax
	vmovss	-584(%rbp), %xmm0
	vmovss	-580(%rbp), %xmm1
	vmulss	32(%rax), %xmm0, %xmm0
	vmulss	36(%rax), %xmm1, %xmm1
	vmovss	-576(%rbp), %xmm2
	vmulss	40(%rax), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -544(%rbp)
	vmovss	%xmm2, -536(%rbp)
	vmovss	-544(%rbp), %xmm0
	vaddss	-120(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -120(%rbp)
	vmovss	-540(%rbp), %xmm0
	vaddss	-116(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -116(%rbp)
	vmovss	-536(%rbp), %xmm0
	vaddss	-112(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -112(%rbp)
.LBB2_121:                              #   in Loop: Header=BB2_54 Depth=1
	movl	-628(%rbp), %eax
	incl	%eax
	movl	%eax, -588(%rbp)
	movb	$0, -741(%rbp)
	movl	%eax, -748(%rbp)
.LBB2_56:                               #   in Loop: Header=BB2_54 Depth=1
	movl	-748(%rbp), %eax
	movb	-741(%rbp), %cl
	movl	%eax, -592(%rbp)
	testb	%cl, %cl
	je	.LBB2_57
.LBB2_60:
	movb	-637(%rbp), %al
	testb	%al, %al
	je	.LBB2_83
# BB#61:
	vmovss	(%r15), %xmm0
	vmovss	4(%r15), %xmm1
	vmulss	-168(%rbp), %xmm0, %xmm0
	vmulss	-164(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%r15), %xmm1
	vmulss	-160(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI2_2(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI2_3(%rip), %xmm1
	callq	pow
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -180(%rbp)
	movl	$1065353216, -184(%rbp) # imm = 0x3F800000
	movl	$1036831949, -188(%rbp) # imm = 0x3DCCCCCD
	vmovss	-184(%rbp), %xmm0
	vmulss	.LCPI2_4(%rip), %xmm0, %xmm0
	vmovss	-180(%rbp), %xmm1
	vmulss	.LCPI2_5(%rip), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -176(%rbp)
	movl	$1073741824, -220(%rbp) # imm = 0x40000000
	vmovss	-220(%rbp), %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmulss	-164(%rbp), %xmm0, %xmm2
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	vmovss	%xmm0, -224(%rbp)
	vmovss	(%r15), %xmm0
	vmovss	4(%r15), %xmm1
	vmulss	-168(%rbp), %xmm0, %xmm0
	vmulss	-164(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%r15), %xmm1
	vmulss	-160(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -236(%rbp)
	vmovss	-236(%rbp), %xmm0
	vmulss	-232(%rbp), %xmm0, %xmm1
	vmulss	-228(%rbp), %xmm0, %xmm2
	vmulss	-224(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	vmovss	%xmm0, -208(%rbp)
	vmovss	(%r15), %xmm0
	vmovss	4(%r15), %xmm1
	vsubss	-216(%rbp), %xmm0, %xmm0
	vsubss	-212(%rbp), %xmm1, %xmm1
	vmovss	8(%r15), %xmm2
	vsubss	-208(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	vmovss	%xmm2, -192(%rbp)
	vmovss	-200(%rbp), %xmm0
	vmovss	-196(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-192(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	vmovss	%xmm0, -56(%rbp)
	ja	.LBB2_62
# BB#63:
	movb	$0, -64(%rbp)
	jmp	.LBB2_64
.LBB2_62:                               # %._crit_edge.i466
	movb	$1, -64(%rbp)
.LBB2_64:
	cmpb	$1, -64(%rbp)
	jne	.LBB2_66
# BB#65:
	vmovss	-56(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-200(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -200(%rbp)
	vmulss	-196(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -196(%rbp)
	vmulss	-192(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -192(%rbp)
.LBB2_66:                               # %_ZN4Vec3IfE9normalizeEv.exit470
	vmovss	-172(%rbp), %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmulss	-164(%rbp), %xmm0, %xmm2
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)
	vmovss	%xmm0, -272(%rbp)
	vmovss	-136(%rbp), %xmm0
	vmovss	-132(%rbp), %xmm1
	vaddss	-280(%rbp), %xmm0, %xmm0
	vaddss	-276(%rbp), %xmm1, %xmm1
	vmovss	-128(%rbp), %xmm2
	vaddss	-272(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	vmovss	%xmm2, -256(%rbp)
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -284(%rbp)
	leaq	-264(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	leaq	-284(%rbp), %rcx
	movq	%rbx, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, -248(%rbp)
	vmovss	%xmm1, -240(%rbp)
	movl	$0, -296(%rbp)
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	movq	-656(%rbp), %rax
	vmovss	44(%rax), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB2_67
	jnp	.LBB2_68
.LBB2_67:                               # %_ZN4Vec3IfE9normalizeEv.exit470._crit_edge
	movb	$1, -801(%rbp)
	jmp	.LBB2_69
.LBB2_68:
	movb	$0, -801(%rbp)
.LBB2_69:
	cmpb	$1, -801(%rbp)
	jne	.LBB2_82
# BB#70:
	testb	$1, -642(%rbp)
	jne	.LBB2_71
# BB#74:
	movb	$0, -793(%rbp)
	movl	$1063828014, -800(%rbp) # imm = 0x3F68BA2E
	jmp	.LBB2_72
.LBB2_71:                               # %._crit_edge497
	movb	$1, -793(%rbp)
.LBB2_72:
	vmovss	-800(%rbp), %xmm0
	movb	-793(%rbp), %al
	vmovss	%xmm0, -636(%rbp)
	testb	%al, %al
	je	.LBB2_73
# BB#75:
	movl	$1066192077, -792(%rbp) # imm = 0x3F8CCCCD
	jmp	.LBB2_76
.LBB2_73:                               # %._crit_edge498
	vmovss	-636(%rbp), %xmm0
	vmovss	%xmm0, -792(%rbp)
.LBB2_76:
	vmovss	-792(%rbp), %xmm0
	vmovss	%xmm0, -300(%rbp)
	vmovss	-168(%rbp), %xmm1
	vmovss	-164(%rbp), %xmm2
	vmulss	(%r15), %xmm1, %xmm1
	vmulss	4(%r15), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	-160(%rbp), %xmm2
	vmulss	8(%r15), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vxorps	.LCPI2_1(%rip), %xmm1, %xmm2
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI2_2(%rip), %xmm3
	vsubss	%xmm1, %xmm3, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vsubss	%xmm0, %xmm3, %xmm0
	vmovss	-300(%rbp), %xmm1
	vmulss	(%r15), %xmm1, %xmm3
	vmulss	4(%r15), %xmm1, %xmm4
	vmulss	8(%r15), %xmm1, %xmm1
	vmovss	%xmm3, -56(%rbp)
	vmovss	%xmm4, -52(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)
	vmovss	%xmm1, -320(%rbp)
	vmulss	-300(%rbp), %xmm2, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, -928(%rbp)       # 8-byte Spill
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	-928(%rbp), %xmm1       # 8-byte Reload
	vsubsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -348(%rbp)
	vmovss	-348(%rbp), %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmulss	-164(%rbp), %xmm0, %xmm2
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)
	vmovss	%xmm0, -336(%rbp)
	vmovss	-328(%rbp), %xmm0
	vmovss	-324(%rbp), %xmm1
	vaddss	-344(%rbp), %xmm0, %xmm0
	vaddss	-340(%rbp), %xmm1, %xmm1
	vmovss	-320(%rbp), %xmm2
	vaddss	-336(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)
	vmovss	%xmm2, -304(%rbp)
	vmovss	-312(%rbp), %xmm0
	vmovss	-308(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-304(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	vmovss	%xmm0, -56(%rbp)
	ja	.LBB2_77
# BB#78:
	movb	$0, -64(%rbp)
	jmp	.LBB2_79
.LBB2_77:                               # %._crit_edge.i458
	movb	$1, -64(%rbp)
.LBB2_79:
	cmpb	$1, -64(%rbp)
	jne	.LBB2_81
# BB#80:
	vmovss	-56(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-312(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -312(%rbp)
	vmulss	-308(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -308(%rbp)
	vmulss	-304(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -304(%rbp)
.LBB2_81:                               # %_ZN4Vec3IfE9normalizeEv.exit462
	vmovss	-172(%rbp), %xmm0
	vmulss	-168(%rbp), %xmm0, %xmm1
	vmulss	-164(%rbp), %xmm0, %xmm2
	vmulss	-160(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)
	vmovss	%xmm0, -368(%rbp)
	vmovss	-136(%rbp), %xmm0
	vmovss	-132(%rbp), %xmm1
	vsubss	-376(%rbp), %xmm0, %xmm0
	vsubss	-372(%rbp), %xmm1, %xmm1
	vmovss	-128(%rbp), %xmm2
	vsubss	-368(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)
	vmovss	%xmm2, -352(%rbp)
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	incl	%eax
	movl	%eax, -380(%rbp)
	leaq	-360(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	leaq	-380(%rbp), %rcx
	movq	%rbx, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, -296(%rbp)
	vmovss	%xmm1, -288(%rbp)
.LBB2_82:
	vmovss	-176(%rbp), %xmm0
	vmulss	-248(%rbp), %xmm0, %xmm1
	vmulss	-244(%rbp), %xmm0, %xmm2
	vmulss	-240(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)
	vmovss	%xmm0, -384(%rbp)
	vmovss	.LCPI2_2(%rip), %xmm0
	vsubss	-176(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -412(%rbp)
	vmovss	-412(%rbp), %xmm0
	vmulss	-296(%rbp), %xmm0, %xmm1
	vmulss	-292(%rbp), %xmm0, %xmm2
	vmulss	-288(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)
	vmovss	%xmm0, -416(%rbp)
	movq	-656(%rbp), %rax
	vmovss	44(%rax), %xmm0
	vmulss	-424(%rbp), %xmm0, %xmm1
	vmulss	-420(%rbp), %xmm0, %xmm2
	vmulss	-416(%rbp), %xmm0, %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm2, -52(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	vmovss	%xmm0, -400(%rbp)
	vmovss	-392(%rbp), %xmm0
	vmovss	-388(%rbp), %xmm1
	vaddss	-408(%rbp), %xmm0, %xmm0
	vaddss	-404(%rbp), %xmm1, %xmm1
	vmovss	-384(%rbp), %xmm2
	vaddss	-400(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)
	vmovss	%xmm2, -432(%rbp)
	movq	-656(%rbp), %rax
	vmovss	-440(%rbp), %xmm0
	vmovss	-436(%rbp), %xmm1
	vmulss	20(%rax), %xmm0, %xmm0
	vmulss	24(%rax), %xmm1, %xmm1
	vmovss	-432(%rbp), %xmm2
	vmulss	28(%rax), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	vmovss	%xmm2, -112(%rbp)
.LBB2_83:
	movq	-656(%rbp), %rax
	vmovss	-120(%rbp), %xmm0
	vmovss	-116(%rbp), %xmm1
	vaddss	32(%rax), %xmm0, %xmm0
	vaddss	36(%rax), %xmm1, %xmm1
	vmovss	-112(%rbp), %xmm2
	vaddss	40(%rax), %xmm2, %xmm2
	vmovss	%xmm0, -56(%rbp)
	vmovss	%xmm1, -52(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	vmovss	%xmm2, -88(%rbp)
.LBB2_84:
	vmovq	-96(%rbp), %xmm0
	vmovss	-88(%rbp), %xmm1
	addq	$888, %rsp              # imm = 0x378
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp31:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp31-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,"axG",@progbits,_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,comdat
	.weak	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.align	16, 0x90
	.type	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,@function
_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_: # @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
	movq	%r8, %r14
	movq	%rcx, %rbx
	vmovss	(%rdi), %xmm0
	vmovss	4(%rdi), %xmm1
	vsubss	(%rsi), %xmm0, %xmm0
	vsubss	4(%rsi), %xmm1, %xmm1
	vmovss	8(%rdi), %xmm2
	vsubss	8(%rsi), %xmm2, %xmm2
	vmovss	%xmm0, -32(%rbp)
	vmovss	%xmm1, -28(%rbp)
	vmovss	%xmm2, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	vmovss	%xmm2, -40(%rbp)
	vmovss	-48(%rbp), %xmm0
	vmovss	-44(%rbp), %xmm1
	vmulss	(%rdx), %xmm0, %xmm0
	vmulss	4(%rdx), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	8(%rdx), %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -76(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm0, %xmm1
	ja	.LBB3_1
# BB#4:
	vmovss	-48(%rbp), %xmm0
	vmovss	-44(%rbp), %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-40(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-76(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -68(%rbp)
	vucomiss	16(%rdi), %xmm0
	ja	.LBB3_5
# BB#8:
	vmovss	16(%rdi), %xmm0
	vsubss	-68(%rbp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	sqrt
	vmovsd	%xmm0, -64(%rbp)
	testq	%rbx, %rbx
	jne	.LBB3_9
# BB#10:
	movb	$0, -82(%rbp)
	jmp	.LBB3_11
.LBB3_1:                                # %._crit_edge
	movb	$1, -83(%rbp)
	jmp	.LBB3_2
.LBB3_5:                                # %._crit_edge40
	movb	$1, -79(%rbp)
	jmp	.LBB3_6
.LBB3_9:                                # %._crit_edge41
	movb	$1, -82(%rbp)
.LBB3_11:
	cmpb	$1, -82(%rbp)
	jne	.LBB3_17
# BB#12:
	testq	%r14, %r14
	jne	.LBB3_13
# BB#14:
	movb	$0, -81(%rbp)
	jmp	.LBB3_15
.LBB3_13:                               # %._crit_edge43
	movb	$1, -81(%rbp)
.LBB3_15:
	cmpb	$1, -81(%rbp)
	jne	.LBB3_17
# BB#16:
	vmovsd	-64(%rbp), %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	-76(%rbp), %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, (%rbx)
	vaddss	-76(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, (%r14)
.LBB3_17:
	movb	$0, -79(%rbp)
	movb	$1, -80(%rbp)
.LBB3_6:
	movb	-80(%rbp), %al
	movb	-79(%rbp), %cl
	movb	%al, -50(%rbp)
	testb	%cl, %cl
	je	.LBB3_7
# BB#18:
	movb	$0, -78(%rbp)
	jmp	.LBB3_19
.LBB3_7:                                # %._crit_edge45
	movb	-50(%rbp), %al
	movb	%al, -78(%rbp)
.LBB3_19:
	movb	-78(%rbp), %al
	movb	%al, -49(%rbp)
	movb	$0, -83(%rbp)
	movb	%al, -84(%rbp)
.LBB3_2:
	movb	-84(%rbp), %al
	movb	-83(%rbp), %cl
	movb	%al, -69(%rbp)
	testb	%cl, %cl
	je	.LBB3_3
# BB#20:
	movb	$0, -77(%rbp)
	jmp	.LBB3_21
.LBB3_3:                                # %._crit_edge39
	movb	-69(%rbp), %al
	movb	%al, -77(%rbp)
.LBB3_21:
	movb	-77(%rbp), %al
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp40:
	.size	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_, .Ltmp40-_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, -88(%rbp)
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	jne	.LBB4_1
# BB#13:
	movq	%rsp, %r15
	leaq	-16(%r15), %rax
	movq	%rax, %rsp
	movl	$1, %esi
	movl	$.L__unnamed_2, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, -208(%rbp)
	movq	(%rbx), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -16(%r15)
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	movq	%rcx, -200(%rbp)
	movq	%rbx, -192(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB4_14
# BB#22:
	movb	$0, -65(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB4_15
.LBB4_1:                                # %._crit_edge
	movb	$1, -241(%rbp)
	jmp	.LBB4_2
.LBB4_14:                               # %._crit_edge.i140
	movb	$1, -65(%rbp)
.LBB4_15:
	movq	-80(%rbp), %rax
	movb	-65(%rbp), %cl
	movq	%rax, -48(%rbp)
	testb	%cl, %cl
	je	.LBB4_16
# BB#19:
	movq	-208(%rbp), %rax
	shrq	$61, %rax
	jne	.LBB4_21
# BB#20:                                # %._crit_edge10.i
	movq	-208(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm
	movq	%rax, -32(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %._crit_edge9.i
	movq	-48(%rbp), %rax
.LBB4_17:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm.exit
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -56(%rbp)
	movq	%rax, -184(%rbp)
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	addq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	je	.LBB4_18
# BB#23:
	movq	-32(%rbp), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%rax)
	movb	$0, -40(%rbp)
	jmp	.LBB4_24
.LBB4_18:                               # %._crit_edge.i.i134
	movb	$1, -40(%rbp)
.LBB4_24:
	movq	(%rbx), %rax
	movq	%rax, -176(%rbp)
	leaq	-88(%rbp), %r15
	movq	%r15, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	subq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	jne	.LBB4_25
# BB#26:
	movb	$0, -48(%rbp)
	jmp	.LBB4_27
.LBB4_25:                               # %._crit_edge.i.i.i.i.i.i.i.i125
	movb	$1, -48(%rbp)
.LBB4_27:
	cmpb	$1, -48(%rbp)
	jne	.LBB4_29
# BB#28:
	movq	-184(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	memmove
.LBB4_29:
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -144(%rbp)
	movq	%r15, -136(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	subq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	jne	.LBB4_30
# BB#31:
	movb	$0, -48(%rbp)
	jmp	.LBB4_32
.LBB4_30:                               # %._crit_edge.i.i.i.i.i.i.i.i
	movb	$1, -48(%rbp)
.LBB4_32:
	cmpb	$1, -48(%rbp)
	jne	.LBB4_34
# BB#33:
	movq	-144(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	memmove
.LBB4_34:
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	(%rbx), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB4_35
# BB#36:
	movb	$0, -32(%rbp)
	jmp	.LBB4_37
.LBB4_35:                               # %._crit_edge.i
	movb	$1, -32(%rbp)
.LBB4_37:
	cmpb	$1, -32(%rbp)
	jne	.LBB4_39
# BB#38:
	movq	-96(%rbp), %rdi
	callq	_ZdlPv
.LBB4_39:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m.exit
	movq	-184(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	addq	-184(%rbp), %rax
	movq	%rax, 16(%rbx)
	movb	$0, -241(%rbp)
.LBB4_2:
	movb	-241(%rbp), %al
	testb	%al, %al
	je	.LBB4_12
# BB#3:
	movq	8(%rbx), %rax
	leaq	-8(%rax), %rcx
	movq	%rcx, -240(%rbp)
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB4_4
# BB#5:
	movq	-32(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movb	$0, -40(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %._crit_edge.i.i
	movb	$1, -40(%rbp)
.LBB4_6:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit
	addq	$8, 8(%rbx)
	movq	(%r14), %rax
	movq	%rax, -232(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	8(%rbx), %rax
	leaq	-16(%rax), %rcx
	addq	$-8, %rax
	movq	%rax, -216(%rbp)
	subq	-224(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	sarq	$3, %rcx
	movq	%rcx, -32(%rbp)
	jne	.LBB4_7
# BB#8:
	movb	$0, -48(%rbp)
	jmp	.LBB4_9
.LBB4_7:                                # %._crit_edge.i.i.i.i
	movb	$1, -48(%rbp)
.LBB4_9:
	cmpb	$1, -48(%rbp)
	jne	.LBB4_11
# BB#10:
	movq	-32(%rbp), %rax
	movq	-216(%rbp), %rdi
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	-224(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	memmove
.LBB4_11:                               # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_.exit
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB4_12:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB4_21:
	callq	_ZSt17__throw_bad_allocv
.Ltmp50:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp50-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
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
	subq	$144, %rsp
	movq	%rsi, -40(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	subq	%rax, %rcx
	cmpq	%rsi, %rcx
	jb	.LBB5_23
# BB#1:
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rax, -96(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movq	%rax, -88(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB5_2
# BB#5:
	movb	$0, -17(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %._crit_edge.i
	movb	$1, -17(%rbp)
.LBB5_3:
	movq	-32(%rbp), %rax
	movb	-17(%rbp), %cl
	movq	%rax, -8(%rbp)
	testb	%cl, %cl
	je	.LBB5_4
# BB#6:
	leaq	-40(%rbp), %rax
	jmp	.LBB5_7
.LBB5_4:                                # %._crit_edge6.i
	movq	-8(%rbp), %rax
.LBB5_7:                                # %_ZSt3maxImERKT_S2_S2_.exit
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdi), %rcx
	subq	(%rdi), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	jb	.LBB5_8
# BB#11:
	movq	-80(%rbp), %rax
	shrq	$61, %rax
	jne	.LBB5_12
# BB#20:
	movq	-80(%rbp), %rax
	movb	$0, -122(%rbp)
	movq	%rax, -136(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %_ZSt3maxImERKT_S2_S2_.exit._crit_edge
	movb	$1, -105(%rbp)
	movb	$0, -106(%rbp)
	jmp	.LBB5_9
.LBB5_12:                               # %._crit_edge
	movb	$1, -122(%rbp)
.LBB5_13:
	movq	-136(%rbp), %rax
	movb	-122(%rbp), %cl
	movq	%rax, -64(%rbp)
	testb	%cl, %cl
	je	.LBB5_14
# BB#16:
	movb	$1, -137(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %._crit_edge28
	movb	$0, -137(%rbp)
.LBB5_15:
	movb	-137(%rbp), %al
	movb	%al, -65(%rbp)
	movq	-64(%rbp), %rcx
	movb	$0, -105(%rbp)
	movb	%al, -106(%rbp)
	movq	%rcx, -120(%rbp)
.LBB5_9:
	movq	-120(%rbp), %rax
	movb	-106(%rbp), %cl
	movb	-105(%rbp), %dl
	movq	%rax, -56(%rbp)
	movb	%cl, -41(%rbp)
	testb	%dl, %dl
	je	.LBB5_10
# BB#17:
	movb	$1, -121(%rbp)
	jmp	.LBB5_18
.LBB5_10:                               # %._crit_edge30
	movb	-41(%rbp), %al
	movb	%al, -121(%rbp)
.LBB5_18:
	movb	-121(%rbp), %al
	testb	%al, %al
	je	.LBB5_19
# BB#21:
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB5_22
.LBB5_19:                               # %._crit_edge29
	movq	-56(%rbp), %rax
.LBB5_22:
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	ret
.LBB5_23:
	movq	%rdx, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp56:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc, .Ltmp56-_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_3,@function
__unnamed_3:                            # @3
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
	movl	$__unnamed_4, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$__unnamed_4, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	ret
.Ltmp62:
	.size	__unnamed_3, .Ltmp62-__unnamed_3
	.cfi_endproc

	.type	__unnamed_4,@object     # @0
	.local	__unnamed_4
	.comm	__unnamed_4,1,1
	.type	dont_optimize_me,@object # @dont_optimize_me
	.bss
	.globl	dont_optimize_me
	.align	4
dont_optimize_me:
	.long	0                       # 0x0
	.size	dont_optimize_me, 4

	.type	.L__unnamed_1,@object   # @1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"ERROR: WRONG ANSWER\n"
	.size	.L__unnamed_1, 21

	.type	.L__unnamed_2,@object   # @2
.L__unnamed_2:
	.asciz	"vector::_M_insert_aux"
	.size	.L__unnamed_2, 22

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	__unnamed_3

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
