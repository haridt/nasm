Section .data
s1 db " Nhap ki tu: "
len1 equ $-s1
s2 db " Ki tu da in hoa: "
len2 equ $-s2
s3 db "INVALID!"
len3 equ $-s3
xuongdong db 10,0
len4 equ $-xuongdong

Section .bss
input resb 1

Section .text
global _start

in_thuong :
mov al, byte [edi]
cmp al,0	 
je invalid	
cmp al, 'A'
jb invalid	 
cmp al, 'Z'	
ja 	invalid		
add al,32
mov byte[edi],al 
ret	

invalid :
mov eax,4
mov ebx,1
mov ecx,s3
mov edx,len3
int 0x80
mov eax,4
mov ebx,1
mov ecx,xuongdong
mov edx,len4
int 0x80
jmp Exit

_start :
Mov eax,4
Mov ebx,1
Mov ecx, s1
Mov edx, len1
Int 0x80

Mov eax, 3
Mov ebx,2
Mov ecx,input
Mov edx,1
Int 0x80

Mov eax,4
Mov ebx,1
Mov ecx,s2
Mov edx,len2
Int 0x80

lea edi,[input]
call in_thuong

Mov eax,4
Mov ebx,1
Mov ecx,input
Mov edx,1
Int 0x80
mov eax,4
mov ebx,1
mov ecx,xuongdong
mov edx,len4
int 0x80



Exit :
Mov eax,1
xor ebx,ebx 
Int 0x80





