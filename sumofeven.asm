
;<Sum of Even Numbers>

jmp start

;data


;code
start:	lda 2000h;
	mov c,a;
	mvi d,00h;
	mvi e,00h;
	lxi h,2001h;
loop:	mov a,m;
	rrc;
	jc loop1;
	mov a,m;
	add e;
	jnc loop3;
	inr d;
loop3:	mov e,a;
loop1:	inx h;
	dcr c;
	jnz loop;
	mov a,d;
	out 00h;
	mov a,e;
	out 01h;
hlt