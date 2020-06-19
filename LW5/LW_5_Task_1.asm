TITLE Calculator		(LW_5_Task_1.asm)

Include Irvine32.inc

.data

str1 BYTE "1. x AND y", 0
str2 BYTE "2. x OR y", 0
str3 BYTE "3. not x", 0
str4 BYTE "4. x XOR y", 0
str5 BYTE "5. Exit", 0
str6 BYTE "Retry input", 0

operations DWORD AND_op, OR_op, NOT_op, XOR_op

.code

main PROC

	call ClrScr
	input: 

		mov edx, OFFSET str1
		call WriteString
		call Crlf

		mov edx, OFFSET str2
		call WriteString
		call Crlf

		mov edx, OFFSET str3
		call WriteString
		call Crlf

		mov edx, OFFSET str4
		call WriteString
		call Crlf

		mov edx, OFFSET str5
		call WriteString
		call Crlf

		call ReadInt

	check:
		cmp eax, 1
		jb retry

		cmp eax, 5	
		ja retry
		je ex
	
	call ClrScr
	dec eax
	mov esi, [operations + eax * TYPE operations]
	call esi
	jmp ex

	retry:
		mov edx, OFFSET str6
		call ClrScr
		call WriteString
		call Crlf
		jmp input



	ex:
		exit
main ENDP

AND_op proc
.data
requestAnd BYTE "Input two hexadecimal numbers for AND operation",0

.code
	mov edx, OFFSET requestAnd
	call WriteString
	call Crlf

	call ReadHex
	mov ebx, eax

	call ReadHex
	and eax, ebx

	call WriteHex
ret
AND_op ENDP

OR_op proc
.data
requestOr BYTE "Input two hexadecimal numbers for Or operation",0

.code
	mov edx, OFFSET requestOr
	call WriteString
	call Crlf

	call ReadHex
	mov ebx, eax

	call ReadHex
	or eax, ebx

	call WriteHex
ret
OR_op ENDP

NOT_op proc
.data
requestNot BYTE "Input one hexadecimal number for NOT operation",0

.code
	mov edx, OFFSET requestNot
	call WriteString
	call Crlf

	call ReadHex
	not eax

	call WriteHex
ret
NOT_op ENDP

XOR_op proc
.data
requestXor BYTE "Input two hexadecimal numbers for XOR operation",0

.code
	mov edx, OFFSET requestXor
	call WriteString
	call Crlf

	call ReadHex
	mov ebx, eax

	call ReadHex
	xor eax, ebx

	call WriteHex
ret
XOR_op ENDP

END main