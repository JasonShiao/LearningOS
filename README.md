# Learn x86 CPU and assembly programming

* ref: Writing a Simple Operating System from Scrach, Nick Blundell

## List of goals:
- implement a boot sector program
- implement a simple OS kernel


## Test with QEMU
generate binary from assembly language
```
$ nasm boot sect.asm -f bin -o boot_sect.bin
```
Print the binary file (Just for debugging or learning)
```
$ od -t x1 -A n boot_sect.bin
```
Start emulation with qemu
```
$ qemu-system-i386 binary_image
```
