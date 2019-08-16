;
; A simple boot sector program that loops forever
;

mov ah, 0x0e ; interrup 10 /ah -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $  ; jump to the current address, forever
                      
					  ; $ (current position) - $$ (start)
times 510-($-$$) db 0 ; When compiled, our program must fit into 512 bytes,
                      ; with the last two bytes being the magic number,
					  ; so here, tell our assembly compiler to pad out our
					  ; program with enough zero bytes (db 0) to bring us to
					  ; the 510th byte.
dw 0xaa55             ; Last two bytes (one word) form the magic number,
                      ; so the BIOS knows we are at boot sector
