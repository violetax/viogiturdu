#include <unistd.h>

void    ft_putchar(char c)
{
    write(1, &c, 1);
}


void	print_triple(char i, char j, char k, int print_comma)
{
    ft_putchar(i);
    ft_putchar(j);
    ft_putchar(k);
	if ( comma != 0 )
	{
		ft_putchar(print_comma);
		ft_putchar(print_space);
	}
}

void	ft_print_comb(void)
{
    char	i;
    char	j;
    char	k;
	
	if (i != '7' && i != '8' && i != '9') 
	{
		comma = 1;
	}
	else
	{
		comma = 0;
	}

	i = '0';
	while (i <= '9')
	{
		j = '0';
		while (j <= '9')
		{
			k = '0';
			while (k <= '9')
			{
				if (i < j && j < k)
				{
					print_triple(i,j,k,comma);
				}
				k++;
			}
			j++;
		}
		i++;
	}
}



