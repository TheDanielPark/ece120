#include <stdio.h>  
#include <math.h>  

int main()  
{  
    int a;
    a = 256;
   /* for (a = 256; a > 1; a = sqrt(a))  
    {  
        printf("%d\n", a);  
    }  

    printf("%d\n", 1);  
    */

    while (a > 1) {
	printf("%d\n", a);
	a = sqrt(a);
    }
    printf("%d\n", 1);

    return 0;
}  

