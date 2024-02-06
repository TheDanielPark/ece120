#include <stdio.h>
#include <math.h>

int main() {
     int x;
     printf("Please input a uin: \n");
     scanf("%d", &x);
     if (x < 600000000 || x > 699999999) {
	printf("This UIN is not valid\n");
     } else {
	printf("This is a valid UIN\n");
     }
     return 0;
}
