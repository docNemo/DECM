TITLE MathExpression 		(LW_3_Task_2.asm)

INCLUDE Irvine32.inc

.data
val1 SDWORD 8
val2 SDWORD -15
val3 SDWORD 20

.code
main PROC

	mov eax, val2
	neg eax

	add eax, 7
	sub eax, val3
	add eax, val1
	call DumpRegs

	exit
exit
main ENDP
END main