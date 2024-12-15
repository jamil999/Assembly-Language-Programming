;REVERSE A NUMBER USING ARRAY
.MODEL SMALL
 
.STACK 100H

.DATA 

;a db "Jamil"
a db 5 dup(?)
;b db 5 dup(?)

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov cx,5
mov ah,1
mov si,0 

take:
int 21h
mov a[si],al
add si,1
loop take

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space


mov cx,5
mov ah,2
mov si,4

start: 
mov dl,a[si]
int 21h
SUB si,1
loop start

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;COPY A ARRAY IN REVERSE ORDER
.MODEL SMALL
 
.STACK 100H

.DATA 

;a db "Jamil"
a db 5 dup(?)
b db 5 dup(?)
c DB ?

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov cx,5
mov ah,1
mov si,0 

take:
int 21h
mov a[si],al
add si,1
loop take

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space


mov cx,5
mov si,4
MOV di,0 

start: 
mov bl,a[si]
mov b[di],bl
sub si,1 
add di,1
loop start 

mov cx,5
mov ah,2
mov si,0

start1:
mov dl,b[si]
int 21h
add si,1
loop start1

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;CHECK PALINDROME
.MODEL SMALL
 
.STACK 100H

.DATA 

a db 5 dup(?)
b db 5 dup(?)

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov cx,5
mov ah,1
mov si,0 

take:
int 21h
mov a[si],al
add si,1
loop take

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space

mov cx,5
mov si,4
MOV di,0 

start: 
mov bl,a[si]
mov b[di],bl
sub si,1 
add di,1
loop start 

mov cx,5
mov si,0

CHECK:
MOV BL,a[SI]
CMP BL,b[si] 
JNE NP
add si,1
loop CHECK

MOV DL,'P'
MOV ah,2
INT 21h
JMP EXIT

NP: 
MOV DL,'N'
MOV ah,2
INT 21h     ;output

;exit to DOS

EXIT:

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;PRINT TILL THE OF GIVEN INPUT (FROM 0 - INPUT)
.MODEL SMALL
 
.STACK 100H

.DATA 

a db 5 dup(?)
b db 5 dup(?) 
C DB ?

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH,1
INT 21H

MOV BL,AL 
MOV C,30H
mov ah,2

L1:
CMP C,BL
JG EXIT
 
mov dl,C
INT 21h 
ADD C,1H 

JMP L1

;exit to DOS

EXIT:

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;SHOW THE FACTORS (NOT COMPLETED)
.MODEL SMALL
 
.STACK 100H

.DATA 

a db 5 dup(?)
b db 5 dup(?) 
C DB ?

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV AH,1
INT 21H

MOV BL,AL
SUB BL,30H 
MOV C,1H
mov ah,2

L1: 

MOV AX,BX
DIV C
CMP AH,0
JE S

ADD C,1H

SUB DL,30H
CMP DL,BL
JG EXIT



JMP L1 

S: 
mov dl,C 



ADD DL,30H
 
MOV AH,2
INT 21h 
ADD C,1H 


JMP L1

;exit to DOS

EXIT:

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;New Code
.MODEL SMALL
 
.STACK 100H

.DATA
a db 1,2,3,4,5
b db 5 dup(?)
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN