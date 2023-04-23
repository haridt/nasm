Section .data
s1 dw " so chan!",0
len1 equ $-s1
s2 dw " so le ! ",0
len2 equ $-s2
s3 dw " Nhap vao mot so: "
len3 equ $-s3

Section .bss

input resb 1


Section .text

Global _start
_start :
mov eax,4
mov ebx,1
mov ecx, s3
mov edx, len3
int 0x80

Mov eax, 3
Mov ebx,2
Mov ecx, input
Mov edx, 1
int 0x80

Mov ax, [input]
and ax , 1
jz so_chan
Mov eax, 4
Mov ebx,1
Mov ecx,s2
Mov edx,len2
Int 0x80
Jmp exit

so_chan :

Mov eax,4
Mov ebx,1
Mov ecx, s1
Mov edx,len1
int 0x80
Jmp exit

exit :
Mov eax,1
Int 0x80
