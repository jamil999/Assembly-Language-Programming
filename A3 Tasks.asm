.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here 


MOV AH,1
INT 21H     ;input


MOV BL,AL
SUB BL,30H

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space

L1:
CMP BL,1H
JL END

MOV CX,BX
SUB BL,1H


JMP L2

L2:
MOV AH,2

MOV DL,'*'
INT 21H

LOOP L2

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space

JMP L1


;exit to DOS

END: 

MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN


;New code
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

mov cx,5
mov ah,2
mov si,4
start: 
mov bl,0
add bl,a[si]
add bl,30h
mov dl,bl
int 21h
sub si,1
loop start

 

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
;New code
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

mov a[si],al
int 21h
add si,1
loop take

mov cx,5
mov ah,2
mov si,0

start: 
mov dl,a[si]
int 21h
add si,1
loop start

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

;new code
.MODEL SMALL
 
.STACK 100H

.DATA 

a db 5 dup(?)

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

MOV AH,1
INT 21H
mov bh,0
MOV BL,AL

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space

MOV AH,1
INT 21H
MOV CL,AL
SUB CL,30H

SUB BX,30H
MOV SI,BX
ADD a[SI],CL 

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space


mov cx,5
mov ah,2
mov si,0

start:
mov dl,a[si]
int 21h
add si,1
loop start

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
;New code
# REVERSE A NUMBER
.MODEL SMALL
 
.STACK 100H

.DATA 

a db 5 dup(?)

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

MOV CX,5
MOV AH,1 

take:
int 21h
PUSH aX
loop take

MOV AH, 2
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H       ;space

MOV CX,5
MOV AH,2

start:
POP BX
MOV DX,BX
int 21h
loop start

;exit to DOS

MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN