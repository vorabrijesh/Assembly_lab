	.file	"1.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$20, -32(%rbp)
	movl	$10, -28(%rbp)
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
