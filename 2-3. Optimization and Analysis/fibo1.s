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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testq	%rdi, %rdi
	jle	LBB0_1
## %bb.2:
	movq	%rdi, %rbx
	movl	$1, %eax
	cmpq	$1, %rdi
	je	LBB0_4
## %bb.3:
	leaq	-1(%rbx), %rdi
	callq	_fibo
	movq	%rax, %r14
	addq	$-2, %rbx
	movq	%rbx, %rdi
	callq	_fibo
	addq	%r14, %rax
	jmp	LBB0_4
LBB0_1:
	xorl	%eax, %eax
LBB0_4:
	popq	%rbx
	popq	%r14
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$1, %r15d
	xorpd	%xmm0, %xmm0
	leaq	L_.str.1(%rip), %rbx
	leaq	L_.str.2(%rip), %r12
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	leaq	L_.str(%rip), %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %r14d
	callq	_clock
	movq	%rax, %r13
	.p2align	4, 0x90
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	_fibo
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	incq	%r14
	cmpq	$45, %r14
	jne	LBB1_2
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	callq	_clock
	subq	%r13, %rax
	movq	%rax, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
	movq	%r12, %rdi
	movb	$1, %al
	callq	_printf
	movsd	-48(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0                ## 16-byte Folded Reload
	incl	%r15d
	cmpl	$6, %r15d
	jne	LBB1_1
## %bb.4:
	divsd	LCPI1_3(%rip), %xmm0
	leaq	L_.str.3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
