TITLE AllTypesData		(LW_1_Task_2.asm)

INCLUDE Irvine32.inc

.data
var1 BYTE 'd'
var2 BYTE 10

var3 DB 255
var4 DB 'a'

list1 BYTE 10b, 20, 30

str1 BYTE "Hi!", 0

list2 BYTE 10 DUP(12)

word1 WORD 65535
word2 SWORD -32768

word3 DWORD 429496739

real1 REAL4 -32.1
real2 REAL8 3.1E6
real3 REAL10 44.3E-123
.code
main PROC
        mov ax, [0000]
        call DumpRegs
        exit
main ENDP
END main