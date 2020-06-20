TITLE MathExpression 		(LW_3_Task_2.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
val1 SBYTE 8
val2 SBYTE -15
val3 SBYTE 20

.code
main PROC
	xor eax, eax
	mov al, val2
	neg al

	add al, 7
	sub al, val3
	add al, val1

	mShowRegister EAX, EAX

	exit
exit
main ENDP
END main