/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:47 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/07 15:36:50 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	print_end(void)
{
	char	comma;
	char	space;

	comma = 44;
	space = 32;
	ft_putchar(comma);
	ft_putchar(space);
}

void	write_tens(int number)
{
	char	ten;
	char	unit;

	ten = (number / 10) + '0' ;
	unit = (number % 10) + '0' ;
	ft_putchar(ten);
	ft_putchar(unit);
}

void	print_pair(int left_position, int right_position)
{
	char	space;

	space = 32;
	write_tens(left_position);
	ft_putchar(space);
	write_tens(right_position);
}

void	ft_print_comb2(void)
{
	int	lop;
	int	rop;

	rop = 0;
	lop = 0;
	while (lop <= 99)
	{
		rop = lop + 1;
		while (rop <= 99)
		{
			print_pair(lop, rop);
			if (! (rop == 99 && lop == rop - 1))
			{
				print_end(void);
			}
			rop++;
		}
		lop++;
	}
}
