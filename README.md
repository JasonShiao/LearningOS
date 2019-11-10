# Learn x86 CPU and assembly programming

* ref: [Writing a Simple Operating System from Scrach, Nick Blundell](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)

## List of goals:
- implement a boot sector program
- implement a simple OS kernel


## Run with QEMU
Generate binary from assembly language code
```
$ nasm boot sect.asm -f bin -o boot_sect.bin
```
Print/Dump the binary file (Just for debugging or learning)
```
$ od -t x1 -A n boot_sect.bin
```
Start emulation with qemu
```
$ qemu-system-i386 binary_image
```
