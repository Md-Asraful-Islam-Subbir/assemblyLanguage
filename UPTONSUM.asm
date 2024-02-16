include 'emu8086.inc'
.MODEL SMALL
.STACK 100H

.DATA
N DB ?
SUM DB 0 
A DB ?

.CODE

MAIN PROC 
    
   MOV AX,@DATA
   MOV DS,AX
   PRINTN "ENTER N"
   MOV AH,1
   INT 21H
   
   SUB AL,48
   MOV N,AL ;N HOLDS GIVEN INPUT
   
   PRINTN
   MOV BL,1 ;LOOP INNITAILIZATION
   TOP:
   CMP BL,N
   
   
   JG END_SUM
   ADD SUM, BL
   INC BL
   JMP TOP 
   
   END_SUM:
   
   ;SUM BL,48
   
   PRINTN "THE SUM(ASCII) IS= "
   MOV AH,2
   MOV DL,SUM
   INT 21H 
    MAIN ENDP
END MAIN