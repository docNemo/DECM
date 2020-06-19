TITLE AddSubAffectZFAndSF		(LW_2_Task_3.asm)

INCLUDE Irvine32.inc

.data
bigVar DWORD 0ffffffffh
smallVar DWORD 1

signedBigVar SDWORD 7fffffffh
signedSmallVar SDWORD 0

.code
main PROC

	; ZF
	add eax, 1		; remove ZF

	mov eax, bigVar

	add eax, 1
	call DumpRegs

	add eax, 1
	call DumpRegs

	mov eax, smallVar	
	sub eax, 1

	call DumpRegs

	sub eax, -2

	call DumpRegs

	; SF

	xor eax, eax

	mov eax, signedBigVar
	add eax, 1

	call DumpRegs

	sub eax, 1

	call DumpRegs

	mov eax, signedSmallVar
	sub eax, 1

	call DumpRegs

	add eax, signedBigVar

	call DumpRegs

	exit

main ENDP
END main