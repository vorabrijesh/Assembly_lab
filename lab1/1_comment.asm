	.file	"1.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp						; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp 					; rbp <- [rsp]
	.cfi_def_cfa_register 6
	mov	DWORD PTR -32[rbp], 20 		; [rbp-32] <- 20
	mov	DWORD PTR -28[rbp], 10		; [rbp-28] <- 10
	mov	edx, DWORD PTR -32[rbp]		; edx <- [rbp-32] ; edx <- 20
	mov	eax, DWORD PTR -28[rbp]		; eax <- [rbp-28] ; eax <- 10
	add	eax, edx					; eax <- eax + edx ; eax <- 30
	mov	DWORD PTR -24[rbp], eax		; [rbp-24] <- eax; [rbp-24] <- 30
	mov	eax, DWORD PTR -32[rbp]		; eax <-[rbp-32] ; eax <- 20
	sub	eax, DWORD PTR -28[rbp]	    ; eax <- eax- [rbp-28] ; eax <-10
	mov	DWORD PTR -20[rbp], eax		; [rbp-20] <- eax ;[rbp-20] <-10
	mov	eax, DWORD PTR -32[rbp]		; eax <-[rbp-32]	; eax<-20
	imul	eax, DWORD PTR -28[rbp]	; eax <- eax * [rbp-28] ; eax <-200
	mov	DWORD PTR -16[rbp], eax		; -16[rbp]<- eax; -16[rbp] <-20
	mov	eax, DWORD PTR -32[rbp]		; eax <- -32[rbp]; eax <-20
	cdq								; convert doubleword to quadword				
	idiv	DWORD PTR -28[rbp]		; eax <- eax/[rbp-28]; eax<-2
	mov	DWORD PTR -12[rbp], eax		; [rbp-12] <- eax ; [rbp-12] <-2
	mov	eax, DWORD PTR -32[rbp]		; eax <-[rbp-32]  ; eax<- 20	
	and	eax, DWORD PTR -28[rbp]		; eax <- eax &[rbp-28]; eax <- 30
	mov	DWORD PTR -8[rbp], eax		; [rbp-8] <- eax ; [rbp-8] <- 0
	mov	eax, DWORD PTR -32[rbp]     ; eax <- -32[rbp]; eax<- 20
	or	eax, DWORD PTR -28[rbp]		; eax<- eax | [rbp-28]  eax <- 30
	mov	DWORD PTR -4[rbp], eax		; [rbp-4] <- eax  ;[rbp-4 ]<- 30
	mov	eax, 0						; eax <- 0
	pop	rbp 						; rbp <- stack[top-0]; 
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
