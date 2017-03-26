	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z16slowperformance1PdS_S_i
	.align	4, 0x90
__Z16slowperformance1PdS_S_i:           ## @_Z16slowperformance1PdS_S_i
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_8
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -48(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$4, -48(%rbp)
	jge	LBB0_6
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	$5, %eax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-52(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_1
LBB0_8:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z11loop_unrollPdS_S_i
	.align	4, 0x90
__Z11loop_unrollPdS_S_i:                ## @_Z11loop_unrollPdS_S_i
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	$5, %eax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	-44(%rbp), %esi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-48(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB1_1
LBB1_4:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z18scalar_replacementPdS_S_i
	.align	4, 0x90
__Z18scalar_replacementPdS_S_i:         ## @_Z18scalar_replacementPdS_S_i
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	$0, -68(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB2_4
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$5, %eax
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-84(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-80(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-80(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	-68(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	-68(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	mulsd	(%rdi,%rcx,8), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB2_1
LBB2_4:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z24super_scalar_replacementPdS_S_i
	.align	4, 0x90
__Z24super_scalar_replacementPdS_S_i:   ## @_Z24super_scalar_replacementPdS_S_i
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$152, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm0, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -184(%rbp)
	movsd	%xmm0, -192(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          ## xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movq	-16(%rbp), %rdx
	movsd	32(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	movl	$0, -236(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-236(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB3_4
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	movslq	-236(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-236(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-236(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-236(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movl	-236(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-168(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-184(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
## BB#3:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -236(%rbp)
	jmp	LBB3_1
LBB3_4:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	addsd	-120(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	addsd	-136(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	addsd	-168(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	addsd	-184(%rbp), %xmm0
	addsd	-192(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$152, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z35super_scalar_replacement_generalizePdS_S_i
	.align	4, 0x90
__Z35super_scalar_replacement_generalizePdS_S_i: ## @_Z35super_scalar_replacement_generalizePdS_S_i
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$152, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm0, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -184(%rbp)
	movsd	%xmm0, -192(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          ## xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movq	-16(%rbp), %rdx
	movsd	32(%rdx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	movl	$0, -236(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-236(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB4_14
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	LBB4_4
## BB#3:
	jmp	LBB4_14
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	movslq	-236(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-248(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-236(%rbp), %edx
	addl	$1, %edx
	cmpl	-28(%rbp), %edx
	jl	LBB4_6
## BB#5:
	jmp	LBB4_14
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-256(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-236(%rbp), %eax
	addl	$2, %eax
	cmpl	-28(%rbp), %eax
	jl	LBB4_8
## BB#7:
	jmp	LBB4_14
LBB4_8:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-264(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-236(%rbp), %eax
	addl	$3, %eax
	cmpl	-28(%rbp), %eax
	jl	LBB4_10
## BB#9:
	jmp	LBB4_14
LBB4_10:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-272(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movl	-236(%rbp), %eax
	addl	$4, %eax
	cmpl	-28(%rbp), %eax
	jl	LBB4_12
## BB#11:
	jmp	LBB4_14
LBB4_12:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	addsd	-168(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-208(%rbp), %xmm0
	addsd	-184(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-280(%rbp), %xmm0       ## xmm0 = mem[0],zero
	mulsd	-216(%rbp), %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
## BB#13:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-236(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -236(%rbp)
	jmp	LBB4_1
LBB4_14:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	addsd	-120(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	addsd	-136(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	addsd	-168(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	addsd	-184(%rbp), %xmm0
	addsd	-192(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$152, %rsp
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
