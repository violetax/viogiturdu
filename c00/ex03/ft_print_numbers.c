/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_numbers.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:45 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/07 15:25:26 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_print_numbers(void)
{
	char	primero;
	char	ultimo;

	primero = '0';
	ultimo = '9';
	while (primero <= ultimo)
	{
		ft_putchar(primero);
		primero = primero + 1;
	}
}
