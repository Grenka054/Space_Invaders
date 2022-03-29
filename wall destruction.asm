asect  0x00

ldi r0,string #стенки
ldi r1,flags #флаги
ldi r2,0 #адрес записи
ldi r3,3 #счётчик

while 
	tst r3
stays ge
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
		ldi r0,outStr
		add r2,r0
		st r0,r1
		#
		pop r0
	else
		push r0
		add r2,r0
		ld r0,r0
		ldi r1,outStr
		add r2,r1
		st r1,r0
		pop r0
	fi
	
	pop r1
	inc r2 #увеличиваем адрес
	dec r3
wend


halt


INPUTS>
string:  #на вход строка - массив из 4 байт
 	    #dc 0b00111100 , 0b00111000,0b00110000,0b00111100#для отладки
		ds 4
flags:  #флаги на попадание в стенки
	   #dc 0,1,1,0 #для отладки
	   ds 4
ENDINPUTS>
outStr: ds 4 #массив стенок, либо измененных, либо нет
zeroFlags:ds 4 #возварщаем массив обнуленных флагов попадания
end