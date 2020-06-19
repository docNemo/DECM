TITLE ClearDisplay		(LW_4_Task_3.asm)

INCLUDE Irvine32.inc

.data
x BYTE 79d
y BYTE 25d

fstNum SDWORD ?
sndNum SDWORD ?

res SDWORD ?

message BYTE "Input 2 integer:",0
message1 BYTE "Sum = "

.code
main PROC

	call ClrScr

	mov dl, x
	mov dh, y
	call GotoXY
	inc y

	mov edx,  OFFSET message
	call WriteString

	mov dl, x
	mov dh, y
	call GotoXY
	inc dh

	call ReadInt
	mov fstNum, eax

	call GotoXY
	inc dh

	call ReadInt
	mov sndNum, eax

	add eax, fstNum
	mov res, eax


	call CrLf
	call GotoXY

	mov edx, OFFSET message1
	call WriteString

	call WriteInt




exit
main ENDP
END main