.model small
.stack 100h
.data
	string db "Systems Programming"
	length dw 19
	search db 's'
	count db ?

.code
			mov ax, @data
			mov ds, ax
			mov si, 0
			mov bl,0
			mov cx, length

			mov al,search
again :		mov ah,string[si]
		 	cmp al,ah
			jne increase
			inc bl
increase :	inc si
			loop again
			mov count,bl

end