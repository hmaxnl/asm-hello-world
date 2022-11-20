.globl _start

.data
HELLO:
    .string "Hello, world!\n\0"
.equ STD_OUT, 1
.equ SYS_EXIT, 60
.equ SYS_WRITE, 1
.equ HELLO_LEN, . - HELLO

.text
_start:
    movq $SYS_WRITE, %rax
    movq $STD_OUT, %rdi
    movq $HELLO, %rsi
    movq $HELLO_LEN, %rdx
    syscall

exit:
    movq $SYS_EXIT, %rax
    xor %rdi, %rdi
    syscall
    hlt
