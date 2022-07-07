#include <unistd.h>

void    ft_putchar(char c) {
    write(1,&c,1);
}
int	return_positive(int nb)
{
	if ( nb < 0 )
	{
		nb = nb * -1;
		ft_putchar('-');
	}
	return(nb);
}
int get_length(int nb)
{
	int length;

	length = 0;
	while (nb)
	{
		nb /= 10;
		length++;
	}
	return(length);
}

void ft_putnbr(int nb)
{
	char print;
	int length;
	int i;

	i = 0;

	nb = return_positive(nb);
	
	length = get_length(nb);
	char arr[length];

	while (nb) 
	{
		print = ( nb % 10 ) + 48;
		arr[i] = print;
		nb /= 10;
		i++;
	}
	
	while( (i - 1) >= 0)
	{
		print = arr[i-1];
		ft_putchar(print);
		i--;
	}
}

int main() {
	ft_putnbr(42);
	ft_putchar(10);
	ft_putnbr(-483647);
	ft_putchar(10);
}
