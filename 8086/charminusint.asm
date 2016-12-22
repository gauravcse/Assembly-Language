.model small
.stack 100h
.data
	integer db 98
	char db 'g'
	result db ?

.code
		mov ax, @data
		mov ds, ax

		mov al, integer
		mov ah, char
		sub al,ah
		daa
		mov result, al

end