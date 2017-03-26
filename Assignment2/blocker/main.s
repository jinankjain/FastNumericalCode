	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z8init_tscv
	.align	4, 0x90
__Z8init_tscv:                          ## @_Z8init_tscv
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
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z9start_tscv
	.align	4, 0x90
__Z9start_tscv:                         ## @_Z9start_tscv
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
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	## InlineAsm Start
	cpuid
	## InlineAsm End
	## InlineAsm Start
	rdtsc
	## InlineAsm End
	movl	%eax, -16(%rbp)
	movl	%edx, -12(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z8stop_tscy
	.align	4, 0x90
__Z8stop_tscy:                          ## @_Z8stop_tscy
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
Ltmp10:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	## InlineAsm Start
	rdtsc
	## InlineAsm End
	movl	%eax, -24(%rbp)
	movl	%edx, -20(%rbp)
	xorl	%eax, %eax
	## InlineAsm Start
	cpuid
	## InlineAsm End
	movq	-24(%rbp), %rdi
	subq	-16(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI3_0:
	.quad	4746794007244308480     ## double 2147483647
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z5randsPdmm
	.align	4, 0x90
__Z5randsPdmm:                          ## @_Z5randsPdmm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	LBB3_4
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	callq	_rand
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
## BB#3:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB3_1
LBB3_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z5buildPPdj
	.align	4, 0x90
__Z5buildPPdj:                          ## @_Z5buildPPdj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp14:
	.cfi_def_cfa_offset 16
Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %edi
	shlq	$3, %rdi
	callq	_malloc
	movl	$1, %esi
                                        ## 
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	callq	__Z5randsPdmm
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z7destroyPd
	.align	4, 0x90
__Z7destroyPd:                          ## @_Z7destroyPd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z18register_functionsv
	.align	4, 0x90
__Z18register_functionsv:               ## @_Z18register_functionsv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp20:
	.cfi_def_cfa_offset 16
Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp22:
	.cfi_def_cfa_register %rbp
	movq	__Z16slowperformance1PdS_S_i@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$8, %edx
	callq	__Z12add_functionPFvPdS_S_iEPci
	movq	__Z11loop_unrollPdS_S_i@GOTPCREL(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$8, %edx
	callq	__Z12add_functionPFvPdS_S_iEPci
	movq	__Z18scalar_replacementPdS_S_i@GOTPCREL(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	movl	$8, %edx
	callq	__Z12add_functionPFvPdS_S_iEPci
	movq	__Z24super_scalar_replacementPdS_S_i@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	movl	$8, %edx
	callq	__Z12add_functionPFvPdS_S_iEPci
	movq	__Z35super_scalar_replacement_generalizePdS_S_i@GOTPCREL(%rip), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	$8, %edx
	callq	__Z12add_functionPFvPdS_S_iEPci
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z12add_functionPFvPdS_S_iEPci
	.align	4, 0x90
__Z12add_functionPFvPdS_S_iEPci:        ## @_Z12add_functionPFvPdS_S_iEPci
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$32, _numFuncs(%rip)
	jl	LBB7_2
## BB#1:
	leaq	L_.str.12(%rip), %rdi
	movl	$32, %edx
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB7_3
LBB7_2:
	leaq	_funcFlops(%rip), %rax
	leaq	_funcNames(%rip), %rcx
	leaq	_userFuncs(%rip), %rdx
	movq	-8(%rbp), %rsi
	movslq	_numFuncs(%rip), %rdi
	movq	%rsi, (%rdx,%rdi,8)
	movq	-16(%rbp), %rdx
	movslq	_numFuncs(%rip), %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movl	-20(%rbp), %r8d
	movslq	_numFuncs(%rip), %rcx
	movl	%r8d, (%rax,%rcx,4)
	movl	_numFuncs(%rip), %r8d
	addl	$1, %r8d
	movl	%r8d, _numFuncs(%rip)
LBB7_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI8_0:
	.quad	4562254508917369340     ## double 0.001
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI8_1:
	.quad	9223372036854775807     ## 0x7fffffffffffffff
	.quad	9223372036854775807     ## 0x7fffffffffffffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp26:
	.cfi_def_cfa_offset 16
Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	L_.str.5(%rip), %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$2, -44(%rbp)
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	callq	__Z18register_functionsv
	cmpl	$0, _numFuncs(%rip)
	jne	LBB8_2
## BB#1:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	jmp	LBB8_13
LBB8_2:
	leaq	L_.str.9(%rip), %rdi
	movl	_numFuncs(%rip), %esi
	movb	$0, %al
	callq	_printf
	leaq	-56(%rbp), %rdi
	movl	$32000, -48(%rbp)       ## imm = 0x7D00
	movl	-48(%rbp), %esi
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	callq	__Z5buildPPdj
	leaq	-64(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	__Z5buildPPdj
	leaq	-72(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	__Z5buildPPdj
	movq	_userFuncs(%rip), %rdi
	movq	%rdi, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-48(%rbp), %eax
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movq	-136(%rbp), %r8         ## 8-byte Reload
	callq	*%r8
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rdx
	movsd	(%rdx), %xmm1           ## xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$0, -36(%rbp)
LBB8_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	_numFuncs(%rip), %eax
	jge	LBB8_8
## BB#4:                                ##   in Loop: Header=BB8_3 Depth=1
	leaq	_userFuncs(%rip), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-48(%rbp), %ecx
	callq	*%rax
	movsd	LCPI8_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movapd	LCPI8_1(%rip), %xmm2    ## xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movsd	-96(%rbp), %xmm1        ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_6
## BB#5:                                ##   in Loop: Header=BB8_3 Depth=1
	leaq	L_.str.10(%rip), %rdi
	movl	-36(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -140(%rbp)        ## 4-byte Spill
LBB8_6:                                 ##   in Loop: Header=BB8_3 Depth=1
	jmp	LBB8_7
LBB8_7:                                 ##   in Loop: Header=BB8_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB8_3
LBB8_8:
	movq	-56(%rbp), %rdi
	callq	__Z7destroyPd
	movq	-64(%rbp), %rdi
	callq	__Z7destroyPd
	movq	-72(%rbp), %rdi
	callq	__Z7destroyPd
	movl	$0, -36(%rbp)
LBB8_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	_numFuncs(%rip), %eax
	jge	LBB8_12
## BB#10:                               ##   in Loop: Header=BB8_9 Depth=1
	leaq	_funcFlops(%rip), %rax
	leaq	_funcNames(%rip), %rcx
	leaq	_userFuncs(%rip), %rdx
	movslq	-36(%rbp), %rsi
	movq	(%rdx,%rsi,8), %rdi
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	callq	__Z9perf_testPFvPdS_S_iEPci
	leaq	L_.str.11(%rip), %rdi
	leaq	_funcNames(%rip), %rax
	movsd	%xmm0, -24(%rbp)
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	movl	%eax, -144(%rbp)        ## 4-byte Spill
## BB#11:                               ##   in Loop: Header=BB8_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB8_9
LBB8_12:
	movl	$0, -4(%rbp)
LBB8_13:
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI9_0:
	.quad	4607182418800017408     ## double 1
LCPI9_1:
	.quad	4711630319722168320     ## double 1.0E+7
LCPI9_4:
	.quad	4611686018427387904     ## double 2
LCPI9_5:
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI9_2:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI9_3:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9perf_testPFvPdS_S_iEPci
	.align	4, 0x90
__Z9perf_testPFvPdS_S_iEPci:            ## @_Z9perf_testPFvPdS_S_iEPci
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp56:
	.cfi_def_cfa_offset 16
Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$912, %rsp              ## imm = 0x390
	leaq	-728(%rbp), %rax
	movsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -656(%rbp)
	movq	%rsi, -664(%rbp)
	movl	%edx, -668(%rbp)
	movsd	%xmm1, -680(%rbp)
	movsd	%xmm1, -688(%rbp)
	movq	$100, -696(%rbp)
	movsd	%xmm0, -704(%rbp)
	movl	$32000, -748(%rbp)      ## imm = 0x7D00
	movl	-748(%rbp), %esi
	movq	%rax, %rdi
	callq	__Z5buildPPdj
	leaq	-736(%rbp), %rdi
	movl	-748(%rbp), %esi
	callq	__Z5buildPPdj
	leaq	-744(%rbp), %rdi
	movl	-748(%rbp), %esi
	callq	__Z5buildPPdj
LBB9_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_2 Depth 2
	cvtsi2sdq	-696(%rbp), %xmm0
	mulsd	-704(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -696(%rbp)
	callq	__Z9start_tscv
	movq	%rax, -712(%rbp)
	movq	$0, -760(%rbp)
LBB9_2:                                 ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-760(%rbp), %rax
	cmpq	-696(%rbp), %rax
	jae	LBB9_5
## BB#3:                                ##   in Loop: Header=BB9_2 Depth=2
	movq	-656(%rbp), %rax
	movq	-728(%rbp), %rdi
	movq	-736(%rbp), %rsi
	movq	-744(%rbp), %rdx
	movl	-748(%rbp), %ecx
	callq	*%rax
## BB#4:                                ##   in Loop: Header=BB9_2 Depth=2
	movq	-760(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)
	jmp	LBB9_2
LBB9_5:                                 ##   in Loop: Header=BB9_1 Depth=1
	movsd	LCPI9_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-712(%rbp), %rdi
	movsd	%xmm0, -856(%rbp)       ## 8-byte Spill
	callq	__Z8stop_tscy
	movq	%rax, -720(%rbp)
	movd	%rax, %xmm0
	movaps	LCPI9_2(%rip), %xmm1    ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI9_3(%rip), %xmm1    ## xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	%xmm1, -680(%rbp)
	movsd	-856(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	-680(%rbp), %xmm0
	movsd	%xmm0, -704(%rbp)
## BB#6:                                ##   in Loop: Header=BB9_1 Depth=1
	movsd	LCPI9_4(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_1
## BB#7:
	leaq	-328(%rbp), %rax
	leaq	-352(%rbp), %rcx
	leaq	-808(%rbp), %rdx
	leaq	-504(%rbp), %rsi
	leaq	-528(%rbp), %rdi
	leaq	-784(%rbp), %r8
	movq	%r8, -648(%rbp)
	movq	-648(%rbp), %r8
	movq	%r8, -640(%rbp)
	movq	-640(%rbp), %r8
	movq	%r8, -632(%rbp)
	movq	-632(%rbp), %r8
	movq	%r8, -624(%rbp)
	movq	-624(%rbp), %r9
	movq	%r9, -616(%rbp)
	movq	-616(%rbp), %r9
	movq	%r9, -608(%rbp)
	movq	-608(%rbp), %r10
	movq	%r10, -600(%rbp)
	movq	-600(%rbp), %r10
	movq	%r10, -592(%rbp)
	movq	-592(%rbp), %r10
	movq	%r10, -584(%rbp)
	movq	-584(%rbp), %r10
	movq	%r10, (%r9)
	movq	%r9, -576(%rbp)
	movq	-576(%rbp), %r10
	movq	%r10, -568(%rbp)
	movq	-568(%rbp), %r10
	movq	%r10, -560(%rbp)
	movq	-560(%rbp), %r10
	movq	%r10, -552(%rbp)
	movq	-552(%rbp), %r10
	movq	%r10, 8(%r9)
	addq	$16, %r8
	movq	%r8, -536(%rbp)
	movq	$0, -544(%rbp)
	movq	-536(%rbp), %r8
	movq	-544(%rbp), %r9
	movq	%r8, -520(%rbp)
	movq	%r9, -528(%rbp)
	movq	-520(%rbp), %r8
	movq	%rdi, -512(%rbp)
	movq	-512(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%r8, -496(%rbp)
	movq	%rdi, -504(%rbp)
	movq	-496(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -488(%rbp)
	movq	%rsi, -480(%rbp)
	movq	-480(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdi)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	%rdx, -464(%rbp)
	movq	-464(%rbp), %rdx
	movq	%rdx, -456(%rbp)
	movq	-456(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-448(%rbp), %rsi
	movq	%rsi, -440(%rbp)
	movq	-440(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-432(%rbp), %rdi
	movq	%rdi, -424(%rbp)
	movq	-424(%rbp), %rdi
	movq	%rdi, -416(%rbp)
	movq	-416(%rbp), %rdi
	movq	%rdi, -408(%rbp)
	movq	-408(%rbp), %rdi
	movq	%rdi, (%rsi)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rdi
	movq	%rdi, -392(%rbp)
	movq	-392(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	-384(%rbp), %rdi
	movq	%rdi, -376(%rbp)
	movq	-376(%rbp), %rdi
	movq	%rdi, 8(%rsi)
	addq	$16, %rdx
	movq	%rdx, -360(%rbp)
	movq	$0, -368(%rbp)
	movq	-360(%rbp), %rdx
	movq	-368(%rbp), %rsi
	movq	%rdx, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	-344(%rbp), %rdx
	movq	%rcx, -336(%rbp)
	movq	-336(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdx, -320(%rbp)
	movq	%rcx, -328(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
## BB#8:
	movq	$0, -832(%rbp)
LBB9_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_12 Depth 2
	cmpq	$30, -832(%rbp)
	jae	LBB9_23
## BB#10:                               ##   in Loop: Header=BB9_9 Depth=1
Ltmp40:
	callq	__Z9start_tscv
Ltmp41:
	movq	%rax, -864(%rbp)        ## 8-byte Spill
	jmp	LBB9_11
LBB9_11:                                ##   in Loop: Header=BB9_9 Depth=1
	movq	-864(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -712(%rbp)
	movq	$0, -840(%rbp)
LBB9_12:                                ##   Parent Loop BB9_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-840(%rbp), %rax
	cmpq	-696(%rbp), %rax
	jae	LBB9_18
## BB#13:                               ##   in Loop: Header=BB9_12 Depth=2
	movq	-656(%rbp), %rax
	movq	-728(%rbp), %rdi
	movq	-736(%rbp), %rsi
	movq	-744(%rbp), %rdx
	movl	-748(%rbp), %ecx
Ltmp48:
	callq	*%rax
Ltmp49:
	jmp	LBB9_14
LBB9_14:                                ##   in Loop: Header=BB9_12 Depth=2
	jmp	LBB9_15
LBB9_15:                                ##   in Loop: Header=BB9_12 Depth=2
	movq	-840(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -840(%rbp)
	jmp	LBB9_12
LBB9_16:
Ltmp39:
	movl	%edx, %ecx
	movq	%rax, -816(%rbp)
	movl	%ecx, -820(%rbp)
	jmp	LBB9_32
LBB9_17:
Ltmp50:
	movl	%edx, %ecx
	movq	%rax, -816(%rbp)
	movl	%ecx, -820(%rbp)
Ltmp51:
	leaq	-808(%rbp), %rdi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
Ltmp52:
	jmp	LBB9_31
LBB9_18:                                ##   in Loop: Header=BB9_9 Depth=1
	movq	-712(%rbp), %rdi
Ltmp42:
	callq	__Z8stop_tscy
Ltmp43:
	movq	%rax, -872(%rbp)        ## 8-byte Spill
	jmp	LBB9_19
LBB9_19:                                ##   in Loop: Header=BB9_9 Depth=1
	movq	-872(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -720(%rbp)
	movd	%rax, %xmm0
	movaps	LCPI9_2(%rip), %xmm1    ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI9_3(%rip), %xmm1    ## xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	cvtsi2sdq	-696(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -680(%rbp)
Ltmp44:
	leaq	-784(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd
Ltmp45:
	jmp	LBB9_20
LBB9_20:                                ##   in Loop: Header=BB9_9 Depth=1
	cvtsi2sdl	-748(%rbp), %xmm0
	movsd	LCPI9_5(%rip), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-680(%rbp), %xmm1       ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -848(%rbp)
Ltmp46:
	leaq	-808(%rbp), %rdi
	leaq	-848(%rbp), %rsi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd
Ltmp47:
	jmp	LBB9_21
LBB9_21:                                ##   in Loop: Header=BB9_9 Depth=1
	jmp	LBB9_22
LBB9_22:                                ##   in Loop: Header=BB9_9 Depth=1
	movq	-832(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -832(%rbp)
	jmp	LBB9_9
LBB9_23:
	movq	-728(%rbp), %rdi
Ltmp29:
	callq	__Z7destroyPd
Ltmp30:
	jmp	LBB9_24
LBB9_24:
	movq	-736(%rbp), %rdi
Ltmp31:
	callq	__Z7destroyPd
Ltmp32:
	jmp	LBB9_25
LBB9_25:
	movq	-744(%rbp), %rdi
Ltmp33:
	callq	__Z7destroyPd
Ltmp34:
	jmp	LBB9_26
LBB9_26:
	leaq	-784(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rax, -240(%rbp)
	movq	%rax, -224(%rbp)
	movq	-776(%rbp), %rcx
	leaq	-216(%rbp), %rdx
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-216(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rax, -176(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rax, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	%rax, -112(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-136(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rax, -64(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-768(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
Ltmp35:
	leaq	-248(%rbp), %rcx
	callq	__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
Ltmp36:
	movq	%rax, -880(%rbp)        ## 8-byte Spill
	jmp	LBB9_27
LBB9_27:
	movq	-880(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -280(%rbp)
## BB#28:
	leaq	-784(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -888(%rbp)        ## 8-byte Spill
## BB#29:
	movq	-888(%rbp), %rax        ## 8-byte Reload
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)
	movl	-748(%rbp), %ecx
	movl	-668(%rbp), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
Ltmp37:
	leaq	-808(%rbp), %rdi
	movsd	%xmm1, -896(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
Ltmp38:
	jmp	LBB9_30
LBB9_30:
	leaq	-784(%rbp), %rdi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
	movsd	-896(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$912, %rsp              ## imm = 0x390
	popq	%rbp
	retq
LBB9_31:
	jmp	LBB9_32
LBB9_32:
Ltmp53:
	leaq	-784(%rbp), %rdi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
Ltmp54:
	jmp	LBB9_33
LBB9_33:
	jmp	LBB9_34
LBB9_34:
	movq	-816(%rbp), %rdi
	callq	__Unwind_Resume
LBB9_35:
Ltmp55:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -900(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table9:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\360"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp40-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp40
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp40-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp49-Ltmp40                   ##   Call between Ltmp40 and Ltmp49
	.long	Lset3
Lset4 = Ltmp50-Lfunc_begin0             ##     jumps to Ltmp50
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp51-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp52-Ltmp51                   ##   Call between Ltmp51 and Ltmp52
	.long	Lset6
Lset7 = Ltmp55-Lfunc_begin0             ##     jumps to Ltmp55
	.long	Lset7
	.byte	1                       ##   On action: 1
Lset8 = Ltmp42-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp36-Ltmp42                   ##   Call between Ltmp42 and Ltmp36
	.long	Lset9
Lset10 = Ltmp50-Lfunc_begin0            ##     jumps to Ltmp50
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp37-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.long	Lset12
Lset13 = Ltmp39-Lfunc_begin0            ##     jumps to Ltmp39
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp38-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Ltmp53-Ltmp38                  ##   Call between Ltmp38 and Ltmp53
	.long	Lset15
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset16 = Ltmp53-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Ltmp54-Ltmp53                  ##   Call between Ltmp53 and Ltmp54
	.long	Lset17
Lset18 = Ltmp55-Lfunc_begin0            ##     jumps to Ltmp55
	.long	Lset18
	.byte	1                       ##   On action: 1
Lset19 = Ltmp54-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset19
Lset20 = Lfunc_end0-Ltmp54              ##   Call between Ltmp54 and Lfunc_end0
	.long	Lset20
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd
	.weak_def_can_be_hidden	__ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd
	.align	4, 0x90
__ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd: ## @_ZNSt3__14listIdNS_9allocatorIdEEE9push_backERKd
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp59:
	.cfi_def_cfa_offset 16
Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp61:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1120, %rsp             ## imm = 0x460
Ltmp62:
	.cfi_offset %rbx, -32
Ltmp63:
	.cfi_offset %r14, -24
	movq	%rdi, -1032(%rbp)
	movq	%rsi, -1040(%rbp)
	movq	-1032(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -1024(%rbp)
	movq	-1024(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -1016(%rbp)
	movq	-1016(%rbp), %rdi
	movq	%rdi, -1008(%rbp)
	movq	-1008(%rbp), %rdi
	movq	%rdi, -1048(%rbp)
	movq	-1048(%rbp), %rdi
	movq	%rdi, -992(%rbp)
	movq	$1, -1000(%rbp)
	movq	-992(%rbp), %rdi
	movq	-1000(%rbp), %rax
	movq	%rdi, -968(%rbp)
	movq	%rax, -976(%rbp)
	movq	$0, -984(%rbp)
	imulq	$24, -976(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	-960(%rbp), %rdi
	movq	%rsi, -1112(%rbp)       ## 8-byte Spill
	callq	__Znwm
	leaq	-1072(%rbp), %rsi
	leaq	-536(%rbp), %rdi
	leaq	-552(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-664(%rbp), %r9
	leaq	-680(%rbp), %r10
	leaq	-1088(%rbp), %r11
	movq	-1048(%rbp), %rbx
	movq	%r11, -936(%rbp)
	movq	%rbx, -944(%rbp)
	movq	$1, -952(%rbp)
	movq	-936(%rbp), %r11
	movq	-952(%rbp), %rbx
	movq	-944(%rbp), %r14
	movq	%r11, -912(%rbp)
	movq	%r14, -920(%rbp)
	movq	%rbx, -928(%rbp)
	movq	-912(%rbp), %r11
	movq	-920(%rbp), %rbx
	movq	%rbx, (%r11)
	movq	-928(%rbp), %rbx
	movq	%rbx, 8(%r11)
	movq	-1088(%rbp), %r11
	movq	-1080(%rbp), %rbx
	movq	%r11, -712(%rbp)
	movq	%rbx, -704(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%rax, -728(%rbp)
	movq	-720(%rbp), %rax
	movq	-728(%rbp), %r11
	movq	-712(%rbp), %rbx
	movq	-704(%rbp), %r14
	movq	%rbx, -664(%rbp)
	movq	%r14, -656(%rbp)
	movq	%rax, -672(%rbp)
	movq	%r11, -680(%rbp)
	movq	-672(%rbp), %rax
	movq	%r10, -648(%rbp)
	movq	-648(%rbp), %r10
	movq	(%r10), %r10
	movq	%r9, -496(%rbp)
	movq	-496(%rbp), %r9
	movq	(%r9), %r11
	movq	%r11, -696(%rbp)
	movq	8(%r9), %r9
	movq	%r9, -688(%rbp)
	movq	-696(%rbp), %r9
	movq	-688(%rbp), %r11
	movq	%r9, -624(%rbp)
	movq	%r11, -616(%rbp)
	movq	%rax, -632(%rbp)
	movq	%r10, -640(%rbp)
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %r9
	movq	-624(%rbp), %r10
	movq	-616(%rbp), %r11
	movq	%r10, -576(%rbp)
	movq	%r11, -568(%rbp)
	movq	%rax, -584(%rbp)
	movq	%r9, -592(%rbp)
	movq	-584(%rbp), %rax
	movq	%r8, -560(%rbp)
	movq	-560(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdx, -504(%rbp)
	movq	-504(%rbp), %rdx
	movq	(%rdx), %r9
	movq	%r9, -608(%rbp)
	movq	8(%rdx), %rdx
	movq	%rdx, -600(%rbp)
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %r9
	movq	%rdx, -536(%rbp)
	movq	%r9, -528(%rbp)
	movq	%rax, -544(%rbp)
	movq	%r8, -552(%rbp)
	movq	-544(%rbp), %rax
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	%rdi, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	-1048(%rbp), %rax
	movq	%rsi, -312(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	-304(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$16, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
## BB#1:
	leaq	-1072(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1120(%rbp)       ## 8-byte Spill
## BB#2:
	leaq	-1072(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -1128(%rbp)       ## 8-byte Spill
## BB#3:
	movq	-1112(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-1120(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-1128(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-200(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	-216(%rbp), %r8
	movq	%rdi, 8(%r8)
	movq	(%rsi), %rdi
	movq	-208(%rbp), %r8
	movq	%rdi, (%r8)
	movq	-208(%rbp), %rdi
	movq	-208(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdi, 8(%r8)
	movq	-216(%rbp), %rdi
	movq	%rdi, (%rsi)
## BB#4:
	leaq	-1072(%rbp), %rax
	movq	-1112(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rcx)
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rdx, -264(%rbp)
	movq	-264(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -288(%rbp)
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rcx
	movq	$0, (%rcx)
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	$0, -464(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -472(%rbp)
	movq	-464(%rbp), %rcx
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	-336(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	$0, -472(%rbp)
	movq	%rax, -1136(%rbp)       ## 8-byte Spill
	je	LBB10_6
## BB#5:
	movq	-1136(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	addq	$8, %rcx
	movq	-472(%rbp), %rdx
	movq	%rcx, -424(%rbp)
	movq	%rdx, -432(%rbp)
	movq	-424(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-432(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -400(%rbp)
	movq	%rsi, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	%rcx, -360(%rbp)
	movq	%rdx, -368(%rbp)
	movq	%rsi, -376(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rdi
	callq	__ZdlPv
LBB10_6:
	addq	$1120, %rsp             ## imm = 0x460
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__14listIdNS_9allocatorIdEEED1Ev
	.align	4, 0x90
__ZNSt3__14listIdNS_9allocatorIdEEED1Ev: ## @_ZNSt3__14listIdNS_9allocatorIdEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp64:
	.cfi_def_cfa_offset 16
Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev

	.globl	__ZNSt3__14listIdNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__14listIdNS_9allocatorIdEEED2Ev
	.align	4, 0x90
__ZNSt3__14listIdNS_9allocatorIdEEED2Ev: ## @_ZNSt3__14listIdNS_9allocatorIdEEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp67:
	.cfi_def_cfa_offset 16
Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__list_impIdNS_9allocatorIdEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__110__list_impIdNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__110__list_impIdNS_9allocatorIdEEED2Ev
	.align	4, 0x90
__ZNSt3__110__list_impIdNS_9allocatorIdEEED2Ev: ## @_ZNSt3__110__list_impIdNS_9allocatorIdEEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp70:
	.cfi_def_cfa_offset 16
Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__list_impIdNS_9allocatorIdEEE5clearEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__110__list_impIdNS_9allocatorIdEEE5clearEv
	.weak_def_can_be_hidden	__ZNSt3__110__list_impIdNS_9allocatorIdEEE5clearEv
	.align	4, 0x90
__ZNSt3__110__list_impIdNS_9allocatorIdEEE5clearEv: ## @_ZNSt3__110__list_impIdNS_9allocatorIdEEE5clearEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp73:
	.cfi_def_cfa_offset 16
Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              ## imm = 0x170
	movq	%rdi, -296(%rbp)
	movq	-296(%rbp), %rdi
	movq	%rdi, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	movq	%rdi, -352(%rbp)        ## 8-byte Spill
	je	LBB15_8
## BB#1:
	movq	-352(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -360(%rbp)        ## 8-byte Spill
## BB#2:
	movq	-360(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rcx
	movq	-320(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, (%rdx)
	movq	-352(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	$0, (%rdx)
LBB15_3:                                ## =>This Inner Loop Header: Depth=1
	movq	-312(%rbp), %rax
	cmpq	-320(%rbp), %rax
	je	LBB15_7
## BB#4:                                ##   in Loop: Header=BB15_3 Depth=1
	movq	-312(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)        ## 8-byte Spill
## BB#5:                                ##   in Loop: Header=BB15_3 Depth=1
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	-312(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -312(%rbp)
	movq	-304(%rbp), %rcx
	movq	-344(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rcx, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-136(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, -120(%rbp)
	movq	%rdx, -128(%rbp)
## BB#6:                                ##   in Loop: Header=BB15_3 Depth=1
	movq	-304(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, -240(%rbp)
	movq	%rcx, -248(%rbp)
	movq	$1, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	__ZdlPv
	jmp	LBB15_3
LBB15_7:
	jmp	LBB15_8
LBB15_8:
	addq	$368, %rsp              ## imm = 0x170
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
	.weak_def_can_be_hidden	__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
	.align	4, 0x90
__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_: ## @_ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp76:
	.cfi_def_cfa_offset 16
Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$1568, %rsp             ## imm = 0x620
	movq	%rdi, -1320(%rbp)
	movq	%rsi, -1328(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	%rcx, -1344(%rbp)
	movq	-1336(%rbp), %rcx
	movq	%rcx, %rdx
	subq	$2, %rdx
	movq	%rcx, -1544(%rbp)       ## 8-byte Spill
	movq	%rdx, -1552(%rbp)       ## 8-byte Spill
	jb	LBB16_1
	jmp	LBB16_77
LBB16_77:
	movq	-1544(%rbp), %rax       ## 8-byte Reload
	subq	$2, %rax
	movq	%rax, -1560(%rbp)       ## 8-byte Spill
	je	LBB16_2
	jmp	LBB16_5
LBB16_1:
	movq	-1320(%rbp), %rax
	movq	%rax, -1312(%rbp)
	jmp	LBB16_76
LBB16_2:
	leaq	-1320(%rbp), %rax
	leaq	-1328(%rbp), %rcx
	movq	-1344(%rbp), %rdx
	movq	%rcx, -1304(%rbp)
	movq	-1304(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
	movq	%rcx, -1296(%rbp)
	movq	-1296(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1288(%rbp)
	movq	-1288(%rbp), %rcx
	movq	%rcx, -1280(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1248(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -1232(%rbp)
	movq	-1232(%rbp), %rax
	movq	%rax, -1224(%rbp)
	movq	-1224(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB16_4
## BB#3:
	movq	-1328(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	-1352(%rbp), %rax
	movq	-1352(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-1320(%rbp), %rax
	movq	-1352(%rbp), %rcx
	movq	-1352(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-1328(%rbp), %rax
	movq	%rax, -1312(%rbp)
	jmp	LBB16_76
LBB16_4:
	movq	-1320(%rbp), %rax
	movq	%rax, -1312(%rbp)
	jmp	LBB16_76
LBB16_5:
	leaq	-144(%rbp), %rax
	movq	-1336(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, -1360(%rbp)
	movq	-1320(%rbp), %rcx
	movq	%rcx, -1376(%rbp)
	movq	-1360(%rbp), %rcx
	movq	-1376(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rax, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, -96(%rbp)
	movq	%rcx, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jl	LBB16_10
## BB#6:
	jmp	LBB16_7
LBB16_7:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	jle	LBB16_9
## BB#8:                                ##   in Loop: Header=BB16_7 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	jmp	LBB16_7
LBB16_9:
	jmp	LBB16_14
LBB16_10:
	jmp	LBB16_11
LBB16_11:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	jge	LBB16_13
## BB#12:                               ##   in Loop: Header=BB16_11 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	LBB16_11
LBB16_13:
	jmp	LBB16_14
LBB16_14:
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -1368(%rbp)
	movq	-1320(%rbp), %rax
	movq	%rax, -1400(%rbp)
	movq	-1368(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	-1360(%rbp), %rdx
	movq	-1344(%rbp), %rcx
	movq	-1400(%rbp), %rdi
	movq	-1408(%rbp), %rsi
	callq	__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
	movq	%rax, -1392(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1320(%rbp)
	movq	-1320(%rbp), %rax
	movq	%rax, -1384(%rbp)
	movq	-1368(%rbp), %rax
	movq	%rax, -1432(%rbp)
	movq	-1328(%rbp), %rax
	movq	%rax, -1440(%rbp)
	movq	-1336(%rbp), %rax
	subq	-1360(%rbp), %rax
	movq	-1344(%rbp), %rcx
	movq	-1432(%rbp), %rdi
	movq	-1440(%rbp), %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__14listIdNS_9allocatorIdEEE6__sortINS_6__lessIddEEEENS_15__list_iteratorIdPvEES9_S9_mRT_
	leaq	-1320(%rbp), %rcx
	leaq	-1416(%rbp), %rdx
	movq	%rax, -1424(%rbp)
	movq	-1424(%rbp), %rax
	movq	%rax, -1368(%rbp)
	movq	-1368(%rbp), %rax
	movq	%rax, -1416(%rbp)
	movq	-1344(%rbp), %rax
	movq	%rdx, -232(%rbp)
	movq	-232(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -224(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rdx, -208(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdx
	addq	$16, %rdx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, -280(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rcx, -296(%rbp)
	movq	-288(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-296(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB16_40
## BB#15:
	leaq	-376(%rbp), %rax
	movq	-1416(%rbp), %rcx
	movq	%rcx, -1456(%rbp)
	movq	-1456(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	$1, -384(%rbp)
	movq	$0, -392(%rbp)
	movq	-384(%rbp), %rcx
	movq	%rax, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	-344(%rbp), %rax
	movq	-352(%rbp), %rcx
	movq	%rax, -328(%rbp)
	movq	%rcx, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jl	LBB16_20
## BB#16:
	jmp	LBB16_17
LBB16_17:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -336(%rbp)
	jle	LBB16_19
## BB#18:                               ##   in Loop: Header=BB16_17 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-336(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -336(%rbp)
	jmp	LBB16_17
LBB16_19:
	jmp	LBB16_24
LBB16_20:
	jmp	LBB16_21
LBB16_21:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -336(%rbp)
	jge	LBB16_23
## BB#22:                               ##   in Loop: Header=BB16_21 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-336(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	jmp	LBB16_21
LBB16_23:
	jmp	LBB16_24
LBB16_24:
	movq	-376(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -1448(%rbp)
LBB16_25:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-1328(%rbp), %rdx
	leaq	-1448(%rbp), %rsi
	movq	%rsi, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	-416(%rbp), %rdx
	movq	-424(%rbp), %rsi
	movq	%rdx, -400(%rbp)
	movq	%rsi, -408(%rbp)
	movq	-400(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-408(%rbp), %rsi
	cmpq	(%rsi), %rdx
	sete	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	movb	%cl, -1561(%rbp)        ## 1-byte Spill
	jne	LBB16_26
	jmp	LBB16_27
LBB16_26:                               ##   in Loop: Header=BB16_25 Depth=1
	leaq	-1320(%rbp), %rax
	leaq	-1448(%rbp), %rcx
	movq	-1344(%rbp), %rdx
	movq	%rcx, -464(%rbp)
	movq	-464(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, -432(%rbp)
	movq	-432(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, -512(%rbp)
	movq	%rcx, -520(%rbp)
	movq	%rax, -528(%rbp)
	movq	-520(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-528(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%sil
	movb	%sil, -1561(%rbp)       ## 1-byte Spill
LBB16_27:                               ##   in Loop: Header=BB16_25 Depth=1
	movb	-1561(%rbp), %al        ## 1-byte Reload
	testb	$1, %al
	jne	LBB16_28
	jmp	LBB16_30
LBB16_28:                               ##   in Loop: Header=BB16_25 Depth=1
	jmp	LBB16_29
LBB16_29:                               ##   in Loop: Header=BB16_25 Depth=1
	leaq	-1448(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	jmp	LBB16_25
LBB16_30:
	leaq	-632(%rbp), %rax
	movq	-1416(%rbp), %rcx
	movq	%rcx, -1464(%rbp)
	movq	-1448(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1472(%rbp)
	movq	-1416(%rbp), %rcx
	movq	%rcx, -1384(%rbp)
	movq	-1448(%rbp), %rcx
	movq	%rcx, -1416(%rbp)
	movq	-1416(%rbp), %rcx
	movq	%rcx, -1368(%rbp)
	movq	-1464(%rbp), %rcx
	movq	-1472(%rbp), %rdx
	movq	%rcx, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	-552(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-544(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-544(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-552(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, (%rdx)
	movq	-1320(%rbp), %rcx
	movq	%rcx, -1488(%rbp)
	movq	-1488(%rbp), %rcx
	movq	%rcx, -632(%rbp)
	movq	$1, -640(%rbp)
	movq	$0, -648(%rbp)
	movq	-640(%rbp), %rcx
	movq	%rax, -600(%rbp)
	movq	%rcx, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%rax, -584(%rbp)
	movq	%rcx, -592(%rbp)
	cmpq	$0, -592(%rbp)
	jl	LBB16_35
## BB#31:
	jmp	LBB16_32
LBB16_32:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -592(%rbp)
	jle	LBB16_34
## BB#33:                               ##   in Loop: Header=BB16_32 Depth=1
	movq	-584(%rbp), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-592(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -592(%rbp)
	jmp	LBB16_32
LBB16_34:
	jmp	LBB16_39
LBB16_35:
	jmp	LBB16_36
LBB16_36:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -592(%rbp)
	jge	LBB16_38
## BB#37:                               ##   in Loop: Header=BB16_36 Depth=1
	movq	-584(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-592(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)
	jmp	LBB16_36
LBB16_38:
	jmp	LBB16_39
LBB16_39:
	movq	-632(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -1480(%rbp)
	movq	-1480(%rbp), %rax
	movq	%rax, -1448(%rbp)
	movq	-1320(%rbp), %rax
	movq	-1464(%rbp), %rcx
	movq	-1472(%rbp), %rdx
	movq	%rax, -656(%rbp)
	movq	%rcx, -664(%rbp)
	movq	%rdx, -672(%rbp)
	movq	-664(%rbp), %rax
	movq	-656(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-656(%rbp), %rax
	movq	(%rax), %rax
	movq	-664(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-672(%rbp), %rax
	movq	-656(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-656(%rbp), %rax
	movq	-672(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-1448(%rbp), %rax
	movq	%rax, -1320(%rbp)
	jmp	LBB16_41
LBB16_40:
	leaq	-1320(%rbp), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
LBB16_41:
	jmp	LBB16_42
LBB16_42:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB16_48 Depth 2
                                        ##     Child Loop BB16_52 Depth 2
                                        ##     Child Loop BB16_56 Depth 2
                                        ##     Child Loop BB16_65 Depth 2
                                        ##     Child Loop BB16_69 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-1368(%rbp), %rdx
	leaq	-1320(%rbp), %rsi
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	-704(%rbp), %rdx
	movq	-712(%rbp), %rsi
	movq	%rdx, -688(%rbp)
	movq	%rsi, -696(%rbp)
	movq	-688(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-696(%rbp), %rsi
	cmpq	(%rsi), %rdx
	sete	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	movb	%cl, -1562(%rbp)        ## 1-byte Spill
	jne	LBB16_43
	jmp	LBB16_44
LBB16_43:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-1328(%rbp), %rax
	leaq	-1416(%rbp), %rcx
	movq	%rcx, -736(%rbp)
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rax
	movq	-744(%rbp), %rcx
	movq	%rax, -720(%rbp)
	movq	%rcx, -728(%rbp)
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	-728(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -1562(%rbp)        ## 1-byte Spill
LBB16_44:                               ##   in Loop: Header=BB16_42 Depth=1
	movb	-1562(%rbp), %al        ## 1-byte Reload
	testb	$1, %al
	jne	LBB16_45
	jmp	LBB16_75
LBB16_45:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-1320(%rbp), %rax
	leaq	-1416(%rbp), %rcx
	movq	-1344(%rbp), %rdx
	movq	%rcx, -784(%rbp)
	movq	-784(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -776(%rbp)
	movq	-776(%rbp), %rcx
	movq	%rcx, -768(%rbp)
	movq	-768(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-760(%rbp), %rcx
	movq	%rcx, -752(%rbp)
	movq	-752(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, -832(%rbp)
	movq	%rcx, -840(%rbp)
	movq	%rax, -848(%rbp)
	movq	-840(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-848(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB16_73
## BB#46:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-928(%rbp), %rax
	movq	-1416(%rbp), %rcx
	movq	%rcx, -1504(%rbp)
	movq	-1504(%rbp), %rcx
	movq	%rcx, -928(%rbp)
	movq	$1, -936(%rbp)
	movq	$0, -944(%rbp)
	movq	-936(%rbp), %rcx
	movq	%rax, -896(%rbp)
	movq	%rcx, -904(%rbp)
	movq	-896(%rbp), %rax
	movq	-904(%rbp), %rcx
	movq	%rax, -880(%rbp)
	movq	%rcx, -888(%rbp)
	cmpq	$0, -888(%rbp)
	jl	LBB16_51
## BB#47:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_48
LBB16_48:                               ##   Parent Loop BB16_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -888(%rbp)
	jle	LBB16_50
## BB#49:                               ##   in Loop: Header=BB16_48 Depth=2
	movq	-880(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-888(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -888(%rbp)
	jmp	LBB16_48
LBB16_50:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_55
LBB16_51:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_52
LBB16_52:                               ##   Parent Loop BB16_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -888(%rbp)
	jge	LBB16_54
## BB#53:                               ##   in Loop: Header=BB16_52 Depth=2
	movq	-880(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-888(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)
	jmp	LBB16_52
LBB16_54:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_55
LBB16_55:                               ##   in Loop: Header=BB16_42 Depth=1
	movq	-928(%rbp), %rax
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rax
	movq	%rax, -1496(%rbp)
LBB16_56:                               ##   Parent Loop BB16_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-1328(%rbp), %rdx
	leaq	-1496(%rbp), %rsi
	movq	%rsi, -968(%rbp)
	movq	%rdx, -976(%rbp)
	movq	-968(%rbp), %rdx
	movq	-976(%rbp), %rsi
	movq	%rdx, -952(%rbp)
	movq	%rsi, -960(%rbp)
	movq	-952(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-960(%rbp), %rsi
	cmpq	(%rsi), %rdx
	sete	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	movb	%cl, -1563(%rbp)        ## 1-byte Spill
	jne	LBB16_57
	jmp	LBB16_58
LBB16_57:                               ##   in Loop: Header=BB16_56 Depth=2
	leaq	-1320(%rbp), %rax
	leaq	-1496(%rbp), %rcx
	movq	-1344(%rbp), %rdx
	movq	%rcx, -1016(%rbp)
	movq	-1016(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1008(%rbp)
	movq	-1008(%rbp), %rcx
	movq	%rcx, -1000(%rbp)
	movq	-1000(%rbp), %rcx
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	%rcx, -984(%rbp)
	movq	-984(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movq	%rax, -1040(%rbp)
	movq	-1040(%rbp), %rax
	movq	%rax, -1032(%rbp)
	movq	-1032(%rbp), %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, -1064(%rbp)
	movq	%rcx, -1072(%rbp)
	movq	%rax, -1080(%rbp)
	movq	-1072(%rbp), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	-1080(%rbp), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%sil
	movb	%sil, -1563(%rbp)       ## 1-byte Spill
LBB16_58:                               ##   in Loop: Header=BB16_56 Depth=2
	movb	-1563(%rbp), %al        ## 1-byte Reload
	testb	$1, %al
	jne	LBB16_59
	jmp	LBB16_61
LBB16_59:                               ##   in Loop: Header=BB16_56 Depth=2
	jmp	LBB16_60
LBB16_60:                               ##   in Loop: Header=BB16_56 Depth=2
	leaq	-1496(%rbp), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	jmp	LBB16_56
LBB16_61:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-1416(%rbp), %rax
	leaq	-1368(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rdx, -1512(%rbp)
	movq	-1496(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1520(%rbp)
	movq	%rcx, -1096(%rbp)
	movq	%rax, -1104(%rbp)
	movq	-1096(%rbp), %rax
	movq	(%rax), %rax
	movq	-1104(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	LBB16_63
## BB#62:                               ##   in Loop: Header=BB16_42 Depth=1
	movq	-1496(%rbp), %rax
	movq	%rax, -1368(%rbp)
LBB16_63:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-1200(%rbp), %rax
	movq	-1496(%rbp), %rcx
	movq	%rcx, -1416(%rbp)
	movq	-1512(%rbp), %rcx
	movq	-1520(%rbp), %rdx
	movq	%rcx, -1112(%rbp)
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-1112(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-1112(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1120(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, (%rdx)
	movq	-1320(%rbp), %rcx
	movq	%rcx, -1536(%rbp)
	movq	-1536(%rbp), %rcx
	movq	%rcx, -1200(%rbp)
	movq	$1, -1208(%rbp)
	movq	$0, -1216(%rbp)
	movq	-1208(%rbp), %rcx
	movq	%rax, -1168(%rbp)
	movq	%rcx, -1176(%rbp)
	movq	-1168(%rbp), %rax
	movq	-1176(%rbp), %rcx
	movq	%rax, -1152(%rbp)
	movq	%rcx, -1160(%rbp)
	cmpq	$0, -1160(%rbp)
	jl	LBB16_68
## BB#64:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_65
LBB16_65:                               ##   Parent Loop BB16_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1160(%rbp)
	jle	LBB16_67
## BB#66:                               ##   in Loop: Header=BB16_65 Depth=2
	movq	-1152(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-1160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1160(%rbp)
	jmp	LBB16_65
LBB16_67:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_72
LBB16_68:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_69
LBB16_69:                               ##   Parent Loop BB16_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1160(%rbp)
	jge	LBB16_71
## BB#70:                               ##   in Loop: Header=BB16_69 Depth=2
	movq	-1152(%rbp), %rax
	movq	%rax, -1128(%rbp)
	movq	-1128(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-1160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1160(%rbp)
	jmp	LBB16_69
LBB16_71:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_72
LBB16_72:                               ##   in Loop: Header=BB16_42 Depth=1
	movq	-1200(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -1528(%rbp)
	movq	-1528(%rbp), %rax
	movq	%rax, -1496(%rbp)
	movq	-1320(%rbp), %rax
	movq	-1512(%rbp), %rcx
	movq	-1520(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-1496(%rbp), %rax
	movq	%rax, -1320(%rbp)
	jmp	LBB16_74
LBB16_73:                               ##   in Loop: Header=BB16_42 Depth=1
	leaq	-1320(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
LBB16_74:                               ##   in Loop: Header=BB16_42 Depth=1
	jmp	LBB16_42
LBB16_75:
	movq	-1384(%rbp), %rax
	movq	%rax, -1312(%rbp)
LBB16_76:
	movq	-1312(%rbp), %rax
	addq	$1568, %rsp             ## imm = 0x620
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_userFuncs              ## @userFuncs
.zerofill __DATA,__common,_userFuncs,256,4
	.globl	_funcNames              ## @funcNames
.zerofill __DATA,__common,_funcNames,256,4
	.globl	_funcFlops              ## @funcFlops
.zerofill __DATA,__common,_funcFlops,128,4
	.globl	_numFuncs               ## @numFuncs
.zerofill __DATA,__common,_numFuncs,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Slow Performance 1"

L_.str.1:                               ## @.str.1
	.asciz	"Simple Loop Unrolling"

L_.str.2:                               ## @.str.2
	.asciz	"Scalar Replacement"

L_.str.3:                               ## @.str.3
	.asciz	"Super Scalar Replacement"

L_.str.4:                               ## @.str.4
	.asciz	"Super Scalar Replacement Generalize"

L_.str.5:                               ## @.str.5
	.asciz	"starting program"

L_.str.6:                               ## @.str.6
	.asciz	"No functions registered - nothing for driver to do\n"

L_.str.7:                               ## @.str.7
	.asciz	"Register functions by calling register_func(f, name)\n"

L_.str.8:                               ## @.str.8
	.asciz	"in register_funcs()\n"

L_.str.9:                               ## @.str.9
	.asciz	"\n%d functions registered"

L_.str.10:                              ## @.str.10
	.asciz	"ERROR!!!!  the results for the %d th function are different to the previous"

L_.str.11:                              ## @.str.11
	.asciz	"\nPerformance: %s\nPerf: %.3f FLOPs/c\n"

L_.str.12:                              ## @.str.12
	.asciz	"Couldn't register %s, too many functions registered (Max: %d)"


.subsections_via_symbols
