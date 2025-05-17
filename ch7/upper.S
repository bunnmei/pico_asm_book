.global toupper

toupper:
  PUSH {R4-R5}
  MOV R4

loop: 
  LDRB R5, [R0]
  ADD R0, #1

  CMP R5, #'z'
  BGT cont

  CMP R5, #'a'
  BLT cont 

  SUB R5, #('a'-'A')

cont: 
  STRB R5, [R1]
  ADD R1, #1
  CMP R5, #0
  BNE loop
  SUB R0, R1, R4
  POP {R4-R5}
  BX LR
