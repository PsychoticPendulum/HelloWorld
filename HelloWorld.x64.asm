; x64 Assembly

section .data
	msg:		db	"Hello World!", 0xa
	msg_len:	equ $-msg

section .text
	global _start
_start:
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, msg
	mov rdx, msg_len
	syscall
	mov rax, 0x3c
	mov rdi, 0x0
	syscall
