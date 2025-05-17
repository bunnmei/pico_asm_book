.MACRO toupper instr, outstr
  LDR R0, =\instr
  LDR R1, =\outstr
  MOV R2, R1

1: 
  LDRB R3, [R0]
  ADD R0, #1

  CMP R3, #'z'
  BGT 2f

  CMP R3, #'a'
  BLT 2f

  SUB R3, #('a'-'A')

2:
  STRB R3, [R1]
  ADD R1, #1
  CMP R3, #0
  BNE 1b
  SUB R0, R1, R2
.ENDM