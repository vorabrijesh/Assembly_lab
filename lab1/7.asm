	.file	"7.c"
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
	mov	DWORD PTR [rbp-36], 3
	mov	DWORD PTR [rbp-32], 4
	lea	rax, [rbp-36]
	mov	QWORD PTR [rbp-24], rax
	lea	rax, [rbp-32]
	mov	QWORD PTR [rbp-16], rax
	mov	rax, QWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rbp-28], eax
	mov	rax, QWORD PTR [rbp-16]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-24]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR [rbp-16]
	mov	edx, DWORD PTR [rbp-28]
	mov	DWORD PTR [rax], edx
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
