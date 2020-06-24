TITLE LW4T4  (LW_4_Task_4.asm)

INCLUDE Irvine32.inc

.data
numRep = 3d

.code
main PROC

	mov ecx, numRep

	l: 
	call clearDisplay
	call output
	mov eax, 2000
	call DELAY
	loop l
	
	call clearDisplay
	call ClrScr

exit
main ENDP

output PROC

.data

ing BYTE "Hello! I\'m your aunt and I will live with you!!!", 0
color WORD white + (black * 16)

.code
	movzx eax, color
	call SetTextColor

	mov edx, OFFSET ing
	call WriteString

	dec color
	add color, 16

ret
output ENDP

clearDisplay PROC

.data
standartColor = lightGray + (black * 16)

.code
mov eax, standartColor
	call SetTextColor
	call ClrScr

ret
clearDisplay ENDP

END main