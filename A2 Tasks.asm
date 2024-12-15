#NORMAL FUNCTIONS

        LEA DX, str1
        MOV AH,9
        INT 21H  ;printing string

        MOV AH,1
        INT 21H     ;input

        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space

        MOV DL,AL
        MOV ah,2
        INT 21h     ;output


#FOR EVEN AND ODD

        MOV AH,1
        INT 21H
        SUB AL,30H 
        
        ;MOV AH,0
        MOV CL,2
        DIV CL
        
        CMP AH,0
        JE EVEN
        
        ODD:
        LEA DX, str3
        MOV AH,9
        INT 21H  ;printing string
        
        JMP EXIT

        
        EVEN:
        LEA DX, str1
        MOV AH,9
        INT 21H  ;printing string


Q1


  .MODEL SMALL ;Program size -> 1. small 2. medium 3. compact 4.large 5.huge
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE 
    str1 db "Input 1:$"
    str2 db "Input 2:$"
    str3 db "Input 3:$"
    str4 db "Output:$"
    
    a db ?
    
.CODE
    ; YOUR CODE GOES HERE
    MAIN PROC
        ;START OF PROCEDURE
        
        ;YOUR CODE STARTS HERE
        
        MOV AX, @DATA
        MOV DS,AX
                        
        MOV a,0     ;counter
        MOV CL,0    ;ALL SUM


        LEA DX, str1
        MOV AH,9
        INT 21H
        


        MOV AH,1
        INT 21H     ;input
        
        
        MOV AH,0
        MOV DL,2
        DIV DL      ;division of 2 with input1
        
        CMP AH,0
        JE EVEN_NUM1     ;is remainder 0 ?
        


        NEXT:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
        
        LEA DX, str2
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        
        MOV AH,0
        MOV DL,2
        DIV DL
        
        CMP AH,0
        JE EVEN_NUM2
      
     
        NEXT2:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
        
        LEA DX, str3
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        
        MOV AH,0
        MOV DL,2
        DIV DL
        
        CMP AH,0
        JE EVEN_NUM3
        


        
        JMP EXIT
        
        EVEN_NUM1:
        ADD a,1      ;increase counter
        ADD AL,AL    ;al = al + al
        ADD CL,AL    ;cl = cl + al
        
        
        JMP NEXT


        EVEN_NUM2:
        ADD a,1
        ADD AL,AL
        ADD CL,AL
        


        
        JMP NEXT2
        
        EVEN_NUM3:
        ADD a,1
        
        ADD AL,AL
        ADD CL,AL
        


                         
        ;Comment                  
                                               
        ;YOUR CODE ENDS HERE  
        
        ;RETURNING THE CONTROL TO OS 
        EXIT:
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
        
        LEA DX, str4
        MOV AH,9
        INT 21H
        
        ;SUB CL,30h
        
        MOV AX,0
        MOV AL,CL
        MOV BL, a
        DIV BL
        ;add AL,18H
        


         
        MOV DL,AL            
        MOV ah,2
        INT 21h
       
        MOV AX, 4C00H ; -> AX - AH AL  AH 4C 
        INT 21H    
    MAIN ENDP
    
END MAIN
;END OF THE PROCEDURE


Q2


       .MODEL SMALL ;Program size -> 1. small 2. medium 3. compact 4.large 5.huge
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE 
    str1 db "Ener an hour of the day:$"
    str2 db "Greetings$"
    str3 db " Good Morning$"
    str4 db " Good Afternoon$"
    str5 db " Good Night$"
    
.CODE
    ; YOUR CODE GOES HERE
    MAIN PROC
        ;START OF PROCEDURE
        
        ;YOUR CODE STARTS HERE
        
        MOV AX, @DATA
        MOV DS,AX
       
        
        LEA DX, str1
        MOV AH,9
        INT 21H


        
        MOV AH,1
        INT 21H    ;input
        MOV BL,AL 
        
        MOV AH,1
        INT 21H        ;input
        MOV CL,AL
        
        SUB BL,30H   ;to look a like input for compar
        SUB CL,30H    
        
        CMP BL,0          
        JE GR_0
        
        
        CMP BL,1
        JE GR_1
        
        
        CMP BL,2
        JE GR_2
        
        JG EXIT
        
        GR_0:            ;GR GM   for 1st num 0 and 2nd num any
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H           ;space
        
        LEA DX, str2
        MOV AH,9
        INT 21H
        
        LEA DX, str3
        MOV AH,9
        INT 21H
        
        JMP EXIT
        
        GR_1:        ; for 1st num 1
        CMP CL,0
        JE GR_0
        
        CMP CL,1     ; for 2nd num 1
        JE GR_0
        
        CMP CL,2     ; for 2nd num 2
        JE GA


        CMP CL,3
        JE GA
        
        CMP CL,4
        JE GA
        
        CMP CL,5
        JE GA
        
        CMP CL,6
        JE GA
        
        CMP CL,7
        JE GA
        
        CMP CL,8
        JE GN
        
        CMP CL,9
        JE GN        
        
        GR_2:         ; inpit 19-23
        
        CMP CL,3
        JG EXIT
        
        CMP CL,0
        JE GN
        
        CMP CL,1
        JE GN
        
        CMP CL,2
        JE GN
        
        CMP CL,3
        JE GN


;        MOV AH, 2
;        MOV DL, 0DH
;        INT 21H
;        MOV DL, 0AH
;        INT 21H       ;space
;        
;        LEA DX, str2 ;only greetings
;        MOV AH,9
;        INT 21H
;        
;        JMP EXIT
        
        GA:              ;GR afternoon
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
        
        LEA DX, str2
        MOV AH,9
        INT 21H
        
        LEA DX, str4
        MOV AH,9
        INT 21H
        
        JMP EXIT
        
        GN:         ;GR Night
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
        
        LEA DX, str2
        MOV AH,9
        INT 21H
        
        LEA DX, str5
        MOV AH,9
        INT 21H
       
        ;Comment                  
                                               
        ;YOUR CODE ENDS HERE  
        
        ;RETURNING THE CONTROL TO OS 
        EXIT:
        
        MOV AX, 4C00H ; -> AX - AH AL  AH 4C 
        INT 21H    
    MAIN ENDP
    
END MAIN
;END OF THE PROCEDURE


Q3


 .MODEL SMALL ;Program size -> 1. small 2. medium 3. compact 4.large 5.huge
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE 
    str1 db " is a prime number$"
    str2 db " is not a prime number$"


    
    a db ?
    
.CODE
    ; YOUR CODE GOES HERE
    MAIN PROC
        ;START OF PROCEDURE
        
        ;YOUR CODE STARTS HERE
        
        MOV AX, @DATA
        MOV DS,AX
        
       
        
        MOV AH,1
        INT 21H    ;input
        
        MOV BL,2   ; bl = 2 
        
        SUB AL,30h ; orginial input    
        
        MOV a,AL   ;a = orginial input and  a= al
        
        CMP a,2    ;orginial input = 2 so direct prime 
        JE FINALE
        
        CMP a,1    ;orginial input = 1 so direct not prime
        JE NOTDIVI
        
        LOOP1:
        MOV CL,a    ;for 1st time cl = original input
        
        CHECKER:
        CMP CL,BL
        JE NOTDIVI
        JG DIVISIBLE
        
        INC BL      ; cl less than bl so inc cz EX. division by 2 is done now division by (here sub) 3
        
        CMP BL,a
        JL LOOP1  ;lost the privous value so taking  back the original one from a
        JE FINALE
        


        DIVISIBLE:    ;cl big , so cl= cl - bl and check
        SUB CL,BL
        JMP CHECKER
       
        
        FINALE:     ;prime if a equal to 2
        
        LEA DX, str1
        MOV AH,9
        INT 21H
        
        JMP EXIT
        
        NOTDIVI:      ;not prime if a equal to 1
        LEA DX, str2
        MOV AH,9
        INT 21H
       
                         
        ;Comment                  
                                               
        ;YOUR CODE ENDS HERE  
        
        ;RETURNING THE CONTROL TO OS 
        EXIT:
        
        MOV AX, 4C00H ; -> AX - AH AL  AH 4C 
        INT 21H    
    MAIN ENDP
    
END MAIN
;END OF THE PROCEDURE


Q4


 .MODEL SMALL ;Program size -> 1. small 2. medium 3. compact 4.large 5.huge
.STACK 100H
.DATA
    ; DEFINE YOUR VARIABLES HERE 
    str1 db "The triangle is equilateral$"
    str2 db "The triangle is isosceles$"
    str3 db "The triangle is neither equilateral nor isosceles$"
    str4 db "Triangle's 1st side:$"
    str5 db "Triangle's 2nd side:$"
    str6 db "Triangle's 3rd side:$" 
    
.CODE
    ; YOUR CODE GOES HERE
    MAIN PROC
        ;START OF PROCEDURE
        
        ;YOUR CODE STARTS HERE
        
        MOV AX, @DATA
        MOV DS,AX
        
        LEA DX, str4
        MOV AH,9
        INT 21H


        
        MOV AH,1
        INT 21H    ;input1
        MOV BH,AL
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space


        LEA DX, str5
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H    ;inpu2t
        MOV BL,AL
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H       ;space
               
        LEA DX, str6
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H    ;input3
        MOV CL,AL
        
        CMP BH,BL
        JE EQUILA
        
        JNE ISOS1
        
        EQUILA:
        CMP BL,CL
        JE EQUILA_PRINT
        
        JNE ISOS_PRINT 
        
        ISOS1:
        CMP BL,CL
        JE ISOS_PRINT
        
        JNE ISOS2
        
        ISOS2:
        CMP CL,BH
        JE ISOS_PRINT
        
        JNE NEITHER_PRINT
        
        ISOS_PRINT:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H    
        
        LEA DX, str2
        MOV AH,9
        INT 21H
        
        JMP EXIT
        
        NEITHER_PRINT:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H    
        
        LEA DX, str3
        MOV AH,9
        INT 21H
        
        JMP EXIT        
        
        EQUILA_PRINT:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H    
        
        LEA DX, str1
        MOV AH,9
        INT 21H
        
              
        ;Comment                  
                                               
        ;YOUR CODE ENDS HERE  
        
        ;RETURNING THE CONTROL TO OS 
        EXIT:
        
        MOV AX, 4C00H ; -> AX - AH AL  AH 4C 
        INT 21H    
    MAIN ENDP
    
END MAIN
;END OF THE PROCEDURE