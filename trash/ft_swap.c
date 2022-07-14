//#include <unistd.h>
#include <stdio.h>
//
//void    ft_putchar(char c) {
    //write(1,&c,1);
//}
				// a = VALa 
				// b = VALb
void	ft_swap(int *a, int *b)
{
	int value_a;
	int value_b;

	value_a = *a;
	value_b = *b;

	a = &value_b;
	b = &value_a;

	printf("%d\n",*a);		// value of a which is an initialited pointer
	printf("%d\n",*b);		// value of b which is an initialited pointer
	printf("original a → %d\n",value_a);	// value of initialited integer
	printf("original b → %d\n",value_b);	// value of initialited integer
}


int main() {
	int *a;
	int *b;
	
	int vala = 1;
	int valb = 2;
	
	a = &vala;
	b = &valb;

	ft_swap(a,b);
}
