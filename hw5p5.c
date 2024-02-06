#include <stdio.h>
int main()
{
    unsigned int a, b, c, d;
    unsigned int f;
     
    /* Print header for K-map. */
    printf("Name: Daniel Park| NetID: danielp7\n");
    printf("         bc      \n");
    printf("     00 01 11 10 \n");
    printf("   ______________\n");
     
    /* row-printing loop */
    for (a = 0; 2 > a; a = a + 1) {
        printf("a=%u | ", a);
        /* Loop over input variable b in binary order. */
        for (b = 0; 2 > b; b = b + 1) {
            /* Loop over d in binary order.*/
            for (d = 0; 2 > d; d = d + 1) {
                /* Use variables b and d to calculate *
                 * input variable c (iterated in      *
                 * Gray code order).                  */
                /* CALCULATE c HERE. */
		if (b == 0) {
			c = d;
			/*for (c = 0; d > c; c = c + 1) {
			}*/
		} else if (b == 1) {
			c = b - d;
			/*for (c = 1; c > -1; c = c - 1) {
			}*/
		}
                /* Calculate and print one K-map entry *
                 * (function F(a,b,c) ).               */
                /* INSERT CODE HERE. */
		//printf("This is the current fresh f %d\n", f);
		f = ((~a | ~b)&(~b | ~c)&(~a | ~c))&1;
		printf("%d  ", f);
            }
        }
        /* End of row reached: print a newline character. */
            printf("\n");
    }
    return 0;
}
