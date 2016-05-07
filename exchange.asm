
;<Two Numbers are saved at 2050h and 2051h >
;<Exchange their D3D4 bits >

jmp start

;data


;code
start:  lda 2050h;
	ani 18h;
	mov b,a;	Stores D4D3 of number 1
	lda 2051h;
	ani 18h;
	mov c,a;	Stores D4D3 of number 2
	lda 2050h;
	ori 18h;	Gives the Number without D4D3
	mov d,a;
	mov a,c;
	ori 0e7h;
	mov c,a;
	mov a,d;
	ana c;		And with D4D3 of number 2
	sta 2060h;
	lda 2051h;
	ori 18h;	Gives the Number without D4D3
	mov e,a;
	mov a,b;
	ori 0e7h;
	mov b,a;
	mov a,e;
	ana b;		And with D4D3 of number 1
	sta 2061h;	
hlt