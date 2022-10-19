INCLUDE 'EMU8086.INC'
.MODEL SMALL .STACK 100H
.DATA
.CODE
    MAIN PROC  
        PRINTN "ENTER UPPER CASE" 
        MOV AH,1
        INT 21H
        MOV BL,AL
        ADD  BL,32
        
 
        
        PRINT  "LOWER FORM IS:"
               MOV AH,2
               MOV DL,BL
               INT 21H 
        MAIN ENDP
    END MAIN    
                
                // UPPER  TO LOWER