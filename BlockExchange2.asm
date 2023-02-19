;Question
;WAP to exchange two blocks of 1KB from location 25000 to location 36000, without using String instructions.

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

    MOV CX,0400H        ;For COUNT. We are taking it in CX register bcoz loop works only in CX register.
                        ;We have converted 1K in decimal to Hexadecimal(64)

FIRST:
    MOV AL,DS:[SI]     ;We are tranfering from 25000 to a register AL
    MOV AH,ES:[DI]     ;We are tranfering from 36000 to a register AH
    MOV DS:[SI],AL
    MOV ES:[DI],AH
    INC SI
    INC DI
    LOOP FIRST
    
    INT 03H
CODE ENDS
END START