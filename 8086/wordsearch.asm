.model small
.stack 100h
.data
	string db "Hello world !!"
	search db "world"
	strlen db 14h
	sealen db 5h

.code
start :		mov ax, @data
			mov ds, ax
			mov es, ax
			lea di, string
			lea si, search
			mov cx, sealen
			mov bl, 00h
			mov al, strlen
			sub al, cl
			mov bl, al

			cnt
	   repe cmpsb
			je found



