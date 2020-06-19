TITLE AddSubCF		(LW_2_Task_1.asm)

INCLUDE Irvine32.inc

.data
bigVar DWORD 0ffffffffh
smallVar DWORD 0

.code
main PROC

	mov eax, bigVar

	call DumpRegs	

	add eax, 1

	call DumpRegs

	add eax, 1

	call DumpRegs

	mov eax, smallVar	

	call DumpRegs

	sub eax, 1

	call DumpRegs

	sub eax, 1

	call DumpRegs

	exit
main ENDP
END main