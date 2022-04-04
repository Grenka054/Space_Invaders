asect 0
ldi r0,arr
ldi r2,0
ldi r3, 4
while
tst r3
stays nz
if
ld r0, r1
shr r1
push r3
ldi r3,0
is cs
ldi r3,128
fi
add r2, r1
st r0,r1
move r3,r2
pop r3
inc r0
dec r3
wend
halt
asect 0x3C
ENDINPUTS>
arr: 
     #dc 0b01010001, 0b10100000, 0, 0b10100000 #test
     ds 4
end
