	.text
	.file	"tsp_ga.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4652007308841189376     # double 1000
.LCPI0_1:
	.quad	4746794007244308480     # double 2147483647
.LCPI0_2:
	.quad	4647503709213818880     # double 500
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_4:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.text
	.globl	_ZN3TSPC2Edd
	.p2align	4, 0x90
	.type	_ZN3TSPC2Edd,@function
_ZN3TSPC2Edd:                           # @_ZN3TSPC2Edd
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movsd	%xmm0, (%r14)
	movsd	%xmm1, 8(%r14)
	movl	$2400, %edi             # imm = 0x960
	callq	_Znam
	movq	%rax, 344(%r14)
	movl	$2400, %edi             # imm = 0x960
	callq	_Znam
	movq	%rax, 352(%r14)
	movl	$17, %edi
	callq	srand
	movq	$-160, %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	movsd	%xmm0, 176(%r14,%rbx)
	callq	rand
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 336(%r14,%rbx)
	addq	$8, %rbx
	jne	.LBB0_1
# BB#2:
	movdqa	.LCPI0_3(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI0_4(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB0_3:                                # %._crit_edge3.i.i1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	344(%r14), %rax
	leaq	(%r15,%r15,4), %rcx
	shlq	$4, %rcx
	leaq	(%rax,%rcx), %r12
	movl	$0, (%rax,%rcx)
	movl	$1, 4(%rax,%rcx)
	movl	$2, 8(%rax,%rcx)
	movl	$3, 12(%rax,%rcx)
	movl	$4, 16(%rax,%rcx)
	movl	$5, 20(%rax,%rcx)
	movl	$6, 24(%rax,%rcx)
	movl	$7, 28(%rax,%rcx)
	movl	$8, 32(%rax,%rcx)
	movl	$9, 36(%rax,%rcx)
	movl	$10, 40(%rax,%rcx)
	movl	$11, 44(%rax,%rcx)
	movl	$12, 48(%rax,%rcx)
	movl	$13, 52(%rax,%rcx)
	movl	$14, 56(%rax,%rcx)
	movl	$15, 60(%rax,%rcx)
	movl	$16, 64(%rax,%rcx)
	movl	$17, 68(%rax,%rcx)
	movl	$18, 72(%rax,%rcx)
	movl	$19, 76(%rax,%rcx)
	movl	$19, %ebx
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%rbx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	callq	rand
	movapd	.LCPI0_4(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-48(%rbp), %xmm0        # 16-byte Folded Reload
	divsd	%xmm1, %xmm0
	movdqa	.LCPI0_3(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	cvttsd2si	%xmm0, %eax
	movl	(%r12,%rbx,4), %ecx
	cltq
	movl	(%r12,%rax,4), %edx
	movl	%edx, (%r12,%rbx,4)
	movl	%ecx, (%r12,%rax,4)
	decq	%rbx
	jne	.LBB0_4
# BB#5:                                 # %_ZN3TSP13setRandomPathEPi.exit.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%r15
	cmpq	$30, %r15
	jne	.LBB0_3
# BB#6:                                 # %_ZN3TSP16randomPopulationEv.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_ZN3TSPC2Edd, .Lfunc_end0-_ZN3TSPC2Edd
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	_ZN3TSP15randomInclusiveEd
	.p2align	4, 0x90
	.type	_ZN3TSP15randomInclusiveEd,@function
_ZN3TSP15randomInclusiveEd:             # @_ZN3TSP15randomInclusiveEd
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	rand
	cvtsi2sdl	%eax, %xmm1
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_ZN3TSP15randomInclusiveEd, .Lfunc_end1-_ZN3TSP15randomInclusiveEd
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_2:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	_ZN3TSP16randomPopulationEv
	.p2align	4, 0x90
	.type	_ZN3TSP16randomPopulationEv,@function
_ZN3TSP16randomPopulationEv:            # @_ZN3TSP16randomPopulationEv
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp13:
	.cfi_offset %rbx, -48
.Ltmp14:
	.cfi_offset %r12, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movdqa	.LCPI2_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	movapd	.LCPI2_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB2_1:                                # %._crit_edge3.i1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	movq	344(%r14), %rax
	leaq	(%r15,%r15,4), %rcx
	shlq	$4, %rcx
	leaq	(%rax,%rcx), %r12
	movl	$0, (%rax,%rcx)
	movl	$1, 4(%rax,%rcx)
	movl	$2, 8(%rax,%rcx)
	movl	$3, 12(%rax,%rcx)
	movl	$4, 16(%rax,%rcx)
	movl	$5, 20(%rax,%rcx)
	movl	$6, 24(%rax,%rcx)
	movl	$7, 28(%rax,%rcx)
	movl	$8, 32(%rax,%rcx)
	movl	$9, 36(%rax,%rcx)
	movl	$10, 40(%rax,%rcx)
	movl	$11, 44(%rax,%rcx)
	movl	$12, 48(%rax,%rcx)
	movl	$13, 52(%rax,%rcx)
	movl	$14, 56(%rax,%rcx)
	movl	$15, 60(%rax,%rcx)
	movl	$16, 64(%rax,%rcx)
	movl	$17, 68(%rax,%rcx)
	movl	$18, 72(%rax,%rcx)
	movl	$19, 76(%rax,%rcx)
	movl	$19, %ebx
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%rbx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	callq	rand
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	movapd	.LCPI2_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	movdqa	.LCPI2_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-48(%rbp), %xmm0        # 16-byte Folded Reload
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	(%r12,%rbx,4), %ecx
	cltq
	movl	(%r12,%rax,4), %edx
	movl	%edx, (%r12,%rbx,4)
	movl	%ecx, (%r12,%rax,4)
	decq	%rbx
	jne	.LBB2_2
# BB#3:                                 # %_ZN3TSP13setRandomPathEPi.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	incq	%r15
	cmpq	$30, %r15
	jne	.LBB2_1
# BB#4:                                 # %._crit_edge
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZN3TSP16randomPopulationEv, .Lfunc_end2-_ZN3TSP16randomPopulationEv
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI3_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_2:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	_ZN3TSP13setRandomPathEPi
	.p2align	4, 0x90
	.type	_ZN3TSP13setRandomPathEPi,@function
_ZN3TSP13setRandomPathEPi:              # @_ZN3TSP13setRandomPathEPi
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, (%r14)
	movabsq	$12884901890, %rax      # imm = 0x300000002
	movq	%rax, 8(%r14)
	movabsq	$21474836484, %rax      # imm = 0x500000004
	movq	%rax, 16(%r14)
	movabsq	$30064771078, %rax      # imm = 0x700000006
	movq	%rax, 24(%r14)
	movabsq	$38654705672, %rax      # imm = 0x900000008
	movq	%rax, 32(%r14)
	movabsq	$47244640266, %rax      # imm = 0xB0000000A
	movq	%rax, 40(%r14)
	movabsq	$55834574860, %rax      # imm = 0xD0000000C
	movq	%rax, 48(%r14)
	movabsq	$64424509454, %rax      # imm = 0xF0000000E
	movq	%rax, 56(%r14)
	movabsq	$73014444048, %rax      # imm = 0x1100000010
	movq	%rax, 64(%r14)
	movabsq	$81604378642, %rax      # imm = 0x1300000012
	movq	%rax, 72(%r14)
	movl	$19, %ebx
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movd	%rbx, %xmm0
	punpckldq	.LCPI3_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI3_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -32(%rbp)        # 16-byte Spill
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-32(%rbp), %xmm0        # 16-byte Folded Reload
	divsd	.LCPI3_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	(%r14,%rbx,4), %ecx
	cltq
	movl	(%r14,%rax,4), %edx
	movl	%edx, (%r14,%rbx,4)
	movl	%ecx, (%r14,%rax,4)
	decq	%rbx
	jne	.LBB3_1
# BB#2:                                 # %._crit_edge
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZN3TSP13setRandomPathEPi, .Lfunc_end3-_ZN3TSP13setRandomPathEPi
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_ZNK3TSP14getBestFitnessEv
	.p2align	4, 0x90
	.type	_ZNK3TSP14getBestFitnessEv,@function
_ZNK3TSP14getBestFitnessEv:             # @_ZNK3TSP14getBestFitnessEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	336(%r15), %r14
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-4(%r14,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB4_3
# BB#2:                                 # %call.sqrt
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB4_3:                                # %.split
                                        #   in Loop: Header=BB4_1 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB4_1
# BB#4:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
	movslq	76(%r14), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB4_6
# BB#5:                                 # %call.sqrt3
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB4_6:                                # %_ZNK3TSP13totalDistanceEPKi.exit.split
	addsd	%xmm1, %xmm2
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZNK3TSP14getBestFitnessEv, .Lfunc_end4-_ZNK3TSP14getBestFitnessEv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_ZNK3TSP15evaluateFitnessEPKi
	.p2align	4, 0x90
	.type	_ZNK3TSP15evaluateFitnessEPKi,@function
_ZNK3TSP15evaluateFitnessEPKi:          # @_ZNK3TSP15evaluateFitnessEPKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-4(%r14,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB5_3
# BB#2:                                 # %call.sqrt
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB5_3:                                # %.split
                                        #   in Loop: Header=BB5_1 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB5_1
# BB#4:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
	movslq	76(%r14), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB5_6
# BB#5:                                 # %call.sqrt3
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB5_6:                                # %_ZNK3TSP13totalDistanceEPKi.exit.split
	addsd	%xmm1, %xmm2
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_ZNK3TSP15evaluateFitnessEPKi, .Lfunc_end5-_ZNK3TSP15evaluateFitnessEPKi
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI6_0:
	.quad	4629137466983448576     # double 30
	.text
	.globl	_ZNK3TSP18getAverageDistanceEv
	.p2align	4, 0x90
	.type	_ZNK3TSP18getAverageDistanceEv,@function
_ZNK3TSP18getAverageDistanceEv:         # @_ZNK3TSP18getAverageDistanceEv
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	xorpd	%xmm0, %xmm0
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	344(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	(%r14,%r14,4), %r12
	shlq	$4, %r12
	leaq	(%rax,%r12), %r13
	movl	$1, %r15d
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%r13,%r15,4), %rax
	movsd	16(%rbx,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r13,%r15,4), %rcx
	subsd	16(%rbx,%rcx,8), %xmm1
	movsd	176(%rbx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%rbx,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB6_4
# BB#3:                                 # %call.sqrt
                                        #   in Loop: Header=BB6_2 Depth=2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB6_4:                                # %.split
                                        #   in Loop: Header=BB6_2 Depth=2
	addsd	%xmm1, %xmm2
	incq	%r15
	cmpq	$20, %r15
	jne	.LBB6_2
# BB#5:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movslq	76(%rax,%r12), %rax
	movsd	16(%rbx,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r13), %rcx
	subsd	16(%rbx,%rcx,8), %xmm1
	movsd	176(%rbx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%rbx,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB6_7
# BB#6:                                 # %call.sqrt4
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB6_7:                                # %_ZNK3TSP13totalDistanceEPKi.exit.split
                                        #   in Loop: Header=BB6_1 Depth=1
	addsd	%xmm1, %xmm2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	incq	%r14
	cmpq	$30, %r14
	jne	.LBB6_1
# BB#8:                                 # %._crit_edge
	divsd	.LCPI6_0(%rip), %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZNK3TSP18getAverageDistanceEv, .Lfunc_end6-_ZNK3TSP18getAverageDistanceEv
	.cfi_endproc

	.globl	_ZNK3TSP13totalDistanceEPKi
	.p2align	4, 0x90
	.type	_ZNK3TSP13totalDistanceEPKi,@function
_ZNK3TSP13totalDistanceEPKi:            # @_ZNK3TSP13totalDistanceEPKi
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-4(%r14,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB7_3
# BB#2:                                 # %call.sqrt
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB7_3:                                # %.split
                                        #   in Loop: Header=BB7_1 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB7_1
# BB#4:                                 # %._crit_edge
	movslq	76(%r14), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB7_6
# BB#5:                                 # %call.sqrt3
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB7_6:                                # %._crit_edge.split
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZNK3TSP13totalDistanceEPKi, .Lfunc_end7-_ZNK3TSP13totalDistanceEPKi
	.cfi_endproc

	.globl	_ZNK3TSP17getBestPathStringEv
	.p2align	4, 0x90
	.type	_ZNK3TSP17getBestPathStringEv,@function
_ZNK3TSP17getBestPathStringEv:          # @_ZNK3TSP17getBestPathStringEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:                                 # %.lr.ph
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
	pushq	%r12
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp62:
	.cfi_offset %rbx, -48
.Ltmp63:
	.cfi_offset %r12, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	-400(%rbp), %rdi
	movl	$24, %esi
	callq	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
	leaq	-384(%rbp), %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB8_3
# BB#2:                                 #   in Loop: Header=BB8_1 Depth=1
.Ltmp48:
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp49:
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	movq	336(%r12), %rax
	movl	(%rax,%rbx,4), %esi
.Ltmp50:
	movq	%r15, %rdi
	callq	_ZNSolsEi
.Ltmp51:
# BB#4:                                 #   in Loop: Header=BB8_1 Depth=1
	incq	%rbx
	cmpq	$20, %rbx
	jb	.LBB8_1
# BB#5:                                 # %._crit_edge
.Ltmp53:
	leaq	-400(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNKSt18basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv
.Ltmp54:
# BB#6:
	leaq	-400(%rbp), %rdi
	callq	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%r14, %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_7:                                # %.loopexit
.Ltmp52:
.LBB8_9:
	movq	%rax, %rbx
.Ltmp56:
	leaq	-400(%rbp), %rdi
	callq	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.Ltmp57:
# BB#10:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB8_8:                                # %.loopexit.split-lp
.Ltmp55:
	jmp	.LBB8_9
.LBB8_11:
.Ltmp58:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end8:
	.size	_ZNK3TSP17getBestPathStringEv, .Lfunc_end8-_ZNK3TSP17getBestPathStringEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp48-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp48
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp48-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp51-.Ltmp48         #   Call between .Ltmp48 and .Ltmp51
	.long	.Ltmp52-.Lfunc_begin0   #     jumps to .Ltmp52
	.byte	0                       #   On action: cleanup
	.long	.Ltmp53-.Lfunc_begin0   # >> Call Site 3 <<
	.long	.Ltmp54-.Ltmp53         #   Call between .Ltmp53 and .Ltmp54
	.long	.Ltmp55-.Lfunc_begin0   #     jumps to .Ltmp55
	.byte	0                       #   On action: cleanup
	.long	.Ltmp54-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Ltmp56-.Ltmp54         #   Call between .Ltmp54 and .Ltmp56
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp56-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp57-.Ltmp56         #   Call between .Ltmp56 and .Ltmp57
	.long	.Ltmp58-.Lfunc_begin0   #     jumps to .Ltmp58
	.byte	1                       #   On action: 1
	.long	.Ltmp57-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Lfunc_end8-.Ltmp57     #   Call between .Ltmp57 and .Lfunc_end8
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2

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
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate

	.text
	.globl	_ZNK3TSP22getLowestTotalDistanceEv
	.p2align	4, 0x90
	.type	_ZNK3TSP22getLowestTotalDistanceEv,@function
_ZNK3TSP22getLowestTotalDistanceEv:     # @_ZNK3TSP22getLowestTotalDistanceEv
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	336(%r15), %r14
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movslq	-4(%r14,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB10_3
# BB#2:                                 # %call.sqrt
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB10_3:                               # %.split
                                        #   in Loop: Header=BB10_1 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB10_1
# BB#4:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
	movslq	76(%r14), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB10_6
# BB#5:                                 # %call.sqrt3
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB10_6:                               # %_ZNK3TSP13totalDistanceEPKi.exit.split
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZNK3TSP22getLowestTotalDistanceEv, .Lfunc_end10-_ZNK3TSP22getLowestTotalDistanceEv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	_ZN3TSP14nextPopulationEv
	.p2align	4, 0x90
	.type	_ZN3TSP14nextPopulationEv,@function
_ZN3TSP14nextPopulationEv:              # @_ZN3TSP14nextPopulationEv
	.cfi_startproc
# BB#0:                                 # %.lr.ph8
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_2 Depth 2
	movq	344(%r15), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	leaq	(%r14,%r14,4), %r12
	shlq	$4, %r12
	leaq	(%rax,%r12), %rbx
	xorpd	%xmm2, %xmm2
	movl	$1, %r13d
	.p2align	4, 0x90
.LBB11_2:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbx,%r13,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%rbx,%r13,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB11_4
# BB#3:                                 # %call.sqrt
                                        #   in Loop: Header=BB11_2 Depth=2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB11_4:                               # %.split
                                        #   in Loop: Header=BB11_2 Depth=2
	addsd	%xmm1, %xmm2
	incq	%r13
	cmpq	$20, %r13
	jne	.LBB11_2
# BB#5:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movslq	76(%rax,%r12), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%rbx), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB11_7
# BB#6:                                 # %call.sqrt105
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB11_7:                               # %_ZNK3TSP13totalDistanceEPKi.exit.split
                                        #   in Loop: Header=BB11_1 Depth=1
	addsd	%xmm1, %xmm2
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -288(%rbp,%r14,8)
	incq	%r14
	cmpq	$30, %r14
	jne	.LBB11_1
# BB#8:
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-288(%rbp), %xmm0
	jbe	.LBB11_9
# BB#10:
	leaq	-280(%rbp), %rax
	jmp	.LBB11_11
.LBB11_9:
	leaq	-288(%rbp), %rax
.LBB11_11:
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_13
# BB#12:
	leaq	-272(%rbp), %rax
.LBB11_13:
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_15
# BB#14:
	leaq	-264(%rbp), %rax
.LBB11_15:
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_17
# BB#16:
	leaq	-256(%rbp), %rax
.LBB11_17:
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_19
# BB#18:
	leaq	-248(%rbp), %rax
.LBB11_19:
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_21
# BB#20:
	leaq	-240(%rbp), %rax
.LBB11_21:
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_23
# BB#22:
	leaq	-232(%rbp), %rax
.LBB11_23:
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_25
# BB#24:
	leaq	-224(%rbp), %rax
.LBB11_25:
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_27
# BB#26:
	leaq	-216(%rbp), %rax
.LBB11_27:
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_29
# BB#28:
	leaq	-208(%rbp), %rax
.LBB11_29:
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_31
# BB#30:
	leaq	-200(%rbp), %rax
.LBB11_31:
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_33
# BB#32:
	leaq	-192(%rbp), %rax
.LBB11_33:
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_35
# BB#34:
	leaq	-184(%rbp), %rax
.LBB11_35:
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_37
# BB#36:
	leaq	-176(%rbp), %rax
.LBB11_37:
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_39
# BB#38:
	leaq	-168(%rbp), %rax
.LBB11_39:
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_41
# BB#40:
	leaq	-160(%rbp), %rax
.LBB11_41:
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_43
# BB#42:
	leaq	-152(%rbp), %rax
.LBB11_43:
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_45
# BB#44:
	leaq	-144(%rbp), %rax
.LBB11_45:
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_47
# BB#46:
	leaq	-136(%rbp), %rax
.LBB11_47:
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_49
# BB#48:
	leaq	-128(%rbp), %rax
.LBB11_49:
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_51
# BB#50:
	leaq	-120(%rbp), %rax
.LBB11_51:
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_53
# BB#52:
	leaq	-112(%rbp), %rax
.LBB11_53:
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_55
# BB#54:
	leaq	-104(%rbp), %rax
.LBB11_55:
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_57
# BB#56:
	leaq	-96(%rbp), %rax
.LBB11_57:
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_59
# BB#58:
	leaq	-88(%rbp), %rax
.LBB11_59:
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_61
# BB#60:
	leaq	-80(%rbp), %rax
.LBB11_61:
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_63
# BB#62:
	leaq	-72(%rbp), %rax
.LBB11_63:
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_65
# BB#64:
	leaq	-64(%rbp), %rax
.LBB11_65:
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_66
# BB#166:
	leaq	-56(%rbp), %rax
.LBB11_66:                              # %.lr.ph5
	leaq	-288(%rbp), %rcx
	subq	%rcx, %rax
	shrq	$3, %rax
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$4, %rax
	movq	344(%r15), %rcx
	addq	%rax, %rcx
	movq	%rcx, 336(%r15)
	xorl	%esi, %esi
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB11_67:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	je	.LBB11_70
# BB#68:                                #   in Loop: Header=BB11_67 Depth=1
	movsd	-288(%rbp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_70
# BB#69:                                #   in Loop: Header=BB11_67 Depth=1
	movapd	%xmm1, %xmm0
	movl	%esi, %ecx
.LBB11_70:                              #   in Loop: Header=BB11_67 Depth=1
	leaq	1(%rsi), %rdi
	cmpq	%rdx, %rdi
	je	.LBB11_73
# BB#71:                                #   in Loop: Header=BB11_67 Depth=1
	movsd	-280(%rbp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_73
# BB#72:                                #   in Loop: Header=BB11_67 Depth=1
	leal	1(%rsi), %ecx
	movapd	%xmm1, %xmm0
.LBB11_73:                              #   in Loop: Header=BB11_67 Depth=1
	incq	%rdi
	cmpq	%rdx, %rdi
	je	.LBB11_76
# BB#74:                                #   in Loop: Header=BB11_67 Depth=1
	movsd	-272(%rbp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_76
# BB#75:                                #   in Loop: Header=BB11_67 Depth=1
	addl	$2, %esi
	movapd	%xmm1, %xmm0
	movl	%esi, %ecx
.LBB11_76:                              #   in Loop: Header=BB11_67 Depth=1
	incq	%rdi
	cmpq	$30, %rdi
	movq	%rdi, %rsi
	jne	.LBB11_67
# BB#77:                                # %_ZN3TSP19copyToNewPopulationEPKim.exit2068
	movq	344(%r15), %rdx
	movq	352(%r15), %rsi
	movl	(%rdx,%rax), %edi
	movl	%edi, (%rsi)
	movl	4(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 4(%rdi)
	movl	8(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 8(%rdi)
	movl	12(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 12(%rdi)
	movl	16(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 16(%rdi)
	movl	20(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 20(%rdi)
	movl	24(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 24(%rdi)
	movl	28(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 28(%rdi)
	movl	32(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 32(%rdi)
	movl	36(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 36(%rdi)
	movl	40(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 40(%rdi)
	movl	44(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 44(%rdi)
	movl	48(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 48(%rdi)
	movl	52(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 52(%rdi)
	movl	56(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 56(%rdi)
	movl	60(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 60(%rdi)
	movl	64(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 64(%rdi)
	movl	68(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 68(%rdi)
	movl	72(%rdx,%rax), %esi
	movq	352(%r15), %rdi
	movl	%esi, 72(%rdi)
	movl	76(%rdx,%rax), %eax
	movq	352(%r15), %rdx
	movl	%eax, 76(%rdx)
	movslq	%ecx, %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	movq	344(%r15), %rcx
	movq	352(%r15), %rdx
	movl	(%rcx,%rax), %esi
	movl	%esi, 80(%rdx)
	movl	4(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 84(%rsi)
	movl	8(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 88(%rsi)
	movl	12(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 92(%rsi)
	movl	16(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 96(%rsi)
	movl	20(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 100(%rsi)
	movl	24(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 104(%rsi)
	movl	28(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 108(%rsi)
	movl	32(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 112(%rsi)
	movl	36(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 116(%rsi)
	movl	40(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 120(%rsi)
	movl	44(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 124(%rsi)
	movl	48(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 128(%rsi)
	movl	52(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 132(%rsi)
	movl	56(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 136(%rsi)
	movl	60(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 140(%rsi)
	movl	64(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 144(%rsi)
	movl	68(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 148(%rsi)
	movl	72(%rcx,%rax), %edx
	movq	352(%r15), %rsi
	movl	%edx, 152(%rsi)
	movl	76(%rcx,%rax), %eax
	movq	352(%r15), %rcx
	movl	%eax, 156(%rcx)
	movl	$2, %r14d
	leaq	-448(%rbp), %rbx
	movl	$160, %r13d
	.p2align	4, 0x90
.LBB11_78:                              # %._crit_edge3.i61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_79 Depth 2
                                        #     Child Loop BB11_84 Depth 2
                                        #     Child Loop BB11_88 Depth 2
                                        #       Child Loop BB11_90 Depth 3
                                        #     Child Loop BB11_95 Depth 2
                                        #     Child Loop BB11_103 Depth 2
	xorpd	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	-280(%rbp), %xmm1
	addsd	-272(%rbp), %xmm1
	addsd	-264(%rbp), %xmm1
	addsd	-256(%rbp), %xmm1
	addsd	-248(%rbp), %xmm1
	addsd	-240(%rbp), %xmm1
	addsd	-232(%rbp), %xmm1
	addsd	-224(%rbp), %xmm1
	addsd	-216(%rbp), %xmm1
	addsd	-208(%rbp), %xmm1
	addsd	-200(%rbp), %xmm1
	addsd	-192(%rbp), %xmm1
	addsd	-184(%rbp), %xmm1
	addsd	-176(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	addsd	-160(%rbp), %xmm1
	addsd	-152(%rbp), %xmm1
	addsd	-144(%rbp), %xmm1
	addsd	-136(%rbp), %xmm1
	addsd	-128(%rbp), %xmm1
	addsd	-120(%rbp), %xmm1
	addsd	-112(%rbp), %xmm1
	addsd	-104(%rbp), %xmm1
	addsd	-96(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	addsd	-72(%rbp), %xmm1
	addsd	-64(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	rand
	xorpd	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm0
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	divsd	.LCPI11_1(%rip), %xmm0
	movl	$2, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_79:                              #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	-304(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_83
# BB#80:                                #   in Loop: Header=BB11_79 Depth=2
	addsd	-296(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_81
# BB#111:                               #   in Loop: Header=BB11_79 Depth=2
	addsd	-288(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_112
# BB#113:                               #   in Loop: Header=BB11_79 Depth=2
	addsd	-280(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_114
# BB#115:                               #   in Loop: Header=BB11_79 Depth=2
	addsd	-272(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_82
# BB#116:                               #   in Loop: Header=BB11_79 Depth=2
	addq	$5, %rax
	leaq	5(%rcx), %rdx
	addq	$3, %rcx
	cmpq	$30, %rcx
	movq	%rdx, %rcx
	jb	.LBB11_79
	jmp	.LBB11_117
	.p2align	4, 0x90
.LBB11_81:                              #   in Loop: Header=BB11_78 Depth=1
	incq	%rax
	jmp	.LBB11_83
.LBB11_112:                             #   in Loop: Header=BB11_78 Depth=1
	addq	$2, %rax
	jmp	.LBB11_83
.LBB11_114:                             #   in Loop: Header=BB11_78 Depth=1
	addq	$3, %rax
	jmp	.LBB11_83
.LBB11_82:                              # %.._crit_edge3.i3662_crit_edge
                                        #   in Loop: Header=BB11_78 Depth=1
	addq	$2, %rcx
	movq	%rcx, %rax
	.p2align	4, 0x90
.LBB11_83:                              # %._crit_edge3.i3662
                                        #   in Loop: Header=BB11_78 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	-280(%rbp), %xmm1
	addsd	-272(%rbp), %xmm1
	addsd	-264(%rbp), %xmm1
	addsd	-256(%rbp), %xmm1
	addsd	-248(%rbp), %xmm1
	addsd	-240(%rbp), %xmm1
	addsd	-232(%rbp), %xmm1
	addsd	-224(%rbp), %xmm1
	addsd	-216(%rbp), %xmm1
	addsd	-208(%rbp), %xmm1
	addsd	-200(%rbp), %xmm1
	addsd	-192(%rbp), %xmm1
	addsd	-184(%rbp), %xmm1
	addsd	-176(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	addsd	-160(%rbp), %xmm1
	addsd	-152(%rbp), %xmm1
	addsd	-144(%rbp), %xmm1
	addsd	-136(%rbp), %xmm1
	addsd	-128(%rbp), %xmm1
	addsd	-120(%rbp), %xmm1
	addsd	-112(%rbp), %xmm1
	addsd	-104(%rbp), %xmm1
	addsd	-96(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	addsd	-72(%rbp), %xmm1
	addsd	-64(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	leaq	(%rax,%rax,4), %r12
	shlq	$4, %r12
	addq	344(%r15), %r12
	callq	rand
	xorpd	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm0
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	divsd	.LCPI11_1(%rip), %xmm0
	movl	$2, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_84:                              #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	-304(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_88
# BB#85:                                #   in Loop: Header=BB11_84 Depth=2
	addsd	-296(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_86
# BB#118:                               #   in Loop: Header=BB11_84 Depth=2
	addsd	-288(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_119
# BB#120:                               #   in Loop: Header=BB11_84 Depth=2
	addsd	-280(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_121
# BB#122:                               #   in Loop: Header=BB11_84 Depth=2
	addsd	-272(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_87
# BB#123:                               #   in Loop: Header=BB11_84 Depth=2
	addq	$5, %rax
	leaq	5(%rcx), %rdx
	addq	$3, %rcx
	cmpq	$30, %rcx
	movq	%rdx, %rcx
	jb	.LBB11_84
	jmp	.LBB11_117
	.p2align	4, 0x90
.LBB11_86:                              #   in Loop: Header=BB11_78 Depth=1
	incq	%rax
	jmp	.LBB11_88
.LBB11_119:                             #   in Loop: Header=BB11_78 Depth=1
	addq	$2, %rax
	jmp	.LBB11_88
.LBB11_121:                             #   in Loop: Header=BB11_78 Depth=1
	addq	$3, %rax
	jmp	.LBB11_88
	.p2align	4, 0x90
.LBB11_87:                              # %._ZNK3TSP17rouletteSelectionEPKd.exit40_crit_edge
                                        #   in Loop: Header=BB11_78 Depth=1
	addq	$2, %rcx
	movq	%rcx, %rax
	jmp	.LBB11_88
.LBB11_92:                              #   in Loop: Header=BB11_88 Depth=2
	incq	%rax
	.p2align	4, 0x90
.LBB11_88:                              # %_ZNK3TSP17rouletteSelectionEPKd.exit40
                                        #   Parent Loop BB11_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_90 Depth 3
	leaq	(%rax,%rax,4), %rdx
	shlq	$4, %rdx
	addq	344(%r15), %rdx
	cmpq	%r12, %rdx
	jne	.LBB11_93
# BB#89:                                # %._crit_edge3.i4463
                                        #   in Loop: Header=BB11_88 Depth=2
	xorpd	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	-280(%rbp), %xmm1
	addsd	-272(%rbp), %xmm1
	addsd	-264(%rbp), %xmm1
	addsd	-256(%rbp), %xmm1
	addsd	-248(%rbp), %xmm1
	addsd	-240(%rbp), %xmm1
	addsd	-232(%rbp), %xmm1
	addsd	-224(%rbp), %xmm1
	addsd	-216(%rbp), %xmm1
	addsd	-208(%rbp), %xmm1
	addsd	-200(%rbp), %xmm1
	addsd	-192(%rbp), %xmm1
	addsd	-184(%rbp), %xmm1
	addsd	-176(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	addsd	-160(%rbp), %xmm1
	addsd	-152(%rbp), %xmm1
	addsd	-144(%rbp), %xmm1
	addsd	-136(%rbp), %xmm1
	addsd	-128(%rbp), %xmm1
	addsd	-120(%rbp), %xmm1
	addsd	-112(%rbp), %xmm1
	addsd	-104(%rbp), %xmm1
	addsd	-96(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	addsd	-72(%rbp), %xmm1
	addsd	-64(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	rand
	xorpd	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm0
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	divsd	.LCPI11_1(%rip), %xmm0
	movl	$2, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB11_90:                              #   Parent Loop BB11_78 Depth=1
                                        #     Parent Loop BB11_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addsd	-304(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_88
# BB#91:                                #   in Loop: Header=BB11_90 Depth=3
	addsd	-296(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_92
# BB#124:                               #   in Loop: Header=BB11_90 Depth=3
	addsd	-288(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_125
# BB#126:                               #   in Loop: Header=BB11_90 Depth=3
	addsd	-280(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_127
# BB#128:                               #   in Loop: Header=BB11_90 Depth=3
	addsd	-272(%rbp,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_87
# BB#129:                               #   in Loop: Header=BB11_90 Depth=3
	addq	$5, %rax
	leaq	5(%rcx), %rdx
	addq	$3, %rcx
	cmpq	$30, %rcx
	movq	%rdx, %rcx
	jb	.LBB11_90
	jmp	.LBB11_117
.LBB11_125:                             #   in Loop: Header=BB11_88 Depth=2
	addq	$2, %rax
	jmp	.LBB11_88
.LBB11_127:                             #   in Loop: Header=BB11_88 Depth=2
	addq	$3, %rax
	jmp	.LBB11_88
	.p2align	4, 0x90
.LBB11_93:                              # %._crit_edge3
                                        #   in Loop: Header=BB11_78 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	leaq	-368(%rbp), %r12
	movq	%r12, %r8
	callq	_ZN3TSP9crossoverEPKiS1_PiS2_
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZN3TSP6mutateEPi
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZN3TSP6mutateEPi
	testq	%r14, %r14
	je	.LBB11_99
# BB#94:                                # %.lr.ph1.i21
                                        #   in Loop: Header=BB11_78 Depth=1
	movq	352(%r15), %rax
	addq	$76, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB11_95:                              #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-448(%rbp), %edx
	cmpl	-76(%rax), %edx
	jne	.LBB11_97
# BB#96:                                #   in Loop: Header=BB11_95 Depth=2
	movl	-444(%rbp), %edx
	cmpl	-72(%rax), %edx
	jne	.LBB11_97
# BB#130:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-440(%rbp), %edx
	cmpl	-68(%rax), %edx
	jne	.LBB11_97
# BB#131:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-436(%rbp), %edx
	cmpl	-64(%rax), %edx
	jne	.LBB11_97
# BB#132:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-432(%rbp), %edx
	cmpl	-60(%rax), %edx
	jne	.LBB11_97
# BB#133:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-428(%rbp), %edx
	cmpl	-56(%rax), %edx
	jne	.LBB11_97
# BB#134:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-424(%rbp), %edx
	cmpl	-52(%rax), %edx
	jne	.LBB11_97
# BB#135:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-420(%rbp), %edx
	cmpl	-48(%rax), %edx
	jne	.LBB11_97
# BB#136:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-416(%rbp), %edx
	cmpl	-44(%rax), %edx
	jne	.LBB11_97
# BB#137:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-412(%rbp), %edx
	cmpl	-40(%rax), %edx
	jne	.LBB11_97
# BB#138:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-408(%rbp), %edx
	cmpl	-36(%rax), %edx
	jne	.LBB11_97
# BB#139:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-404(%rbp), %edx
	cmpl	-32(%rax), %edx
	jne	.LBB11_97
# BB#140:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-400(%rbp), %edx
	cmpl	-28(%rax), %edx
	jne	.LBB11_97
# BB#141:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-396(%rbp), %edx
	cmpl	-24(%rax), %edx
	jne	.LBB11_97
# BB#142:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-392(%rbp), %edx
	cmpl	-20(%rax), %edx
	jne	.LBB11_97
# BB#143:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-388(%rbp), %edx
	cmpl	-16(%rax), %edx
	jne	.LBB11_97
# BB#144:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-384(%rbp), %edx
	cmpl	-12(%rax), %edx
	jne	.LBB11_97
# BB#145:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-380(%rbp), %edx
	cmpl	-8(%rax), %edx
	jne	.LBB11_97
# BB#146:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-376(%rbp), %edx
	cmpl	-4(%rax), %edx
	jne	.LBB11_97
# BB#147:                               #   in Loop: Header=BB11_95 Depth=2
	movl	-372(%rbp), %edx
	cmpl	(%rax), %edx
	je	.LBB11_100
	.p2align	4, 0x90
.LBB11_97:                              #   in Loop: Header=BB11_95 Depth=2
	incq	%rcx
	addq	$80, %rax
	cmpq	%r14, %rcx
	jb	.LBB11_95
# BB#98:                                #   in Loop: Header=BB11_78 Depth=1
	cmpq	$30, %r14
	jae	.LBB11_167
.LBB11_99:                              # %_ZN3TSP19copyToNewPopulationEPKim.exit1665
                                        #   in Loop: Header=BB11_78 Depth=1
	movl	-448(%rbp), %ecx
	movq	352(%r15), %rdx
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-444(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 4(%rdx,%rax)
	movl	-440(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 8(%rdx,%rax)
	movl	-436(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 12(%rdx,%rax)
	movl	-432(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 16(%rdx,%rax)
	movl	-428(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 20(%rdx,%rax)
	movl	-424(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 24(%rdx,%rax)
	movl	-420(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 28(%rdx,%rax)
	movl	-416(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 32(%rdx,%rax)
	movl	-412(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 36(%rdx,%rax)
	movl	-408(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 40(%rdx,%rax)
	movl	-404(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 44(%rdx,%rax)
	movl	-400(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 48(%rdx,%rax)
	movl	-396(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 52(%rdx,%rax)
	movl	-392(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 56(%rdx,%rax)
	movl	-388(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 60(%rdx,%rax)
	movl	-384(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 64(%rdx,%rax)
	movl	-380(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 68(%rdx,%rax)
	movl	-376(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 72(%rdx,%rax)
	movl	-372(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 76(%rdx,%rax)
	incq	%r14
.LBB11_100:                             # %_ZN3TSP12hasDuplicateEPKim.exit29
                                        #   in Loop: Header=BB11_78 Depth=1
	cmpq	$30, %r14
	je	.LBB11_109
# BB#101:                               #   in Loop: Header=BB11_78 Depth=1
	testq	%r14, %r14
	je	.LBB11_107
# BB#102:                               # %.lr.ph1.i
                                        #   in Loop: Header=BB11_78 Depth=1
	movq	352(%r15), %rax
	addq	$76, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB11_103:                             #   Parent Loop BB11_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-368(%rbp), %edx
	cmpl	-76(%rax), %edx
	jne	.LBB11_105
# BB#104:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-364(%rbp), %edx
	cmpl	-72(%rax), %edx
	jne	.LBB11_105
# BB#148:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-360(%rbp), %edx
	cmpl	-68(%rax), %edx
	jne	.LBB11_105
# BB#149:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-356(%rbp), %edx
	cmpl	-64(%rax), %edx
	jne	.LBB11_105
# BB#150:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-352(%rbp), %edx
	cmpl	-60(%rax), %edx
	jne	.LBB11_105
# BB#151:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-348(%rbp), %edx
	cmpl	-56(%rax), %edx
	jne	.LBB11_105
# BB#152:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-344(%rbp), %edx
	cmpl	-52(%rax), %edx
	jne	.LBB11_105
# BB#153:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-340(%rbp), %edx
	cmpl	-48(%rax), %edx
	jne	.LBB11_105
# BB#154:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-336(%rbp), %edx
	cmpl	-44(%rax), %edx
	jne	.LBB11_105
# BB#155:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-332(%rbp), %edx
	cmpl	-40(%rax), %edx
	jne	.LBB11_105
# BB#156:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-328(%rbp), %edx
	cmpl	-36(%rax), %edx
	jne	.LBB11_105
# BB#157:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-324(%rbp), %edx
	cmpl	-32(%rax), %edx
	jne	.LBB11_105
# BB#158:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-320(%rbp), %edx
	cmpl	-28(%rax), %edx
	jne	.LBB11_105
# BB#159:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-316(%rbp), %edx
	cmpl	-24(%rax), %edx
	jne	.LBB11_105
# BB#160:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-312(%rbp), %edx
	cmpl	-20(%rax), %edx
	jne	.LBB11_105
# BB#161:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-308(%rbp), %edx
	cmpl	-16(%rax), %edx
	jne	.LBB11_105
# BB#162:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-304(%rbp), %edx
	cmpl	-12(%rax), %edx
	jne	.LBB11_105
# BB#163:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-300(%rbp), %edx
	cmpl	-8(%rax), %edx
	jne	.LBB11_105
# BB#164:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-296(%rbp), %edx
	cmpl	-4(%rax), %edx
	jne	.LBB11_105
# BB#165:                               #   in Loop: Header=BB11_103 Depth=2
	movl	-292(%rbp), %edx
	cmpl	(%rax), %edx
	je	.LBB11_108
	.p2align	4, 0x90
.LBB11_105:                             #   in Loop: Header=BB11_103 Depth=2
	incq	%rcx
	addq	$80, %rax
	cmpq	%r14, %rcx
	jb	.LBB11_103
# BB#106:                               #   in Loop: Header=BB11_78 Depth=1
	cmpq	$30, %r14
	jae	.LBB11_167
.LBB11_107:                             # %_ZN3TSP19copyToNewPopulationEPKim.exit67
                                        #   in Loop: Header=BB11_78 Depth=1
	movl	-368(%rbp), %ecx
	movq	352(%r15), %rdx
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-364(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 4(%rdx,%rax)
	movl	-360(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 8(%rdx,%rax)
	movl	-356(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 12(%rdx,%rax)
	movl	-352(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 16(%rdx,%rax)
	movl	-348(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 20(%rdx,%rax)
	movl	-344(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 24(%rdx,%rax)
	movl	-340(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 28(%rdx,%rax)
	movl	-336(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 32(%rdx,%rax)
	movl	-332(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 36(%rdx,%rax)
	movl	-328(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 40(%rdx,%rax)
	movl	-324(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 44(%rdx,%rax)
	movl	-320(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 48(%rdx,%rax)
	movl	-316(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 52(%rdx,%rax)
	movl	-312(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 56(%rdx,%rax)
	movl	-308(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 60(%rdx,%rax)
	movl	-304(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 64(%rdx,%rax)
	movl	-300(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 68(%rdx,%rax)
	movl	-296(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 72(%rdx,%rax)
	movl	-292(%rbp), %ecx
	movq	352(%r15), %rdx
	movl	%ecx, 76(%rdx,%rax)
	incq	%r14
.LBB11_108:                             # %_ZN3TSP12hasDuplicateEPKim.exit
                                        #   in Loop: Header=BB11_78 Depth=1
	cmpq	$30, %r14
	jne	.LBB11_78
	.p2align	4, 0x90
.LBB11_109:                             # =>This Inner Loop Header: Depth=1
	movq	344(%r15), %rax
	movq	352(%r15), %rcx
	movups	-96(%rcx,%r13), %xmm0
	movups	%xmm0, -96(%rax,%r13)
	movups	-160(%rcx,%r13), %xmm0
	movups	-144(%rcx,%r13), %xmm1
	movups	-128(%rcx,%r13), %xmm2
	movups	-112(%rcx,%r13), %xmm3
	movups	%xmm3, -112(%rax,%r13)
	movups	%xmm2, -128(%rax,%r13)
	movups	%xmm1, -144(%rax,%r13)
	movups	%xmm0, -160(%rax,%r13)
	movq	344(%r15), %rax
	movq	352(%r15), %rcx
	movups	-16(%rcx,%r13), %xmm0
	movups	%xmm0, -16(%rax,%r13)
	movups	-80(%rcx,%r13), %xmm0
	movups	-64(%rcx,%r13), %xmm1
	movups	-48(%rcx,%r13), %xmm2
	movups	-32(%rcx,%r13), %xmm3
	movups	%xmm3, -32(%rax,%r13)
	movups	%xmm2, -48(%rax,%r13)
	movups	%xmm1, -64(%rax,%r13)
	movups	%xmm0, -80(%rax,%r13)
	movq	344(%r15), %rax
	movq	352(%r15), %rcx
	movups	64(%rcx,%r13), %xmm0
	movups	%xmm0, 64(%rax,%r13)
	movupd	(%rcx,%r13), %xmm0
	movupd	16(%rcx,%r13), %xmm1
	movupd	32(%rcx,%r13), %xmm2
	movups	48(%rcx,%r13), %xmm3
	movups	%xmm3, 48(%rax,%r13)
	movupd	%xmm2, 32(%rax,%r13)
	movupd	%xmm1, 16(%rax,%r13)
	movupd	%xmm0, (%rax,%r13)
	addq	$240, %r13
	cmpq	$2560, %r13             # imm = 0xA00
	jne	.LBB11_109
# BB#110:                               # %._crit_edge
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_117:                             # %._crit_edge.i32
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$449, %edx              # imm = 0x1C1
	movl	$.L__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd, %ecx
	callq	__assert_fail
.LBB11_167:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$419, %edx              # imm = 0x1A3
	movl	$.L__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim, %ecx
	callq	__assert_fail
.Lfunc_end11:
	.size	_ZN3TSP14nextPopulationEv, .Lfunc_end11-_ZN3TSP14nextPopulationEv
	.cfi_endproc

	.globl	_ZN3TSP19copyToNewPopulationEPKim
	.p2align	4, 0x90
	.type	_ZN3TSP19copyToNewPopulationEPKim,@function
_ZN3TSP19copyToNewPopulationEPKim:      # @_ZN3TSP19copyToNewPopulationEPKim
	.cfi_startproc
# BB#0:
	cmpq	$30, %rdx
	jae	.LBB12_2
# BB#1:
	movl	(%rsi), %r8d
	movq	352(%rdi), %rcx
	shlq	$4, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movl	%r8d, (%rcx,%rax)
	movl	4(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 4(%rdx,%rax)
	movl	8(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 8(%rdx,%rax)
	movl	12(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 12(%rdx,%rax)
	movl	16(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 16(%rdx,%rax)
	movl	20(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 20(%rdx,%rax)
	movl	24(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 24(%rdx,%rax)
	movl	28(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 28(%rdx,%rax)
	movl	32(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 32(%rdx,%rax)
	movl	36(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 36(%rdx,%rax)
	movl	40(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 40(%rdx,%rax)
	movl	44(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 44(%rdx,%rax)
	movl	48(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 48(%rdx,%rax)
	movl	52(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 52(%rdx,%rax)
	movl	56(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 56(%rdx,%rax)
	movl	60(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 60(%rdx,%rax)
	movl	64(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 64(%rdx,%rax)
	movl	68(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 68(%rdx,%rax)
	movl	72(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 72(%rdx,%rax)
	movl	76(%rsi), %ecx
	movq	352(%rdi), %rdx
	movl	%ecx, 76(%rdx,%rax)
	retq
.LBB12_2:
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$419, %edx              # imm = 0x1A3
	movl	$.L__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	_ZN3TSP19copyToNewPopulationEPKim, .Lfunc_end12-_ZN3TSP19copyToNewPopulationEPKim
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI13_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	_ZNK3TSP17rouletteSelectionEPKd
	.p2align	4, 0x90
	.type	_ZNK3TSP17rouletteSelectionEPKd,@function
_ZNK3TSP17rouletteSelectionEPKd:        # @_ZNK3TSP17rouletteSelectionEPKd
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp86:
	.cfi_offset %rbx, -32
.Ltmp87:
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorpd	%xmm0, %xmm0
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	8(%rbx), %xmm1
	addsd	16(%rbx), %xmm1
	addsd	24(%rbx), %xmm1
	addsd	32(%rbx), %xmm1
	addsd	40(%rbx), %xmm1
	addsd	48(%rbx), %xmm1
	addsd	56(%rbx), %xmm1
	addsd	64(%rbx), %xmm1
	addsd	72(%rbx), %xmm1
	addsd	80(%rbx), %xmm1
	addsd	88(%rbx), %xmm1
	addsd	96(%rbx), %xmm1
	addsd	104(%rbx), %xmm1
	addsd	112(%rbx), %xmm1
	addsd	120(%rbx), %xmm1
	addsd	128(%rbx), %xmm1
	addsd	136(%rbx), %xmm1
	addsd	144(%rbx), %xmm1
	addsd	152(%rbx), %xmm1
	addsd	160(%rbx), %xmm1
	addsd	168(%rbx), %xmm1
	addsd	176(%rbx), %xmm1
	addsd	184(%rbx), %xmm1
	addsd	192(%rbx), %xmm1
	addsd	200(%rbx), %xmm1
	addsd	208(%rbx), %xmm1
	addsd	216(%rbx), %xmm1
	addsd	224(%rbx), %xmm1
	addsd	232(%rbx), %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	rand
	xorpd	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm0
	mulsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	divsd	.LCPI13_0(%rip), %xmm0
	xorl	%eax, %eax
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	addsd	-16(%rbx,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB13_4
# BB#2:                                 #   in Loop: Header=BB13_1 Depth=1
	addsd	-8(%rbx,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB13_3
# BB#5:                                 #   in Loop: Header=BB13_1 Depth=1
	addsd	(%rbx,%rcx,8), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB13_6
# BB#7:                                 #   in Loop: Header=BB13_1 Depth=1
	addq	$3, %rax
	leaq	3(%rcx), %rdx
	incq	%rcx
	cmpq	$30, %rcx
	movq	%rdx, %rcx
	jb	.LBB13_1
# BB#8:                                 # %._crit_edge
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$449, %edx              # imm = 0x1C1
	movl	$.L__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd, %ecx
	callq	__assert_fail
.LBB13_3:
	incq	%rax
	jmp	.LBB13_4
.LBB13_6:
	movq	%rcx, %rax
.LBB13_4:
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	addq	344(%r14), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_ZNK3TSP17rouletteSelectionEPKd, .Lfunc_end13-_ZNK3TSP17rouletteSelectionEPKd
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI14_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI14_1:
	.quad	4626322717216342016     # double 20
.LCPI14_2:
	.quad	4467570830351532032     # double 4.6566128730773926E-10
	.text
	.globl	_ZN3TSP9crossoverEPKiS1_PiS2_
	.p2align	4, 0x90
	.type	_ZN3TSP9crossoverEPKiS1_PiS2_,@function
_ZN3TSP9crossoverEPKiS1_PiS2_:          # @_ZN3TSP9crossoverEPKiS1_PiS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	rand
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI14_0(%rip), %xmm0
	ucomisd	(%r15), %xmm0
	jbe	.LBB14_2
# BB#1:
	movups	64(%r12), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%r14)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	jmp	.LBB14_81
.LBB14_2:
	movq	%r13, %r15
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	divsd	.LCPI14_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r13d
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	divsd	.LCPI14_0(%rip), %xmm0
	jmp	.LBB14_4
	.p2align	4, 0x90
.LBB14_3:                               # %.lr.ph6
                                        #   in Loop: Header=BB14_4 Depth=1
	callq	rand
	movsd	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI14_2(%rip), %xmm0
.LBB14_4:                               # %.lr.ph6
                                        # =>This Inner Loop Header: Depth=1
	cvttsd2si	%xmm0, %eax
	cmpl	%r13d, %eax
	je	.LBB14_3
# BB#5:                                 # %._crit_edge7
	cmpl	%eax, %r13d
	jge	.LBB14_7
# BB#6:
	movl	%r13d, %ecx
	movl	%eax, %r13d
	jmp	.LBB14_8
.LBB14_7:
	movl	%eax, %ecx
.LBB14_8:                               # %.lr.ph3
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movups	64(%r12), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%r14)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %r12d
	leaq	(%rbx,%r12,4), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	leaq	(%r15,%r12,4), %rsi
	movl	%r13d, %r15d
	subl	%ecx, %r15d
	shlq	$2, %r15
	movq	%r15, %rdx
	callq	memcpy
	leaq	(%r14,%r12,4), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12,4), %rsi
	movq	%r15, %rdx
	callq	memcpy
	cmpl	-44(%rbp), %r13d        # 4-byte Folded Reload
	movl	%r13d, %eax
	jbe	.LBB14_28
# BB#9:                                 # %.lr.ph3.split.us
	movl	%eax, %edx
	subl	%r12d, %edx
	leaq	-1(%rax), %rcx
	testb	$1, %dl
	jne	.LBB14_24
# BB#10:                                # %.lr.ph3.split.us.split.us
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB14_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_14 Depth 2
	cmpq	%r12, %rdx
	jb	.LBB14_13
# BB#12:                                #   in Loop: Header=BB14_11 Depth=1
	cmpq	%rax, %rdx
	jb	.LBB14_23
.LBB14_13:                              # %.lr.ph1.preheader.us.split.us
                                        #   in Loop: Header=BB14_11 Depth=1
	cmpq	%r12, %rcx
	movq	%r12, %rsi
	je	.LBB14_23
	.p2align	4, 0x90
.LBB14_14:                              # %.lr.ph1.us.us
                                        #   Parent Loop BB14_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rdx,4), %edi
	cmpl	(%rbx,%rsi,4), %edi
	jne	.LBB14_16
# BB#15:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$-1, (%rbx,%rdx,4)
.LBB14_16:                              #   in Loop: Header=BB14_14 Depth=2
	movl	(%r14,%rdx,4), %edi
	cmpl	(%r14,%rsi,4), %edi
	jne	.LBB14_18
# BB#17:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$-1, (%r14,%rdx,4)
.LBB14_18:                              # %.lr.ph1.us.1928.us
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	(%rbx,%rdx,4), %edi
	cmpl	4(%rbx,%rsi,4), %edi
	jne	.LBB14_20
# BB#19:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$-1, (%rbx,%rdx,4)
.LBB14_20:                              #   in Loop: Header=BB14_14 Depth=2
	movl	(%r14,%rdx,4), %edi
	cmpl	4(%r14,%rsi,4), %edi
	jne	.LBB14_22
# BB#21:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$-1, (%r14,%rdx,4)
.LBB14_22:                              #   in Loop: Header=BB14_14 Depth=2
	addq	$2, %rsi
	cmpq	%rax, %rsi
	jb	.LBB14_14
.LBB14_23:                              # %._crit_edge.us.us
                                        #   in Loop: Header=BB14_11 Depth=1
	incq	%rdx
	cmpq	$20, %rdx
	jne	.LBB14_11
	jmp	.LBB14_28
.LBB14_24:                              # %.lr.ph3.split.us.split
	xorl	%edx, %edx
	leaq	1(%r12), %r8
	.p2align	4, 0x90
.LBB14_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_33 Depth 2
	cmpq	%r12, %rdx
	jb	.LBB14_42
# BB#26:                                #   in Loop: Header=BB14_25 Depth=1
	cmpq	%rax, %rdx
	jb	.LBB14_27
.LBB14_42:                              # %.lr.ph1.us.prol
                                        #   in Loop: Header=BB14_25 Depth=1
	movl	(%rbx,%rdx,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpl	(%rdi), %esi
	jne	.LBB14_44
# BB#43:                                #   in Loop: Header=BB14_25 Depth=1
	movl	$-1, (%rbx,%rdx,4)
.LBB14_44:                              #   in Loop: Header=BB14_25 Depth=1
	movl	(%r14,%rdx,4), %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpl	(%rdi), %esi
	jne	.LBB14_46
# BB#45:                                #   in Loop: Header=BB14_25 Depth=1
	movl	$-1, (%r14,%rdx,4)
.LBB14_46:                              # %.lr.ph1.preheader.us.split
                                        #   in Loop: Header=BB14_25 Depth=1
	cmpq	%r12, %rcx
	movq	%r8, %rdi
	je	.LBB14_27
	.p2align	4, 0x90
.LBB14_33:                              # %.lr.ph1.us
                                        #   Parent Loop BB14_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rdx,4), %esi
	cmpl	(%rbx,%rdi,4), %esi
	jne	.LBB14_35
# BB#34:                                #   in Loop: Header=BB14_33 Depth=2
	movl	$-1, (%rbx,%rdx,4)
.LBB14_35:                              #   in Loop: Header=BB14_33 Depth=2
	movl	(%r14,%rdx,4), %esi
	cmpl	(%r14,%rdi,4), %esi
	jne	.LBB14_37
# BB#36:                                #   in Loop: Header=BB14_33 Depth=2
	movl	$-1, (%r14,%rdx,4)
.LBB14_37:                              # %.lr.ph1.us.1928
                                        #   in Loop: Header=BB14_33 Depth=2
	movl	(%rbx,%rdx,4), %esi
	cmpl	4(%rbx,%rdi,4), %esi
	jne	.LBB14_39
# BB#38:                                #   in Loop: Header=BB14_33 Depth=2
	movl	$-1, (%rbx,%rdx,4)
.LBB14_39:                              #   in Loop: Header=BB14_33 Depth=2
	movl	(%r14,%rdx,4), %esi
	cmpl	4(%r14,%rdi,4), %esi
	jne	.LBB14_41
# BB#40:                                #   in Loop: Header=BB14_33 Depth=2
	movl	$-1, (%r14,%rdx,4)
.LBB14_41:                              #   in Loop: Header=BB14_33 Depth=2
	addq	$2, %rdi
	cmpq	%rax, %rdi
	jb	.LBB14_33
.LBB14_27:                              # %._crit_edge.us
                                        #   in Loop: Header=BB14_25 Depth=1
	incq	%rdx
	cmpq	$20, %rdx
	jne	.LBB14_25
.LBB14_28:                              # %.lr.ph
	leaq	80(%rbx), %rax
	leaq	80(%r14), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB14_29:                              # =>This Inner Loop Header: Depth=1
	cmpl	$-1, (%rbx,%rdx,4)
	jne	.LBB14_55
# BB#30:                                #   in Loop: Header=BB14_29 Depth=1
	movl	(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_53
# BB#31:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_47
# BB#32:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_47:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_49
# BB#48:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_49:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_51
# BB#50:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_51:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_449
# BB#52:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_449:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_451
# BB#450:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_451:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_453
# BB#452:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_453:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_455
# BB#454:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_455:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_457
# BB#456:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_457:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_459
# BB#458:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_459:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_461
# BB#460:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_461:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_463
# BB#462:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_463:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_465
# BB#464:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_465:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_467
# BB#466:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_467:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_469
# BB#468:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_469:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_471
# BB#470:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_471:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_473
# BB#472:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_473:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_475
# BB#474:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_475:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_477
# BB#476:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_477:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_479
# BB#478:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_53
.LBB14_479:                             # %._crit_edge.loopexit.i888
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB14_53:                              # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$0, %esi
	je	.LBB14_54
# BB#59:                                #   in Loop: Header=BB14_29 Depth=1
	movl	4(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_68
# BB#60:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_62
# BB#61:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_62:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_64
# BB#63:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_64:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_66
# BB#65:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_66:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_480
# BB#67:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_480:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_482
# BB#481:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_482:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_484
# BB#483:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_484:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_486
# BB#485:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_486:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_488
# BB#487:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_488:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_490
# BB#489:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_490:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_492
# BB#491:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_492:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_494
# BB#493:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_494:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_496
# BB#495:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_496:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_498
# BB#497:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_498:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_500
# BB#499:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_500:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_502
# BB#501:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_502:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_504
# BB#503:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_504:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_506
# BB#505:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_506:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_508
# BB#507:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_508:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_510
# BB#509:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_68
.LBB14_510:                             # %._crit_edge.loopexit.i323889
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB14_68:                              # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit327
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$1, %esi
	je	.LBB14_54
# BB#69:                                #   in Loop: Header=BB14_29 Depth=1
	movl	8(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_101
# BB#70:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_95
# BB#71:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_95:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_97
# BB#96:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_97:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_99
# BB#98:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_99:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_511
# BB#100:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_511:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_513
# BB#512:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_513:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_515
# BB#514:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_515:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_517
# BB#516:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_517:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_519
# BB#518:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_519:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_521
# BB#520:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_521:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_523
# BB#522:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_523:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_525
# BB#524:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_525:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_527
# BB#526:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_527:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_529
# BB#528:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_529:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_531
# BB#530:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_531:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_533
# BB#532:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_533:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_535
# BB#534:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_535:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_537
# BB#536:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_537:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_539
# BB#538:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_539:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_541
# BB#540:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_101
.LBB14_541:                             # %._crit_edge.loopexit.i299890
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_101:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit303
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$2, %esi
	je	.LBB14_54
# BB#102:                               #   in Loop: Header=BB14_29 Depth=1
	movl	12(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_111
# BB#103:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_105
# BB#104:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_105:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_107
# BB#106:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_107:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_109
# BB#108:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_109:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_542
# BB#110:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_542:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_544
# BB#543:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_544:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_546
# BB#545:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_546:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_548
# BB#547:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_548:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_550
# BB#549:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_550:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_552
# BB#551:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_552:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_554
# BB#553:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_554:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_556
# BB#555:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_556:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_558
# BB#557:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_558:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_560
# BB#559:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_560:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_562
# BB#561:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_562:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_564
# BB#563:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_564:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_566
# BB#565:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_566:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_568
# BB#567:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_568:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_570
# BB#569:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_570:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_572
# BB#571:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_111
.LBB14_572:                             # %._crit_edge.loopexit.i291891
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_111:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit295
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$3, %esi
	je	.LBB14_54
# BB#112:                               #   in Loop: Header=BB14_29 Depth=1
	movl	16(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_121
# BB#113:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_115
# BB#114:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_115:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_117
# BB#116:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_117:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_119
# BB#118:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_119:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_573
# BB#120:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_573:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_575
# BB#574:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_575:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_577
# BB#576:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_577:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_579
# BB#578:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_579:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_581
# BB#580:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_581:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_583
# BB#582:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_583:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_585
# BB#584:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_585:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_587
# BB#586:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_587:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_589
# BB#588:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_589:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_591
# BB#590:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_591:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_593
# BB#592:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_593:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_595
# BB#594:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_595:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_597
# BB#596:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_597:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_599
# BB#598:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_599:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_601
# BB#600:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_601:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_603
# BB#602:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_121
.LBB14_603:                             # %._crit_edge.loopexit.i283892
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_121:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit287
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$4, %esi
	je	.LBB14_54
# BB#122:                               #   in Loop: Header=BB14_29 Depth=1
	movl	20(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_131
# BB#123:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_125
# BB#124:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_125:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_127
# BB#126:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_127:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_129
# BB#128:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_129:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_604
# BB#130:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_604:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_606
# BB#605:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_606:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_608
# BB#607:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_608:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_610
# BB#609:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_610:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_612
# BB#611:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_612:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_614
# BB#613:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_614:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_616
# BB#615:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_616:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_618
# BB#617:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_618:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_620
# BB#619:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_620:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_622
# BB#621:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_622:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_624
# BB#623:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_624:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_626
# BB#625:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_626:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_628
# BB#627:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_628:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_630
# BB#629:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_630:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_632
# BB#631:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_632:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_634
# BB#633:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_131
.LBB14_634:                             # %._crit_edge.loopexit.i275893
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_131:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit279
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$5, %esi
	je	.LBB14_54
# BB#132:                               #   in Loop: Header=BB14_29 Depth=1
	movl	24(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_141
# BB#133:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_135
# BB#134:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_135:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_137
# BB#136:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_137:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_139
# BB#138:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_139:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_635
# BB#140:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_635:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_637
# BB#636:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_637:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_639
# BB#638:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_639:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_641
# BB#640:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_641:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_643
# BB#642:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_643:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_645
# BB#644:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_645:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_647
# BB#646:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_647:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_649
# BB#648:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_649:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_651
# BB#650:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_651:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_653
# BB#652:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_653:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_655
# BB#654:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_655:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_657
# BB#656:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_657:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_659
# BB#658:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_659:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_661
# BB#660:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_661:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_663
# BB#662:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_663:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_665
# BB#664:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_141
.LBB14_665:                             # %._crit_edge.loopexit.i267894
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_141:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit271
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$6, %esi
	je	.LBB14_54
# BB#142:                               #   in Loop: Header=BB14_29 Depth=1
	movl	28(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_151
# BB#143:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_145
# BB#144:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_145:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_147
# BB#146:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_147:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_149
# BB#148:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_149:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_666
# BB#150:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_666:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_668
# BB#667:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_668:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_670
# BB#669:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_670:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_672
# BB#671:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_672:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_674
# BB#673:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_674:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_676
# BB#675:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_676:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_678
# BB#677:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_678:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_680
# BB#679:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_680:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_682
# BB#681:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_682:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_684
# BB#683:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_684:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_686
# BB#685:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_686:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_688
# BB#687:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_688:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_690
# BB#689:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_690:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_692
# BB#691:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_692:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_694
# BB#693:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_694:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_696
# BB#695:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_151
.LBB14_696:                             # %._crit_edge.loopexit.i259895
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_151:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit263
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$7, %esi
	je	.LBB14_54
# BB#152:                               #   in Loop: Header=BB14_29 Depth=1
	movl	32(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_161
# BB#153:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_155
# BB#154:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_155:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_157
# BB#156:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_157:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_159
# BB#158:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_159:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_697
# BB#160:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_697:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_699
# BB#698:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_699:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_701
# BB#700:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_701:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_703
# BB#702:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_703:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_705
# BB#704:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_705:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_707
# BB#706:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_707:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_709
# BB#708:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_709:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_711
# BB#710:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_711:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_713
# BB#712:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_713:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_715
# BB#714:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_715:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_717
# BB#716:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_717:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_719
# BB#718:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_719:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_721
# BB#720:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_721:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_723
# BB#722:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_723:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_725
# BB#724:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_725:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_727
# BB#726:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_161
.LBB14_727:                             # %._crit_edge.loopexit.i251896
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_161:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit255
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$8, %esi
	je	.LBB14_54
# BB#162:                               #   in Loop: Header=BB14_29 Depth=1
	movl	36(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_171
# BB#163:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_165
# BB#164:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_165:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_167
# BB#166:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_167:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_169
# BB#168:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_169:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_728
# BB#170:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_728:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_730
# BB#729:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_730:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_732
# BB#731:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_732:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_734
# BB#733:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_734:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_736
# BB#735:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_736:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_738
# BB#737:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_738:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_740
# BB#739:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_740:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_742
# BB#741:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_742:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_744
# BB#743:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_744:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_746
# BB#745:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_746:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_748
# BB#747:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_748:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_750
# BB#749:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_750:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_752
# BB#751:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_752:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_754
# BB#753:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_754:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_756
# BB#755:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_756:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_758
# BB#757:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_171
.LBB14_758:                             # %._crit_edge.loopexit.i243897
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_171:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit247
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$9, %esi
	je	.LBB14_54
# BB#172:                               #   in Loop: Header=BB14_29 Depth=1
	movl	40(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_181
# BB#173:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_175
# BB#174:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_175:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_177
# BB#176:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_177:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_179
# BB#178:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_179:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_759
# BB#180:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_759:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_761
# BB#760:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_761:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_763
# BB#762:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_763:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_765
# BB#764:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_765:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_767
# BB#766:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_767:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_769
# BB#768:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_769:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_771
# BB#770:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_771:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_773
# BB#772:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_773:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_775
# BB#774:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_775:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_777
# BB#776:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_777:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_779
# BB#778:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_779:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_781
# BB#780:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_781:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_783
# BB#782:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_783:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_785
# BB#784:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_785:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_787
# BB#786:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_787:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_789
# BB#788:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_181
.LBB14_789:                             # %._crit_edge.loopexit.i235898
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_181:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit239
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$10, %esi
	je	.LBB14_54
# BB#182:                               #   in Loop: Header=BB14_29 Depth=1
	movl	44(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_191
# BB#183:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_185
# BB#184:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_185:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_187
# BB#186:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_187:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_189
# BB#188:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_189:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_790
# BB#190:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_790:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_792
# BB#791:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_792:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_794
# BB#793:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_794:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_796
# BB#795:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_796:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_798
# BB#797:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_798:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_800
# BB#799:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_800:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_802
# BB#801:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_802:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_804
# BB#803:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_804:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_806
# BB#805:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_806:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_808
# BB#807:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_808:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_810
# BB#809:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_810:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_812
# BB#811:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_812:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_814
# BB#813:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_814:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_816
# BB#815:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_816:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_818
# BB#817:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_818:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_820
# BB#819:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_191
.LBB14_820:                             # %._crit_edge.loopexit.i227899
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_191:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit231
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$11, %esi
	je	.LBB14_54
# BB#192:                               #   in Loop: Header=BB14_29 Depth=1
	movl	48(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_201
# BB#193:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_195
# BB#194:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_195:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_197
# BB#196:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_197:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_199
# BB#198:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_199:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_821
# BB#200:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_821:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_823
# BB#822:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_823:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_825
# BB#824:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_825:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_827
# BB#826:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_827:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_829
# BB#828:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_829:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_831
# BB#830:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_831:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_833
# BB#832:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_833:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_835
# BB#834:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_835:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_837
# BB#836:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_837:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_839
# BB#838:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_839:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_841
# BB#840:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_841:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_843
# BB#842:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_843:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_845
# BB#844:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_845:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_847
# BB#846:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_847:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_849
# BB#848:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_849:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_851
# BB#850:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_201
.LBB14_851:                             # %._crit_edge.loopexit.i219900
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_201:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit223
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$12, %esi
	je	.LBB14_54
# BB#202:                               #   in Loop: Header=BB14_29 Depth=1
	movl	52(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_211
# BB#203:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_205
# BB#204:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_205:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_207
# BB#206:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_207:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_209
# BB#208:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_209:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_852
# BB#210:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_852:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_854
# BB#853:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_854:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_856
# BB#855:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_856:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_858
# BB#857:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_858:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_860
# BB#859:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_860:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_862
# BB#861:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_862:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_864
# BB#863:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_864:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_866
# BB#865:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_866:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_868
# BB#867:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_868:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_870
# BB#869:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_870:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_872
# BB#871:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_872:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_874
# BB#873:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_874:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_876
# BB#875:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_876:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_878
# BB#877:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_878:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_880
# BB#879:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_880:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_882
# BB#881:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_211
.LBB14_882:                             # %._crit_edge.loopexit.i211901
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_211:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit215
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$13, %esi
	je	.LBB14_54
# BB#212:                               #   in Loop: Header=BB14_29 Depth=1
	movl	56(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_221
# BB#213:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_215
# BB#214:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_215:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_217
# BB#216:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_217:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_219
# BB#218:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_219:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_883
# BB#220:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_883:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_885
# BB#884:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_885:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_887
# BB#886:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_887:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_889
# BB#888:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_889:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_891
# BB#890:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_891:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_893
# BB#892:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_893:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_895
# BB#894:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_895:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_897
# BB#896:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_897:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_899
# BB#898:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_899:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_901
# BB#900:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_901:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_903
# BB#902:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_903:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_905
# BB#904:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_905:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_907
# BB#906:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_907:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_909
# BB#908:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_909:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_911
# BB#910:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_911:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_913
# BB#912:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_221
.LBB14_913:                             # %._crit_edge.loopexit.i203902
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_221:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit207
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$14, %esi
	je	.LBB14_54
# BB#222:                               #   in Loop: Header=BB14_29 Depth=1
	movl	60(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_231
# BB#223:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_225
# BB#224:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_225:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_227
# BB#226:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_227:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_229
# BB#228:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_229:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_914
# BB#230:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_914:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_916
# BB#915:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_916:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_918
# BB#917:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_918:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_920
# BB#919:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_920:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_922
# BB#921:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_922:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_924
# BB#923:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_924:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_926
# BB#925:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_926:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_928
# BB#927:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_928:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_930
# BB#929:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_930:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_932
# BB#931:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_932:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_934
# BB#933:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_934:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_936
# BB#935:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_936:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_938
# BB#937:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_938:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_940
# BB#939:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_940:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_942
# BB#941:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_942:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_944
# BB#943:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_231
.LBB14_944:                             # %._crit_edge.loopexit.i195903
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_231:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit199
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$15, %esi
	je	.LBB14_54
# BB#232:                               #   in Loop: Header=BB14_29 Depth=1
	movl	64(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_241
# BB#233:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_235
# BB#234:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_235:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_237
# BB#236:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_237:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_239
# BB#238:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_239:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_945
# BB#240:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_945:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_947
# BB#946:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_947:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_949
# BB#948:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_949:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_951
# BB#950:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_951:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_953
# BB#952:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_953:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_955
# BB#954:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_955:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_957
# BB#956:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_957:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_959
# BB#958:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_959:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_961
# BB#960:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_961:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_963
# BB#962:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_963:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_965
# BB#964:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_965:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_967
# BB#966:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_967:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_969
# BB#968:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_969:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_971
# BB#970:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_971:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_973
# BB#972:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_973:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_975
# BB#974:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_241
.LBB14_975:                             # %._crit_edge.loopexit.i187904
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_241:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit191
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$16, %esi
	je	.LBB14_54
# BB#242:                               #   in Loop: Header=BB14_29 Depth=1
	movl	68(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_251
# BB#243:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_245
# BB#244:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_245:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_247
# BB#246:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_247:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_249
# BB#248:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_249:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_976
# BB#250:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_976:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_978
# BB#977:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_978:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_980
# BB#979:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_980:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_982
# BB#981:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_982:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_984
# BB#983:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_984:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_986
# BB#985:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_986:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_988
# BB#987:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_988:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_990
# BB#989:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_990:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_992
# BB#991:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_992:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_994
# BB#993:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_994:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_996
# BB#995:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_996:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_998
# BB#997:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_998:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_1000
# BB#999:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_1000:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_1002
# BB#1001:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_1002:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_1004
# BB#1003:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_1004:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_1006
# BB#1005:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_251
.LBB14_1006:                            # %._crit_edge.loopexit.i179905
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_251:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit183
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$17, %esi
	je	.LBB14_54
# BB#252:                               #   in Loop: Header=BB14_29 Depth=1
	movl	72(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_261
# BB#253:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_255
# BB#254:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_255:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_257
# BB#256:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_257:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_259
# BB#258:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_259:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_1007
# BB#260:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1007:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_1009
# BB#1008:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1009:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_1011
# BB#1010:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1011:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_1013
# BB#1012:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1013:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_1015
# BB#1014:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1015:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_1017
# BB#1016:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1017:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_1019
# BB#1018:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1019:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_1021
# BB#1020:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1021:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_1023
# BB#1022:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1023:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_1025
# BB#1024:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1025:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_1027
# BB#1026:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1027:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_1029
# BB#1028:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1029:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_1031
# BB#1030:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1031:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_1033
# BB#1032:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1033:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_1035
# BB#1034:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1035:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_1037
# BB#1036:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_261
.LBB14_1037:                            # %._crit_edge.loopexit.i171906
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_261:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit175
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$18, %esi
	je	.LBB14_54
# BB#262:                               #   in Loop: Header=BB14_29 Depth=1
	movl	76(%r14), %edi
	cmpl	%edi, (%rbx)
	movq	%rbx, %rsi
	je	.LBB14_271
# BB#263:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%rbx)
	jne	.LBB14_265
# BB#264:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_265:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%rbx)
	jne	.LBB14_267
# BB#266:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_267:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%rbx)
	jne	.LBB14_269
# BB#268:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_269:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%rbx)
	jne	.LBB14_1038
# BB#270:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1038:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%rbx)
	jne	.LBB14_1040
# BB#1039:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1040:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%rbx)
	jne	.LBB14_1042
# BB#1041:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1042:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%rbx)
	jne	.LBB14_1044
# BB#1043:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1044:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%rbx)
	jne	.LBB14_1046
# BB#1045:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1046:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%rbx)
	jne	.LBB14_1048
# BB#1047:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1048:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%rbx)
	jne	.LBB14_1050
# BB#1049:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1050:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%rbx)
	jne	.LBB14_1052
# BB#1051:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1052:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%rbx)
	jne	.LBB14_1054
# BB#1053:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1054:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%rbx)
	jne	.LBB14_1056
# BB#1055:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1056:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%rbx)
	jne	.LBB14_1058
# BB#1057:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1058:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%rbx)
	jne	.LBB14_1060
# BB#1059:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1060:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%rbx)
	jne	.LBB14_1062
# BB#1061:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1062:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%rbx)
	jne	.LBB14_1064
# BB#1063:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1064:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%rbx)
	jne	.LBB14_1066
# BB#1065:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1066:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%rbx)
	jne	.LBB14_1068
# BB#1067:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%rbx), %rsi
	jmp	.LBB14_271
.LBB14_1068:                            # %._crit_edge.loopexit.i163907
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rax, %rsi
.LBB14_271:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit167
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rax, %rsi
	movl	$19, %esi
	jne	.LBB14_55
	.p2align	4, 0x90
.LBB14_54:                              #   in Loop: Header=BB14_29 Depth=1
	movl	(%r14,%rsi,4), %esi
	movl	%esi, (%rbx,%rdx,4)
.LBB14_55:                              # %_ZN3TSP15repairOffspringEPiiPKi.exit
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpl	$-1, (%r14,%rdx,4)
	jne	.LBB14_80
# BB#56:                                #   in Loop: Header=BB14_29 Depth=1
	movl	(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_78
# BB#57:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_72
# BB#58:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_78
.LBB14_72:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_74
# BB#73:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_78
.LBB14_74:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_76
# BB#75:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_78
.LBB14_76:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1069
# BB#77:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1069:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1071
# BB#1070:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1071:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1073
# BB#1072:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1073:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1075
# BB#1074:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1075:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1077
# BB#1076:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1077:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1079
# BB#1078:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1079:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1081
# BB#1080:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1081:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1083
# BB#1082:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1083:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1085
# BB#1084:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1085:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1087
# BB#1086:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1087:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1089
# BB#1088:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1089:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1091
# BB#1090:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1091:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1093
# BB#1092:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1093:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1095
# BB#1094:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1095:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1097
# BB#1096:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1097:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1099
# BB#1098:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_78
.LBB14_1099:                            # %._crit_edge.loopexit.i315908
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB14_78:                              # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit319
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$0, %esi
	je	.LBB14_79
# BB#82:                                #   in Loop: Header=BB14_29 Depth=1
	movl	4(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_91
# BB#83:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_85
# BB#84:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_91
.LBB14_85:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_87
# BB#86:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_91
.LBB14_87:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_89
# BB#88:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_91
.LBB14_89:                              #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1100
# BB#90:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1100:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1102
# BB#1101:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1102:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1104
# BB#1103:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1104:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1106
# BB#1105:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1106:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1108
# BB#1107:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1108:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1110
# BB#1109:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1110:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1112
# BB#1111:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1112:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1114
# BB#1113:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1114:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1116
# BB#1115:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1116:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1118
# BB#1117:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1118:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1120
# BB#1119:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1120:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1122
# BB#1121:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1122:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1124
# BB#1123:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1124:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1126
# BB#1125:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1126:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1128
# BB#1127:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1128:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1130
# BB#1129:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_91
.LBB14_1130:                            # %._crit_edge.loopexit.i307909
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB14_91:                              # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit311
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$1, %esi
	je	.LBB14_79
# BB#92:                                #   in Loop: Header=BB14_29 Depth=1
	movl	8(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_278
# BB#93:                                #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_272
# BB#94:                                #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_278
.LBB14_272:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_274
# BB#273:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_278
.LBB14_274:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_276
# BB#275:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_278
.LBB14_276:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1131
# BB#277:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1131:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1133
# BB#1132:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1133:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1135
# BB#1134:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1135:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1137
# BB#1136:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1137:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1139
# BB#1138:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1139:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1141
# BB#1140:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1141:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1143
# BB#1142:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1143:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1145
# BB#1144:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1145:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1147
# BB#1146:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1147:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1149
# BB#1148:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1149:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1151
# BB#1150:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1151:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1153
# BB#1152:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1153:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1155
# BB#1154:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1155:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1157
# BB#1156:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1157:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1159
# BB#1158:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1159:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1161
# BB#1160:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_278
.LBB14_1161:                            # %._crit_edge.loopexit.i155910
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_278:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit159
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$2, %esi
	je	.LBB14_79
# BB#279:                               #   in Loop: Header=BB14_29 Depth=1
	movl	12(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_288
# BB#280:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_282
# BB#281:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_288
.LBB14_282:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_284
# BB#283:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_288
.LBB14_284:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_286
# BB#285:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_288
.LBB14_286:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1162
# BB#287:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1162:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1164
# BB#1163:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1164:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1166
# BB#1165:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1166:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1168
# BB#1167:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1168:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1170
# BB#1169:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1170:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1172
# BB#1171:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1172:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1174
# BB#1173:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1174:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1176
# BB#1175:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1176:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1178
# BB#1177:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1178:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1180
# BB#1179:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1180:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1182
# BB#1181:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1182:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1184
# BB#1183:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1184:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1186
# BB#1185:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1186:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1188
# BB#1187:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1188:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1190
# BB#1189:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1190:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1192
# BB#1191:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_288
.LBB14_1192:                            # %._crit_edge.loopexit.i147911
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_288:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit151
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$3, %esi
	je	.LBB14_79
# BB#289:                               #   in Loop: Header=BB14_29 Depth=1
	movl	16(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_298
# BB#290:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_292
# BB#291:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_298
.LBB14_292:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_294
# BB#293:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_298
.LBB14_294:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_296
# BB#295:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_298
.LBB14_296:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1193
# BB#297:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1193:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1195
# BB#1194:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1195:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1197
# BB#1196:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1197:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1199
# BB#1198:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1199:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1201
# BB#1200:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1201:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1203
# BB#1202:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1203:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1205
# BB#1204:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1205:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1207
# BB#1206:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1207:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1209
# BB#1208:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1209:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1211
# BB#1210:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1211:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1213
# BB#1212:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1213:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1215
# BB#1214:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1215:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1217
# BB#1216:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1217:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1219
# BB#1218:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1219:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1221
# BB#1220:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1221:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1223
# BB#1222:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_298
.LBB14_1223:                            # %._crit_edge.loopexit.i139912
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_298:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit143
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$4, %esi
	je	.LBB14_79
# BB#299:                               #   in Loop: Header=BB14_29 Depth=1
	movl	20(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_308
# BB#300:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_302
# BB#301:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_308
.LBB14_302:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_304
# BB#303:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_308
.LBB14_304:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_306
# BB#305:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_308
.LBB14_306:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1224
# BB#307:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1224:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1226
# BB#1225:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1226:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1228
# BB#1227:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1228:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1230
# BB#1229:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1230:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1232
# BB#1231:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1232:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1234
# BB#1233:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1234:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1236
# BB#1235:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1236:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1238
# BB#1237:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1238:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1240
# BB#1239:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1240:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1242
# BB#1241:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1242:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1244
# BB#1243:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1244:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1246
# BB#1245:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1246:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1248
# BB#1247:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1248:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1250
# BB#1249:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1250:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1252
# BB#1251:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1252:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1254
# BB#1253:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_308
.LBB14_1254:                            # %._crit_edge.loopexit.i131913
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_308:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit135
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$5, %esi
	je	.LBB14_79
# BB#309:                               #   in Loop: Header=BB14_29 Depth=1
	movl	24(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_318
# BB#310:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_312
# BB#311:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_318
.LBB14_312:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_314
# BB#313:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_318
.LBB14_314:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_316
# BB#315:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_318
.LBB14_316:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1255
# BB#317:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1255:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1257
# BB#1256:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1257:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1259
# BB#1258:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1259:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1261
# BB#1260:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1261:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1263
# BB#1262:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1263:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1265
# BB#1264:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1265:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1267
# BB#1266:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1267:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1269
# BB#1268:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1269:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1271
# BB#1270:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1271:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1273
# BB#1272:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1273:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1275
# BB#1274:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1275:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1277
# BB#1276:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1277:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1279
# BB#1278:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1279:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1281
# BB#1280:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1281:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1283
# BB#1282:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1283:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1285
# BB#1284:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_318
.LBB14_1285:                            # %._crit_edge.loopexit.i123914
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_318:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit127
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$6, %esi
	je	.LBB14_79
# BB#319:                               #   in Loop: Header=BB14_29 Depth=1
	movl	28(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_328
# BB#320:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_322
# BB#321:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_328
.LBB14_322:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_324
# BB#323:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_328
.LBB14_324:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_326
# BB#325:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_328
.LBB14_326:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1286
# BB#327:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1286:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1288
# BB#1287:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1288:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1290
# BB#1289:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1290:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1292
# BB#1291:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1292:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1294
# BB#1293:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1294:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1296
# BB#1295:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1296:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1298
# BB#1297:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1298:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1300
# BB#1299:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1300:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1302
# BB#1301:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1302:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1304
# BB#1303:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1304:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1306
# BB#1305:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1306:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1308
# BB#1307:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1308:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1310
# BB#1309:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1310:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1312
# BB#1311:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1312:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1314
# BB#1313:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1314:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1316
# BB#1315:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_328
.LBB14_1316:                            # %._crit_edge.loopexit.i115915
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_328:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit119
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$7, %esi
	je	.LBB14_79
# BB#329:                               #   in Loop: Header=BB14_29 Depth=1
	movl	32(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_338
# BB#330:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_332
# BB#331:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_338
.LBB14_332:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_334
# BB#333:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_338
.LBB14_334:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_336
# BB#335:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_338
.LBB14_336:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1317
# BB#337:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1317:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1319
# BB#1318:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1319:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1321
# BB#1320:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1321:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1323
# BB#1322:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1323:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1325
# BB#1324:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1325:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1327
# BB#1326:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1327:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1329
# BB#1328:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1329:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1331
# BB#1330:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1331:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1333
# BB#1332:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1333:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1335
# BB#1334:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1335:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1337
# BB#1336:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1337:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1339
# BB#1338:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1339:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1341
# BB#1340:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1341:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1343
# BB#1342:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1343:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1345
# BB#1344:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1345:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1347
# BB#1346:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_338
.LBB14_1347:                            # %._crit_edge.loopexit.i107916
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_338:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit111
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$8, %esi
	je	.LBB14_79
# BB#339:                               #   in Loop: Header=BB14_29 Depth=1
	movl	36(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_348
# BB#340:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_342
# BB#341:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_348
.LBB14_342:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_344
# BB#343:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_348
.LBB14_344:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_346
# BB#345:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_348
.LBB14_346:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1348
# BB#347:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1348:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1350
# BB#1349:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1350:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1352
# BB#1351:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1352:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1354
# BB#1353:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1354:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1356
# BB#1355:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1356:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1358
# BB#1357:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1358:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1360
# BB#1359:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1360:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1362
# BB#1361:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1362:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1364
# BB#1363:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1364:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1366
# BB#1365:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1366:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1368
# BB#1367:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1368:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1370
# BB#1369:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1370:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1372
# BB#1371:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1372:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1374
# BB#1373:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1374:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1376
# BB#1375:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1376:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1378
# BB#1377:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_348
.LBB14_1378:                            # %._crit_edge.loopexit.i99917
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_348:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit103
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$9, %esi
	je	.LBB14_79
# BB#349:                               #   in Loop: Header=BB14_29 Depth=1
	movl	40(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_358
# BB#350:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_352
# BB#351:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_358
.LBB14_352:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_354
# BB#353:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_358
.LBB14_354:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_356
# BB#355:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_358
.LBB14_356:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1379
# BB#357:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1379:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1381
# BB#1380:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1381:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1383
# BB#1382:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1383:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1385
# BB#1384:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1385:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1387
# BB#1386:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1387:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1389
# BB#1388:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1389:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1391
# BB#1390:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1391:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1393
# BB#1392:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1393:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1395
# BB#1394:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1395:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1397
# BB#1396:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1397:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1399
# BB#1398:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1399:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1401
# BB#1400:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1401:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1403
# BB#1402:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1403:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1405
# BB#1404:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1405:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1407
# BB#1406:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1407:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1409
# BB#1408:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_358
.LBB14_1409:                            # %._crit_edge.loopexit.i91918
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_358:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit95
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$10, %esi
	je	.LBB14_79
# BB#359:                               #   in Loop: Header=BB14_29 Depth=1
	movl	44(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_368
# BB#360:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_362
# BB#361:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_368
.LBB14_362:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_364
# BB#363:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_368
.LBB14_364:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_366
# BB#365:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_368
.LBB14_366:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1410
# BB#367:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1410:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1412
# BB#1411:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1412:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1414
# BB#1413:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1414:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1416
# BB#1415:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1416:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1418
# BB#1417:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1418:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1420
# BB#1419:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1420:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1422
# BB#1421:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1422:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1424
# BB#1423:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1424:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1426
# BB#1425:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1426:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1428
# BB#1427:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1428:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1430
# BB#1429:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1430:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1432
# BB#1431:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1432:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1434
# BB#1433:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1434:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1436
# BB#1435:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1436:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1438
# BB#1437:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1438:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1440
# BB#1439:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_368
.LBB14_1440:                            # %._crit_edge.loopexit.i83919
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_368:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit87
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$11, %esi
	je	.LBB14_79
# BB#369:                               #   in Loop: Header=BB14_29 Depth=1
	movl	48(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_378
# BB#370:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_372
# BB#371:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_378
.LBB14_372:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_374
# BB#373:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_378
.LBB14_374:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_376
# BB#375:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_378
.LBB14_376:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1441
# BB#377:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1441:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1443
# BB#1442:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1443:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1445
# BB#1444:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1445:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1447
# BB#1446:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1447:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1449
# BB#1448:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1449:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1451
# BB#1450:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1451:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1453
# BB#1452:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1453:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1455
# BB#1454:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1455:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1457
# BB#1456:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1457:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1459
# BB#1458:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1459:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1461
# BB#1460:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1461:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1463
# BB#1462:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1463:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1465
# BB#1464:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1465:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1467
# BB#1466:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1467:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1469
# BB#1468:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1469:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1471
# BB#1470:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_378
.LBB14_1471:                            # %._crit_edge.loopexit.i75920
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_378:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit79
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$12, %esi
	je	.LBB14_79
# BB#379:                               #   in Loop: Header=BB14_29 Depth=1
	movl	52(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_388
# BB#380:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_382
# BB#381:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_388
.LBB14_382:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_384
# BB#383:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_388
.LBB14_384:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_386
# BB#385:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_388
.LBB14_386:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1472
# BB#387:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1472:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1474
# BB#1473:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1474:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1476
# BB#1475:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1476:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1478
# BB#1477:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1478:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1480
# BB#1479:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1480:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1482
# BB#1481:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1482:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1484
# BB#1483:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1484:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1486
# BB#1485:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1486:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1488
# BB#1487:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1488:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1490
# BB#1489:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1490:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1492
# BB#1491:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1492:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1494
# BB#1493:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1494:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1496
# BB#1495:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1496:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1498
# BB#1497:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1498:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1500
# BB#1499:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1500:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1502
# BB#1501:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_388
.LBB14_1502:                            # %._crit_edge.loopexit.i67921
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_388:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit71
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$13, %esi
	je	.LBB14_79
# BB#389:                               #   in Loop: Header=BB14_29 Depth=1
	movl	56(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_398
# BB#390:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_392
# BB#391:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_398
.LBB14_392:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_394
# BB#393:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_398
.LBB14_394:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_396
# BB#395:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_398
.LBB14_396:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1503
# BB#397:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1503:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1505
# BB#1504:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1505:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1507
# BB#1506:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1507:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1509
# BB#1508:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1509:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1511
# BB#1510:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1511:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1513
# BB#1512:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1513:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1515
# BB#1514:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1515:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1517
# BB#1516:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1517:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1519
# BB#1518:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1519:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1521
# BB#1520:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1521:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1523
# BB#1522:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1523:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1525
# BB#1524:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1525:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1527
# BB#1526:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1527:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1529
# BB#1528:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1529:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1531
# BB#1530:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1531:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1533
# BB#1532:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_398
.LBB14_1533:                            # %._crit_edge.loopexit.i59922
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_398:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit63
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$14, %esi
	je	.LBB14_79
# BB#399:                               #   in Loop: Header=BB14_29 Depth=1
	movl	60(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_408
# BB#400:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_402
# BB#401:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_408
.LBB14_402:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_404
# BB#403:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_408
.LBB14_404:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_406
# BB#405:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_408
.LBB14_406:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1534
# BB#407:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1534:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1536
# BB#1535:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1536:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1538
# BB#1537:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1538:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1540
# BB#1539:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1540:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1542
# BB#1541:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1542:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1544
# BB#1543:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1544:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1546
# BB#1545:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1546:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1548
# BB#1547:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1548:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1550
# BB#1549:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1550:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1552
# BB#1551:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1552:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1554
# BB#1553:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1554:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1556
# BB#1555:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1556:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1558
# BB#1557:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1558:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1560
# BB#1559:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1560:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1562
# BB#1561:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1562:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1564
# BB#1563:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_408
.LBB14_1564:                            # %._crit_edge.loopexit.i51923
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_408:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit55
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$15, %esi
	je	.LBB14_79
# BB#409:                               #   in Loop: Header=BB14_29 Depth=1
	movl	64(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_418
# BB#410:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_412
# BB#411:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_418
.LBB14_412:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_414
# BB#413:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_418
.LBB14_414:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_416
# BB#415:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_418
.LBB14_416:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1565
# BB#417:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1565:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1567
# BB#1566:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1567:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1569
# BB#1568:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1569:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1571
# BB#1570:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1571:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1573
# BB#1572:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1573:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1575
# BB#1574:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1575:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1577
# BB#1576:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1577:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1579
# BB#1578:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1579:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1581
# BB#1580:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1581:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1583
# BB#1582:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1583:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1585
# BB#1584:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1585:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1587
# BB#1586:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1587:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1589
# BB#1588:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1589:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1591
# BB#1590:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1591:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1593
# BB#1592:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1593:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1595
# BB#1594:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_418
.LBB14_1595:                            # %._crit_edge.loopexit.i43924
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_418:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit47
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$16, %esi
	je	.LBB14_79
# BB#419:                               #   in Loop: Header=BB14_29 Depth=1
	movl	68(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_428
# BB#420:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_422
# BB#421:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_428
.LBB14_422:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_424
# BB#423:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_428
.LBB14_424:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_426
# BB#425:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_428
.LBB14_426:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1596
# BB#427:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1596:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1598
# BB#1597:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1598:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1600
# BB#1599:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1600:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1602
# BB#1601:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1602:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1604
# BB#1603:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1604:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1606
# BB#1605:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1606:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1608
# BB#1607:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1608:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1610
# BB#1609:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1610:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1612
# BB#1611:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1612:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1614
# BB#1613:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1614:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1616
# BB#1615:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1616:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1618
# BB#1617:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1618:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1620
# BB#1619:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1620:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1622
# BB#1621:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1622:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1624
# BB#1623:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1624:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1626
# BB#1625:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_428
.LBB14_1626:                            # %._crit_edge.loopexit.i35925
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_428:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit39
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$17, %esi
	je	.LBB14_79
# BB#429:                               #   in Loop: Header=BB14_29 Depth=1
	movl	72(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_438
# BB#430:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_432
# BB#431:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_438
.LBB14_432:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_434
# BB#433:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_438
.LBB14_434:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_436
# BB#435:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_438
.LBB14_436:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1627
# BB#437:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1627:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1629
# BB#1628:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1629:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1631
# BB#1630:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1631:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1633
# BB#1632:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1633:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1635
# BB#1634:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1635:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1637
# BB#1636:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1637:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1639
# BB#1638:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1639:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1641
# BB#1640:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1641:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1643
# BB#1642:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1643:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1645
# BB#1644:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1645:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1647
# BB#1646:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1647:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1649
# BB#1648:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1649:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1651
# BB#1650:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1651:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1653
# BB#1652:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1653:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1655
# BB#1654:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1655:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1657
# BB#1656:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_438
.LBB14_1657:                            # %._crit_edge.loopexit.i27926
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_438:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit31
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$18, %esi
	je	.LBB14_79
# BB#439:                               #   in Loop: Header=BB14_29 Depth=1
	movl	76(%rbx), %edi
	cmpl	%edi, (%r14)
	movq	%r14, %rsi
	je	.LBB14_448
# BB#440:                               #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 4(%r14)
	jne	.LBB14_442
# BB#441:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	4(%r14), %rsi
	jmp	.LBB14_448
.LBB14_442:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 8(%r14)
	jne	.LBB14_444
# BB#443:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	8(%r14), %rsi
	jmp	.LBB14_448
.LBB14_444:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 12(%r14)
	jne	.LBB14_446
# BB#445:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	12(%r14), %rsi
	jmp	.LBB14_448
.LBB14_446:                             #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 16(%r14)
	jne	.LBB14_1658
# BB#447:                               #   in Loop: Header=BB14_29 Depth=1
	leaq	16(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1658:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 20(%r14)
	jne	.LBB14_1660
# BB#1659:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	20(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1660:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 24(%r14)
	jne	.LBB14_1662
# BB#1661:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	24(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1662:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 28(%r14)
	jne	.LBB14_1664
# BB#1663:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	28(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1664:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 32(%r14)
	jne	.LBB14_1666
# BB#1665:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	32(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1666:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 36(%r14)
	jne	.LBB14_1668
# BB#1667:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	36(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1668:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 40(%r14)
	jne	.LBB14_1670
# BB#1669:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	40(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1670:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 44(%r14)
	jne	.LBB14_1672
# BB#1671:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	44(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1672:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 48(%r14)
	jne	.LBB14_1674
# BB#1673:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	48(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1674:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 52(%r14)
	jne	.LBB14_1676
# BB#1675:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	52(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1676:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 56(%r14)
	jne	.LBB14_1678
# BB#1677:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	56(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1678:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 60(%r14)
	jne	.LBB14_1680
# BB#1679:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	60(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1680:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 64(%r14)
	jne	.LBB14_1682
# BB#1681:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	64(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1682:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 68(%r14)
	jne	.LBB14_1684
# BB#1683:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	68(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1684:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 72(%r14)
	jne	.LBB14_1686
# BB#1685:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	72(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1686:                            #   in Loop: Header=BB14_29 Depth=1
	cmpl	%edi, 76(%r14)
	jne	.LBB14_1688
# BB#1687:                              #   in Loop: Header=BB14_29 Depth=1
	leaq	76(%r14), %rsi
	jmp	.LBB14_448
.LBB14_1688:                            # %._crit_edge.loopexit.i19927
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	%rcx, %rsi
.LBB14_448:                             # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit23
                                        #   in Loop: Header=BB14_29 Depth=1
	cmpq	%rcx, %rsi
	movl	$19, %esi
	jne	.LBB14_80
	.p2align	4, 0x90
.LBB14_79:                              #   in Loop: Header=BB14_29 Depth=1
	movl	(%rbx,%rsi,4), %esi
	movl	%esi, (%r14,%rdx,4)
.LBB14_80:                              # %_ZN3TSP15repairOffspringEPiiPKi.exit10
                                        #   in Loop: Header=BB14_29 Depth=1
	incq	%rdx
	cmpq	$20, %rdx
	jne	.LBB14_29
.LBB14_81:                              # %.loopexit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZN3TSP9crossoverEPKiS1_PiS2_, .Lfunc_end14-_ZN3TSP9crossoverEPKiS1_PiS2_
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI15_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI15_1:
	.quad	4626322717216342016     # double 20
.LCPI15_2:
	.quad	4467570830351532032     # double 4.6566128730773926E-10
	.text
	.globl	_ZN3TSP6mutateEPi
	.p2align	4, 0x90
	.type	_ZN3TSP6mutateEPi,@function
_ZN3TSP6mutateEPi:                      # @_ZN3TSP6mutateEPi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
.Ltmp99:
	.cfi_offset %rbx, -32
.Ltmp100:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	rand
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI15_0(%rip), %xmm0
	ucomisd	8(%rbx), %xmm0
	ja	.LBB15_5
# BB#1:
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI15_1(%rip), %xmm0
	mulsd	.LCPI15_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ebx
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI15_1(%rip), %xmm0
	mulsd	.LCPI15_2(%rip), %xmm0
	jmp	.LBB15_3
	.p2align	4, 0x90
.LBB15_2:                               # %.lr.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	callq	rand
	movsd	.LCPI15_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LCPI15_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
.LBB15_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	cvttsd2si	%xmm0, %eax
	cmpl	%eax, %ebx
	je	.LBB15_2
# BB#4:                                 # %._crit_edge
	movslq	%ebx, %rcx
	movl	(%r14,%rcx,4), %edx
	cltq
	movl	(%r14,%rax,4), %esi
	movl	%esi, (%r14,%rcx,4)
	movl	%edx, (%r14,%rax,4)
.LBB15_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_ZN3TSP6mutateEPi, .Lfunc_end15-_ZN3TSP6mutateEPi
	.cfi_endproc

	.globl	_ZN3TSP12hasDuplicateEPKim
	.p2align	4, 0x90
	.type	_ZN3TSP12hasDuplicateEPKim,@function
_ZN3TSP12hasDuplicateEPKim:             # @_ZN3TSP12hasDuplicateEPKim
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
	xorl	%r8d, %r8d
	movl	$76, %ecx
	testq	%rdx, %rdx
	movl	$0, %eax
	je	.LBB16_7
	.p2align	4, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	movq	352(%rdi), %r9
	movl	(%rsi), %eax
	cmpl	-76(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#2:                                 #   in Loop: Header=BB16_1 Depth=1
	movl	4(%rsi), %eax
	cmpl	-72(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#8:                                 #   in Loop: Header=BB16_1 Depth=1
	movl	8(%rsi), %eax
	cmpl	-68(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#9:                                 #   in Loop: Header=BB16_1 Depth=1
	movl	12(%rsi), %eax
	cmpl	-64(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#10:                                #   in Loop: Header=BB16_1 Depth=1
	movl	16(%rsi), %eax
	cmpl	-60(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#11:                                #   in Loop: Header=BB16_1 Depth=1
	movl	20(%rsi), %eax
	cmpl	-56(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#12:                                #   in Loop: Header=BB16_1 Depth=1
	movl	24(%rsi), %eax
	cmpl	-52(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#13:                                #   in Loop: Header=BB16_1 Depth=1
	movl	28(%rsi), %eax
	cmpl	-48(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#14:                                #   in Loop: Header=BB16_1 Depth=1
	movl	32(%rsi), %eax
	cmpl	-44(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#15:                                #   in Loop: Header=BB16_1 Depth=1
	movl	36(%rsi), %eax
	cmpl	-40(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#16:                                #   in Loop: Header=BB16_1 Depth=1
	movl	40(%rsi), %eax
	cmpl	-36(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#17:                                #   in Loop: Header=BB16_1 Depth=1
	movl	44(%rsi), %eax
	cmpl	-32(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#18:                                #   in Loop: Header=BB16_1 Depth=1
	movl	48(%rsi), %eax
	cmpl	-28(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#19:                                #   in Loop: Header=BB16_1 Depth=1
	movl	52(%rsi), %eax
	cmpl	-24(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#20:                                #   in Loop: Header=BB16_1 Depth=1
	movl	56(%rsi), %eax
	cmpl	-20(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#21:                                #   in Loop: Header=BB16_1 Depth=1
	movl	60(%rsi), %eax
	cmpl	-16(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#22:                                #   in Loop: Header=BB16_1 Depth=1
	movl	64(%rsi), %eax
	cmpl	-12(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#23:                                #   in Loop: Header=BB16_1 Depth=1
	movl	68(%rsi), %eax
	cmpl	-8(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#24:                                #   in Loop: Header=BB16_1 Depth=1
	movl	72(%rsi), %eax
	cmpl	-4(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#25:                                #   in Loop: Header=BB16_1 Depth=1
	movl	76(%rsi), %eax
	cmpl	(%r9,%rcx), %eax
	jne	.LBB16_3
# BB#26:                                #   in Loop: Header=BB16_1 Depth=1
	movb	$1, %r9b
	jmp	.LBB16_4
	.p2align	4, 0x90
.LBB16_3:                               #   in Loop: Header=BB16_1 Depth=1
	xorl	%r9d, %r9d
.LBB16_4:                               # %.loopexit
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	$1, %al
	testb	%r9b, %r9b
	jne	.LBB16_7
# BB#5:                                 #   in Loop: Header=BB16_1 Depth=1
	incq	%r8
	addq	$80, %rcx
	cmpq	%rdx, %r8
	jb	.LBB16_1
# BB#6:
	xorl	%eax, %eax
.LBB16_7:                               # %._crit_edge
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_ZN3TSP12hasDuplicateEPKim, .Lfunc_end16-_ZN3TSP12hasDuplicateEPKim
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI17_0:
	.quad	4467570830351532032     # double 4.6566128730773926E-10
	.text
	.globl	_ZN3TSP15randomExclusiveEd
	.p2align	4, 0x90
	.type	_ZN3TSP15randomExclusiveEd,@function
_ZN3TSP15randomExclusiveEd:             # @_ZN3TSP15randomExclusiveEd
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	rand
	cvtsi2sdl	%eax, %xmm1
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI17_0(%rip), %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_ZN3TSP15randomExclusiveEd, .Lfunc_end17-_ZN3TSP15randomExclusiveEd
	.cfi_endproc

	.globl	_ZN3TSP15repairOffspringEPiiPKi
	.p2align	4, 0x90
	.type	_ZN3TSP15repairOffspringEPiiPKi,@function
_ZN3TSP15repairOffspringEPiiPKi:        # @_ZN3TSP15repairOffspringEPiiPKi
	.cfi_startproc
# BB#0:                                 # %.lr.ph
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
.Ltmp110:
	.cfi_offset %rbx, -24
	leaq	80(%rsi), %r11
	xorl	%eax, %eax
	leaq	4(%rsi), %r8
	leaq	8(%rsi), %r9
	leaq	12(%rsi), %r10
	.p2align	4, 0x90
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rax,4), %ebx
	cmpl	%ebx, (%rsi)
	movq	%rsi, %rdi
	je	.LBB18_7
# BB#2:                                 #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 4(%rsi)
	movq	%r8, %rdi
	je	.LBB18_7
# BB#3:                                 #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 8(%rsi)
	movq	%r9, %rdi
	je	.LBB18_7
# BB#4:                                 #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 12(%rsi)
	movq	%r10, %rdi
	je	.LBB18_7
# BB#5:                                 #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 16(%rsi)
	jne	.LBB18_11
# BB#6:                                 #   in Loop: Header=BB18_1 Depth=1
	leaq	16(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_11:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 20(%rsi)
	jne	.LBB18_13
# BB#12:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	20(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_13:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 24(%rsi)
	jne	.LBB18_15
# BB#14:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	24(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_15:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 28(%rsi)
	jne	.LBB18_17
# BB#16:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	28(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_17:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 32(%rsi)
	jne	.LBB18_19
# BB#18:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	32(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_19:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 36(%rsi)
	jne	.LBB18_21
# BB#20:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	36(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_21:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 40(%rsi)
	jne	.LBB18_23
# BB#22:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	40(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_23:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 44(%rsi)
	jne	.LBB18_25
# BB#24:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	44(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_25:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 48(%rsi)
	jne	.LBB18_27
# BB#26:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	48(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_27:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 52(%rsi)
	jne	.LBB18_29
# BB#28:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	52(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_29:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 56(%rsi)
	jne	.LBB18_31
# BB#30:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	56(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_31:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 60(%rsi)
	jne	.LBB18_33
# BB#32:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	60(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_33:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 64(%rsi)
	jne	.LBB18_35
# BB#34:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	64(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_35:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 68(%rsi)
	jne	.LBB18_37
# BB#36:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	68(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_37:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 72(%rsi)
	jne	.LBB18_39
# BB#38:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	72(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_39:                              #   in Loop: Header=BB18_1 Depth=1
	cmpl	%ebx, 76(%rsi)
	jne	.LBB18_41
# BB#40:                                #   in Loop: Header=BB18_1 Depth=1
	leaq	76(%rsi), %rdi
	jmp	.LBB18_7
.LBB18_41:                              # %._crit_edge.loopexit.i17
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	%r11, %rdi
	.p2align	4, 0x90
.LBB18_7:                               # %_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	%r11, %rdi
	je	.LBB18_8
# BB#9:                                 #   in Loop: Header=BB18_1 Depth=1
	incq	%rax
	cmpq	$20, %rax
	jb	.LBB18_1
	jmp	.LBB18_10
.LBB18_8:
	movl	(%rcx,%rax,4), %eax
	movslq	%edx, %rcx
	movl	%eax, (%rsi,%rcx,4)
.LBB18_10:                              # %.loopexit
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_ZN3TSP15repairOffspringEPiiPKi, .Lfunc_end18-_ZN3TSP15repairOffspringEPiiPKi
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI19_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI19_1:
	.quad	4581421828931458171     # double 0.02
.LCPI19_2:
	.quad	4629137466983448576     # double 30
.LCPI19_3:
	.quad	-4616189618054758400    # double -1
.LCPI19_4:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
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
	subq	$56, %rsp
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
	movl	$360, %edi              # imm = 0x168
	callq	_Znwm
	movq	%rax, %r15
.Ltmp111:
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%r15, %rdi
	callq	_ZN3TSPC2Edd
.Ltmp112:
# BB#1:
	xorpd	%xmm0, %xmm0
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB19_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	344(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	(%r14,%r14,4), %r12
	shlq	$4, %r12
	leaq	(%rax,%r12), %rbx
	movl	$1, %r13d
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB19_3:                               #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbx,%r13,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%rbx,%r13,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_5
# BB#4:                                 # %call.sqrt
                                        #   in Loop: Header=BB19_3 Depth=2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_5:                               # %.split
                                        #   in Loop: Header=BB19_3 Depth=2
	addsd	%xmm1, %xmm2
	incq	%r13
	cmpq	$20, %r13
	jne	.LBB19_3
# BB#6:                                 # %_ZNK3TSP13totalDistanceEPKi.exit
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movslq	76(%rax,%r12), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%rbx), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_8
# BB#7:                                 # %call.sqrt25
                                        #   in Loop: Header=BB19_2 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_8:                               # %_ZNK3TSP13totalDistanceEPKi.exit.split
                                        #   in Loop: Header=BB19_2 Depth=1
	addsd	%xmm1, %xmm2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	incq	%r14
	cmpq	$30, %r14
	jne	.LBB19_2
# BB#9:                                 # %.lr.ph
	divsd	.LCPI19_2(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	.LCPI19_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB19_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_11 Depth 2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	callq	_ZN3TSP14nextPopulationEv
	incq	%r14
	movq	336(%r15), %r12
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB19_11:                              #   Parent Loop BB19_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%r12,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_13
# BB#12:                                # %call.sqrt27
                                        #   in Loop: Header=BB19_11 Depth=2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_13:                              # %.split26
                                        #   in Loop: Header=BB19_11 Depth=2
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB19_11
# BB#14:                                # %_ZNK3TSP13totalDistanceEPKi.exit18
                                        #   in Loop: Header=BB19_10 Depth=1
	movslq	76(%r12), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_16
# BB#15:                                # %call.sqrt28
                                        #   in Loop: Header=BB19_10 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_16:                              # %_ZNK3TSP13totalDistanceEPKi.exit18.split
                                        #   in Loop: Header=BB19_10 Depth=1
	addsd	%xmm1, %xmm2
	movsd	.LCPI19_4(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB19_18
# BB#17:                                #   in Loop: Header=BB19_10 Depth=1
	movapd	%xmm1, %xmm0
.LBB19_18:                              #   in Loop: Header=BB19_10 Depth=1
	cmpq	$10000, %r14            # imm = 0x2710
	jne	.LBB19_10
# BB#19:                                # %._crit_edge
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10000, %esi            # imm = 0x2710
	movq	%rax, %rdi
	callq	_ZNSolsEm
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt4cout, %edi
	movl	$.L.str.5, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt4cout, %edi
	movl	$.L.str.6, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNK3TSP17getBestPathStringEv
.Ltmp114:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.Ltmp115:
# BB#20:
.Ltmp116:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp117:
# BB#21:
	leaq	-72(%rbp), %rdi
	callq	_ZNSsD1Ev
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movq	336(%r15), %r12
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB19_22:                              # =>This Inner Loop Header: Depth=1
	movslq	-4(%r12,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_24
# BB#23:                                # %call.sqrt30
                                        #   in Loop: Header=BB19_22 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_24:                              # %.split29
                                        #   in Loop: Header=BB19_22 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB19_22
# BB#25:                                # %_ZNK3TSP13totalDistanceEPKi.exit26
	movslq	76(%r12), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_27
# BB#26:                                # %call.sqrt31
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_27:                              # %_ZNK3TSP13totalDistanceEPKi.exit26.split
	addsd	%xmm1, %xmm2
	movsd	.LCPI19_4(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movq	%r14, %rdi
	callq	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt4cout, %edi
	movl	$.L.str.8, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movq	336(%r15), %r12
	xorpd	%xmm2, %xmm2
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB19_28:                              # =>This Inner Loop Header: Depth=1
	movslq	-4(%r12,%rbx,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12,%rbx,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_30
# BB#29:                                # %call.sqrt33
                                        #   in Loop: Header=BB19_28 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_30:                              # %.split32
                                        #   in Loop: Header=BB19_28 Depth=1
	addsd	%xmm1, %xmm2
	incq	%rbx
	cmpq	$20, %rbx
	jne	.LBB19_28
# BB#31:                                # %_ZNK3TSP13totalDistanceEPKi.exit34
	movslq	76(%r12), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r12), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_33
# BB#32:                                # %call.sqrt34
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_33:                              # %_ZNK3TSP13totalDistanceEPKi.exit34.split
	addsd	%xmm1, %xmm2
	movq	%r14, %rdi
	movapd	%xmm2, %xmm0
	callq	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt4cout, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB19_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_35 Depth 2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movq	344(%r15), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %r13
	shlq	$4, %r13
	leaq	(%rax,%r13), %r14
	movl	$1, %r12d
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB19_35:                              #   Parent Loop BB19_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%r14,%r12,4), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14,%r12,4), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_37
# BB#36:                                # %call.sqrt36
                                        #   in Loop: Header=BB19_35 Depth=2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_37:                              # %.split35
                                        #   in Loop: Header=BB19_35 Depth=2
	addsd	%xmm1, %xmm2
	incq	%r12
	cmpq	$20, %r12
	jne	.LBB19_35
# BB#38:                                # %_ZNK3TSP13totalDistanceEPKi.exit42
                                        #   in Loop: Header=BB19_34 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movslq	76(%rax,%r13), %rax
	movsd	16(%r15,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movslq	(%r14), %rcx
	subsd	16(%r15,%rcx,8), %xmm1
	movsd	176(%r15,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	176(%r15,%rcx,8), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB19_40
# BB#39:                                # %call.sqrt37
                                        #   in Loop: Header=BB19_34 Depth=1
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB19_40:                              # %_ZNK3TSP13totalDistanceEPKi.exit42.split
                                        #   in Loop: Header=BB19_34 Depth=1
	addsd	%xmm1, %xmm2
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	incq	%rbx
	cmpq	$30, %rbx
	jne	.LBB19_34
# BB#41:                                # %_ZNK3TSP18getAverageDistanceEv.exit4
	divsd	.LCPI19_2(%rip), %xmm0
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt4cout, %edi
	movl	$.L.str.10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	testq	%r15, %r15
	je	.LBB19_43
# BB#42:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB19_43:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_44:
.Ltmp118:
	movq	%rax, %r14
.Ltmp119:
	leaq	-72(%rbp), %rdi
	callq	_ZNSsD1Ev
.Ltmp120:
# BB#45:
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB19_47:
.Ltmp113:
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB19_46:
.Ltmp121:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end19:
	.size	main, .Lfunc_end19-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table19:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\343\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp111-.Lfunc_begin1  #   Call between .Lfunc_begin1 and .Ltmp111
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp111-.Lfunc_begin1  # >> Call Site 2 <<
	.long	.Ltmp112-.Ltmp111       #   Call between .Ltmp111 and .Ltmp112
	.long	.Ltmp113-.Lfunc_begin1  #     jumps to .Ltmp113
	.byte	0                       #   On action: cleanup
	.long	.Ltmp112-.Lfunc_begin1  # >> Call Site 3 <<
	.long	.Ltmp114-.Ltmp112       #   Call between .Ltmp112 and .Ltmp114
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp114-.Lfunc_begin1  # >> Call Site 4 <<
	.long	.Ltmp117-.Ltmp114       #   Call between .Ltmp114 and .Ltmp117
	.long	.Ltmp118-.Lfunc_begin1  #     jumps to .Ltmp118
	.byte	0                       #   On action: cleanup
	.long	.Ltmp117-.Lfunc_begin1  # >> Call Site 5 <<
	.long	.Ltmp119-.Ltmp117       #   Call between .Ltmp117 and .Ltmp119
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp119-.Lfunc_begin1  # >> Call Site 6 <<
	.long	.Ltmp120-.Ltmp119       #   Call between .Ltmp119 and .Ltmp120
	.long	.Ltmp121-.Lfunc_begin1  #     jumps to .Ltmp121
	.byte	1                       #   On action: 1
	.long	.Ltmp120-.Lfunc_begin1  # >> Call Site 7 <<
	.long	.Lfunc_end19-.Ltmp120   #   Call between .Ltmp120 and .Lfunc_end19
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_tsp_ga.cpp,@function
_GLOBAL__sub_I_tsp_ga.cpp:              # @_GLOBAL__sub_I_tsp_ga.cpp
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
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rbp
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end20:
	.size	_GLOBAL__sub_I_tsp_ga.cpp, .Lfunc_end20-_GLOBAL__sub_I_tsp_ga.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	","
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"index < chromosones && \"Index out of bounds\""
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tsp_ga.cpp"
	.size	.L.str.2, 11

	.type	.L__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim,@object # @__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim
.L__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim:
	.asciz	"void TSP::copyToNewPopulation(const int *const, size_t)"
	.size	.L__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim, 56

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"false && \"A chromosone should have been picked by now\""
	.size	.L.str.3, 55

	.type	.L__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd,@object # @__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd
.L__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd:
	.asciz	"int *TSP::rouletteSelection(const double *const) const"
	.size	.L__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd, 55

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Number of generations: "
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Best chromosone info: "
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\t-Path: "
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\t-Goal function: "
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\t-Distance: "
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Average distance: "
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Initial average: "
	.size	.L.str.10, 18

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_tsp_ga.cpp

	.globl	_ZN3TSPC1Edd
	.type	_ZN3TSPC1Edd,@function
_ZN3TSPC1Edd = _ZN3TSPC2Edd
	.ident	"clang version 3.9.0 (trunk 263061)"
	.section	".note.GNU-stack","",@progbits
