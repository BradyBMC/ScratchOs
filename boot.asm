[org 0x7c00] ;Location of cpu to load bootloader
    mov bp, 0x8000
    mov sp, bp ; Set stack and base pointer equal to stack
    
    mov bx, 0x9000
    mov dh, 2

    call disk_load

    mov dx, [0x9000]
    call print_hex

    call print_nl

    mov dx, [0x9000 + 512]
    call print_hex

    jmp $

%include "disk_load.asm"
%include "print.asm"
%include "print_hex.asm"

times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface

