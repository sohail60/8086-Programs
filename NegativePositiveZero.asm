;Question
;Find the total positive,negative and zero numbers in 100 numbers

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
    
    MOV AH,00H      ;For POSITIVE
    MOV BL,00H      ;For NEGATIVE
    MOV BH,00H      ;For ZERO

BACK:
    MOV AL,[SI]

    CMP AL,00H

    JNZ NON_ZERO        ;Equivalent to if-else-if ladder
    INC BH
    JMP SKIP

NON_ZERO:
    JNC POSITIVE
    INC BL
    JMP SKIP

POSITIVE:
    INC AH

SKIP:
    INC SI
    LOOP BACK

    INT 03H
CODE ENDS
END START