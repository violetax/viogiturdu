#include <unistd.h>
#include <stdio.h>

void    ft_putchar(char c) {
    write(1,&c,1);
}
//la funcion → muestra en parámetro 'int nb' 
// int nb acepta todos los VALORES POSIBLES
//-2147483648 to 2147483647
//                        7
//                       4
//                      6
//                     3
//                    8
//                   4
//                  7
//                 4
//                1
int	return_positive(int nb)
{
	if ( nb < 0 )
	{
		nb = nb * -1;
		ft_putchar('-');
	}
	return(nb);
}

//int find_length(int nb)
//{
//	if ( nb - ( nb % 10 ) 


void ft_putnbr(int nb)
{
	char c;
	
	int mod;
	int digit;
	int fdigit;
	
	nb=return_positive(nb);
   
	mod = 1000000000;

		if ( mod == 1000000000 )
		{
			fdigit = ( nb - ( nb % mod ) ) / mod;
			c = fdigit + 48;
			ft_putchar(c);
		}

	while ( mod < 1000000000 + 1 ) 
	{
		if ( mod == 10 )
		{
			digit  = nb % mod;
		}
		else
		{
			digit  = ( nb % mod ) / ( mod / 10 ) ;
		}
		mod = mod / 10;
		c = digit + 48;
		ft_putchar(c);
		if ( mod == 1 )
		{
			return;
		}
	}

//	if ( nb < test && nb > -test ) 
}


int main() {
	ft_putnbr(42);
	ft_putchar(10);
	ft_putnbr(-483647);
}
