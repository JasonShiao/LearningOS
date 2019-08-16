; boot_sect_3.asm
;
; Stack example
;

mov ah, 0x0e

mov bp, 0x8000 ; define the start location of the stack
mov sp, bp     ; assign current stack ptr with base stack ptr

push 'A'       ; Stack will always operate in 16-bit
push 'B'       ; the assembler will automatically pad char to 16-bit
push 'C'

pop bx         ;
mov al, bl     ;
int 0x10

pop bx
mov al, bl
int 0x10

mov al, [0x7ffe]  ; 0x8000 - 0x2 = 0x7ffe
int 0x10

jmp $          ; jump to itself forever

times 510-($-$$) db 0
dw 0xaa55


