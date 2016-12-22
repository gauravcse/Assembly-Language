.model small
.stack 100h

.data
	n db 07h
	ans db ?

.code
		mov ax, @data
		mov ds, ax
		mov ax,0000h
		mov bl, n
		mov bh, 00h

		; Let dx contain the sum result

		call sum
		mov ans,ax
		hlt

		sum proc
		cmp bx, 1
		je finish
		push bx
		dec bx
		call sum
		pop bx
		add ax
finish	ret
		sum endp
		
		



