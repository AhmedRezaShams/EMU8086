.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV BH,AL
                     ;ADDING 2 INPUTS 
    SUB BH,48
    SUB BL,48
    
    ADD BL,BH
    ADD BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H  
    
    MAIN ENDP
END MAIN
    