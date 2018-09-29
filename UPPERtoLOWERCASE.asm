.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
     
   
    MOV AH, 1
    INT 21H 
    
  
    
    MOV BL,AL 
    
    
     ;---------------------NEWLINE
    MOV DL, 0AH 
    MOV AH, 2
    INT 21H  
    MOV DL, 08H 
    MOV AH, 2
    INT 21H    
    MOV DL, 0
     ;---------------------NEWLINE
    
  
    
 
    MOV DL,BL
    
    ADD DL,32
    
    MOV AH, 2 
    
    INT 21H
   
   
    MOV AH, 4CH
    INT 21H  ; PROGRAM HAS RETURNED
    MAIN ENDP


END MAIN
           