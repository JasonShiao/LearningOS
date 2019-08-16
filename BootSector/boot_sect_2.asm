;
; boot_sect_2.asm
;
; A simple boot sector program that demonstrates addressing.
;     print 'X' 
;

    mov ah, 0x0e

    mov al, the_secret  ; False
    int 0x10

    mov al, [the_secret]; False
    int 0x10

    mov bx, the_secret  ; Good way, use label + offset
    add bx, 0x7c00      ; But not convenient enough
    mov al, [bx]
    int 0x10

    mov al, [0x7c1d]    ; Bad way, directly count the address
    int 0x10

jmp $

the_secret:
    db "X"

    times 510-($-$$) db 0
	dw 0xaa55


