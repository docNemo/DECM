TITLE RandomString		(LW_4_Task_6.asm)

INCLUDE Irvine32.inc

.data
numOfStr BYTE 20d
numOfChar BYTE 10d
min DWORD 'A'
max DWORD 'Z'

.code
main PROC
	xor ecx, ecx
	mov cl, numOfStr
	call Randomize
	l:
		xor eax, eax
		mov al, numOfChar
		mov ebx, min
		mov edx, max

		call randomStr
		call WriteString
		call Crlf

		loop l
exit
main ENDP

randomStr PROC

.data

numOfCh DWORD ?
minC DWORD ?
maxC DWORD ?
string BYTE 11 DUP(0)

.code
	mov numOfCh, eax
	mov minC, ebx
	mov maxC, edx
	mov edx, OFFSET string

	push ecx
	mov ecx, numOfCh

	lStr :
		mov ebx, minC
		mov eax, maxC
		call random

		mov [edx], eax
		add edx, TYPE BYTE

		loop lStr
	pop ecx
	mov edx, OFFSET string
	
ret
randomStr ENDP

random PROC
	sub eax, ebx

	inc eax
	call RandomRange
	add eax, ebx
ret
random ENDP

END main

