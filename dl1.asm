section .data
sum db " tong la: "
len_sum equ $-sum
xuongdong db 10,0  
len equ $-xuongdong
s1 db "a: ",0
len1 equ $-s1
s2 db "b: ",0
len2 equ $-s2

section .bss
a resb 2
b resb 2
c resb 1
 
section .text
global _start



_start :
mov eax,4
mov ebx,1
mov ecx,s1
mov edx,len1
int 0x80

;nhap a
mov eax,3
mov ebx,0
mov ecx,a
mov edx,2
int 0x80

mov eax,4
mov ebx,1
mov ecx,s2
mov edx,len2
int 0x80

;nhap b
mov eax,3
mov ebx,0
mov ecx,b
mov edx,2
int 0x80

mov eax,4
mov ebx,1
mov ecx,sum
mov edx,len_sum
int 0x80
;
tinh_toan :
mov eax,[a]
mov ebx,[b]
add eax,ebx
sub eax,'0'
mov [c] ,eax
;
mov eax,4
mov ebx,1
mov ecx,c
mov edx,1
int 0x80
mov eax,4
mov ebx,1
mov ecx,xuongdong
mov edx,len
int 0x80

exit :
mov eax,1
xor ebx,ebx
int 0x80
