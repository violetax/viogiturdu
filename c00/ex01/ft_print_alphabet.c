/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_alphabet.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:42 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/07 15:20:34 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_print_alphabet(void)
{
	char	comienzo;
	char	final;

	comienzo = 'a';
	final = 'z';
	while (comienzo <= final)
	{
		ft_putchar(comienzo);
		comienzo = comienzo + 1;
	}
}
