	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_fibo                           ## -- Begin function fibo
	.p2align	4, 0x90
_fibo:                                  ## @fibo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	jle	LBB0_1
## %bb.2:
	movq	%rdi, %r12
	leaq	-1(%rdi), %rbx
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	-1(%r12), %rdi
	callq	_fibo
	leaq	-2(%r12), %rcx
	addq	%rax, %r14
	addq	$-2, %rbx
	cmpq	$2, %r12
	movq	%rcx, %r12
	jg	LBB0_3
	jmp	LBB0_6
LBB0_1:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	LBB0_6
LBB0_4:
	movl	$1, %r15d
LBB0_6:
	addq	%r15, %r14
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function main
LCPI1_0:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI1_1:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_2:
	.quad	0x412e848000000000              ## double 1.0E+6
LCPI1_3:
	.quad	0x4014000000000000              ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	L_.str(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %ebx
	callq	_clock
	movq	%rax, %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	$45, %rbx
	jne	LBB1_1
## %bb.2:
	callq	_clock
	subq	%r14, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	leaq	L_.str.2(%rip), %rdi
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str(%rip), %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %ebx
	callq	_clock
	movq	%rax, %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	$45, %rbx
	jne	LBB1_3
## %bb.4:
	callq	_clock
	subq	%r14, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	leaq	L_.str.2(%rip), %rdi
	movapd	%xmm0, -48(%rbp)                ## 16-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str(%rip), %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %ebx
	callq	_clock
	movq	%rax, %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	$45, %rbx
	jne	LBB1_5
## %bb.6:
	callq	_clock
	subq	%r14, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	leaq	L_.str.2(%rip), %rdi
	movapd	%xmm0, -96(%rbp)                ## 16-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str(%rip), %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %ebx
	callq	_clock
	movq	%rax, %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	$45, %rbx
	jne	LBB1_7
## %bb.8:
	callq	_clock
	subq	%r14, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	leaq	L_.str.2(%rip), %rdi
	movapd	%xmm0, -80(%rbp)                ## 16-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str(%rip), %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %ebx
	callq	_clock
	movq	%rax, %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	$45, %rbx
	jne	LBB1_9
## %bb.10:
	xorpd	%xmm0, %xmm0
	movapd	-64(%rbp), %xmm1                ## 16-byte Reload
	addsd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	addsd	-96(%rbp), %xmm1                ## 16-byte Folded Reload
	addsd	-80(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -64(%rbp)                ## 16-byte Spill
	callq	_clock
	subq	%r14, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	movapd	%xmm0, -48(%rbp)                ## 16-byte Spill
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movapd	-48(%rbp), %xmm0                ## 16-byte Reload
	addsd	-64(%rbp), %xmm0                ## 16-byte Folded Reload
	divsd	LCPI1_3(%rip), %xmm0
	leaq	L_.str.3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n----------Round #%i----------\n"

L_.str.1:                               ## @.str.1
	.asciz	"fibo of %ld is %ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"\n====> Time used: %lf s \n"

L_.str.3:                               ## @.str.3
	.asciz	"\n\n<=== Average Time used: %lf s! ===>\n\n"

.subsections_via_symbols
