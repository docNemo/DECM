TITLE ColorfulLines		(LW_4_Task_1.asm)

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data

string BYTE "GoodBye America!", 0

textColor = white + (black * 16)
standartColor = lightGray + (black * 16)

numOfRepeat = 4d

.code
main PROC
	mov edx, OFFSET string	
	
	movzx eax, textColor

	mov ecx, numOfRepeat

	outputStr:		
		call SetTextColor
		call WriteString

		call Crlf

		dec eax

		loop outputStr
 
	mov eax, standartColor
	call SetTextColor
exit
main ENDP
END main