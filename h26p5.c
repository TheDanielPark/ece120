#include <stdio.h>
int main() //Name: Daniel Park. NetID: danielp7
{
    unsigned int a, b, c, d, p, q;
    unsigned int f;
    /* Print header for K-map. */
    printf("         cd      \n");
    printf("     00 01 11 10 \n");
    printf("   ______________\n");
    /* row-printing loop */
    for (a = 0; 2 > a; a = a + 1) { 
	/*if (a == 0) {
		d = 0;
		printf("ad=%u%u | ", a, d);
	} else if (a == 1) {
		d = 1;
		printf("ad=%u%u | ", a, d);
	} 
        printf("ad=%u%u | ", a, d); */
      for (q = 0; 2 > q; q = q + 1) {
       b = a ^ q;
       printf("ab=%u%u | ", a, b);
        /* Loop over input variable b in binary order. */
        for (c = 0; 2 > c; c = c + 1) {
            /* Loop over d in binary order.*/
            for (p = 0; 2 > p; p = p + 1) {
                /* Use variables b and d to calculate *
                 * input variable c (iterated in      *
                 * Gray code order).                  */
                /* CALCULATE c HERE. */
                d = c ^ p;
                /* Calculate and print one K-map entry *
                 * (function F(a,b,c) ).               */
                /* INSERT CODE HERE. */
                f = ((~a & b & c & ~d) | a | ~b) & 1;
                printf ("%u  ", f);
            }
        }
        /* End of row reached: print a newline character. */
            printf("\n");
	}
    }
    return 0;
}
