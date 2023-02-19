;Question
;Find the number of Odd and Even elements from 100 numbers

DATA SEGMENT

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV  AX,4000H       ;Initialising DS with 4000,i.e.,giving the location from where the 100 numbers start
    MOV  DS,AX

    MOV SI,2000H        ;Initialising SI with 2000

    MOV CX,64H      ;For COUNT. We are taking it in CX register bcoz loop works only in CX register.
                    ;We have converted 100 in decimal to Hexadecimal(64)

    MOV BL,00H      ;For EVEN
    MOV BH,00H      ;For ODD

BACK:
    MOV AL,[SI]
    AND AL,01H

    JNZ EVEN_LABEL      ;Equivalent of if-else
    INC BH
    JMP SKIP
EVEN_LABEL: INC BL
SKIP: 
    INC SI
    LOOP BACK

    MOV [SI],BX
    INT 03H
CODE ENDS
END START