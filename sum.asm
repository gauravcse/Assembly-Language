
;<Sum of Min and Max in an array>

jmp start

;data


;code
start:  lda 204Fh;
	mov b,a;
	lxi h, 2050h;
	dcr b;
	mov d,m;	First Number is max
	mov e,m;	First Number is min
loop:	inx h;
	mov a,d;
	cmp m;		Compares max and memory
	jnc loop1;	Jumps to min part
	mov d,m;
loop1:	mov a,e;
	cmp m;		Compares min and memory
	jc loop2;
	mov e,m;
loop2:	dcr b;
	jnz loop;
	mov a,d;
	add e;		SUM OF TWO NUMBERS
	mvi d,00h;
	jnc loop3;
	mvi d,01h;
loop3:	sta 2500h;
	mov a,d;
	sta 2501h;
hlt