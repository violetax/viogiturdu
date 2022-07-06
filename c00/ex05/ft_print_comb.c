/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/05 14:07:08 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/05 16:18:02 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void    ft_putchar(char c)
{
    write(1, &c, 1);
}

void	print_end(char boolean)
{
	char comma = 44;
	char space = 32;

	if ( boolean < '7' )
	{
		ft_putchar(comma);	
		ft_putchar(space);	
	}
}

void	print_triple(char i, char j, char k)
{
    ft_putchar(i);
    ft_putchar(j);
    ft_putchar(k);
	print_end(i);
}

void	ft_print_comb(void)
{
    char	i;
    char	j;
    char	k;
	
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
					print_triple(i,j,k);
				}
				k++;
			}
			j++;
		}
		i++;
	}
}
