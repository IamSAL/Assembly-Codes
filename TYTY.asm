.MODEL SMALL
.STACK 100H
.DATA



.CODE

;-------------------Procedure



 CHANGE PROC
    
    ;NEWLINE 
    MOV bl,'G'
    RET

    CHANGE ENDP  


MAIN PROC
    
    MOV AH,2
    MOV BL,'H'
    CALL CHANGE
    MOV DL,BL
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP




;----------------------------
END MAIN  
 
