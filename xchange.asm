.data
  a db ?
  b db ?

.code
  main proc
    mov ax,@data
    mov ds,ax
    
    ;taking first input
    mov ah,1
    int 21h
    mov a,al
    ;taking second input
    mov ah,1
    int 21h
    mov b,al
    ;variable value move to the reg 
    mov bl,a
    mov cl,b
    
    ;xchange the value
    xchg bl,cl
    
    ;print the output
    mov ah,2
    mov dl,bl 
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
ret