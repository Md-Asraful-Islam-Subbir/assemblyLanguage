include 'emu8086.inc'
.MODEL SMALL
.STACK 100H

.DATA
A DW ?
B DW ?
C DW ?

.CODE

MAIN PROC 
    
    ;looping
    MOV CX,10 ;CX EKHANE COUNTER HISABE KAJ KORE
    TOP:
    PRINTN "LOOP IS RUNNING"
    
    loop TOP
    PRINTN "END OF LOOP"
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN