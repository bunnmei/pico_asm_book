.thumb_func
.global main

main:
  BL stdio_init_all

repeat:
  LDR R0, =instr
  LDR R1, =outstr
  MOV R4, #12
  MOV R5, #13

  BL toupper

  LDR R0, =outstr
  BL printf

  BL codesnippets

  B repeat

.data
instr: .ascii "This is our Test String that we will convert.\n"
outstr: .fill 255, 1, 0