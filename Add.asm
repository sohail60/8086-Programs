;Question
;WAP to ADD two 16 bit numbers.
;Operands and the result should be in the data segment

DATA SEGMENT
    A DW 1234H
    B DW 5140H
    SUM DW ?
    CARRY DB 00H
DATA ENDS


CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV  AX,DATA
    MOV  DS,AX

    MOV AX,A
    ADD AX,B
    JNC SKIP
    INC CARRY
SKIP:
    MOV SUM,AX
    INT 03H
CODE ENDS
END START