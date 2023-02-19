;Question
;WAP to find the highest of all 100 numbers
;Operands and the result should be in the data segment

DATA SEGMENT

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV  AX,4000H       ;Initialising DS with 4000,i.e.,giving the location from where the 100 numbers start
    MOV  DS,AX
    MOV SI,2000H        ;Initialising SI with 2000

    MOV CX,64H          ;For COUNT. We are taking it in CX register bcoz loop works only in CX register.
                        ;We have converted 100 in decimal to Hexadecimal(64)
    MOV AL,00H          ;For CURRENT MAX element 

BACK:
    CMP AL,[SI]
    JNC SKIP
    MOV AL,[SI]
SKIP:
    INC SI
    LOOP BACK
    INT 03H
CODE ENDS
END START