	.file	"microbenchmark.c"
	.text
	.p2align 4,,15
	.globl	sp_mul_latency
	.type	sp_mul_latency, @function
sp_mul_latency:
.LFB1:
	.cfi_startproc
	movl	$10000, %eax
	movss	.LC0(%rip), %xmm0
	movss	.LC1(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L2:
	subl	$1, %eax
	mulss	%xmm1, %xmm0
	jne	.L2
	cvttss2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	sp_mul_latency, .-sp_mul_latency
	.p2align 4,,15
	.globl	sp_mul_tps
	.type	sp_mul_tps, @function
sp_mul_tps:
.LFB2:
	.cfi_startproc
	movl	$10000, %eax
	movss	.LC2(%rip), %xmm2
	movss	.LC3(%rip), %xmm3
	movss	.LC4(%rip), %xmm4
	movss	.LC0(%rip), %xmm1
	movss	.LC1(%rip), %xmm0
	.p2align 4,,10
	.p2align 3
.L6:
	subl	$1, %eax
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm2
	jne	.L6
	addss	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	sp_mul_tps, .-sp_mul_tps
	.p2align 4,,15
	.globl	sp_div_latency
	.type	sp_div_latency, @function
sp_div_latency:
.LFB3:
	.cfi_startproc
	movl	$10000, %eax
	movss	.LC5(%rip), %xmm0
	movss	.LC1(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L9:
	subl	$1, %eax
	divss	%xmm1, %xmm0
	jne	.L9
	cvttss2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	sp_div_latency, .-sp_div_latency
	.p2align 4,,15
	.globl	sp_div_tps
	.type	sp_div_tps, @function
sp_div_tps:
.LFB4:
	.cfi_startproc
	movl	$10000, %eax
	movss	.LC6(%rip), %xmm1
	movss	.LC5(%rip), %xmm0
	movss	.LC1(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L12:
	subl	$1, %eax
	divss	%xmm2, %xmm0
	divss	%xmm2, %xmm1
	jne	.L12
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE4:
	.size	sp_div_tps, .-sp_div_tps
	.p2align 4,,15
	.globl	dp_mul_latency
	.type	dp_mul_latency, @function
dp_mul_latency:
.LFB5:
	.cfi_startproc
	movsd	.LC7(%rip), %xmm0
	movl	$10000, %eax
	movsd	.LC8(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L15:
	subl	$1, %eax
	mulsd	%xmm1, %xmm0
	jne	.L15
	cvttsd2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE5:
	.size	dp_mul_latency, .-dp_mul_latency
	.p2align 4,,15
	.globl	dp_mul_tps
	.type	dp_mul_tps, @function
dp_mul_tps:
.LFB6:
	.cfi_startproc
	movsd	.LC9(%rip), %xmm1
	movl	$10000, %eax
	movsd	.LC7(%rip), %xmm0
	movsd	.LC8(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L18:
	subl	$1, %eax
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	jne	.L18
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE6:
	.size	dp_mul_tps, .-dp_mul_tps
	.p2align 4,,15
	.globl	dp_div_latency
	.type	dp_div_latency, @function
dp_div_latency:
.LFB7:
	.cfi_startproc
	movsd	.LC10(%rip), %xmm0
	movl	$10000, %eax
	movsd	.LC8(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L21:
	subl	$1, %eax
	divsd	%xmm1, %xmm0
	jne	.L21
	cvttsd2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	dp_div_latency, .-dp_div_latency
	.p2align 4,,15
	.globl	dp_div_tps
	.type	dp_div_tps, @function
dp_div_tps:
.LFB8:
	.cfi_startproc
	movsd	.LC9(%rip), %xmm1
	movl	$10000, %eax
	movsd	.LC10(%rip), %xmm0
	movsd	.LC8(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L24:
	subl	$1, %eax
	divsd	%xmm2, %xmm0
	divsd	%xmm2, %xmm1
	jne	.L24
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	dp_div_tps, .-dp_div_tps
	.p2align 4,,15
	.globl	microbenchmark_mode
	.type	microbenchmark_mode, @function
microbenchmark_mode:
.LFB0:
	.cfi_startproc
	cmpl	$7, %edi
	ja	.L26
	movl	%edi, %edi
	jmp	*.L29(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L29:
	.quad	.L28
	.quad	.L30
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.text
	.p2align 4,,10
	.p2align 3
.L36:
	movq	$dp_mul_tps, benchmark_func(%rip)
.L26:
	rep ret
	.p2align 4,,10
	.p2align 3
.L35:
	movq	$dp_mul_latency, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	movq	$sp_mul_latency, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	movq	$sp_mul_tps, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	movq	$sp_div_latency, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movq	$sp_div_tps, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	movq	$dp_div_latency, benchmark_func(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	movq	$dp_div_tps, benchmark_func(%rip)
	ret
	.cfi_endproc
.LFE0:
	.size	microbenchmark_mode, .-microbenchmark_mode
	.p2align 4,,15
	.globl	microbenchmark_get_mul_latency
	.type	microbenchmark_get_mul_latency, @function
microbenchmark_get_mul_latency:
.LFB14:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	call	cycles_count_start
	xorl	%eax, %eax
	call	*benchmark_func(%rip)
	movl	%eax, ans(%rip)
	xorl	%eax, %eax
	call	cycles_count_stop
	testq	%rax, %rax
	js	.L38
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	movq	%rax, %rdx
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	divsd	.LC11(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	microbenchmark_get_mul_latency, .-microbenchmark_get_mul_latency
	.p2align 4,,15
	.globl	microbenchmark_get_mul_throughput
	.type	microbenchmark_get_mul_throughput, @function
microbenchmark_get_mul_throughput:
.LFB16:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	call	cycles_count_start
	xorl	%eax, %eax
	call	*benchmark_func(%rip)
	movl	%eax, ans(%rip)
	xorl	%eax, %eax
	call	cycles_count_stop
	testq	%rax, %rax
	js	.L42
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L43:
	divsd	.LC11(%rip), %xmm1
	movsd	.LC12(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L43
	.cfi_endproc
.LFE16:
	.size	microbenchmark_get_mul_throughput, .-microbenchmark_get_mul_throughput
	.p2align 4,,15
	.globl	microbenchmark_get_div_latency
	.type	microbenchmark_get_div_latency, @function
microbenchmark_get_div_latency:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	call	cycles_count_start
	xorl	%eax, %eax
	call	*benchmark_func(%rip)
	movl	%eax, ans(%rip)
	xorl	%eax, %eax
	call	cycles_count_stop
	testq	%rax, %rax
	js	.L46
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC11(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	movq	%rax, %rdx
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	divsd	.LC11(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	microbenchmark_get_div_latency, .-microbenchmark_get_div_latency
	.p2align 4,,15
	.globl	microbenchmark_get_div_throughput
	.type	microbenchmark_get_div_throughput, @function
microbenchmark_get_div_throughput:
.LFB12:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	call	cycles_count_start
	xorl	%eax, %eax
	call	*benchmark_func(%rip)
	movl	%eax, ans(%rip)
	xorl	%eax, %eax
	call	cycles_count_stop
	testq	%rax, %rax
	js	.L50
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L51:
	divsd	.LC11(%rip), %xmm1
	movsd	.LC12(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L51
	.cfi_endproc
.LFE12:
	.size	microbenchmark_get_div_throughput, .-microbenchmark_get_div_throughput
	.comm	ans,4,4
	.comm	benchmark_func,8,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1074161254
	.align 4
.LC1:
	.long	1065351538
	.align 4
.LC2:
	.long	1075838976
	.align 4
.LC3:
	.long	1076677837
	.align 4
.LC4:
	.long	1075000115
	.align 4
.LC5:
	.long	1073657938
	.align 4
.LC6:
	.long	1073574052
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	3435973837
	.long	1073794252
	.align 8
.LC8:
	.long	1223206686
	.long	1072693038
	.align 8
.LC9:
	.long	858993459
	.long	1073951539
	.align 8
.LC10:
	.long	2576980378
	.long	1073846681
	.align 8
.LC11:
	.long	0
	.long	1086556160
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 6.3.1 20170109"
	.section	.note.GNU-stack,"",@progbits
