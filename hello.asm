section .bss
	name resb 20				; reserve 20 bytes for the name

section .data

	; Creating Variables (more like pointers, specific places in the memory) for future use

	prompt db "Enter your name: "		; name
	prompt_len equ $ - prompt

	output db "Hello, ", 0x0		; output + newline
	output_len equ $ - output

	text_pn db "Printing name...", 0xA
	text_pn_len equ $ - text_pn

section .text

	; Indicates that _start is the beggining of the program

	global _start

_start:
	; Prints prompt

	mov rax, 1				; syscall number for sys_write
	mov rdi, 1				; file descriptor 1 (stdout)
	mov rsi, prompt				; pointer to prompt
	mov rdx, prompt_len			; prompt length
	syscall					; call the kernel

	; Read user input

	mov rax, 0				; sys_read
	mov rdi, 0				; stdin (input)
	mov rsi, name				; buffer to store name
	mov rdx, 20				; max bytes to read
	syscall

	mov rbx, name				; pointer to input buffer

	jmp find_newline			; jumps to print name

find_newline:
	; Finds the newline made when pressing enter, and removes it

	cmp byte [rbx], 0xA			; is rbx = 0xA (/n)
	je replace_newline			; if found, jump to replace

	; Goes through and checks all characters

	inc rbx					; move to next character
	cmp rbx, name + 20			; prevents overflow
	jl find_newline				; keep searching withint bound (also is essentially a while loop)

	jmp print_name

replace_newline:
	; Replaces the newline with null terminator (0x0)

	mov byte [rbx], 0
	jmp print_name

print_name:
	; Prints Hello

	mov rax, 1				; sys_write
	mov rdi, 1				; stdout
	mov rsi, output				; 'Hello, '
	mov rdx, output_len			; length
	syscall

	; Prints the name user entered

	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 20
	syscall

	; Exit program

	jmp exit

exit:
	mov rax, 60				; sys_exit
	xor rdi, rdi				; rdi = 0
	syscall
