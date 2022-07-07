/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:48 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/07 15:46:11 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	return_positive(int nb)
{
	if (nb < 0)
	{
		nb = nb * -1;
		ft_putchar('-');
	}
	return (nb);
}

int	get_length(int nb)
{
	int	length;

	length = 0;
	while (nb)
	{
		nb /= 10;
		length++;
	}
	return (length);
}

void	ft_putnbr(int nb)
{
	int	length;
	int	i;
	char	print;

	nb = return_positive(nb);
	length = get_length(nb);
	char	arr[length];
	i = 0;
	while (nb)
	{
		print = (nb % 10) + 48;
		arr[i] = print;
		nb /= 10;
		i++;
	}
	while ((i - 1) >= 0)
	{
		print = arr[i - 1];
		ft_putchar(print);
		i--;
	}
}
