
;<Linear Search>

jmp start

;data


;code
start:	lda 2010h;
	mov b,a;
	mov c,a;
	lxi h,2011h;
	mov d,m;
loop:	inx h;
	mov a,m;
	cmp d;
	jz loop1;
	dcr c;
	jnz loop;
	hlt;
loop1:	mov a,m;
	out 07h;
	mov a,b;
	sub c;
	inr a;
	out 08h;
hlt;