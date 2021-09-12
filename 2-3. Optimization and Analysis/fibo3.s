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
	leaq	L_.str(%rip), %r14
	leaq	L_.str.1(%rip), %rbx
	leaq	L_.str.2(%rip), %r12
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_printf
	callq	_clock
	movq	%rax, %r13
	movl	$1, %edi
	callq	_fibo
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$2, %edi
	callq	_fibo
	movl	$2, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$3, %edi
	callq	_fibo
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$4, %edi
	callq	_fibo
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$5, %edi
	callq	_fibo
	movl	$5, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$6, %edi
	callq	_fibo
	movl	$6, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$7, %edi
	callq	_fibo
	movl	$7, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$8, %edi
	callq	_fibo
	movl	$8, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$9, %edi
	callq	_fibo
	movl	$9, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_fibo
	movl	$10, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$11, %edi
	callq	_fibo
	movl	$11, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$12, %edi
	callq	_fibo
	movl	$12, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$13, %edi
	callq	_fibo
	movl	$13, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$14, %edi
	callq	_fibo
	movl	$14, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$15, %edi
	callq	_fibo
	movl	$15, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$16, %edi
	callq	_fibo
	movl	$16, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$17, %edi
	callq	_fibo
	movl	$17, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$18, %edi
	callq	_fibo
	movl	$18, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$19, %edi
	callq	_fibo
	movl	$19, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$20, %edi
	callq	_fibo
	movl	$20, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$21, %edi
	callq	_fibo
	movl	$21, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$22, %edi
	callq	_fibo
	movl	$22, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$23, %edi
	callq	_fibo
	movl	$23, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$24, %edi
	callq	_fibo
	movl	$24, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$25, %edi
	callq	_fibo
	movl	$25, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$26, %edi
	callq	_fibo
	movl	$26, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$27, %edi
	callq	_fibo
	movl	$27, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$28, %edi
	callq	_fibo
	movl	$28, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$29, %edi
	callq	_fibo
	movl	$29, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$30, %edi
	callq	_fibo
	movl	$30, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$31, %edi
	callq	_fibo
	movl	$31, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$32, %edi
	callq	_fibo
	movl	$32, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$33, %edi
	callq	_fibo
	movl	$33, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$34, %edi
	callq	_fibo
	movl	$34, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$35, %edi
	callq	_fibo
	movl	$35, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$36, %edi
	callq	_fibo
	movl	$36, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$37, %edi
	callq	_fibo
	movl	$37, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$38, %edi
	callq	_fibo
	movl	$38, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$39, %edi
	callq	_fibo
	movl	$39, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$40, %edi
	callq	_fibo
	movl	$40, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$41, %edi
	callq	_fibo
	movl	$41, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$42, %edi
	callq	_fibo
	movl	$42, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$43, %edi
	callq	_fibo
	movl	$43, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$44, %edi
	callq	_fibo
	movl	$44, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
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
## %bb.2:
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
