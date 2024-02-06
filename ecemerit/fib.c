#include <stdio.h>
#include <math.h>

int main() {
    int x = 1, y = 1, c = 0, z;
    while (c < 25) {
	printf("%d ", x);
	z = x + y;
	x = y;
	y = z;
	c = c + 1;
    }
    return 0;
}

