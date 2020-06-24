TITLE MathExpression 		(LW_3_Task_2.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
val1 = 8
val2 = -15
val3 = 20

.code
main PROC
	
	movsx eax, val2
	neg eax

	add eax, 7
	sub eax, val3
	add eax, val1

	mShowRegister EAX, EAX

	exit
exit
main ENDP
END main