	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_microbenchmark_mode
	.align	4, 0x90
_microbenchmark_mode:                   ## @microbenchmark_mode
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
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	$1000000, (%rax)        ## imm = 0xF4240
	movl	%edi, %eax
	cmpl	$7, %edi
	ja	LBB0_15
## BB#1:
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_2:
	leaq	_mul_latency(%rip), %rax
	jmp	LBB0_3
LBB0_4:
	leaq	_mul_tps(%rip), %rax
LBB0_3:
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_arg1@GOTPCREL(%rip), %rax
	movabsq	$4608083138725491507, %rcx ## imm = 0x3FF3333333333333
	movq	%rcx, (%rax)
	movq	_arg2@GOTPCREL(%rip), %rax
	movabsq	$4607181518080091934, %rcx ## imm = 0x3FEFFF2E48E8A71E
	jmp	LBB0_14
LBB0_5:
	leaq	_div_latency(%rip), %rax
	jmp	LBB0_6
LBB0_7:
	leaq	_div_tps(%rip), %rax
LBB0_6:
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_arg1@GOTPCREL(%rip), %rax
	movabsq	$5085611494797045271, %rcx ## imm = 0x4693B8B5B5056E17
	movq	%rcx, (%rax)
	movq	_arg2@GOTPCREL(%rip), %rax
	movabsq	$4607184670599831093, %rcx ## imm = 0x3FF0020C49BA5E35
	jmp	LBB0_14
LBB0_8:
	leaq	_div_latency(%rip), %rax
	jmp	LBB0_9
LBB0_10:
	leaq	_div_tps(%rip), %rax
LBB0_9:
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_arg1@GOTPCREL(%rip), %rax
	movabsq	$7598952565167317594, %rcx ## imm = 0x6974E718D7D7625A
	movq	%rcx, (%rax)
	movq	_arg2@GOTPCREL(%rip), %rax
	movabsq	$4611686018427387904, %rcx ## imm = 0x4000000000000000
	jmp	LBB0_14
LBB0_11:
	leaq	_mul_latency(%rip), %rax
	jmp	LBB0_13
LBB0_12:
	leaq	_mul_tps(%rip), %rax
LBB0_13:
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_arg1@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movq	_arg2@GOTPCREL(%rip), %rax
	movabsq	$-4615288898129284301, %rcx ## imm = 0xBFF3333333333333
LBB0_14:
	movq	%rcx, (%rax)
LBB0_15:
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_4 = LBB0_4-LJTI0_0
L0_0_set_5 = LBB0_5-LJTI0_0
L0_0_set_7 = LBB0_7-LJTI0_0
L0_0_set_8 = LBB0_8-LJTI0_0
L0_0_set_10 = LBB0_10-LJTI0_0
L0_0_set_11 = LBB0_11-LJTI0_0
L0_0_set_12 = LBB0_12-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_4
	.long	L0_0_set_5
	.long	L0_0_set_7
	.long	L0_0_set_8
	.long	L0_0_set_10
	.long	L0_0_set_11
	.long	L0_0_set_12

	.globl	_mul_latency
	.align	4, 0x90
_mul_latency:                           ## @mul_latency
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
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testl	%eax, %eax
	jle	LBB1_4
## BB#1:
	incl	%eax
	.align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	mulsd	%xmm1, %xmm0
	leal	-1(%rcx), %eax
	cmpl	$1, %eax
	jg	LBB1_2
## BB#3:
	addl	$-2, %ecx
	movl	%ecx, %eax
LBB1_4:
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_0:
	.quad	4569063951553953530     ## double 0.0030000000000000001
	.quad	4566758108544739836     ## double 0.002
LCPI2_1:
	.quad	4572414629676717179     ## double 0.0050000000000000001
	.quad	4571261708172110332     ## double 0.0040000000000000001
LCPI2_2:
	.quad	4562254508917369340     ## double 0.001
	.quad	4573567551181324026     ## double 0.0060000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mul_tps
	.align	4, 0x90
_mul_tps:                               ## @mul_tps
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
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$-6148914691236517205, %rsi ## imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%rsi
	shrq	$2, %rdx
	testl	%edx, %edx
	jle	LBB2_1
## BB#2:
	movlhps	%xmm1, %xmm1            ## xmm1 = xmm1[0,0]
	movapd	LCPI2_0(%rip), %xmm4    ## xmm4 = [3.000000e-03,2.000000e-03]
	addpd	%xmm1, %xmm4
	movapd	LCPI2_1(%rip), %xmm5    ## xmm5 = [5.000000e-03,4.000000e-03]
	addpd	%xmm1, %xmm5
	addpd	LCPI2_2(%rip), %xmm1
	movlhps	%xmm0, %xmm0            ## xmm0 = xmm0[0,0]
	movq	%rcx, %rax
	mulq	%rsi
	movq	%rdx, %rax
	shrq	$2, %rax
	incl	%eax
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	.align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	mulpd	%xmm4, %xmm3
	mulpd	%xmm5, %xmm2
	mulpd	%xmm1, %xmm0
	leal	-1(%rdx), %eax
	cmpl	$1, %eax
	jg	LBB2_3
## BB#4:
	addl	$-2, %edx
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        ## xmm1 = xmm1[1,0]
	movapd	%xmm2, %xmm4
	shufpd	$1, %xmm4, %xmm4        ## xmm4 = xmm4[1,0]
	movapd	%xmm3, %xmm5
	shufpd	$1, %xmm5, %xmm5        ## xmm5 = xmm5[1,0]
	jmp	LBB2_5
LBB2_1:
	movapd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm4
	movapd	%xmm0, %xmm3
	movapd	%xmm0, %xmm5
LBB2_5:
	cvtsi2sdl	%edx, %xmm6
	addsd	%xmm5, %xmm3
	addsd	%xmm4, %xmm2
	addsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm6, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_div_latency
	.align	4, 0x90
_div_latency:                           ## @div_latency
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
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testl	%eax, %eax
	jle	LBB3_4
## BB#1:
	incl	%eax
	.align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	divsd	%xmm1, %xmm0
	leal	-1(%rcx), %eax
	cmpl	$1, %eax
	jg	LBB3_2
## BB#3:
	addl	$-2, %ecx
	movl	%ecx, %eax
LBB3_4:
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI4_0:
	.quad	-4611686018427387904    ## double -2
LCPI4_2:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI4_1:
	.quad	-4607182418800017408    ## double -4
	.quad	-4609434218613702656    ## double -3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_div_tps
	.align	4, 0x90
_div_tps:                               ## @div_tps
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
	movsd	LCPI4_0(%rip), %xmm2    ## xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	movlhps	%xmm3, %xmm3            ## xmm3 = xmm3[0,0]
	addpd	LCPI4_1(%rip), %xmm3
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$-6148914691236517205, %rsi ## imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%rsi
	shrq	$2, %rdx
	movapd	%xmm3, %xmm4
	testl	%edx, %edx
	jle	LBB4_1
## BB#2:
	movq	%rcx, %rax
	mulq	%rsi
	movq	%rdx, %rax
	shrq	$2, %rax
	incl	%eax
	movsd	LCPI4_2(%rip), %xmm6    ## xmm6 = mem[0],zero
	divsd	%xmm1, %xmm6
	movlhps	%xmm1, %xmm1            ## xmm1 = xmm1[0,0]
	movapd	%xmm4, %xmm5
	.align	4, 0x90
LBB4_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm2
	divpd	%xmm1, %xmm3
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm4
	leal	-1(%rdx), %eax
	cmpl	$1, %eax
	jg	LBB4_3
## BB#4:
	addl	$-2, %edx
	jmp	LBB4_5
LBB4_1:
	movapd	%xmm4, %xmm5
LBB4_5:
	addsd	%xmm0, %xmm2
	movapd	%xmm3, %xmm1
	shufpd	$1, %xmm1, %xmm1        ## xmm1 = xmm1[1,0]
	addsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm2
	addsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	cvtsi2sdl	%edx, %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI5_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI5_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_mul_latency
	.align	4, 0x90
_microbenchmark_get_mul_latency:        ## @microbenchmark_get_mul_latency
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rax
	movq	_arg1@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_arg2@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	movq	_ans@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %xmm1           ## xmm1 = mem[0],zero
	punpckldq	LCPI5_0(%rip), %xmm1 ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI5_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI6_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI6_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI6_2:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_mul_throughput
	.align	4, 0x90
_microbenchmark_get_mul_throughput:     ## @microbenchmark_get_mul_throughput
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rax
	movq	_arg1@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_arg2@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	movq	_ans@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %xmm0           ## xmm0 = mem[0],zero
	punpckldq	LCPI6_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI6_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm2       ## xmm2 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	LCPI6_2(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI7_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI7_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_div_latency
	.align	4, 0x90
_microbenchmark_get_div_latency:        ## @microbenchmark_get_div_latency
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rax
	movq	_arg1@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_arg2@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	movq	_ans@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %xmm1           ## xmm1 = mem[0],zero
	punpckldq	LCPI7_0(%rip), %xmm1 ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI7_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI8_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI8_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI8_2:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_div_throughput
	.align	4, 0x90
_microbenchmark_get_div_throughput:     ## @microbenchmark_get_div_throughput
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rax
	movq	_arg1@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_arg2@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	movq	_ans@GOTPCREL(%rip), %rax
	movsd	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	(%rax), %xmm0           ## xmm0 = mem[0],zero
	punpckldq	LCPI8_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI8_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm2       ## xmm2 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	LCPI8_2(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_number_of_iterations,8,3 ## @number_of_iterations
	.comm	_benchmark_func,8,3     ## @benchmark_func
	.comm	_arg1,8,3               ## @arg1
	.comm	_arg2,8,3               ## @arg2
	.comm	_ans,8,3                ## @ans

.subsections_via_symbols
