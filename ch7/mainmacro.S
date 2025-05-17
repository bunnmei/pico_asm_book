.include "uppermacro.S"

.global mainmacro

mainmacro:
  PUSH {LR}
  toupper tststr, buffer

  LDR R0, =buffer
  BL printf

  toupper tststr2, buffer

  LDR R0, =buffer
  BL printf

  POP {PC}

.data
tststr: .asciz "This is our Test String that we will convert.\n"
tststr2: .asciz "A second string to upper case!!\n"
buffer: .fill 255, 1, 0