.model small
.stack 100h
.data
	number db '123456789'
	count db 9h
	sum db ?

.code
start :	mov ax, @data
		mov ds, ax
		mov es,ax
		lea di,number
		mov cl,count
		mov bx,0000h

loop1 : mov al,[di]
		sub al, 30h
		add al,bl
		jnc next
		inc bh
next : 	mov bl,al
		inc di
		loop loop1
		lea si,sum
		mov [si], bl
		inc si
		mov [si],bh
		int 3h
end start
