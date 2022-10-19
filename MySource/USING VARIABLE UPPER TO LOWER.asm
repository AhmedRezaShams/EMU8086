INCLUDE 'EMU8086.INC'
.MODEL SMALL .STACK 100H
.DATA
NUM DB ?
.CODE
    MAIN PROC 
               MOV AX,@DATA
        
        MOV DS,AX 
        PRINTN "ENTER UPPER CASE" 
                 MOV AH,1
                 INT 21H
                 MOV NUM,AL
                 ADD NUM,32
                 
        
        
 
        
        PRINT  "LOWER FORM IS:"
               MOV AH,2
               MOV DL,NUM
               INT 21H
                
        MAIN ENDP
    END MAIN    
                
                // UPPER  TO LOWER  USING VARAIBLE