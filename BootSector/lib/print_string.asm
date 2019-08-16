;
; print_string.asm
;
; assume the string address is stored in "bx" register 
;


print_string:
    pusha

    jmp loop1
cloop1:
    mov al, [bx] ; assign char to be print
    mov ah, 0x0e
    int 0x10

    add bx, 1    ; move to the next char address of the string

loop1:
    cmp byte [bx], 0x00 ; check null byte
    jne cloop1

	popa
	ret

