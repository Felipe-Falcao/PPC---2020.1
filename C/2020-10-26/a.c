#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double altura(float a, float b, float n)
{
  return (b - a) / n;
}

double f(double x)
{
  return 10 * x - (x * x);
}

float trapezio(float a, float b, int n)
{
  double h = altura(a, b, n);
  double result = 0.0f;
  for (int i = 1; i <= n - 1; i++)
  {
    b = a + h;
    result = result + (b - a) * (f(a) + f(b)) / 2.0f;
    a = b;
  }
  return result;
}

int main()
{
  double r = trapezio(0.0, 10.0, 100);
  printf("Valor: %f", r);
  return 0;
}