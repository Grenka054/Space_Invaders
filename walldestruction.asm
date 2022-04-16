asect  0x00

ldi r0,0x2C #стенки
ldi r1,0x30 #флаги
ldi r2,0 #адрес записи
#34
	if 
		push r1
		add r2,r1
		ld r1,r1
		tst r1 #сдвиг на нужный адрес
	is nz #если было попадание, то изменяем стенку
		push r0
		add r2,r0
		ld r0,r0
		move r0,r1
		shl r1 #делаем в другом регистре маску
		and r0,r1 #логическое и - результат стенка на 1 меньше	
		#запись на выход
		ldi r0,0x34
		add r2,r0
		st r0,r1
		#
		pop r0
	else #иначе сразу записываем в результирующий массив
		push r0
		add r2,r0
		ld r0,r0
		ldi r1,0x34
		add r2,r1
		st r1,r0
		pop r0
	fi
	pop r1
ldi r0,0x2D #стенки
ldi r1,0x31 #флаги
#34
	if 
		push r1
		add r2,r1
		ld r1,r1
		tst r1 #сдвиг на нужный адрес
	is nz #если было попадание, то изменяем стенку
		push r0
		add r2,r0
		ld r0,r0
		move r0,r1
		shl r1 #делаем в другом регистре маску
		and r0,r1 #логическое и - результат стенка на 1 меньше	
		#запись на выход
		ldi r0,0x35
		add r2,r0
		st r0,r1
		#
		pop r0
	else #иначе сразу записываем в результирующий массив
		push r0
		add r2,r0
		ld r0,r0
		ldi r1,0x35
		add r2,r1
		st r1,r0
		pop r0
	fi
	pop r1
	
ldi r0,0x2E #стенки
ldi r1,0x32 #флаги
#34
	if 
		push r1
		add r2,r1
		ld r1,r1
		tst r1 #сдвиг на нужный адрес
	is nz #если было попадание, то изменяем стенку
		push r0
		add r2,r0
		ld r0,r0
		move r0,r1
		shl r1 #делаем в другом регистре маску
		and r0,r1 #логическое и - результат стенка на 1 меньше	
		#запись на выход
		ldi r0,0x36
		add r2,r0
		st r0,r1
		#
		pop r0
	else #иначе сразу записываем в результирующий массив
		push r0
		add r2,r0
		ld r0,r0
		ldi r1,0x36
		add r2,r1
		st r1,r0
		pop r0
	fi
	pop r1
	
ldi r0,0x2F #стенки
ldi r1,0x33 #флаги
#34
	if 
		push r1
		add r2,r1
		ld r1,r1
		tst r1 #сдвиг на нужный адрес
	is nz #если было попадание, то изменяем стенку
		push r0
		add r2,r0
		ld r0,r0
		move r0,r1
		shl r1 #делаем в другом регистре маску
		and r0,r1 #логическое и - результат стенка на 1 меньше	
		#запись на выход
		ldi r0,0x37
		add r2,r0
		st r0,r1
		#
		pop r0
	else #иначе сразу записываем в результирующий массив
		push r0
		add r2,r0
		ld r0,r0
		ldi r1,0x37
		add r2,r1
		st r1,r0
		pop r0
	fi
	pop r1
	
	
	
	
halt
end