/*A sample assembly code for MSP430G2231 to perform
  string copy. If the copy is successful the LED blinks*/

	.file	"strcpy.c"
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
	
	mov #0x230, r12
	mov r11, r10

loop:
	cmp.b #0, @r10
	jz l0
	mov @r10, @r12
	inc r10
	inc r12
	jmp loop

l0:
	cmp.b #0x6c,&0x0232
	jz l1
	jmp l2

l1:
	mov #1, &0x0022
	mov #1, &0x0021

l2:
	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File strcpy.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
