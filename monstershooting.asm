asect 0x00
#важный момент, что мы получаем только номер строки, но не то,
#откуда именно пускать пулю - верхние, нижние, тут по барабану
push r0
main:
	pop r0
	#подгружает случайное число из rand, сгенереное аппараткой
	ldi r2, rand
	ldi r0,8
	ldi r1,0
	ld r2,r2
		#умножает его на 8
		while
		tst r2
		stays nz
		add r0,r1
		dec r2
		wend
		#прибавляет к нему число сдвига +4, 
		#получаем примерно середину монстра
	ldi r0, shift
	ld r0,r0
	add r0,r1
	ldi r0,4
	add r1,r0
	#выгружает это значение в res
	ldi r2, res
	st r2,r0
	jsr main

asect 0xF0
rand: dc 0
shift: dc 1
res: ds 1
end