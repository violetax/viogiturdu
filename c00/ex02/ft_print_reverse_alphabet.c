/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_reverse_alphabet.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/04 14:21:56 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/04 14:27:13 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void ft_putchar(char c) {
	write(1,&c,1);
}

void ft_print_reverse_alphabet(void) {
	char comienzo = 'z';
	char final = 'a';
	while ( comienzo > final ) {
		ft_putchar(comienzo);
		comienzo = comienzo - 1;
	}
}
