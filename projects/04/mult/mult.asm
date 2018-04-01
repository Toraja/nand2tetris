// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// R0 >= 0, R1 >= 0, R0 * R1 < 32768

// Put your code here.
// Strategy: Add R0 for R1 times
	@i
	M=0
	@2
	M=0
(LOOP) // until i is equal to the value in R1
	// Test if loop index is equal to or greater than R1 by calculating i - R1
	@i
	D=M
	@1
	D=D-M
	@END
	D;JGE
	// Add R0 to R2
	@0
	D=M
	@2
	M=D+M
	// increment i
	@i
	M=M+1
	@LOOP
	0;JMP
(END)
	@END
	0;JMP