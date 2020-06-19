TITLE RandomString		(LW_4_Task_6.asm)

INCLUDE Irvine32.inc

.data
numOfStr DWORD 20d
numOfChar DWORD 10d
min DWORD 'A'
max DWORD 'Z'

.code
main PROC
	mov ecx, numOfStr
	l:
		mov eax, numOfChar
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
string BYTE 10 DUP(0)

.code
	mov numOfCh, eax
	mov minC, ebx
	mov maxC, edx
	mov edx, OFFSET string

	push ecx
	mov ecx, numOfCh

	lStr :
		mov eax, minC
		mov ebx, maxC
		call random

		mov [edx], eax
		add edx, TYPE BYTE

		loop lStr
	pop ecx
	mov edx, OFFSET string
	
ret
randomStr ENDP

random PROC

.data
maxA DWORD ?
maxL DWORD ?
minL DWORD ?

.code
	mov minL, eax
	mov maxL, ebx

	mov maxA, ebx
	sub maxA, eax

	mov eax, maxA
	inc eax
	call RandomRange
	add eax, minL
ret
random ENDP

END main

