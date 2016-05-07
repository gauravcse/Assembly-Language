
;<Exchange Bits D6 and D3 of N numbers>

jmp start

;data


;code
start:	lda 2000h;
	mov c,a;
	lxi h,2001h;
loop:	mvi e,00h;
	mov a,m;
	ani 48h;
	mov b,a;
	mov a,m;
	ani 0b7h;
	mov d,a;
	mov a,b;
	rlc;
	rlc;
	jnc loop1;
	mvi e,08h;
loop1:	mov a,b;
	rrc;
	rrc;
	rrc;
	rrc;
	jnc loop2;
	mov a,e;
	adi 40h;
	mov e,a;	
loop2:	mov a,d;
	ora e;
	mov m,a;
	inx h;
	dcr c;
	jnz loop;
	lxi h,2000h;
	lxi d,200Ah;
	mov c,m;
	inx h;
loop3:	mov a,m;
	stax d;
	inx h;
	inx d;
	dcr c;	
	jnz loop3;
	
hlt