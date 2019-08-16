;
; boot_sect_5.asm
;
;    test lib/print_string.asm
;
; assume the string address is stored in "bx" register 
;

	mov bx, 0x7c0
	mov ds, bx

    mov bx, HELLO_MSG ; assign string address to bx reg
    call print_string

	mov bx, GOODBYE_MSG ; 
	call print_string

	jmp $

;include library
%include "lib/print_string.asm"

;Data
HELLO_MSG:
    db 'Hello Boot Sector World!', 0x0a, 0x0d, 0

GOODBYE_MSG:
    db 'Goodbye Boot Sector World!', 0x0a, 0x0d, 0


    times 510-($-$$) db 0
	dw 0xaa55


