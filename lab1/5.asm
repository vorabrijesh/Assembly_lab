	.file	"5.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-32], 5
	mov	DWORD PTR [rbp-28], 2
	mov	DWORD PTR [rbp-24], 4
	mov	DWORD PTR [rbp-20], 1
	mov	DWORD PTR [rbp-16], 3
	mov	DWORD PTR [rbp-12], 6
	mov	eax, DWORD PTR [rbp-32]
	mov	DWORD PTR [rbp-44], eax
	mov	eax, DWORD PTR [rbp-32]
	mov	DWORD PTR [rbp-40], eax
	mov	DWORD PTR [rbp-36], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]
	cmp	eax, DWORD PTR [rbp-44]
	jle	.L3
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]
	mov	DWORD PTR [rbp-44], eax
.L3:
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]
	cmp	eax, DWORD PTR [rbp-40]
	jge	.L4
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]
	mov	DWORD PTR [rbp-40], eax
.L4:
	add	DWORD PTR [rbp-36], 1
.L2:
	cmp	DWORD PTR [rbp-36], 5
	jle	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR [rbp-8]
	xor	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
