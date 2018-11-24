.MODEL SMALL
.STACK 100H
.DATA



.CODE

;-------------------Procedure



 NEWLINE PROC
    
    ;NEWLINE 
    MOV bl,'G'
    RET

    NEWLINE ENDP  


MAIN PROC
    
    MOV AH,2
    MOV DL,'G'
    INT 21H
    CALL NEWLINE
    MOV DL,'H'
    INT 21H 
    CALL NEWLINE
    CALL NEWLINE
    CALL NEWLINE
    MOV DL,'I'
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP




;----------------------------
END MAIN  
 
