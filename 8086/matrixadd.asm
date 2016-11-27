.model small
.stack 100h
.data
	matrix1 db 01h,02h,03h,04h,05h
	matrix2 db 01h,02h,03h,04h,05h
	count db 06h
	reserve db ?

.code
start : mov ax, @data
		mov ds,ax
		mov cl, count
		lea si, matrix1
		lea di, matrix2

loop1 :	mov al,[si] 
		mov bl, [di]
		add al,bl
		push ax
		inc si
		inc di
		loop loop1
		call function

fucntion proc
		pop ax
		lea si, reserve
		add si, 06h
		mov cl, 06h
loop2 : pop ax
		mov [si], al
		dec si
		loop loop2
		int 3h
		ret
function endp
end start