	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_max1                           ## -- Begin function max1
	.p2align	4, 0x90
_max1:                                  ## @max1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	cmpl	%esi, %edi
	cmovgel	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_max2                           ## -- Begin function max2
	.p2align	4, 0x90
_max2:                                  ## @max2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	cmpl	%esi, %edi
	cmovgel	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function main
LCPI2_0:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI2_1:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
LCPI2_3:
	.quad	4841369599423283200             ## 0x4330000000000000
	.quad	4841369599423283200             ## 0x4330000000000000
LCPI2_4:
	.quad	4985484787499139072             ## 0x4530000000000000
	.quad	4985484787499139072             ## 0x4530000000000000
LCPI2_5:
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
LCPI2_6:
	.quad	0x412e848000000000              ## double 1.0E+6
	.quad	0x412e848000000000              ## double 1.0E+6
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI2_2:
	.quad	0x412e848000000000              ## double 1.0E+6
LCPI2_7:
	.quad	0x4024000000000000              ## double 10
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	xorpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 8-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	subq	%rbx, %rax
	movq	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0    ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	divsd	LCPI2_2(%rip), %xmm1
	addsd	-48(%rbp), %xmm1                ## 16-byte Folded Reload
	movapd	%xmm1, -48(%rbp)                ## 16-byte Spill
	callq	_clock
	movq	%rax, %r14
	callq	_clock
	movq	%rax, %rbx
	callq	_clock
	movq	%rax, %r15
	callq	_clock
	movq	%rbx, %xmm0
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0]
	movq	%r14, %xmm1
	movq	%r15, %xmm2
	punpcklqdq	%xmm2, %xmm1            ## xmm1 = xmm1[0],xmm2[0]
	psubq	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	pblendw	$51, %xmm0, %xmm1               ## xmm1 = xmm0[0,1],xmm1[2,3],xmm0[4,5],xmm1[6,7]
	por	LCPI2_3(%rip), %xmm1
	psrlq	$32, %xmm0
	por	LCPI2_4(%rip), %xmm0
	subpd	LCPI2_5(%rip), %xmm0
	addpd	%xmm1, %xmm0
	divpd	LCPI2_6(%rip), %xmm0
	movapd	-48(%rbp), %xmm1                ## 16-byte Reload
	addsd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    ## xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	divsd	LCPI2_7(%rip), %xmm0
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Average Time used: %lf\n"

.subsections_via_symbols
