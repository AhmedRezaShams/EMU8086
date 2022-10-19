INCLUDE 'EMU8086.INC'
.MODEL SMALL .STACK 100H
.DATA
.CODE
    MAIN PROC  
        PRINTN "ENTER LOWER CASE" 
        MOV AH,1
        INT 21H
        MOV BL,AL
        SUB  BL,32
        
 
        
        PRINT  "UPPERCASE FORM IS:"
               MOV AH,2
               MOV DL,BL
               INT 21H 
        MAIN ENDP
    END MAIN    
                
                //LOWER TO UPPER