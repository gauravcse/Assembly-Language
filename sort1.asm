
;<Program title>

jmp start

;data


;code
start:  lxi h,2500h
	mov c,m
	dcr c
loop:	lxi h,2501h
	mov b,c
	dcr b
loop2:	mov a,m
	inx h
	cmp m
	jnc loop1
	mov d,m
	mov m,a
	dcx h
	mov m,d
loop1:	inx h
	dcr b
	jnz loop2
	dcr c
	jnz loop
	hlt