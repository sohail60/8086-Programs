;Question
;WAP to exchange two blocks of 1KB from location 25000 to location 36000, use a temporary block at 48000, use String instructions.

DATA SEGMENT

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:

    ;We are first tranfering from 25000 to 48000
    MOV  AX,2000H       ;Initialising DS
    MOV  DS,AX
    
    MOV  AX,4000H       ;Initialising ES
    MOV  ES,AX

    MOV SI,5000H        ;Initialising SI
    MOV DI,8000H        ;Initialising DI

    MOV CX,0400H        ;For COUNT. We are taking it in CX register bcoz String instructions works only in  CX register. We have converted 1K in decimal to Hexadecimal(64)

    CLD     ;Clearing DIRECTION FLAG, so that we will copy data from top to bottom

    REP MOVSB

    ;We are now tranfering from 36000 to 25000
    MOV  AX,3000H       ;Initialising DS
    MOV  DS,AX
    
    MOV  AX,2000H       ;Initialising ES
    MOV  ES,AX

    MOV SI,6000H        ;Initialising SI
    MOV DI,5000H        ;Initialising DI

    MOV CX,0400H

    REP MOVSB

    ;We are now tranfering from 48000 to 36000
    MOV  AX,4000H       ;Initialising DS
    MOV  DS,AX
    
    MOV  AX,3000H       ;Initialising ES
    MOV  ES,AX

    MOV SI,8000H        ;Initialising SI
    MOV DI,6000H        ;Initialising DI

    MOV CX,0400H

    REP MOVSB
    
    INT 03H
CODE ENDS
END START