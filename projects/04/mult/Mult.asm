// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// Why noy add some logic for zero multiplication and checking mem value
// (Thanks Nebkor)

    @R2
    M=0
    @R1
    D=M
    @STOP
    D;JEQ
    @R0
    D=M
    @STOP
    D;JEQ


(MULT)
// Multiply, iteratively, by adding R0 into R2, R1 number of times.
    @R0
    D=M
    @R2
    M=D+M
    @R1
    M=M-1
    D=M
    @MULT
    D;JGT

(STOP)
    @STOP
    0;JMP