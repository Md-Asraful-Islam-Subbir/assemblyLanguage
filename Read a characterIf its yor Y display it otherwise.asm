MOV AH,1
INT 21H
CMP AL,'y'
JE THEN
CMP AL,'Y'
JE THEN
JMP ELSE
THEN:
MOV AH,2
MOV DL,AL
INT 21H
JMP EXIT
ELSE:
JMP EXIT
EXIT: