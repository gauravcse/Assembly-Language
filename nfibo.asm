
;<Nth Fibonacci Number>

jmp start

;data


;code
start:	lda 200ah;
	sui 02h;
	mov c,a;
	mvi d,00h;
	mvi e,01h;
loop:	mov a,d;
	add e;
	mov d,e;
	mov e,a;
	dcr c;
	jnz loop;
	mov a,e;
	out 05h;
hlt