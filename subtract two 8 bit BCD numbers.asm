MOV DX, 34H  
MOV BX, 99H   

MOV AL,BL
SUB AL,DL

DAS
                 
MOV AH,00H  
SBB AH,AH

DAS
  
HLT