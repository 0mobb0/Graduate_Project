; reproduce Figure 3 of Half&Half

; alignment bits of branch instruction address
%ifndef branchalign
    %define branchalign 20
%endif

; alignment bits of branch target address
%ifndef targetalign
    %define targetalign 6
%endif

%macro testinit3 0
    mov rdi, 1000

    ; loop 300 times to clear phr
    ; since we only consider branch misprediction of the last two branches
    ; we do not have to be accurate here e.g. 93/194
loop_begin:
    mov eax, 93
    align 64
    jmp dummy_target

    align 1<<20
        
    %rep (1<<20)/4
        nop
    %endrep
    
    %rep (1<<20)/4
        nop
    %endrep

    %rep (1<<20)/4
        nop
    %endrep
    
    %rep (1<<20)/4-(1<<6)
        nop
    %endrep

    ; dummy_target aligned to 1<<6
dummy_target:
    %rep (1<<8)-7
        nop
    %endrep
    dec eax ; 2 bytes
    ; the last byte of jnz aligned to 1<<19
    ; jnz dummy_target
    db 0x0f
    db 0x85
    dd dummy_target - $ - 4

    READ_PMC_START
    rdrand eax
    and eax, 1

    ; READ_PMC_START: 166
    ; rdrand eax: 3 bytes
    ; and eax, 1: 3 bytes
    ; jnz first_target: 6 bytes

    %rep (1<<branchalign)/4
        nop
    %endrep

    %rep (1<<branchalign)/4
        nop
    %endrep

    %rep (1<<branchalign)/4
        nop
    %endrep

    %rep (1<<branchalign)/4-166-6-6
        nop
    %endrep

    ; the last byte of jnz aligned to 1<<branchalign
    ; jnz first_target
    db 0x0f
    db 0x85
    dd first_target - $ - 4

    %rep (1<<targetalign)-1
        nop
    %endrep
    ; target aligned to 1<<targetalign
first_target:

    align 64
    jnz second_target
second_target:

    READ_PMC_END

    align 64
    dec rdi
    jnz loop_begin
%endmacro