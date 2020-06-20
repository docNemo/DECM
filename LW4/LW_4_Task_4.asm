TITLE LW4T4  (LW_4_Task_4.asm)

INCLUDE Irvine32.inc

.data
numRep BYTE 3d

.code
main PROC
	xor ecx, ecx
	mov cl, numRep
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
color WORD white + (black * 16)

.code
	xor eax, eax
	mov ax, color
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
standartColor WORD lightGray + (black * 16)

.code
mov ax, standartColor
	call SetTextColor
	call ClrScr

ret
clearDisplay ENDP

END main