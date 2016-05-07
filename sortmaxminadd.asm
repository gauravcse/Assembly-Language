
;<SORT AND ADD MIN AND MAX VALUE>

jmp start

;data


;code
start:  lda 2000h;
	mov c,a;
	dcr c;
loop:	lxi h,2001h;
	mov d,c;
loop2:	mov a,m;
	inx h;
	cmp m;
	jnc loop1;
	mov e,m;
	mov m,a;
	dcx h;
	mov m,e;
	inx h;
loop1:	dcr d;
	jnz loop2;
	dcr c;
	jnz loop;
;	SORTING FINISHED
;	MAX STORED AT FIRST LOCATION MIN AT LAST LOCATION
	lxi h,2000h;
	mov c,m;
	mvi d,00h;
	mov e,c;
	dad d;
	mov b,m;
	lxi h,2001h;
	mov a,m;
	mvi d,00h;
	add b;
	jnc loop4;
	inr d;
loop4:	mov e,a;
	shld 2006h;
	
hlt