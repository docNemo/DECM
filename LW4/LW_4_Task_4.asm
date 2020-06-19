TITLE LW4T4  (LW_4_Task_4.asm)

INCLUDE Irvine32.inc

.data
numRep DWORD 3d

.code
main PROC

	mov ecx, numRep
	l: 
	call clearDisplay
	call output
	mov eax, 4000
	call DELAY
	;call ClrScr
	loop l
	
	call clearDisplay
	call ClrScr

exit
main ENDP

output PROC

.data

ing BYTE "Hello! I\'m your aunt and I will live with you!!!", 0
color DWORD white + (black * 16)

.code
	mov eax, color
	call SetTextColor

	mov edx, OFFSET ing
	call WriteString
	call Crlf

	dec color
	add color, 16

ret
output ENDP

clearDisplay PROC

.data
standartColor DWORD lightGray + (black * 16)

.code
mov eax, standartColor
	call SetTextColor
	call ClrScr

ret
clearDisplay ENDP

END main