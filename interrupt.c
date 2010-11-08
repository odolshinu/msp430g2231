#include<io.h>
void init()
{
	WDTCTL = WDTPW | WDTHOLD;
	P1DIR = 0x41;
	TACTL = MC_2 | ID_0 | TASSEL_2 | TACLR;
}

void delay()
{
	while((TACTL&1) == 0) {
	}
	TACTL = TACTL & ~1;
}

main()
{
	init();
	while(1) {
		delay();
		P1OUT = 1;
		delay();
		P1OUT = 0x40;
	}
}
