.MODEL SMALL
.STACK
.DATA
REVERSE DB 'HELLO$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,5
    LEA SI,REVERSE
RE:
    PUSH [SI]
    INC SI
    LOOP RE
    
    MOV CX,5
REV:
    POP DX
    MOV AH,2
    INT 21H
    LOOP REV
    
    
    
    
    MAIN ENDP
END MAIN