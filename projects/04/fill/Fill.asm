// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
	@24576
	D=M
	@WHITE
	D;JEQ
(BLACK)
	//@-1
	@32767
	D=A
	@colour
	M=D
	@FILL
	0;JMP
(WHITE)
	@colour
	M=0
(FILL)
	@16384
	D=A
	@i
	M=D
(FILLMORE)
	@colour
	D=M		// D = colour
	@i
	A=M		// A = index
	M=D		// M[index] = colour
	@i		// increment index
	M=M+1
	// Keep filling?
	@24576
	D=A
	@i
	D=D-M	// 24576 - index
	@FILLMORE
	D;JGT
	// Listen the keyboard again
	@LOOP
	0;JMP