#include <stdio.h>
#include <add.h>
#include <sub.h>
#include <mul.h>


int main()
{
	int a = 20, b = 10;

	printf("Sum is %d, Difference is %d, Product is %d\n", \
	       add(a, b), sub(a, b), mul(a, b));
}
