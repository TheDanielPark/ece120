#include <stdio.h>
#include <math.h>

int main() {
    double sum = 1, x;

    for (x = 1; x < 10001; x = x + 1) {
	sum = sum * ((4*x*x) / ((4*x*x)-1));
    }
    sum = sum * 2;
    printf("%f\n", sum);
    return 0;
}
