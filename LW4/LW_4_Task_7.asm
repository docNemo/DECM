TITLE RandomPlaced		(LW_4_Task_7.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data

chr BYTE 'A'
numOfRepeat DWORD 100d
maxX DWORD 200d
maxY DWORD 50d

minDelay DWORD 10d
maxDelay DWORD 300d

x BYTE ?
d BYTE ?

.code

main PROC
	
	call ClrScr

	mov ecx, numOfRepeat
	l:		
		call randomGoto
		
		mov eax, 'A'
		mov ebx, 'Z'
		call random

		;mov al, chr
		call WriteChar

		mov eax, minDelay
		mov ebx, maxDelay
		call random
		call DELAY
		loop l

	mov dl, 0
	mov dh, 51
	call GotoXY		

exit
main ENDP

randomGoto PROC
		xor edx, edx

		mov eax, maxX
		call RandomRange
		mov dl, al		
		
		mov eax, maxY
		call RandomRange

		mov dh, al

		call GotoXY
ret
randomGoto ENDP

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