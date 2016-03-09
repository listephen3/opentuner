	.file	"raytracer.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI0_1:
	.quad	4564848582410108928     # double 1.562500e-03
	.quad	4566950262379380736     # double 2.083333e-03
.LCPI0_2:
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	4611686018427387904     # double 2.000000e+00
.LCPI0_6:
	.quad	4608683618854764544     # double 1.333333e+00
	.quad	4598498563473801216     # double 2.679492e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_3:
	.quad	-4616189618054758400    # double -1
.LCPI0_4:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI0_5:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_7:
	.long	1065353216              # float 1
.LCPI0_8:
	.long	1132396544              # float 255
.LCPI0_9:
	.long	0                       # float 0
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin0:
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movl	$13, %edi
	callq	srand48
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -104(%rbp)
	movq	$0, -88(%rbp)
.Ltmp0:
	movl	$52, %edi
	callq	_Znwm
.Ltmp1:
# BB#1:
	movl	$0, (%rax)
	movl	$-971223040, 4(%rax)    # imm = 0xFFFFFFFFC61C5000
	movl	$-1046478848, 8(%rax)   # imm = 0xFFFFFFFFC1A00000
	movl	$1176256512, 12(%rax)   # imm = 0x461C4000
	movl	$1287568416, 16(%rax)   # imm = 0x4CBEBC20
	movl	$1045220557, 20(%rax)   # imm = 0x3E4CCCCD
	movl	$1045220557, 24(%rax)   # imm = 0x3E4CCCCD
	movl	$1045220557, 28(%rax)   # imm = 0x3E4CCCCD
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_2
# BB#46:
	movq	-96(%rbp), %rsi
.Ltmp2:
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp3:
# BB#47:
	xorl	%eax, %eax
.LBB0_2:
	testb	%al, %al
	je	.LBB0_6
# BB#3:
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#4:
	movq	-112(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_5:
	addq	$8, -96(%rbp)
.LBB0_6:
.Ltmp4:
	movl	$52, %edi
	callq	_Znwm
.Ltmp5:
# BB#7:
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$-1046478848, 8(%rax)   # imm = 0xFFFFFFFFC1A00000
	movl	$1082130432, 12(%rax)   # imm = 0x40800000
	movl	$1098907648, 16(%rax)   # imm = 0x41800000
	movl	$1065353216, 20(%rax)   # imm = 0x3F800000
	movl	$1050924810, 24(%rax)   # imm = 0x3EA3D70A
	movl	$1052266988, 28(%rax)   # imm = 0x3EB851EC
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$1056964608, 44(%rax)   # imm = 0x3F000000
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_8
# BB#48:
	movq	-96(%rbp), %rsi
.Ltmp6:
	leaq	-104(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp7:
# BB#49:
	xorl	%eax, %eax
.LBB0_8:
	testb	%al, %al
	je	.LBB0_12
# BB#9:
	testq	%rbx, %rbx
	je	.LBB0_11
# BB#10:
	movq	-120(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_11:
	addq	$8, -96(%rbp)
.LBB0_12:
.Ltmp8:
	movl	$52, %edi
	callq	_Znwm
.Ltmp9:
# BB#13:
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$-1082130432, 4(%rax)   # imm = 0xFFFFFFFFBF800000
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1073741824, 12(%rax)   # imm = 0x40000000
	movl	$1082130432, 16(%rax)   # imm = 0x40800000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1061326684, 24(%rax)   # imm = 0x3F428F5C
	movl	$1055622431, 28(%rax)   # imm = 0x3EEB851F
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_14
# BB#50:
	movq	-96(%rbp), %rsi
.Ltmp10:
	leaq	-104(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp11:
# BB#51:
	xorl	%eax, %eax
.LBB0_14:
	testb	%al, %al
	je	.LBB0_18
# BB#15:
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#16:
	movq	-128(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_17:
	addq	$8, -96(%rbp)
.LBB0_18:
.Ltmp12:
	movl	$52, %edi
	callq	_Znwm
.Ltmp13:
# BB#19:
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$0, 4(%rax)
	movl	$-1043857408, 8(%rax)   # imm = 0xFFFFFFFFC1C80000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1059481190, 20(%rax)   # imm = 0x3F266666
	movl	$1061494456, 24(%rax)   # imm = 0x3F451EB8
	movl	$1064849900, 28(%rax)   # imm = 0x3F7851EC
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_20
# BB#52:
	movq	-96(%rbp), %rsi
.Ltmp14:
	leaq	-104(%rbp), %rdi
	leaq	-136(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp15:
# BB#53:
	xorl	%eax, %eax
.LBB0_20:
	testb	%al, %al
	je	.LBB0_24
# BB#21:
	testq	%rbx, %rbx
	je	.LBB0_23
# BB#22:
	movq	-136(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_23:
	addq	$8, -96(%rbp)
.LBB0_24:
.Ltmp16:
	movl	$52, %edi
	callq	_Znwm
.Ltmp17:
# BB#25:
	movl	$-1062207488, (%rax)    # imm = 0xFFFFFFFFC0B00000
	movl	$0, 4(%rax)
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1063675494, 24(%rax)   # imm = 0x3F666666
	movl	$1063675494, 28(%rax)   # imm = 0x3F666666
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_26
# BB#54:
	movq	-96(%rbp), %rsi
.Ltmp18:
	leaq	-104(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp19:
# BB#55:
	xorl	%eax, %eax
.LBB0_26:
	testb	%al, %al
	je	.LBB0_30
# BB#27:
	testq	%rbx, %rbx
	je	.LBB0_29
# BB#28:
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_29:
	addq	$8, -96(%rbp)
.LBB0_30:
.Ltmp20:
	movl	$52, %edi
	callq	_Znwm
.Ltmp21:
# BB#31:
	movl	$0, (%rax)
	movl	$1101004800, 4(%rax)    # imm = 0x41A00000
	movl	$-1041235968, 8(%rax)   # imm = 0xFFFFFFFFC1F00000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$0, 20(%rax)
	movl	$0, 24(%rax)
	movl	$0, 28(%rax)
	movl	$1077936128, 32(%rax)   # imm = 0x40400000
	movl	$1077936128, 36(%rax)   # imm = 0x40400000
	movl	$1077936128, 40(%rax)   # imm = 0x40400000
	movl	$0, 44(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -152(%rbp)
	movq	-96(%rbp), %rbx
	movb	$1, %al
	cmpq	-88(%rbp), %rbx
	jne	.LBB0_32
# BB#56:
	movq	-96(%rbp), %rsi
.Ltmp22:
	leaq	-104(%rbp), %rdi
	leaq	-152(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.Ltmp23:
# BB#57:
	xorl	%eax, %eax
.LBB0_32:
	testb	%al, %al
	je	.LBB0_36
# BB#33:
	testq	%rbx, %rbx
	je	.LBB0_35
# BB#34:
	movq	-152(%rbp), %rax
	movq	%rax, (%rbx)
.LBB0_35:
	addq	$8, -96(%rbp)
.LBB0_36:
.Ltmp24:
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
.Ltmp25:
# BB#37:
	leaq	3686400(%rax), %rdx
	movq	%rax, %rcx
	.align	16, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	addq	$12, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB0_38
# BB#39:
	xorl	%r14d, %r14d
	leaq	-104(%rbp), %r13
	leaq	-76(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	.align	16, 0x90
.LBB0_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
	xorl	%r12d, %r12d
	movb	$1, %cl
                                        # implicit-def: R15
	cmpl	$479, %r14d             # imm = 0x1DF
	ja	.LBB0_71
	.align	16, 0x90
.LBB0_41:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r15
	movb	$1, %cl
                                        # implicit-def: RDX
	cmpl	$639, %r12d             # imm = 0x27F
	ja	.LBB0_69
# BB#42:                                #   in Loop: Header=BB0_41 Depth=2
	movl	%r12d, %eax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movl	%r14d, %eax
	vcvtsi2sdq	%rax, %xmm0, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
	vaddpd	.LCPI0_0(%rip), %xmm0, %xmm0
	vmulpd	.LCPI0_1(%rip), %xmm0, %xmm0
	vmulpd	.LCPI0_2(%rip), %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1 # xmm1 = xmm0[1,1]
	vaddsd	.LCPI0_3(%rip), %xmm0, %xmm0
	vmulsd	.LCPI0_4(%rip), %xmm0, %xmm0
	vmovsd	.LCPI0_5(%rip), %xmm2
	vsubsd	%xmm1, %xmm2, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
	vmulpd	.LCPI0_6(%rip), %xmm0, %xmm0
	vcvtpd2ps	%xmm0, %xmm0
	vmovss	%xmm0, -56(%rbp)
	vextractps	$1, %xmm0, -52(%rbp)
	movl	$-1082130432, -48(%rbp) # imm = 0xFFFFFFFFBF800000
	vmovq	-56(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI0_7(%rip), %xmm0, %xmm0
	vucomiss	.LCPI0_9, %xmm0
	jbe	.LBB0_68
# BB#43:                                #   in Loop: Header=BB0_41 Depth=2
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm2
	vucomisd	%xmm2, %xmm2
	movb	$1, %al
                                        # implicit-def: XMM0
	jnp	.LBB0_65
# BB#44:                                #   in Loop: Header=BB0_41 Depth=2
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_58
# BB#45:                                #   in Loop: Header=BB0_41 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_65
.LBB0_58:                               #   in Loop: Header=BB0_41 Depth=2
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_60
# BB#59:                                #   in Loop: Header=BB0_41 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_65
.LBB0_60:                               # %call.sqrt
                                        #   in Loop: Header=BB0_41 Depth=2
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB0_62
# BB#61:                                #   in Loop: Header=BB0_41 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_65
.LBB0_62:                               # %call.sqrt142
                                        #   in Loop: Header=BB0_41 Depth=2
	vmovsd	%xmm2, -160(%rbp)       # 8-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB0_64
# BB#63:                                # %call.sqrt144
                                        #   in Loop: Header=BB0_41 Depth=2
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB0_64:                               #   in Loop: Header=BB0_41 Depth=2
	xorl	%eax, %eax
	vmovsd	-160(%rbp), %xmm2       # 8-byte Reload
	.align	16, 0x90
.LBB0_65:                               #   in Loop: Header=BB0_41 Depth=2
	testb	%al, %al
	jne	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_41 Depth=2
	vmovaps	%xmm0, %xmm2
.LBB0_67:                               #   in Loop: Header=BB0_41 Depth=2
	vmovsd	.LCPI0_5(%rip), %xmm0
	vdivsd	%xmm2, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovq	-56(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, -56(%rbp)
	vmulss	-48(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
.LBB0_68:                               #   in Loop: Header=BB0_41 Depth=2
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, (%r15)
	vmovss	%xmm1, 8(%r15)
	incl	%r12d
	leaq	12(%r15), %rdx
	xorl	%ecx, %ecx
.LBB0_69:                               #   in Loop: Header=BB0_41 Depth=2
	testb	%cl, %cl
	je	.LBB0_41
# BB#70:                                #   in Loop: Header=BB0_40 Depth=1
	incl	%r14d
	xorl	%ecx, %ecx
.LBB0_71:                               #   in Loop: Header=BB0_40 Depth=1
	movq	%r15, %rdx
	testb	%cl, %cl
	je	.LBB0_40
# BB#72:
	xorl	%ecx, %ecx
	vmovss	.LCPI0_8(%rip), %xmm0
	xorl	%eax, %eax
	movq	-168(%rbp), %rdi        # 8-byte Reload
	vmovss	.LCPI0_7(%rip), %xmm2
	.align	16, 0x90
.LBB0_73:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	movb	$1, %dl
                                        # implicit-def: ECX
	cmpl	$307199, %eax           # imm = 0x4AFFF
	ja	.LBB0_75
# BB#74:                                #   in Loop: Header=BB0_73 Depth=1
	imull	$31, %ebx, %ecx
	movl	%eax, %edx
	leaq	(%rdx,%rdx,2), %rdx
	vmovss	(%rdi,%rdx,4), %xmm1
	vminss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vcvttss2si	%xmm1, %rsi
	addl	%ecx, %esi
	imull	$31, %esi, %ecx
	vmovss	4(%rdi,%rdx,4), %xmm1
	vminss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vcvttss2si	%xmm1, %rsi
	addl	%ecx, %esi
	imull	$31, %esi, %esi
	vmovss	8(%rdi,%rdx,4), %xmm1
	vminss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vcvttss2si	%xmm1, %rcx
	addl	%esi, %ecx
	incl	%eax
	xorl	%edx, %edx
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=1
	testb	%dl, %dl
	je	.LBB0_73
# BB#76:
	callq	_ZdaPv
	movl	%ebx, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_78
# BB#77:
	movl	$__unnamed_1, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_78
	.align	16, 0x90
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=1
	callq	_ZdlPv
.LBB0_78:                               # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB0_81
# BB#79:                                #   in Loop: Header=BB0_78 Depth=1
	movq	-96(%rbp), %rax
	movq	-8(%rax), %rdi
	addq	$-8, %rax
	movq	%rax, -96(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_78
	jmp	.LBB0_80
.LBB0_81:
	movq	-104(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_83
# BB#82:
	callq	_ZdlPv
.LBB0_83:
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_84:
.Ltmp26:
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_86
# BB#85:
	movq	%rax, %rdi
	callq	_ZdlPv
.LBB0_86:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Ltmp38:
	.size	main, .Ltmp38-main
	.cfi_endproc
.Leh_func_end0:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
.Lset0 = .Ltmp0-.Leh_func_begin0        # >> Call Site 1 <<
	.long	.Lset0
.Lset1 = .Ltmp25-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp25
	.long	.Lset1
.Lset2 = .Ltmp26-.Leh_func_begin0       #     jumps to .Ltmp26
	.long	.Lset2
	.byte	0                       #   On action: cleanup
.Lset3 = .Ltmp25-.Leh_func_begin0       # >> Call Site 2 <<
	.long	.Lset3
.Lset4 = .Leh_func_end0-.Ltmp25         #   Call between .Ltmp25 and .Leh_func_end0
	.long	.Lset4
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	16, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Ltmp39:
	.size	__clang_call_terminate, .Ltmp39-__clang_call_terminate

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	2139095040              # float +Inf
.LCPI2_1:
	.long	1073741824              # float 2
.LCPI2_7:
	.long	953267991               # float 9.99999974E-5
.LCPI2_8:
	.long	1065353216              # float 1
.LCPI2_10:
	.long	1063675494              # float 0.899999976
.LCPI2_11:
	.long	1036831949              # float 0.100000001
.LCPI2_12:
	.long	1066192077              # float 1.10000002
.LCPI2_13:
	.long	1063828014              # float 0.909090876
.LCPI2_15:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_2:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.zero	4
	.zero	4
.LCPI2_4:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
.LCPI2_5:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
.LCPI2_6:
	.long	953267991               # float 9.99999974E-5
	.long	953267991               # float 9.99999974E-5
	.zero	4
	.zero	4
.LCPI2_14:
	.long	1065353216              # float 1
	.long	2147483648              # float -0
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_3:
	.quad	4607182418800017408     # double 1
.LCPI2_9:
	.quad	4613937818241073152     # double 3
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	vmovss	.LCPI2_0(%rip), %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vmovaps	%xmm0, -128(%rbp)       # 16-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movl	%ebx, %r15d
	movq	8(%r12), %rax
	subq	(%r12), %rax
	sarq	$3, %rax
	movb	$1, %dl
	cmpq	%rax, %r15
	jae	.LBB2_25
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	(%r12), %rax
	movq	(%rax,%r15,8), %rdi
	vmovq	(%rdi), %xmm0
	vmovq	(%r14), %xmm1
	vsubps	%xmm1, %xmm0, %xmm3
	vmovss	8(%rdi), %xmm0
	vsubss	8(%r14), %xmm0, %xmm2
	vmovq	(%rsi), %xmm0
	vmulps	%xmm3, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	8(%rsi), %xmm2, %xmm1
	vaddss	%xmm0, %xmm1, %xmm5
	movb	$1, %dl
	vucomiss	%xmm5, %xmm4
	vmovss	.LCPI2_0(%rip), %xmm0
	vmovaps	%xmm0, %xmm1
                                        # implicit-def: AL
	ja	.LBB2_18
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	vmulps	%xmm3, %xmm3, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm2, %xmm2, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm5, %xmm5, %xmm1
	vsubss	%xmm1, %xmm0, %xmm2
	vmovss	16(%rdi), %xmm3
	vucomiss	%xmm3, %xmm2
	movb	$1, %al
	vmovss	.LCPI2_0(%rip), %xmm0
	vmovaps	%xmm0, %xmm1
	ja	.LBB2_17
# BB#4:                                 #   in Loop: Header=BB2_1 Depth=1
	vsubss	%xmm2, %xmm3, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm0, %xmm2
	vucomiss	%xmm2, %xmm2
	movb	$1, %al
                                        # implicit-def: XMM0
	jnp	.LBB2_14
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	.LBB2_7
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_9:                                # %call.sqrt
                                        #   in Loop: Header=BB2_1 Depth=1
	vmovss	%xmm5, -148(%rbp)       # 4-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jp	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	vpxor	%xmm4, %xmm4, %xmm4
	vmovss	-148(%rbp), %xmm5       # 4-byte Reload
	jmp	.LBB2_14
.LBB2_11:                               # %call.sqrt384
                                        #   in Loop: Header=BB2_1 Depth=1
	vmovss	%xmm2, -168(%rbp)       # 4-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm0
	jnp	.LBB2_13
# BB#12:                                # %call.sqrt392
                                        #   in Loop: Header=BB2_1 Depth=1
	vmovaps	%xmm1, %xmm0
	callq	sqrtf
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	vpxor	%xmm4, %xmm4, %xmm4
	vmovss	-148(%rbp), %xmm5       # 4-byte Reload
	vmovss	-168(%rbp), %xmm2       # 4-byte Reload
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	jne	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_1 Depth=1
	vmovaps	%xmm0, %xmm2
.LBB2_16:                               #   in Loop: Header=BB2_1 Depth=1
	vsubss	%xmm2, %xmm5, %xmm0
	vaddss	%xmm2, %xmm5, %xmm1
	xorl	%eax, %eax
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	xorb	$1, %al
	xorl	%edx, %edx
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	xorb	$1, %dl
	andb	%al, %dl
	cmpb	$1, %dl
	jne	.LBB2_19
# BB#20:                                #   in Loop: Header=BB2_1 Depth=1
	vucomiss	%xmm0, %xmm4
	jbe	.LBB2_22
# BB#21:                                #   in Loop: Header=BB2_1 Depth=1
	vmovaps	%xmm1, %xmm0
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	vmovaps	-128(%rbp), %xmm1       # 16-byte Reload
	vucomiss	%xmm0, %xmm1
	movq	%r13, %rax
	jbe	.LBB2_24
# BB#23:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%r12), %rax
	movq	(%rax,%r15,8), %rax
	vmovaps	%xmm0, -128(%rbp)       # 16-byte Spill
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_19:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rax
.LBB2_24:                               #   in Loop: Header=BB2_1 Depth=1
	incl	%ebx
	xorl	%edx, %edx
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
	testb	%dl, %dl
	je	.LBB2_1
# BB#26:
	movb	$1, %al
	testq	%r13, %r13
	jne	.LBB2_28
# BB#27:
	xorl	%eax, %eax
.LBB2_28:
	testb	%al, %al
	je	.LBB2_29
# BB#30:
	vmovq	(%rsi), %xmm0
	vmovdqa	-128(%rbp), %xmm2       # 16-byte Reload
	vpshufd	$0, %xmm2, %xmm1        # xmm1 = xmm2[0,0,0,0]
	vmulps	%xmm0, %xmm1, %xmm0
	vmulss	8(%rsi), %xmm2, %xmm1
	vmovq	(%r14), %xmm2
	vaddps	%xmm0, %xmm2, %xmm2
	vaddss	8(%r14), %xmm1, %xmm3
	vmovq	(%r13), %xmm0
	vsubps	%xmm0, %xmm2, %xmm14
	vsubss	8(%r13), %xmm3, %xmm7
	vmulps	%xmm14, %xmm14, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm7, %xmm7, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vucomiss	%xmm4, %xmm0
	jbe	.LBB2_36
# BB#31:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm5
	vucomisd	%xmm5, %xmm5
	jnp	.LBB2_32
# BB#38:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_40
# BB#39:
	xorl	%eax, %eax
	jmp	.LBB2_33
.LBB2_29:
	vmovss	.LCPI2_1(%rip), %xmm1
	vmovaps	.LCPI2_2(%rip), %xmm0
	jmp	.LBB2_151
.LBB2_32:
	movb	$1, %al
                                        # implicit-def: XMM0
	jmp	.LBB2_33
.LBB2_40:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_42
# BB#41:
	xorl	%eax, %eax
	jmp	.LBB2_33
.LBB2_42:                               # %call.sqrt372
	vmovsd	%xmm5, -168(%rbp)       # 8-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_45
# BB#43:
	xorl	%eax, %eax
	jmp	.LBB2_44
.LBB2_45:                               # %call.sqrt385
	vmovss	%xmm7, -148(%rbp)       # 4-byte Spill
	vmovaps	%xmm14, -128(%rbp)      # 16-byte Spill
	movq	%rcx, %rbx
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_46
# BB#47:                                # %call.sqrt393
	vmovaps	%xmm1, %xmm0
	movq	%rsi, %r14
	vmovaps	%xmm2, -240(%rbp)       # 16-byte Spill
	vmovss	%xmm3, -244(%rbp)       # 4-byte Spill
	callq	sqrt
	vmovss	-244(%rbp), %xmm3       # 4-byte Reload
	vmovaps	-240(%rbp), %xmm2       # 16-byte Reload
	movq	%r14, %rsi
.LBB2_46:
	xorl	%eax, %eax
	movq	%rbx, %rcx
	vmovaps	-128(%rbp), %xmm14      # 16-byte Reload
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
.LBB2_44:
	vpxor	%xmm4, %xmm4, %xmm4
	vmovsd	-168(%rbp), %xmm5       # 8-byte Reload
.LBB2_33:
	testb	%al, %al
	jne	.LBB2_35
# BB#34:
	vmovaps	%xmm0, %xmm5
.LBB2_35:
	vmovsd	.LCPI2_3(%rip), %xmm0
	vdivsd	%xmm5, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm14, %xmm14
	vmulss	%xmm0, %xmm7, %xmm7
.LBB2_36:
	vmovq	(%rsi), %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	8(%rsi), %xmm7, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vucomiss	%xmm4, %xmm0
	movb	$1, %al
	jbe	.LBB2_37
# BB#48:
	vxorps	.LCPI2_4(%rip), %xmm14, %xmm14
	vxorps	.LCPI2_4(%rip), %xmm7, %xmm7
	xorl	%edx, %edx
	jmp	.LBB2_49
.LBB2_37:
	movb	$1, %dl
.LBB2_49:
	vmovss	%xmm7, -148(%rbp)       # 4-byte Spill
	vmovaps	%xmm14, -128(%rbp)      # 16-byte Spill
	vmovss	44(%r13), %xmm1
	xorb	$1, %dl
	movl	%edx, -248(%rbp)        # 4-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB2_50
# BB#51:
	vmovss	48(%r13), %xmm1
	vucomiss	%xmm0, %xmm1
	setbe	%dil
	seta	%dl
	xorl	%eax, %eax
	jmp	.LBB2_52
.LBB2_50:
	xorl	%edi, %edi
	xorl	%edx, %edx
.LBB2_52:
	xorl	%r14d, %r14d
	orb	%al, %dl
	je	.LBB2_53
# BB#54:
	movl	(%rcx), %eax
	cmpl	$4, %eax
	setg	%dl
	orb	%dil, %dl
	cmpl	$5, %eax
	setl	%al
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movb	%dl, %dil
	jmp	.LBB2_55
.LBB2_53:
	movl	$0, -224(%rbp)          # 4-byte Folded Spill
.LBB2_55:
	vmovaps	%xmm2, %xmm8
	vmovdqa	%xmm3, %xmm13
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm15, %xmm15, %xmm15
	testb	%dil, %dil
	je	.LBB2_149
# BB#56:
	vpxor	%xmm4, %xmm4, %xmm4
	vmovaps	.LCPI2_5(%rip), %xmm9
	vmovss	.LCPI2_8(%rip), %xmm10
	vmovaps	.LCPI2_6(%rip), %xmm11
	vmovss	.LCPI2_7(%rip), %xmm12
	.align	16, 0x90
.LBB2_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_126 Depth 2
	movl	%r14d, %edi
	movq	8(%r12), %rdx
	subq	(%r12), %rdx
	sarq	$3, %rdx
	movb	$1, %al
	cmpq	%rdx, %rdi
	jae	.LBB2_148
# BB#58:                                #   in Loop: Header=BB2_57 Depth=1
	movq	(%r12), %rax
	movq	(%rax,%rdi,8), %rax
	vmovss	32(%rax), %xmm0
	vucomiss	%xmm4, %xmm0
	ja	.LBB2_108
# BB#59:                                #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_109
	.align	16, 0x90
.LBB2_108:                              # %select.mid
                                        #   in Loop: Header=BB2_57 Depth=1
	movb	$1, %al
.LBB2_109:                              # %select.end
                                        #   in Loop: Header=BB2_57 Depth=1
	testb	%al, %al
	je	.LBB2_147
# BB#110:                               #   in Loop: Header=BB2_57 Depth=1
	movq	(%r12), %rax
	movq	(%rax,%rdi,8), %rax
	vmovq	(%rax), %xmm0
	vsubps	%xmm8, %xmm0, %xmm6
	vmovss	8(%rax), %xmm0
	vsubss	%xmm13, %xmm0, %xmm5
	vmulps	%xmm6, %xmm6, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm5, %xmm5, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vucomiss	%xmm4, %xmm0
	jbe	.LBB2_111
# BB#112:                               #   in Loop: Header=BB2_57 Depth=1
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm3
	vucomisd	%xmm3, %xmm3
	movb	$1, %al
                                        # implicit-def: XMM0
	jnp	.LBB2_122
# BB#113:                               #   in Loop: Header=BB2_57 Depth=1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_115
# BB#114:                               #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_122
.LBB2_111:                              #   in Loop: Header=BB2_57 Depth=1
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	jmp	.LBB2_125
.LBB2_115:                              #   in Loop: Header=BB2_57 Depth=1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_117
# BB#116:                               #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_122
.LBB2_117:                              # %call.sqrt380
                                        #   in Loop: Header=BB2_57 Depth=1
	vmovaps	%xmm6, -272(%rbp)       # 16-byte Spill
	vmovss	%xmm5, -252(%rbp)       # 4-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_119
# BB#118:                               #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	vpxor	%xmm4, %xmm4, %xmm4
	vmovaps	.LCPI2_6(%rip), %xmm11
	vmovss	.LCPI2_7(%rip), %xmm12
	vmovss	-252(%rbp), %xmm5       # 4-byte Reload
	vmovaps	-272(%rbp), %xmm6       # 16-byte Reload
	jmp	.LBB2_122
.LBB2_119:                              # %call.sqrt389
                                        #   in Loop: Header=BB2_57 Depth=1
	vmovsd	%xmm3, -200(%rbp)       # 8-byte Spill
	movq	%rdi, %r15
	vmovaps	%xmm15, -192(%rbp)      # 16-byte Spill
	vmovss	%xmm2, -168(%rbp)       # 4-byte Spill
	movq	%rsi, %rbx
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_121
# BB#120:                               # %call.sqrt397
                                        #   in Loop: Header=BB2_57 Depth=1
	vmovdqa	%xmm1, %xmm0
	vmovaps	%xmm8, -240(%rbp)       # 16-byte Spill
	vmovss	%xmm13, -244(%rbp)      # 4-byte Spill
	callq	sqrt
	vmovss	.LCPI2_8(%rip), %xmm10
	vmovaps	.LCPI2_5(%rip), %xmm9
	vmovss	-244(%rbp), %xmm13      # 4-byte Reload
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
.LBB2_121:                              #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %rsi
	vmovss	-168(%rbp), %xmm2       # 4-byte Reload
	vmovaps	-192(%rbp), %xmm15      # 16-byte Reload
	vpxor	%xmm4, %xmm4, %xmm4
	vmovaps	.LCPI2_6(%rip), %xmm11
	vmovss	.LCPI2_7(%rip), %xmm12
	movq	%r15, %rdi
	vmovss	-252(%rbp), %xmm5       # 4-byte Reload
	vmovaps	-272(%rbp), %xmm6       # 16-byte Reload
	vmovsd	-200(%rbp), %xmm3       # 8-byte Reload
.LBB2_122:                              #   in Loop: Header=BB2_57 Depth=1
	testb	%al, %al
	vmovaps	-128(%rbp), %xmm14      # 16-byte Reload
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	jne	.LBB2_124
# BB#123:                               #   in Loop: Header=BB2_57 Depth=1
	vmovdqa	%xmm0, %xmm3
.LBB2_124:                              #   in Loop: Header=BB2_57 Depth=1
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	vmovsd	.LCPI2_3(%rip), %xmm0
	vdivsd	%xmm3, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm6, %xmm6
	vmulss	%xmm0, %xmm5, %xmm5
.LBB2_125:                              #   in Loop: Header=BB2_57 Depth=1
	vmovaps	%xmm6, -272(%rbp)       # 16-byte Spill
	vmovss	%xmm5, -252(%rbp)       # 4-byte Spill
	vmovaps	%xmm15, -192(%rbp)      # 16-byte Spill
	vmovss	%xmm2, -168(%rbp)       # 4-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_126:                              #   Parent Loop BB2_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %edx
	movq	8(%r12), %rbx
	subq	(%r12), %rbx
	sarq	$3, %rbx
	xorl	%eax, %eax
	movb	$1, %dil
	cmpq	%rbx, %rdx
	jae	.LBB2_143
# BB#127:                               #   in Loop: Header=BB2_126 Depth=2
	cmpl	%r15d, %r14d
	je	.LBB2_143
# BB#128:                               #   in Loop: Header=BB2_126 Depth=2
	movq	(%r12), %rax
	movq	(%rax,%rdx,8), %rdx
	vmulps	%xmm11, %xmm14, %xmm0
	vmulss	%xmm12, %xmm7, %xmm1
	vaddps	%xmm0, %xmm8, %xmm0
	vaddss	%xmm1, %xmm13, %xmm2
	vmovq	(%rdx), %xmm1
	vsubps	%xmm0, %xmm1, %xmm1
	vmovss	8(%rdx), %xmm0
	vsubss	%xmm2, %xmm0, %xmm0
	vmulps	%xmm1, %xmm6, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm0, %xmm5, %xmm3
	vaddss	%xmm2, %xmm3, %xmm2
	movb	$1, %dil
	vucomiss	%xmm2, %xmm4
                                        # implicit-def: AL
	ja	.LBB2_142
# BB#129:                               #   in Loop: Header=BB2_126 Depth=2
	vmulps	%xmm1, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm3        # xmm3 = xmm1[1,0,0,0]
	vaddss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm2, %xmm2, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	16(%rdx), %xmm1
	vucomiss	%xmm1, %xmm0
	movb	$1, %al
	ja	.LBB2_141
# BB#130:                               #   in Loop: Header=BB2_126 Depth=2
	vsubss	%xmm0, %xmm1, %xmm0
	vsqrtss	%xmm0, %xmm0, %xmm1
	vucomiss	%xmm1, %xmm1
	jnp	.LBB2_131
# BB#132:                               #   in Loop: Header=BB2_126 Depth=2
	vsqrtss	%xmm0, %xmm0, %xmm1
	vucomiss	%xmm1, %xmm1
	jp	.LBB2_134
# BB#133:                               #   in Loop: Header=BB2_126 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_141
.LBB2_131:                              #   in Loop: Header=BB2_126 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_141
.LBB2_134:                              #   in Loop: Header=BB2_126 Depth=2
	vsqrtss	%xmm0, %xmm0, %xmm1
	vucomiss	%xmm1, %xmm1
	jp	.LBB2_136
# BB#135:                               #   in Loop: Header=BB2_126 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_141
.LBB2_136:                              # %call.sqrt382
                                        #   in Loop: Header=BB2_126 Depth=2
	vsqrtss	%xmm0, %xmm0, %xmm1
	vucomiss	%xmm1, %xmm1
	jp	.LBB2_138
# BB#137:                               #   in Loop: Header=BB2_126 Depth=2
	xorl	%eax, %eax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	vmovaps	.LCPI2_5(%rip), %xmm9
	vmovss	.LCPI2_8(%rip), %xmm10
	jmp	.LBB2_141
.LBB2_138:                              # %call.sqrt390
                                        #   in Loop: Header=BB2_126 Depth=2
	vsqrtss	%xmm0, %xmm0, %xmm1
	vucomiss	%xmm1, %xmm1
	jnp	.LBB2_140
# BB#139:                               # %call.sqrt398
                                        #   in Loop: Header=BB2_126 Depth=2
	vmovaps	%xmm8, -240(%rbp)       # 16-byte Spill
	vmovss	%xmm13, -244(%rbp)      # 4-byte Spill
	callq	sqrtf
	vmovaps	-272(%rbp), %xmm6       # 16-byte Reload
	vmovss	-252(%rbp), %xmm5       # 4-byte Reload
	vpxor	%xmm4, %xmm4, %xmm4
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	vmovaps	-128(%rbp), %xmm14      # 16-byte Reload
	vmovss	-244(%rbp), %xmm13      # 4-byte Reload
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
.LBB2_140:                              #   in Loop: Header=BB2_126 Depth=2
	xorl	%eax, %eax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	vmovaps	.LCPI2_5(%rip), %xmm9
	vmovss	.LCPI2_8(%rip), %xmm10
	vmovaps	.LCPI2_6(%rip), %xmm11
	vmovss	.LCPI2_7(%rip), %xmm12
.LBB2_141:                              #   in Loop: Header=BB2_126 Depth=2
	xorb	$1, %al
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi        # 8-byte Reload
.LBB2_142:                              #   in Loop: Header=BB2_126 Depth=2
	xorb	$1, %dil
	andb	%al, %dil
	incl	%r15d
	movb	%dil, %al
	.align	16, 0x90
.LBB2_143:                              #   in Loop: Header=BB2_126 Depth=2
	testb	%dil, %dil
	je	.LBB2_126
# BB#144:                               #   in Loop: Header=BB2_57 Depth=1
	vmovaps	%xmm9, %xmm1
	vmovaps	%xmm10, %xmm0
	testb	%al, %al
	je	.LBB2_146
# BB#145:                               #   in Loop: Header=BB2_57 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
.LBB2_146:                              #   in Loop: Header=BB2_57 Depth=1
	vmovq	20(%r13), %xmm2
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	28(%r13), %xmm0, %xmm0
	vmulps	%xmm6, %xmm14, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm5, %xmm7, %xmm3
	vaddss	%xmm2, %xmm3, %xmm2
	vmaxss	%xmm4, %xmm2, %xmm2
	vpshufd	$0, %xmm2, %xmm3        # xmm3 = xmm2[0,0,0,0]
	vmulps	%xmm1, %xmm3, %xmm1
	vmulss	%xmm0, %xmm2, %xmm0
	movq	(%r12), %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	(%rax,%rdx,8), %rax
	vmovq	32(%rax), %xmm2
	vmulps	%xmm1, %xmm2, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vmulss	40(%rax), %xmm0, %xmm0
	vmovdqa	-192(%rbp), %xmm3       # 16-byte Reload
	vaddss	%xmm1, %xmm3, %xmm1
	vpshufd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vinsertps	$16, %xmm2, %xmm1, %xmm15 # xmm15 = xmm1[0],xmm2[0],xmm1[2,3]
	vmovss	-168(%rbp), %xmm2       # 4-byte Reload
	vaddss	%xmm0, %xmm2, %xmm2
.LBB2_147:                              #   in Loop: Header=BB2_57 Depth=1
	incl	%r14d
	xorl	%eax, %eax
.LBB2_148:                              #   in Loop: Header=BB2_57 Depth=1
	testb	%al, %al
	je	.LBB2_57
.LBB2_149:
	vmovss	%xmm13, -244(%rbp)      # 4-byte Spill
	vmovaps	%xmm8, -240(%rbp)       # 16-byte Spill
	movq	%rcx, %r14
	movl	-224(%rbp), %eax        # 4-byte Reload
	xorb	$1, %al
	jne	.LBB2_150
# BB#60:
	vmovq	(%rsi), %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	8(%rsi), %xmm7, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vaddss	.LCPI2_8(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI2_9(%rip), %xmm1
	movq	%rsi, %rbx
	vmovaps	%xmm14, -128(%rbp)      # 16-byte Spill
	vmovss	%xmm7, -148(%rbp)       # 4-byte Spill
	callq	pow
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	movq	%rbx, %rcx
	vmovsd	%xmm0, -168(%rbp)       # 8-byte Spill
	vmulps	.LCPI2_2(%rip), %xmm6, %xmm0
	vaddss	%xmm7, %xmm7, %xmm1
	vmovq	(%rcx), %xmm2
	vmulps	%xmm2, %xmm6, %xmm3
	vpshufd	$1, %xmm3, %xmm4        # xmm4 = xmm3[1,0,0,0]
	vaddss	%xmm4, %xmm3, %xmm3
	vmovss	8(%rcx), %xmm4
	vmulss	%xmm4, %xmm7, %xmm5
	vaddss	%xmm3, %xmm5, %xmm3
	vpshufd	$0, %xmm3, %xmm5        # xmm5 = xmm3[0,0,0,0]
	vmulps	%xmm5, %xmm0, %xmm0
	vmulss	%xmm3, %xmm1, %xmm1
	vsubps	%xmm0, %xmm2, %xmm0
	vsubss	%xmm1, %xmm4, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	vmovq	-56(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_66
# BB#61:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm2
	vucomisd	%xmm2, %xmm2
	jnp	.LBB2_62
# BB#67:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_69
# BB#68:
	xorl	%eax, %eax
	jmp	.LBB2_63
.LBB2_62:
	movb	$1, %al
                                        # implicit-def: XMM0
	jmp	.LBB2_63
.LBB2_69:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_71
# BB#70:
	xorl	%eax, %eax
	jmp	.LBB2_63
.LBB2_71:                               # %call.sqrt374
	vmovsd	%xmm2, -192(%rbp)       # 8-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_73
# BB#72:
	xorl	%eax, %eax
	vmovsd	-192(%rbp), %xmm2       # 8-byte Reload
	jmp	.LBB2_63
.LBB2_73:                               # %call.sqrt386
	movq	%rcx, %rbx
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_74
# BB#75:                                # %call.sqrt394
	vmovaps	%xmm1, %xmm0
	callq	sqrt
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
.LBB2_74:
	xorl	%eax, %eax
	movq	%rbx, %rcx
	vmovsd	-192(%rbp), %xmm2       # 8-byte Reload
.LBB2_63:
	testb	%al, %al
	jne	.LBB2_65
# BB#64:
	vmovaps	%xmm0, %xmm2
.LBB2_65:
	vmovsd	.LCPI2_3(%rip), %xmm0
	vdivsd	%xmm2, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovq	-56(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, -56(%rbp)
	vmulss	-48(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
.LBB2_66:
	vmovss	%xmm7, -148(%rbp)       # 4-byte Spill
	vmovaps	%xmm6, -128(%rbp)       # 16-byte Spill
	movq	%rcx, %rbx
	vmulps	.LCPI2_6(%rip), %xmm6, %xmm1
	vmovaps	%xmm1, -192(%rbp)       # 16-byte Spill
	vmulss	.LCPI2_7(%rip), %xmm7, %xmm2
	vmovss	%xmm2, -200(%rbp)       # 4-byte Spill
	vmovaps	-240(%rbp), %xmm0       # 16-byte Reload
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-244(%rbp), %xmm1       # 4-byte Reload
	vaddss	%xmm2, %xmm1, %xmm1
	vmovq	%xmm0, -72(%rbp)
	vmovss	%xmm1, -64(%rbp)
	movl	(%r14), %eax
	incl	%eax
	movl	%eax, -76(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-76(%rbp), %rcx
	movq	%r12, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm0, %xmm3
	vmovaps	%xmm1, %xmm4
	vmovss	44(%r13), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	.LCPI2_15, %xmm1
	vxorps	%xmm5, %xmm5, %xmm5
	jne	.LBB2_76
	jnp	.LBB2_90
	jmp	.LBB2_76
.LBB2_76:
	vmovss	%xmm4, -252(%rbp)       # 4-byte Spill
	vmovaps	%xmm3, -224(%rbp)       # 16-byte Spill
	movl	-248(%rbp), %eax        # 4-byte Reload
	testb	%al, %al
	jne	.LBB2_77
# BB#78:
	vmovss	.LCPI2_13(%rip), %xmm0
	jmp	.LBB2_79
.LBB2_77:
	vmovss	.LCPI2_12(%rip), %xmm0
.LBB2_79:
	movq	%r14, %rcx
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	vmovq	(%rbx), %xmm1
	vmulps	%xmm1, %xmm6, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmovss	8(%rbx), %xmm3
	vmulss	%xmm3, %xmm7, %xmm4
	vaddss	%xmm2, %xmm4, %xmm2
	vmulss	%xmm0, %xmm0, %xmm4
	vpshufd	$0, %xmm0, %xmm5        # xmm5 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm5, %xmm5
	vmulss	%xmm3, %xmm0, %xmm3
	vinsertps	$16, %xmm0, %xmm2, %xmm0 # xmm0 = xmm2[0],xmm0[0],xmm2[2,3]
	vinsertps	$16, %xmm2, %xmm2, %xmm1 # xmm1 = xmm2[0,0,2,3]
	vmulps	%xmm0, %xmm1, %xmm0
	vmovaps	.LCPI2_14(%rip), %xmm1
	vsubps	%xmm0, %xmm1, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vmulss	%xmm0, %xmm4, %xmm0
	vmovss	.LCPI2_8(%rip), %xmm2
	vsubss	%xmm0, %xmm2, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm2
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm4
	vucomisd	%xmm4, %xmm4
	jnp	.LBB2_80
# BB#100:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
	vmovss	-244(%rbp), %xmm9       # 4-byte Reload
	jp	.LBB2_102
# BB#101:
	xorl	%eax, %eax
	jmp	.LBB2_81
.LBB2_80:
	movb	$1, %al
                                        # implicit-def: XMM0
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
	vmovss	-244(%rbp), %xmm9       # 4-byte Reload
	jmp	.LBB2_81
.LBB2_102:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_104
# BB#103:
	xorl	%eax, %eax
	jmp	.LBB2_81
.LBB2_104:                              # %call.sqrt378
	vmovsd	%xmm4, -280(%rbp)       # 8-byte Spill
	vmovsd	%xmm2, -272(%rbp)       # 8-byte Spill
	vmovss	%xmm3, -248(%rbp)       # 4-byte Spill
	vmovaps	%xmm5, -144(%rbp)       # 16-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_105
# BB#106:                               # %call.sqrt388
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_105
# BB#107:                               # %call.sqrt396
	vmovaps	%xmm1, %xmm0
	movq	%rcx, %rbx
	callq	sqrt
	vmovss	-148(%rbp), %xmm7       # 4-byte Reload
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	vmovss	-244(%rbp), %xmm9       # 4-byte Reload
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
	movq	%rbx, %rcx
.LBB2_105:
	xorl	%eax, %eax
	vmovaps	-144(%rbp), %xmm5       # 16-byte Reload
	vmovss	-248(%rbp), %xmm3       # 4-byte Reload
	vmovsd	-272(%rbp), %xmm2       # 8-byte Reload
	vmovsd	-280(%rbp), %xmm4       # 8-byte Reload
.LBB2_81:
	testb	%al, %al
	jne	.LBB2_83
# BB#82:
	vmovaps	%xmm0, %xmm4
.LBB2_83:
	vsubsd	%xmm4, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm6, %xmm1
	vmulss	%xmm0, %xmm7, %xmm0
	vaddps	%xmm1, %xmm5, %xmm1
	vaddss	%xmm0, %xmm3, %xmm0
	vmovq	%xmm1, -88(%rbp)
	vmovss	%xmm0, -80(%rbp)
	vmovq	-88(%rbp), %xmm1
	vmulps	%xmm1, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_89
# BB#84:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm2
	vucomisd	%xmm2, %xmm2
	jnp	.LBB2_85
# BB#91:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_93
# BB#92:
	xorl	%eax, %eax
	jmp	.LBB2_86
.LBB2_85:
	movb	$1, %al
                                        # implicit-def: XMM0
	jmp	.LBB2_86
.LBB2_93:
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_95
# BB#94:
	xorl	%eax, %eax
	jmp	.LBB2_86
.LBB2_95:                               # %call.sqrt376
	vmovsd	%xmm2, -128(%rbp)       # 8-byte Spill
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.LBB2_97
# BB#96:
	xorl	%eax, %eax
	vmovsd	-128(%rbp), %xmm2       # 8-byte Reload
	jmp	.LBB2_86
.LBB2_97:                               # %call.sqrt387
	movq	%rcx, %rbx
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_98
# BB#99:                                # %call.sqrt395
	vmovaps	%xmm1, %xmm0
	callq	sqrt
	vmovss	-244(%rbp), %xmm9       # 4-byte Reload
	vmovaps	-240(%rbp), %xmm8       # 16-byte Reload
.LBB2_98:
	xorl	%eax, %eax
	movq	%rbx, %rcx
	vmovsd	-128(%rbp), %xmm2       # 8-byte Reload
.LBB2_86:
	testb	%al, %al
	jne	.LBB2_88
# BB#87:
	vmovaps	%xmm0, %xmm2
.LBB2_88:
	vmovsd	.LCPI2_3(%rip), %xmm0
	vdivsd	%xmm2, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovq	-88(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, -88(%rbp)
	vmulss	-80(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -80(%rbp)
.LBB2_89:
	vsubps	-192(%rbp), %xmm8, %xmm0 # 16-byte Folded Reload
	vsubss	-200(%rbp), %xmm9, %xmm1 # 4-byte Folded Reload
	vmovq	%xmm0, -104(%rbp)
	vmovss	%xmm1, -96(%rbp)
	movl	(%rcx), %eax
	incl	%eax
	movl	%eax, -108(%rbp)
	leaq	-104(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-108(%rbp), %rcx
	movq	%r12, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm1, %xmm5
	vmovaps	-224(%rbp), %xmm3       # 16-byte Reload
	vmovss	-252(%rbp), %xmm4       # 4-byte Reload
.LBB2_90:
	vmovsd	-168(%rbp), %xmm1       # 8-byte Reload
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmulss	.LCPI2_10(%rip), %xmm1, %xmm1
	vaddss	.LCPI2_11(%rip), %xmm1, %xmm1
	vpshufd	$0, %xmm1, %xmm2        # xmm2 = xmm1[0,0,0,0]
	vmulps	%xmm3, %xmm2, %xmm2
	vmulss	%xmm4, %xmm1, %xmm3
	vmovss	.LCPI2_8(%rip), %xmm4
	vsubss	%xmm1, %xmm4, %xmm1
	vpshufd	$0, %xmm1, %xmm4        # xmm4 = xmm1[0,0,0,0]
	vmulps	%xmm0, %xmm4, %xmm0
	vmulss	%xmm5, %xmm1, %xmm1
	vmovss	44(%r13), %xmm4
	vpshufd	$0, %xmm4, %xmm5        # xmm5 = xmm4[0,0,0,0]
	vmulps	%xmm0, %xmm5, %xmm0
	vmulss	%xmm1, %xmm4, %xmm1
	vaddps	%xmm0, %xmm2, %xmm0
	vaddss	%xmm1, %xmm3, %xmm1
	vmovq	20(%r13), %xmm2
	vmulps	%xmm0, %xmm2, %xmm15
	vmulss	28(%r13), %xmm1, %xmm2
.LBB2_150:
	vmovq	32(%r13), %xmm0
	vaddps	%xmm0, %xmm15, %xmm0
	vaddss	40(%r13), %xmm2, %xmm1
.LBB2_151:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp51:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp51-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.LBB3_6
# BB#1:
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:
	movq	-8(%rax), %rcx
	movq	%rcx, (%rax)
.LBB3_3:
	movq	8(%rbx), %rdi
	leaq	8(%rdi), %rax
	movq	%rax, 8(%rbx)
	movq	(%r13), %rbx
	leaq	-8(%rdi), %rdx
	subq	%r15, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB3_5
# BB#4:
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	%r15, %rsi
	callq	memmove
.LBB3_5:
	movq	%rbx, (%r15)
	jmp	.LBB3_18
.LBB3_6:
	movl	$1, %esi
	movl	$__unnamed_2, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, %rcx
	movq	%r15, %r14
	subq	(%rbx), %r14
	xorl	%r12d, %r12d
	testq	%rcx, %rcx
	je	.LBB3_9
# BB#7:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB3_19
# BB#8:
	leaq	(,%rcx,8), %rdi
	movq	%rcx, %r12
	callq	_Znwm
	movq	%r12, %rcx
	movq	%rax, %r12
.LBB3_9:
	sarq	$3, %r14
	shlq	$3, %r14
	addq	%r12, %r14
	je	.LBB3_11
# BB#10:
	movq	(%r13), %rax
	movq	%rax, (%r14)
.LBB3_11:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	(%rbx), %rsi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB3_13
# BB#12:
	movq	%r12, %rdi
	callq	memmove
.LBB3_13:
	leaq	8(%r12,%r14,8), %r13
	movq	8(%rbx), %rdx
	subq	%r15, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB3_15
# BB#14:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memmove
.LBB3_15:
	leaq	(%r13,%r14,8), %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_17
# BB#16:
	callq	_ZdlPv
.LBB3_17:
	movq	%r12, (%rbx)
	movq	%r14, 8(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%rbx)
.LBB3_18:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB3_19:
	callq	_ZSt17__throw_bad_allocv
.Ltmp63:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp63-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	subq	%rax, %rcx
	cmpq	%rsi, %rcx
	jb	.LBB4_7
# BB#1:
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	cmpq	%rsi, %rax
	cmovaeq	%rax, %rsi
	addq	%rax, %rsi
	cmpq	%rax, %rsi
	jb	.LBB4_2
# BB#3:
	movq	%rsi, %rax
	shrq	$61, %rax
	setne	%cl
	xorl	%eax, %eax
	jmp	.LBB4_4
.LBB4_2:
	movb	$1, %al
                                        # implicit-def: RSI
                                        # implicit-def: CL
.LBB4_4:
	movb	%al, %dl
	xorb	$1, %dl
	andb	%cl, %dl
	orb	%al, %dl
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	jne	.LBB4_6
# BB#5:
	movq	%rsi, %rax
.LBB4_6:
	popq	%rbp
	ret
.LBB4_7:
	movq	%rdx, %rdi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp69:
	.size	_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc, .Ltmp69-_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__unnamed_3,@function
__unnamed_3:                            # @3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movl	$__unnamed_4, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$__unnamed_4, %esi
	movl	$__dso_handle, %edx
	popq	%rbp
	jmp	__cxa_atexit            # TAILCALL
.Ltmp75:
	.size	__unnamed_3, .Ltmp75-__unnamed_3
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

	.type	__unnamed_1,@object     # @1
	.section	.rodata.str1.1,"aMS",@progbits,1
__unnamed_1:
	.asciz	"ERROR: WRONG ANSWER\n"
	.size	__unnamed_1, 21

	.type	__unnamed_2,@object     # @2
__unnamed_2:
	.asciz	"vector::_M_insert_aux"
	.size	__unnamed_2, 22

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	__unnamed_3

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
