TITLE inputArray 		(LW_4_Task_2.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
;size = 10
sizeArray SDWORD 10d
array SDWORD 10 DUP(0)

.code
main PROC
	mov edx, OFFSET array
	mov ecx, sizeArray

	call inputArray
	
	mov edx, OFFSET array
	mov ecx, sizeArray

	call outputArray

exit

main ENDP


inputArray PROC
	l:
		call ReadInt
		mov [edx], eax
		add edx, TYPE DWORD
		loop l
	ret
inputArray ENDP

outputArray PROC
	lk:
		mov eax, [edx]
		call Crlf	
		call WriteInt	
		add edx, TYPE DWORD
		loop lk
	ret
outputArray ENDP
END main