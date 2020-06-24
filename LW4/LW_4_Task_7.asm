TITLE RandomPlaced		(LW_4_Task_7.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data

chr BYTE 'A'
numOfRepeat BYTE 100d
maxX DWORD 200d
maxY DWORD 50d

minDelay DWORD 10d
maxDelay DWORD 300d

x BYTE ?
d BYTE ?

.code

main PROC
	
	call ClrScr
	call Randomize

	xor ecx, ecx
	mov cl, numOfRepeat
	l:		
		call randomGoto
		
		mov ebx, 'A'
		mov eax, 'Z'
		call random

		;mov al, chr
		call WriteChar

		mov ebx, minDelay
		mov eax, maxDelay
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
	sub eax, ebx

	inc eax
	call RandomRange
	add eax, ebx
ret
random ENDP

END main