/*A sample assembly code for MSP430G2231 to find the
  string lenth of a given string*/

	.file	"strlen.c"
	.arch msp430x2013

	.text
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	#__stack, r1 
	mov	r1, r4 
	/* prologue ends here (frame size = 0) */
.L__FrameSize_main=0x0
.L__FrameOffset_main=0x2

	mov #0x260, r11
	mov #0x6a68, 0(r11)
	mov.b #0x6c, 2(r11)
	clr.b 3(r11)

	mov #0x00, r9
loop:
	mov r11, r10
	add r9, r10
	cmp.b #0, @r10
	jz l0
	inc r9
	jmp loop

l1:
	mov #1, &0x0022
	mov #1, &0x0021
l0:
	cmp #0x03, r9
	jz l1


	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File strlen.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
