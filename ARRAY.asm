include 'emu8086.inc'
.MODEL SMALL
.STACK 100H

.DATA

ARRAY: DB 2H,2H,3H,3H,5H 
SUM DB 0

MAIN PROC 
    
   MOV AX,@DATA
   MOV DS,AX
   MOV AX,0
   MOV CX,5
   MOV BX, OFFSET ARRAY
   
   AGAIN:
   ADD AL,[BX]
   INC BX
   DEC CX
   JNZ AGAIN
   MOV SUM,AL
   MOV DL,SUM
   MOV AH,2
   INT 21H
   
   MOV AH,4CH
   INT 21H 
    MAIN ENDP
END MAIN