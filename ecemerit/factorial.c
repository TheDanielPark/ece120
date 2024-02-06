#include <stdio.h>
#include <math.h>

int main() {
    int sum = 1;
    int x = 10;

    for (; x > 0; x = x - 1) {
	sum = sum * x;
    }
    printf("%d\n", sum);
    return 0;
}
