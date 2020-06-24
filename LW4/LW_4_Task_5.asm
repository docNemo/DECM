TITLE random 		(LW_4_Task_5.asm)

INCLUDE Irvine32.inc

.data
numOfNum BYTE 50d
min DWORD -20d
max DWORD 20d

.code
main PROC
	xor ecx, ecx
	mov cl, numOfNum
	call Randomize
	l:
		
		mov ebx, min
		mov eax, max
		call random
		call WriteInt
		mov eax, ' '
		call WriteChar

		loop l
exit
main ENDP

random PROC
	sub eax, ebx

	inc eax
	call RandomRange
	add eax, ebx
ret
random ENDP

END main

