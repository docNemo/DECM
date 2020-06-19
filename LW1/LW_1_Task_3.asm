TITLE WeekList		(LW_1_Task_3.asm)

INCLUDE Irvine32.inc

.data
Monday = 1
Tuesday = 2
Wednesday = 3
Thursday = 4
Friday = 5
Saturday = 6
Sunday = 7

week BYTE Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

.code
main PROC
        call DumpRegs
        exit
main ENDP
END main