TITLE random 		(LW_4_Task_5.asm)

INCLUDE Irvine32.inc

.data
numOfNum DWORD 50d
min DWORD -20d
max DWORD 20d

.code
main PROC
	mov ecx, numOfNum
	l:
		mov eax, min
		mov ebx, max
		call random
		call WriteInt
		mov eax, ' '
		call WriteChar

		loop l
exit
main ENDP

random PROC

.data
maxA DWORD ?
maxL DWORD ?
minL DWORD ?

.code
	mov minL, eax
	mov maxL, ebx

	mov maxA, ebx
	sub maxA, eax

	mov eax, maxA
	inc eax
	call RandomRange
	add eax, minL
ret
random ENDP

END main

