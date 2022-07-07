/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ft.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 19:30:07 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/07 21:14:51 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>

void	ft_putint(int i) {
	write(1,&i,10);
}

int	ft_ft(int *nbr)
//void	ft_ft(int *nbr)
{
	int fortytwo;

	fortytwo = 42;
	nbr = &fortytwo;

	return(*nbr);
}

int main() {
	int integer;
	int *hola;

	integer = 55;

	hola = &integer;

	integer = ft_ft(hola);

	printf(" %d ", *hola); // 42
	printf(" %d ", integer); // 42
	printf(" %p ", &hola); // 0x7ffeeb361810

}


