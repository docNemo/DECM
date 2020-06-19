TITLE ColorComb			(LW_4_Task_8.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
chr BYTE 'D'
numOfColor DWORD 16

.code
main PROC

	mov ecx, numOfColor
	L1:
		
		mov edx, ecx
		dec edx		
		imul edx, 16

		push ecx
		
		mov ecx, numOfColor		
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
standartColor DWORD lightGray + (black * 16)

.code
	mov eax, standartColor
	call SetTextColor

ret
clearDisplay ENDP

END main