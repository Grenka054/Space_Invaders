asect 0x00
push r0 #мусор в стэк
start:
	pop r0
	push r0 #мусор в стэк
	ldi r1, 0xFF
	ldi r2, enemies
	st r2,r1
main:
	pop r0
	ldi r1, str #исходная строка
	ldi r0,0 # номер монстра
	ldi r2, 3 #счётчик
	move r1,r3
	while 
		tst r2
	stays ge 
		ld r3,r1
		if 
			tst r1
		is nz
			break
		fi
		inc r3
		inc r0
		dec r2 
	wend
	ldi r1, 1
	ldi r2, enemies #врагов в r2
	ld r2,r2
	while
		tst r0
	stays nz
		shl r1 #mask
		dec r0  
	wend
	if
		move r1, r3
		and r2, r3
		tst r3 #если 0 - смотреть в верхнем ряду (сдвиг еще на 4)
	is z
		ldi r0, 4
		while
			tst r0
		stays nz
			shl r1 #mask
			dec r0  
		wend
	fi
	xor r1, r2
	ldi r0, enemies
	st r0, r2
	if
		tst r2
	is nz
		jsr main
	fi
	jsr start

asect 0xF0
str: dc 0b00000001, 0b00000000, 0b00000000, 0b00000100 #test
     #ds 4
enemies: 
  dc 0b11111111
end


