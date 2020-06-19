TITLE IncDecNoAffectCF		(LW_2_Task_2.asm)

INCLUDE Irvine32.inc

.data
bigVar DWORD 0ffffffffh
smallVar DWORD 0

.code
main PROC
	
	call DumpRegs	; Output initial state

	mov eax, bigVar	
	inc eax

	call DumpRegs

	mov eax, bigVar
	add eax, 1

	call DumpRegs

	add eax, 1

	mov eax, smallVar	
	dec eax

	call DumpRegs

	mov eax, smallVar	
	sub eax, 1

	call DumpRegs

	exit
main ENDP
END main