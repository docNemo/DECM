TITLE Substract3			(LW_1_Task_1.asm)

INCLUDE Irvine32.inc

;This program substracts 16-bits integers

.data

.code
main PROC
        mov ax, 10
        sub ax, 20
        sub ax, 10
        call DumpRegs
    exit
main ENDP
END main