MOV AX, 0019H       ; 25
MOV CX, 0000H	
MOV BX, 0FFFFH	
	
L1:
   ADD BX, 0002H	
		
   INC CX
		
   SUB AX, BX	
			
JNZ L1
	
MOV DX ,CX	
	
HLT	