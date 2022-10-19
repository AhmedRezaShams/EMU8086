.MODEL SMALL
.STACK 100H   

.DATA
   A DB "INP 1: $"  
   B DB "INP 2: $"
   C DB "OUT 1: $"
   D DB "OUT 2: $"
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA CX,A
        INT 21H      
        
        MOV AH,1
        INT 21H
        MOV BH,AL
        
        
        MOV AH,9
        LEA DX,B
        INT 21H
        
       
        MOV AH,1
        INT 21H
        MOV BL,AL   
        
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV AH,2
        MOV DL,13
        INT 21H
        
      ADD BH,BL
      MOV AH,2
      MOV DL,BH
      INT 21H
             
        
        MAIN ENDP
END MAIN