.MODEL SMALL
.STACK 100H
.DATA

L DB ?
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV BH,1 ;STAR
    ;MOV DH,4 ;BLANK
    
    MOV CL,10 ;LINE
    
    DEC CL
    
    MOV DH,CL ;BLANK
    
    INC CL
    
    MOV L,CL
    
    PRINT:
    CALL PRINT_BLANK
    CALL STAR_PRINT
    CALL NEWLINE
    
    INC BH
    CMP BH,L
    
    JE CALL STAR_PRINT

    
    DEC DH
    CMP DH,L
    
    JE CALL PRINT_BLANK

    
    DEC CL
    CMP CL,0
    JE EXIT
    JMP PRINT
    
    
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


    STAR_PRINT PROC
    MOV BL,0
    MOV BL,BH
    
    PRINT_S:  
    
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    DEC BL
    CMP BL,0
    JNE PRINT_S
    CMP BH,L
    JE EXIT
    
    RET 
    
    STAR_PRINT ENDP



PRINT_BLANK PROC
    
    MOV CH,DH
    PRINT_B:
    MOV DL,' '
    MOV AH,2
    INT 21H
    DEC CH
    CMP CH,0
    JNE PRINT_B
    
    CMP DH,0
    JE EXIT
    
    RET
    PRINT_BLANK ENDP


NEWLINE PROC
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
    NEWLINE ENDP


END MAIN