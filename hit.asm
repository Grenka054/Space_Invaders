asect 0
ldi r0, num
ld r0, r0
ldi r1, 1
ldi r2, enemies
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
  tst r3
is z
  ldi r0, 4
  while
    tst r0
  stays nz
    shl r1 #mask
    dec r0  
  wend
fi
if
  move r1, r3
  and r2, r3
  tst r3
is nz
  xor r1, r2
fi
ldi r0, enemies
st r0, r2
halt
asect 0xc0
enemies: 
  dc 0b00110100
num: 
  dc 3 # от 1 до 4
end