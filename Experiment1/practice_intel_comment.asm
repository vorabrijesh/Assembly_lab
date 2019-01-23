	.file	"practice.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp  ; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [rsp]
	.cfi_def_cfa_register 6
	push	r12 ; stack[top-1] <- [r12]
	push	rbx ; stack[top-2] <- [rbx]
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 10 ; ebx <- 10
	mov	r12d, 20 ; r12d <- 20
	lea	eax, [rbx+r12] ; eax <- [rbx + r12] ; eax <- 30
	mov	DWORD PTR [rbp-32], eax ; [rbp-32] <- [eax] ; [rbp-32] <- 30
	mov	eax, ebx ; eax <- [ebx] ; eax <- 10
	sub	eax, r12d ; eax <- [eax] - [r12d] ; eax <- -10
	mov	DWORD PTR [rbp-28], eax ; [rbp -28] <- [eax] ; 
	mov	eax, ebx ; Similarly as above instructions
	imul	eax, r12d ; Similarly as above instructions
	mov	DWORD PTR [rbp-24], eax ; similar as above
	mov	eax, ebx ; similar as above
	cdq      ; similar as above
	idiv	r12d ; similar as above
	mov	DWORD PTR [rbp-20], eax ; similar as above
	mov	eax, 0 ; similar as above
	pop	rbx ; rbx <- stack[top-2] ; What is the value of rbx
	pop	r12 ; rbx <- stack[top-1] ; What is the value of r12
	pop	rbp ; rbp <- stack[top -0]; What is the value of rbp
	.cfi_def_cfa 7, 8
	ret ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
