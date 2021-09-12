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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jg	LBB0_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB0_5
LBB0_2:
	cmpq	$1, -16(%rbp)
	jne	LBB0_4
## %bb.3:
	movq	$1, -8(%rbp)
	jmp	LBB0_5
LBB0_4:
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	_fibo
	movq	-16(%rbp), %rcx
	subq	$2, %rcx
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	callq	_fibo
	movq	-24(%rbp), %rcx                 ## 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -8(%rbp)
LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI1_0:
	.quad	0x412e848000000000              ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI1_1:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI1_2:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
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
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$5, -20(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$1, -36(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	LBB1_8
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -84(%rbp)                 ## 4-byte Spill
	callq	_clock
	movq	%rax, -48(%rbp)
	movq	$1, -56(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$45, -56(%rbp)
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rdi
	callq	_fibo
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	movsd	LCPI1_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)                ## 8-byte Spill
	callq	_clock
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	movaps	LCPI1_1(%rip), %xmm1            ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI1_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    ## xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movsd	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
## %bb.7:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_1
LBB1_8:
	movsd	-32(%rbp), %xmm0                ## xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	leaq	L_.str.3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	-4(%rbp), %ecx
	movl	%eax, -100(%rbp)                ## 4-byte Spill
	movl	%ecx, %eax
	addq	$112, %rsp
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
