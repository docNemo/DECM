TITLE fibon		(LW_3_Task_1.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
NumOfNum = 7d  ; correct

.code
main PROC
	
	movzx ecx, NumOfNum ; correct
	
	mov eax, 1
	mov ebx, 1
l:
	mShowRegister EAX, EAX
	call Crlf
	add eax, ebx
	xchg eax, ebx
	loop l

	exit
main ENDP
END main