.thumb_func
.global main

main: BL stdio_init_all

l1:

l2: 
  CMP R4, #45
  BEQ l1

l3: MOV R2, #1

loop: 
  ADD R2, #1
  CMP R2, #10
  BLE loop

l4: MOV R2, #10

loop2:
  SUB R2, #1
  BNE loop2

l5:
  MOV R4, #5

loop3: CMP R4, #5
  BGE loopdone
  MOV r4, #6
  B loop3

loopdone:

l6: CMP R5, #10
  BGE elseclause
  B endif
elseclause:

endif:

l7: 
  MOV R5, #0xFF
  LSL R5, #24
  AND R6, R5

l8: 
  MOV R5, #0xFF
  ORR R6, R5

l9: 
  BIC R6, R5



printexample:
  MOV R4, #0x12 
  LSL R4, #8
  MOV R7, #0xAB
  ADD R4, R7
  LDR R1, =hexstr
  ADD R1, #9

  MOV R5, #8

loop4: 
  MOV R6, R4
  MOV R7, #0xf
  AND R6, R7

  CMP R6, #10
  BGE letter

  ADD R6, #'0'
  B cont

letter: 
  ADD R6, #('A'-10)

cont: 
  STRB R6, [R1]
  SUB R1, #1
  LSR R4, #4

  SUB R5, #1
  BNE loop4

repeat: 
  LDR R0, =printstr
  LDR R1, =hexstr
  BL printf


.align 4
.data
hexstr: .asciz "0x12345678"
printstr: .asciz "Register = %s\n"