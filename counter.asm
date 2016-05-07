
;<Counter>

jmp start

;data


;code
start:	mvi c,0f0fh;
loop:	mov a,c;
	out 04h;
	jmp delay;
loop2:	dcr c;
	jnz loop;
hlt;

delay:	lxi d,0f0f0f0fh;
loop1:	dcx d;
	mov a,c;
	out 01h;
	ora d;
	jnz loop1;
	jmp loop2;
hlt;
