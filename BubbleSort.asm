;Question
;Sort a 10 numbers in ascending order using Bubble Sort

DATA SEGMENT

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV  AX,4000H
    MOV  DS,AX

    MOV CH,09H
    
BACK2:
    MOV SI,2000H
    MOV CL,09H
    
BACK1:
    MOV AL,[SI]
    MOV AH,[SI+1]
    CMP AL,AH

    JC SKIP
    JZ SKIP
    MOV [SI],AH
    MOV [SI+1],AL

SKIP:
    INC SI
    DEC CL

    JNZ BACK1
    DEC CH
    JNZ BACK2

    INT 03H
CODE ENDS
END START