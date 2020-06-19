TITLE fibon		(LW_3_Task_1.asm)

INCLUDE Irvine32.inc

.data
NumOfNum DWORD 7d
FstNum WORD 0d
SndNum WORD 1d

.code
main PROC

	mov ecx, NumOfNum
	xor eax, eax
	xor ebx, ebx
l:
	mov ax, SndNum
	call DumpRegs
	add ax, FstNum
	mov bx, SndNum
	mov FstNum, bx
	mov SndNum, ax
	loop l

	exit
main ENDP
END main	
