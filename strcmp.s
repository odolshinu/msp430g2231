/*A sample assembly code for MSP430G2231 to implement
  string comparison. If the two strings are same green
  led blink else red led*/

	.file	"strcmp.c"
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
	mov #0x260, r15
	mov #0x6a68, 0(r15)
	mov.b #0x6c, 2(r15)
	clr.b 3(r15)
	
	mov #0x240, r14
	mov #0x6a68, 0(r14)
	mov.b #0x6c, 2(r14)
	clr.b 3(r14)

	mov #0x41, &0x0022



loop:
	cmp.b @r14,@r15
	jz l1
	jnz l0

l1:
	cmp.b #0, @r14
	jz l2
	inc r14
	inc r15
	jmp loop

l0:
	mov #1, &0x0021
	jmp l3

l2:
	mov #0x40, &0x0021
	
l3:
	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File strcmp.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
