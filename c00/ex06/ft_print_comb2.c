#include <unistd.h>

void	ft_putchar(char c) {
	write(1,&c,1);
}

void    print_end(void)
{
    char comma = 44;
    char space = 32;

	ft_putchar(comma);
	ft_putchar(space);
}

void	write_tens(int number)
{
	char	ten;
	char	unit;

	ten = ( number / 10 ) + '0' ;
	unit = ( number % 10 ) + '0' ;

	ft_putchar(ten);
	ft_putchar(unit);
}

void    print_pair(int left_position, int right_position) // ( outer , inner ) → ( left , right )
{
	char space = 32;

	write_tens(left_position); // left outer primero
	ft_putchar(space);
	write_tens(right_position);  // right inner después, porque se escriben en secuencia de left to right
}

void	ft_print_comb2(void)
{
	int left_outer_position;
	int right_inner_position;
	
	right_inner_position = 0;
	left_outer_position = 0;
	while ( left_outer_position <= 99 )
	{
		right_inner_position = left_outer_position + 1; 
		while ( right_inner_position <= 99 ) 
		{
			print_pair(left_outer_position, right_inner_position);
			if ( ! (  right_inner_position == 99 && left_outer_position == right_inner_position - 1 ) ) 
			{
				print_end();
			}
			right_inner_position++;
		}
		left_outer_position++;
	}
}
