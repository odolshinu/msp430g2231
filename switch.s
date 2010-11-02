/*A sample assembly code for MSP430G2231 to blink the
  led on the launchpad on switching the switch on the
  board*/

	.file	"dummy.c"
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
	mov.b #1, &0x0022

.L2:
	mov.b &0x0020, r5
	and #8, r5
	cmp #0, r5
	jeq .L1
	mov.b #0, &0x0021
	jmp .L2
	
.L1:
	mov.b #1, &0x0021
	jmp .L2
	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File dummy.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
