TITLE ColorComb			(LW_4_Task_8.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
chr BYTE 'D'
numOfColor BYTE 16

.code
main PROC
	xor ecx, ecx
	mov cl, numOfColor
	L1:
		
		mov edx, ecx
		dec edx		
		imul edx, 16

		push ecx
		
		xor ecx, ecx
		mov cl, numOfColor		
		L2:
			mov ebx, ecx
			dec ebx

			xor eax, eax
			mov eax, edx
			add eax, ebx

			call SetTextColor

			mov al, chr
			call WriteChar
		loop L2

		call Crlf
		pop ecx
	loop L1

	call clearDisplay
exit

main ENDP

clearDisplay PROC

.data
standartColor WORD lightGray + (black * 16)

.code
	mov ax, standartColor
	call SetTextColor

ret
clearDisplay ENDP

END main