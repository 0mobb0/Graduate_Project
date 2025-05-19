    .section .text
    .globl dummy_branches

dummy_branches:
    .rept 48
        jmp 1f
1:
        nop
    .endr
    ret