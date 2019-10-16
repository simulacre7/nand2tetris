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

// @small_character: custom name
// @big_character: reversed name

@color         // declare color variable
M=0            // by default is white

(loop)
    @SCREEN    // RAM address 16384
    D=A

    @pixels 
    M=D       // pixel address (starting point: 16384, max: 16384+8192=24576)

    @KBD      // D = ascii code of a keyboard input
    D=M

    @black
    D;JGT     // if(keyboard > 0) goto black

    @color
    M=0       // otherwise white
    
    @color_screen
    0;JMP     // jump to subroutine that actually changes the color of screen

    (black)
        @color
        M=-1  // set to black

    (color_screen)
        @color
        D=M
        @pixels
        A=M
        M=D   // M[pixels] = @color

        @pixels
        M=M+1
        D=M

        @24576 // loop until end of pixels
        D=D-A
        @color_screen
        D;JLT

@loop
0;JMP         // infinite loop


