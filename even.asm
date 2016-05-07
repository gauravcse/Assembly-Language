
;<Program title>

jmp start

;data


;code
start:  lxi h, 204Fh
	mov c,m
	lxi h, 2050h
	mov a,m
	lxi d, 2200h
loop1:	rrc
	jnz loop2
	mov a, m
	stax d
	inx d
loop2:	inx h
	mov a, m
	dcr c
	jnz loop1
	hlt


hlt