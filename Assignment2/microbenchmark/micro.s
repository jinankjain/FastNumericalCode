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
	movq	_SPECIAL_DIV_DOUBLE@GOTPCREL(%rip), %rax
	movabsq	$4611686018427387904, %rcx ## imm = 0x4000000000000000
	movq	%rcx, (%rax)
	movq	_SPECIAL_MUL_DOUBLE@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	%edi, %eax
	cmpl	$7, %edi
	ja	LBB0_11
## BB#1:
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_2:
	leaq	_sp_mul_latency(%rip), %rax
	jmp	LBB0_10
LBB0_3:
	leaq	_sp_mul_tps(%rip), %rax
	jmp	LBB0_10
LBB0_4:
	leaq	_sp_div_latency(%rip), %rax
	jmp	LBB0_10
LBB0_5:
	leaq	_sp_div_tps(%rip), %rax
	jmp	LBB0_10
LBB0_6:
	leaq	_dp_div_latency(%rip), %rax
	jmp	LBB0_10
LBB0_7:
	leaq	_dp_div_tps(%rip), %rax
	jmp	LBB0_10
LBB0_8:
	leaq	_dp_mul_latency(%rip), %rax
	jmp	LBB0_10
LBB0_9:
	leaq	_dp_mul_tps(%rip), %rax
LBB0_10:
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
LBB0_11:
	popq	%rbp
	retq
	.cfi_endproc
	.align	2, 0x90
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_3 = LBB0_3-LJTI0_0
L0_0_set_4 = LBB0_4-LJTI0_0
L0_0_set_5 = LBB0_5-LJTI0_0
L0_0_set_6 = LBB0_6-LJTI0_0
L0_0_set_7 = LBB0_7-LJTI0_0
L0_0_set_8 = LBB0_8-LJTI0_0
L0_0_set_9 = LBB0_9-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_3
	.long	L0_0_set_4
	.long	L0_0_set_5
	.long	L0_0_set_6
	.long	L0_0_set_7
	.long	L0_0_set_8
	.long	L0_0_set_9

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_0:
	.quad	4611911198408756429     ## double 2.1000000000000001
LCPI1_1:
	.quad	4607181518080091934     ## double 0.99990000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sp_mul_latency
	.align	4, 0x90
_sp_mul_latency:                        ## @sp_mul_latency
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
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$1000, %eax             ## imm = 0x3E8
	movsd	LCPI1_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	.align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addl	$-10, %eax
	jne	LBB1_1
## BB#2:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_0:
	.quad	4613262278296967578     ## double 2.7000000000000002
	.quad	4612361558371493478     ## double 2.2999999999999998
LCPI2_1:
	.quad	4613487458278336102     ## double 2.7999999999999998
	.quad	4612811918334230528     ## double 2.5
LCPI2_4:
	.quad	4607181518080091934     ## double 0.99990000000000001
	.quad	4607181518080091934     ## double 0.99990000000000001
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_2:
	.quad	4611911198408756429     ## double 2.1000000000000001
LCPI2_3:
	.quad	4607181518080091934     ## double 0.99990000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sp_mul_tps
	.align	4, 0x90
_sp_mul_tps:                            ## @sp_mul_tps
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
	movapd	LCPI2_0(%rip), %xmm0    ## xmm0 = [2.700000e+00,2.300000e+00]
	movapd	LCPI2_1(%rip), %xmm1    ## xmm1 = [2.800000e+00,2.500000e+00]
	movsd	LCPI2_2(%rip), %xmm2    ## xmm2 = mem[0],zero
	xorl	%eax, %eax
	movsd	LCPI2_3(%rip), %xmm3    ## xmm3 = mem[0],zero
	movapd	LCPI2_4(%rip), %xmm4    ## xmm4 = [9.999000e-01,9.999000e-01]
	.align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	%xmm3, %xmm2
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm2
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm2
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm2
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm2
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	addl	$25, %eax
	cmpl	$1000, %eax             ## imm = 0x3E8
	jl	LBB2_1
## BB#2:
	movapd	%xmm0, %xmm3
	shufpd	$1, %xmm3, %xmm3        ## xmm3 = xmm3[1,0]
	addsd	%xmm3, %xmm2
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        ## xmm0 = xmm0[1,0]
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI3_0:
	.quad	4611640982431114199     ## double 1.99
LCPI3_1:
	.quad	4607181518080091934     ## double 0.99990000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sp_div_latency
	.align	4, 0x90
_sp_div_latency:                        ## @sp_div_latency
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
	movsd	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$1000, %eax             ## imm = 0x3E8
	movsd	LCPI3_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	.align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	addl	$-5, %eax
	jne	LBB3_1
## BB#2:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI4_0:
	.quad	4611550910438566789     ## double 1.97
	.quad	4611595946434840494     ## double 1.98
LCPI4_1:
	.quad	4611640982431114199     ## double 1.99
	.quad	4611505874442293084     ## double 1.96
LCPI4_2:
	.quad	4607181518080091934     ## double 0.99990000000000001
	.quad	4607181518080091934     ## double 0.99990000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sp_div_tps
	.align	4, 0x90
_sp_div_tps:                            ## @sp_div_tps
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
	movapd	LCPI4_0(%rip), %xmm1    ## xmm1 = [1.970000e+00,1.980000e+00]
	movapd	LCPI4_1(%rip), %xmm0    ## xmm0 = [1.990000e+00,1.960000e+00]
	xorl	%eax, %eax
	movapd	LCPI4_2(%rip), %xmm2    ## xmm2 = [9.999000e-01,9.999000e-01]
	.align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	divpd	%xmm2, %xmm1
	divpd	%xmm2, %xmm0
	divpd	%xmm2, %xmm1
	divpd	%xmm2, %xmm0
	addl	$8, %eax
	cmpl	$1000, %eax             ## imm = 0x3E8
	jl	LBB4_1
## BB#2:
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        ## xmm2 = xmm2[1,0]
	addsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	shufpd	$1, %xmm0, %xmm0        ## xmm0 = xmm0[1,0]
	addsd	%xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI5_0:
	.quad	4607632778762754458     ## double 1.1000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_mul_latency
	.align	4, 0x90
_dp_mul_latency:                        ## @dp_mul_latency
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
	movq	_SPECIAL_MUL_DOUBLE@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movl	$1000, %eax             ## imm = 0x3E8
	movsd	LCPI5_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	.align	4, 0x90
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addl	$-10, %eax
	jne	LBB5_1
## BB#2:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI6_0:
	.quad	4607632778762754458     ## double 1.1000000000000001
LCPI6_1:
	.quad	4608983858650965606     ## double 1.3999999999999999
LCPI6_2:
	.quad	4608083138725491507     ## double 1.2
LCPI6_3:
	.quad	4609434218613702656     ## double 1.5
LCPI6_4:
	.quad	4610334938539176755     ## double 1.7
LCPI6_5:
	.quad	4609884578576439706     ## double 1.6000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_mul_tps
	.align	4, 0x90
_dp_mul_tps:                            ## @dp_mul_tps
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
	movq	_SPECIAL_MUL_DOUBLE@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm7           ## xmm7 = mem[0],zero
	xorl	%eax, %eax
	movsd	LCPI6_0(%rip), %xmm8    ## xmm8 = mem[0],zero
	movsd	LCPI6_1(%rip), %xmm9    ## xmm9 = mem[0],zero
	movsd	LCPI6_2(%rip), %xmm10   ## xmm10 = mem[0],zero
	movsd	LCPI6_3(%rip), %xmm11   ## xmm11 = mem[0],zero
	movsd	LCPI6_4(%rip), %xmm3    ## xmm3 = mem[0],zero
	movsd	LCPI6_5(%rip), %xmm4    ## xmm4 = mem[0],zero
	movapd	%xmm7, %xmm2
	movapd	%xmm7, %xmm6
	movapd	%xmm7, %xmm1
	movapd	%xmm7, %xmm5
	movapd	%xmm7, %xmm0
	.align	4, 0x90
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	mulsd	%xmm8, %xmm0
	mulsd	%xmm9, %xmm5
	mulsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm6
	mulsd	%xmm3, %xmm2
	mulsd	%xmm4, %xmm7
	addl	$6, %eax
	cmpl	$1000, %eax             ## imm = 0x3E8
	jl	LBB6_1
## BB#2:
	addsd	%xmm5, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm7, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI7_0:
	.quad	9125043052530916322     ## double 1.0000000000000001E+302
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_div_latency
	.align	4, 0x90
_dp_div_latency:                        ## @dp_div_latency
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
	movq	_SPECIAL_DIV_DOUBLE@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movsd	LCPI7_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$1000, %eax             ## imm = 0x3E8
	.align	4, 0x90
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	addl	$-5, %eax
	jne	LBB7_1
## BB#2:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI8_0:
	.quad	7613934262404594417     ## double 1.0E+201
LCPI8_1:
	.quad	7643850664720225804     ## double 9.9999999999999998E+202
LCPI8_2:
	.quad	7658797887777303439     ## double 9.9999999999999999E+203
LCPI8_3:
	.quad	7598952565167317594     ## double 9.9999999999999996E+199
LCPI8_4:
	.quad	7629190726498141398     ## double 9.999999999999999E+201
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dp_div_tps
	.align	4, 0x90
_dp_div_tps:                            ## @dp_div_tps
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
	movq	_SPECIAL_DIV_DOUBLE@GOTPCREL(%rip), %rax
	movsd	(%rax), %xmm4           ## xmm4 = mem[0],zero
	movsd	LCPI8_0(%rip), %xmm3    ## xmm3 = mem[0],zero
	movsd	LCPI8_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	LCPI8_2(%rip), %xmm2    ## xmm2 = mem[0],zero
	movsd	LCPI8_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI8_4(%rip), %xmm5    ## xmm5 = mem[0],zero
	xorl	%eax, %eax
	.align	4, 0x90
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	divsd	%xmm4, %xmm5
	divsd	%xmm4, %xmm3
	divsd	%xmm4, %xmm2
	divsd	%xmm4, %xmm1
	divsd	%xmm4, %xmm0
	addl	$5, %eax
	cmpl	$1000, %eax             ## imm = 0x3E8
	jl	LBB8_1
## BB#2:
	addsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI9_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI9_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI9_2:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_mul_latency
	.align	4, 0x90
_microbenchmark_get_mul_latency:        ## @microbenchmark_get_mul_latency
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Ltmp30:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	callq	*(%rcx)
	movq	_ans@GOTPCREL(%rip), %rbx
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	movd	%rax, %xmm0
	punpckldq	LCPI9_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI9_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -32(%rbp)        ## 16-byte Spill
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movapd	-32(%rbp), %xmm0        ## 16-byte Reload
	divsd	LCPI9_2(%rip), %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI10_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI10_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI10_2:
	.quad	4652007308841189376     ## double 1000
LCPI10_3:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_mul_throughput
	.align	4, 0x90
_microbenchmark_get_mul_throughput:     ## @microbenchmark_get_mul_throughput
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Ltmp34:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	callq	*(%rcx)
	movq	_ans@GOTPCREL(%rip), %rbx
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	movd	%rax, %xmm0
	punpckldq	LCPI10_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI10_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -32(%rbp)        ## 16-byte Spill
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	leaq	L_.str.1(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movapd	-32(%rbp), %xmm1        ## 16-byte Reload
	divsd	LCPI10_2(%rip), %xmm1
	movsd	LCPI10_3(%rip), %xmm0   ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI11_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI11_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI11_2:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_div_latency
	.align	4, 0x90
_microbenchmark_get_div_latency:        ## @microbenchmark_get_div_latency
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp35:
	.cfi_def_cfa_offset 16
Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Ltmp38:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	callq	*(%rcx)
	movq	_ans@GOTPCREL(%rip), %rbx
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	movd	%rax, %xmm0
	punpckldq	LCPI11_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI11_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -32(%rbp)        ## 16-byte Spill
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movapd	-32(%rbp), %xmm0        ## 16-byte Reload
	divsd	LCPI11_2(%rip), %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI12_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI12_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI12_2:
	.quad	4652007308841189376     ## double 1000
LCPI12_3:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_microbenchmark_get_div_throughput
	.align	4, 0x90
_microbenchmark_get_div_throughput:     ## @microbenchmark_get_div_throughput
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Ltmp42:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	callq	_cycles_count_start
	movq	_benchmark_func@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	callq	*(%rcx)
	movq	_ans@GOTPCREL(%rip), %rbx
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	callq	_cycles_count_stop
	movd	%rax, %xmm0
	punpckldq	LCPI12_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI12_1(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, -32(%rbp)        ## 16-byte Spill
	movsd	(%rbx), %xmm0           ## xmm0 = mem[0],zero
	leaq	L_.str.3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movapd	-32(%rbp), %xmm1        ## 16-byte Reload
	divsd	LCPI12_2(%rip), %xmm1
	movsd	LCPI12_3(%rip), %xmm0   ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_SPECIAL_DIV_DOUBLE,8,3 ## @SPECIAL_DIV_DOUBLE
	.comm	_SPECIAL_MUL_DOUBLE,8,3 ## @SPECIAL_MUL_DOUBLE
	.comm	_benchmark_func,8,3     ## @benchmark_func
	.comm	_ans,8,3                ## @ans
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Latency MUL %g\n"

L_.str.1:                               ## @.str.1
	.asciz	"TPS MUL %g\n"

L_.str.2:                               ## @.str.2
	.asciz	"Latency DIV %g\n"

L_.str.3:                               ## @.str.3
	.asciz	"TPS DIV %g\n"


.subsections_via_symbols
