#include <stdio.h>
#include <math.h>

int main () {
	 int n, i, j, z;
	    
	    printf("Please input a number greater than 0\n");
	    scanf("%d", &n);
	    if (n > 0) {
	   	 for (i = 1; i < n + 1; i = i + 1) {
			for (j = 0; j < n - i; j = j + 1) {
				printf(" ");
			}
			for (z = 0; z < (2 * i) - 1; z = z + 1) {
				printf("*");
			}
			printf("\n");
	   	 }
	    } else {
		printf("Invalid input");
	    }
	    printf("\n");
	    return 0;
	}
		

