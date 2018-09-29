.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH, 1
    INT 21H 
    
    SUB AL,30H ; TO GET ACTUAL VALUE  
    
    MUL AL
    
    MOV BL,AL 
    
    MOV DL, 0AH 
    MOV AH, 2
    INT 21H  
    MOV DL, 08H 
    MOV AH, 2
    INT 21H
    
    
    MOV DL, 0
    
 
    MOV DL,BL
    
    ADD DL,30H
    
    MOV AH, 2 
    
    INT 21H
   
   
    MOV AH, 4CH
    INT 21H  ; PROGRAM HAS RETURNED
    MAIN ENDP


END MAIN
           