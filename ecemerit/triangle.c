#include <stdio.h>
#include <math.h>

int main () {
    int n, i, j;
    
    printf("Please input a number greater than 0\n");
    scanf("%d", &n);
    if (n > 0) {
   	 for (i = 1; i < n + 1; i = i + 1) {
		printf("\n");
		for (j = 1; j < i + 1; j = j + 1) {
			printf("*");
		}
   	 }
    } else {
	printf("Invalid input");
    }
    printf("\n");
    return 0;
}
