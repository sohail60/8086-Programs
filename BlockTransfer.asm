;Question
;WAP to transfer a block of 1KB from location 25000 to location 36000.

DATA SEGMENT

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV  AX,2000H       ;Initialising DS
    MOV  DS,AX
    
    MOV  AX,3000H       ;Initialising ES
    MOV  ES,AX

    MOV SI,5000H        ;Initialising SI
    MOV DI,6000H        ;Initialising DI

    MOV CX,0400H        ;For COUNT. We are taking it in CX register bcoz String instructions works only in  CX register. We have converted 1K in decimal to Hexadecimal(64)

    CLD     ;Clearing DIRECTION FLAG, so that we will copy data from top to bottom

    REP MOVSB
    
    INT 03H
CODE ENDS
END START