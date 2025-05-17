.global codesnippets

codesnippets:
  PUSH {R3-R7, LR}

l1: 
  PUSH {r0, r5-7}
  POP {r0, r5-r7}
  PUSH {r0-r4, r6}
  POP {r0-r4, r6}

l2: 
  BL myfunc
  MOV R1, #4
  B 13

myfunc:
  BX LR

l3:
  MOV R1, #4
  B 14


myfuncb:
  PUSH {LR}
  BL myfunc2
  POP {PC}

myfuncb2:
  BX LR

l4: 
  SUB SP, #12

l5: 
  STR R0, [SP]
  STR R1, [SP, #4]
  STR R2, [SP, #8]

l6: 
  ADD SP, #12

l9: 
  BL SUMFN
  B l10

  .EQU VAR1, 0
  .EQU VAR2, 4
  .EQU SUM,  8

  SUB SP, #12
  STR R0, [SP, #VAR1]
  STR R1, [SP, #VAR2]

  LDR R4, [SP, #VAR1]
  LDR R5, [SP, #VAR2]
  ADD R6, R4, R5
  STR R6, [SP, #SUM]

  LDR R0, [SP, #SUM]
  ADD SP, #12
  POP {R4-R7, PC}

l10:
  POP {R3-R7, PC}