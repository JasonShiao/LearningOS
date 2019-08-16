;
; boot_sect_2.asm
;
; A simple boot sector program that demonstrates addressing.
;     print 'X' 
;

; Data is actually loaded to 0x7c00 (runtime)
; But the label itself doesn't point to 0x7c00 by default
; since it doesn't know any runtime info (how CPU loads program to RAM)

; First approach, in boot_sect_2.asm is
;      specifying the runtime info by ourselves "each time we use a label"
;
; But that is not convenient to always specify runtime info by ourselves
;
; Second approach, add a directive [org 0x7c00] to tell assembler to 
;     modify the reference of label for us
;

    [org 0x7c00]        ; Tell assembler to modify the reference of label


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


