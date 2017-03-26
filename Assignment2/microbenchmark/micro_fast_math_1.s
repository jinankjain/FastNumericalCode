	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_dp_division_lat
	.align	4, 0x90
_dp_division_lat:                       ## @dp_division_lat
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
	movq	(%rax), %rax
	testl	%eax, %eax
	jle	LBB0_4
## BB#1:
	incl	%eax
	.align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	divsd	%xmm1, %xmm0
	leal	-1(%rcx), %eax
	cmpl	$1, %eax
	jg	LBB0_2
## BB#3:
	addl	$-2, %ecx
	movl	%ecx, %eax
LBB0_4:
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_dp_multiplication_lat
	.align	4, 0x90
_dp_multiplication_lat:                 ## @dp_multiplication_lat
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
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_0:
	.quad	-4611686018427387904    ## double -2
LCPI2_2:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_1:
	.quad	-4607182418800017408    ## double -4
	.quad	-4609434218613702656    ## double -3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_division_tp
	.align	4, 0x90
_dp_division_tp:                        ## @dp_division_tp
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
	movsd	LCPI2_0(%rip), %xmm2    ## xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	movlhps	%xmm3, %xmm3            ## xmm3 = xmm3[0,0]
	addpd	LCPI2_1(%rip), %xmm3
	movq	_number_of_iterations@GOTPCREL(%rip), %rcx
	movabsq	$5270498306774157605, %rax ## imm = 0x4924924924924925
	imulq	(%rcx)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	movapd	%xmm3, %xmm4
	testl	%edx, %edx
	jle	LBB2_1
## BB#2:
	incl	%edx
	movsd	LCPI2_2(%rip), %xmm7    ## xmm7 = mem[0],zero
	divsd	%xmm1, %xmm7
	movlhps	%xmm1, %xmm1            ## xmm1 = xmm1[0,0]
	movapd	%xmm4, %xmm5
	movapd	%xmm4, %xmm6
	.align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	mulsd	%xmm7, %xmm0
	mulsd	%xmm7, %xmm2
	divpd	%xmm1, %xmm3
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm5
	mulsd	%xmm7, %xmm4
	leal	-1(%rax), %edx
	cmpl	$1, %edx
	jg	LBB2_3
## BB#4:
	addl	$-2, %eax
	movl	%eax, %edx
	jmp	LBB2_5
LBB2_1:
	movapd	%xmm4, %xmm5
	movapd	%xmm4, %xmm6
LBB2_5:
	addsd	%xmm0, %xmm2
	movapd	%xmm3, %xmm0
	shufpd	$1, %xmm0, %xmm0        ## xmm0 = xmm0[1,0]
	addsd	%xmm3, %xmm0
	addsd	%xmm6, %xmm2
	addsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm2
	cvtsi2sdl	%edx, %xmm1
	addsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI3_0:
	.quad	4562254508917369340     ## double 0.001
LCPI3_1:
	.quad	4566758108544739836     ## double 0.002
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI3_2:
	.quad	4571261708172110332     ## double 0.0040000000000000001
	.quad	4569063951553953530     ## double 0.0030000000000000001
LCPI3_3:
	.quad	4573567551181324026     ## double 0.0060000000000000001
	.quad	4572414629676717179     ## double 0.0050000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_multiplication_tp
	.align	4, 0x90
_dp_multiplication_tp:                  ## @dp_multiplication_tp
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
	movq	(%rax), %rcx
	movq	%rcx, %rax
	sarq	$63, %rax
	shrq	$61, %rax
	addq	%rcx, %rax
	sarq	$3, %rax
	testl	%eax, %eax
	jle	LBB3_1
## BB#2:
	movsd	LCPI3_0(%rip), %xmm8    ## xmm8 = mem[0],zero
	addsd	%xmm1, %xmm8
	movsd	LCPI3_1(%rip), %xmm9    ## xmm9 = mem[0],zero
	addsd	%xmm1, %xmm9
	movlhps	%xmm1, %xmm1            ## xmm1 = xmm1[0,0]
	movapd	LCPI3_2(%rip), %xmm7    ## xmm7 = [4.000000e-03,3.000000e-03]
	addpd	%xmm1, %xmm7
	addpd	LCPI3_3(%rip), %xmm1
	movaps	%xmm0, %xmm3
	movlhps	%xmm3, %xmm3            ## xmm3 = xmm3[0,0]
	incl	%eax
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm6
	movaps	%xmm3, %xmm5
	.align	4, 0x90
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	mulsd	%xmm8, %xmm0
	mulsd	%xmm9, %xmm6
	mulpd	%xmm7, %xmm5
	mulpd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm4
	leal	-1(%rcx), %eax
	cmpl	$1, %eax
	jg	LBB3_3
## BB#4:
	addl	$-2, %ecx
	movapd	%xmm3, %xmm1
	shufpd	$1, %xmm1, %xmm1        ## xmm1 = xmm1[1,0]
	movapd	%xmm5, %xmm7
	shufpd	$1, %xmm7, %xmm7        ## xmm7 = xmm7[1,0]
	movl	%ecx, %eax
	jmp	LBB3_5
LBB3_1:
	movapd	%xmm0, %xmm4
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	movapd	%xmm0, %xmm1
	movapd	%xmm0, %xmm5
	movapd	%xmm0, %xmm7
	movapd	%xmm0, %xmm6
LBB3_5:
	cvtsi2sdl	%eax, %xmm8
	addsd	%xmm6, %xmm7
	addsd	%xmm5, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm3, %xmm2
	addsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	addsd	%xmm8, %xmm2
	cvttsd2si	%xmm2, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_microbenchmark_mode
	.align	4, 0x90
_microbenchmark_mode:                   ## @microbenchmark_mode
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
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	movq	$1000000, (%rax)        ## imm = 0xF4240
	movl	%edi, %ecx
	cmpl	$7, %edi
	ja	LBB4_16
## BB#1:
	movq	_MULTIPLIER_2(%rip), %rax
	leaq	LJTI4_0(%rip), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rdx, %rcx
	jmpq	*%rcx
LBB4_2:
	leaq	_dp_multiplication_lat(%rip), %rax
	jmp	LBB4_3
LBB4_5:
	leaq	_dp_multiplication_tp(%rip), %rax
LBB4_3:
	movq	_benchmark_function@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_argument_a@GOTPCREL(%rip), %rax
	movabsq	$4607183319519942882, %rcx ## imm = 0x3FF000D1B71758E2
	jmp	LBB4_4
LBB4_6:
	leaq	_dp_division_lat(%rip), %rax
	jmp	LBB4_7
LBB4_8:
	leaq	_dp_division_tp(%rip), %rax
LBB4_7:
	movq	_benchmark_function@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_argument_a@GOTPCREL(%rip), %rax
	movabsq	$5055640609639927018, %rcx ## imm = 0x46293E5939A08CEA
LBB4_4:
	movq	%rcx, (%rax)
	movq	_argument_b@GOTPCREL(%rip), %rax
	movabsq	$4607182869159980145, %rcx ## imm = 0x3FF00068DB8BAC71
	jmp	LBB4_15
LBB4_9:
	leaq	_dp_division_lat(%rip), %rax
	jmp	LBB4_10
LBB4_11:
	leaq	_dp_division_tp(%rip), %rax
LBB4_10:
	movq	_benchmark_function@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_argument_a@GOTPCREL(%rip), %rax
	movabsq	$9094988921128908188, %rcx ## imm = 0x7E37E43C8800759C
	movq	%rcx, (%rax)
	movq	_argument_b@GOTPCREL(%rip), %rax
	movabsq	$4611686018427387904, %rcx ## imm = 0x4000000000000000
	jmp	LBB4_15
LBB4_12:
	leaq	_dp_multiplication_lat(%rip), %rcx
	jmp	LBB4_14
LBB4_13:
	leaq	_dp_multiplication_tp(%rip), %rcx
LBB4_14:
	movq	_benchmark_function@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movq	_argument_a@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_argument_b@GOTPCREL(%rip), %rax
	movabsq	$-4616185114455131030, %rcx ## imm = 0xBFF004189374BC6A
LBB4_15:
	movq	%rcx, (%rax)
LBB4_16:
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L4_0_set_2 = LBB4_2-LJTI4_0
L4_0_set_5 = LBB4_5-LJTI4_0
L4_0_set_6 = LBB4_6-LJTI4_0
L4_0_set_8 = LBB4_8-LJTI4_0
L4_0_set_9 = LBB4_9-LJTI4_0
L4_0_set_11 = LBB4_11-LJTI4_0
L4_0_set_12 = LBB4_12-LJTI4_0
L4_0_set_13 = LBB4_13-LJTI4_0
LJTI4_0:
	.long	L4_0_set_2
	.long	L4_0_set_5
	.long	L4_0_set_6
	.long	L4_0_set_8
	.long	L4_0_set_9
	.long	L4_0_set_11
	.long	L4_0_set_12
	.long	L4_0_set_13

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
	movq	_benchmark_function@GOTPCREL(%rip), %rax
	movq	_argument_a@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_argument_b@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	_R@GOTPCREL(%rip), %rax
	movss	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdq	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI6_0:
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
	movq	_benchmark_function@GOTPCREL(%rip), %rax
	movq	_argument_a@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_argument_b@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	_R@GOTPCREL(%rip), %rax
	movss	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	LCPI6_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

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
	movq	_benchmark_function@GOTPCREL(%rip), %rax
	movq	_argument_a@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_argument_b@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	_R@GOTPCREL(%rip), %rax
	movss	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdq	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI8_0:
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
	movq	_benchmark_function@GOTPCREL(%rip), %rax
	movq	_argument_a@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movq	_argument_b@GOTPCREL(%rip), %rcx
	movsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	callq	*(%rax)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	_R@GOTPCREL(%rip), %rax
	movss	%xmm0, (%rax)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	_number_of_iterations@GOTPCREL(%rip), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	LCPI8_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_MULTIPLIER_2           ## @MULTIPLIER_2
	.align	3
_MULTIPLIER_2:
	.quad	1                       ## 0x1

	.comm	_number_of_iterations,8,3 ## @number_of_iterations
	.comm	_benchmark_function,8,3 ## @benchmark_function
	.comm	_argument_a,8,3         ## @argument_a
	.comm	_argument_b,8,3         ## @argument_b
	.comm	_R,4,2                  ## @R

.subsections_via_symbols
