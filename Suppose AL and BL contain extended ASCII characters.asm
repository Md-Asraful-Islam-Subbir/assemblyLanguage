MOV AH,2
CMP AL,BL
JNBE NOT_AL
MOV DL,AL
JMP DISPLAY
NOT_AL:
MOV DL,BL
JMP DISPLAY
DISPLAY:
INT 21h