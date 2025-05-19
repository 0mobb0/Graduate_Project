
%macro OneJump 0
jmp %%next
align 64
%%next:
%endmacro

jmp BtbLoop
align 4 * 1024 * 1024; align to a 4MB boundary
BtbLoop:
%rep 8704
OneJump
%endrep

%rep 64
nop
%endrep
