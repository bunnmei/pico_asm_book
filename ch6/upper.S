.global toupper

toupper: PUSH {LR}

  LDR R4, =instr
  LDR R3, =outstr

loop:
  LDRB R5, [R4]
  ADD R4, #1

  CMP R5, #'z'
  BGT cont

  CMP R5, #'a'
  BLT cont 

  SUB R5, #('a'-'A')

cont: 
  STRB R5, [R3]
  ADD R3, #1
  CMP R5, #0
  BNE loop

  LDR R0, =outstr
  BL printf

  POP {PC}


.data
instr: .asciz "This is our Test String that we will convert.\n"
outstr: .fill 255, 1, 0