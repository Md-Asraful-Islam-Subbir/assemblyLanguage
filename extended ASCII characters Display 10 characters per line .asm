.MODEL SMALL
.CODE
MAIN PROC
;BH counter (10 char per line)
MOV BH,0
MOV AH,2
MOV CX,7FH ; 127 char.
MOV DL,80H ;1ST letter
MOV BL,80H
CONTINUE:
 MOV DL,BL
INT 21H
DEC CX
INC DL
MOV BL,DL
MOV DL,20H ;blank space
INT 21H
INC BH
CMP BH,10
JE COUNT
CMP CX,0
JNE CONTINUE ;is letter finished?
JMP out_ 

COUNT:

 MOV BH,0 ;start again counter
MOV DL,0AH ;enter
INT 21H
MOV DL,0DH
INT 21H

JMP CONTINUE
Out_: MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

