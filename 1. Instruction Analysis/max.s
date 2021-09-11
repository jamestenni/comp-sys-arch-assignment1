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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
LBB0_3:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	LBB1_2
## %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	LBB1_3
LBB1_2:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB1_3:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
