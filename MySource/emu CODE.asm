 MAIN PROC
    PRINT 'ENTER THE FIRST DIGIT : '
    ;INPUT 
    MOV AH,1  
    INT 21H
    MOV BL,AL
    MOVE
  SUB BL ,48 
  PRINTN 
  PRINT 'ENTER SECOND DIGIT: '
  MOV AH,1
  INT 21H
  MOV BH,AL
  SUB BH,48
  
  ADD BH,BL
  ADD BH,48
   PRINTN
   PRINT 'THE SUM IS : '
   MOV AH ,2
   MOV DL,BH
   INT 21H
   MAIN ENDP
   
   
  