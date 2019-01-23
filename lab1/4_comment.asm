	.file	"4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp  					; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp					; rbp <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 64   					;rsp<- 64
	mov	rax, QWORD PTR fs:40  		;rax <- [fs]	
	mov	QWORD PTR [rbp-8], rax  	; [rbp-8] <-rax	
	xor	eax, eax 					;eax <- eax ^ eax; to clear register
	mov	DWORD PTR [rbp-56], 0		;[rbp-56]<-0 
	jmp	.L2 						; jump to L2
.L3:
	mov	eax, DWORD PTR [rbp-56]		; eax <-[rbp-56]
	cdqe							; convert doubleword to quadword 
	mov	edx, DWORD PTR [rbp-56]		; edx <- [rbp-56]
	mov	DWORD PTR [rbp-48+rax*4], edx	;[rbp-48+rax*4]<-edx	 
	add	DWORD PTR [rbp-56], 1		; [rbp-56]<- [rbp-56]+ 1	
.L2:
	cmp	DWORD PTR [rbp-56], 9		;  compare [rbp-56] to 9
	jle	.L3							; jump  to L3 if ,if condition is met
	mov	eax, DWORD PTR [rbp-40]		; eax<- [rbp-40]
	mov	DWORD PTR [rbp-52], eax		; [rbp-52]<- eax
	mov	eax, DWORD PTR [rbp-24]		; eax <- [rbp-24] 
	mov	DWORD PTR [rbp-40], eax		; [rbp-40]<- eax
	mov	eax, DWORD PTR [rbp-52]		; eax <- [rbp-52]
	mov	DWORD PTR [rbp-24], eax 	; [rbp-24] <- eax
	mov	eax, 0						; eax<-0
	mov	rcx, QWORD PTR [rbp-8]		; rcx<- [rbp-8]
	xor	rcx, QWORD PTR fs:40		; rcx <- rcx^fs
	je	.L5							; jump equal(je) L5 or conditional equal jump to L5
	call	__stack_chk_fail
.L5:
	leave							; empty the stack and end the program
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
