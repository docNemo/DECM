TITLE OF		(LW_2_Task_4.asm)

INCLUDE Irvine32.inc

.data
bigVar SDWORD 7fffffffh
smallVar SDWORD 80000000h

.code
main PROC
	
	;call DumpRegs	; Output initial state

	mov eax, bigVar	
	call DumpRegs
	inc eax

	call DumpRegs

	mov eax, bigVar
	add eax, 1

	call DumpRegs

	add eax, 1

	call DumpRegs

	;add eax, 1

	mov eax, smallVar	
	dec eax

	call DumpRegs

	mov eax, smallVar	
	sub eax, 9

	call DumpRegs

	exit
main ENDP
END main