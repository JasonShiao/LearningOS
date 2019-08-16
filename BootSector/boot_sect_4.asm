; sect_boot_4.asm
;
; Conditional Jump
;

    mov bx, 30

Start_If:

    cmp bx, 4
    jle Case_A
    cmp bx, 40
    jl Case_B
	mov al, 'C'    ; Default(else) case
	jmp End_if

Case_A:
    mov al, 'A'
	jmp End_if
Case_B:
    mov al, 'B'
	jmp End_if

End_if:

    mov ah, 0x0e
	int 0x10

	jmp $

	times 510-($-$$) db 0
	dw 0xaa55


	





