MOV DX, 34H  
MOV BX, 99H   

MOV AL,DL
ADD AL,BL

DAA
                 
MOV AH,00H  
ADC AH,AH

DAA
  
HLT