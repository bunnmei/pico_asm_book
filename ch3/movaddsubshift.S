.thumb_func
.global main

main: 
  BL stdio_init_all

after: 
  MOV R2, #3
  MOVS R1, R2
  MOV R9, R2
  ADD R4, R2, #7
  ADD R4, R4, #255
  ADD R4, #255
  MOV R7, #23
  MOV R11, R7
  MOV R7, #54
  MOV R10, R7
  ADD R10, R10, R11
  ADD SP, SP, #508
  SUB SP, SP, #508
  ADD R4, SP, #1020
  MOV R3, #8
  MOV R2, #0xFF
  MOV R1, #4
  LSL R1, R1, #2
  LSL R1, #2
  LSR R1, R2, #8
  LSR R1, R3
  ASR R1, #8
  ROR R1, R3
  MOV R3, #0x12
  LSL R3, #24
  MOV R1, #0x34
  LSL R1, #16
  ADD R3, R1
  MOV R1, #0x56
  LSL R1, #8
  ADD R3, R1
  MOV R1, #0x78
  ADD R3, R1
  MOV R2, #0x12
  MOV R4, #0x54
  MOV R5, #0xf0
  LSL R5, #24
  ADD R1, R3, R5
  ADC R2, R4
  MOV R0, R2
  MOV R6, R0
  MOV R7, R1

loop:
  MOV R1, R6
  MOV R2, R7
  LDR R0, =sumstr
  BL printf
  B loop

.data
  .align 4

sumstr: .asciz "The sum is %x %x\n"