.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 1
    INT 21H
    MOV BL, AL
    CMP BL, 'y'
    JE DISPLAY
    CMP BL, 'Y'
    JE DISPLAY
    JMP END_IF
    DISPLAY:
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, BL
    INT 21H
    END_IF:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN