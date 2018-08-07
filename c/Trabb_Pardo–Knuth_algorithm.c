#include <math.h>
#include <stdio.h>

double f(double t)
{
    return sqrt(fabs(t)) + 5 * pow(t, 3);
}

int main(void)
{
    double a[11], y;
    int i;

    for (i = 0; i < 11; i++)
        scanf("%lf", &a[i]);

    for (i = 10; i >= 0; i--) {
        y = f(a[i]);
        y > 400 ? puts("TOO LARGE") : printf("%lf\n", y);
    }

    return 0;
}
