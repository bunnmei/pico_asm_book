.thumb_func
.global main

.data 
l1:
  .byte 74, 0112, 0b00101010, 0x4A, 0X4a, 'J', 'H' + 2
  .word 0x1234ABCD, -1434
  .asciz "Hello World\n"

l2:
  .byte -0x45, -33, ~0b00111001

l3:
  .fill 10, 4, 0

l4: 
  .rept 3
  .byte 0, 1, 2
  .endr

.text


main:
  BL stdio_init_all
  BL toupper

  MOV r2, #0xd0
  LSL r2, r2, #24
  ADD r2, #0x14

l5: LDR R1, =helloworld

l6: LDR R1, =0x12345ABCDF

l7:
  LDR R1, =mynumber
  LDR R2, [R1]

l8:
  LDR R1, =arr1

l9: 
  LDR R2, [R1]
  LDR R2, [R1, #(2 * 4)]

l10:
  MOV R3, #(2 * 4)
  LDR R2, [R1, R3]

  LDR R1, =mydword
  LDM R1, {R2, R3}
  STM R1, {R2, R3}

  LDR R1, =mydword
  LDM R1!, {R2, R3}
  STM R1!, {R2, R3}


.data 
helloworld: .ascii "Hello World!"
mynumber: .WORD 0x1234ABCD
arr1: .FILL 10, 4, 0

mydword: .QUAD 0x1234567887654321
mydword2: .QUAD 0x0
