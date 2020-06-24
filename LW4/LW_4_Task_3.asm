TITLE ClearDisplay		(LW_4_Task_3.asm)

INCLUDE Irvine32.inc

.data
x = 79d
y = 25d

message BYTE "Input 2 integer:",0
message1 BYTE "Sum = "

.code
main PROC

	call ClrScr

	mov dl, x
	mov dh, y
	call GotoXY
	inc dh

	mov edx,  OFFSET message
	call WriteString

	mov dl, x
	mov dh, y
	call GotoXY
	inc dh

	call ReadInt
	mov ebx, eax

	call GotoXY
	inc dh

	call ReadInt

	add eax, ebx

	call CrLf
	call GotoXY

	mov edx, OFFSET message1
	call WriteString

	call WriteInt

exit
main ENDP
END main