/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_alphabet.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/04 14:21:45 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/04 14:28:04 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void ft_putchar(char c) {
	write(1,&c,1);
}

void ft_print_alphabet(void) {
	char comienzo = 'a';
	char final = 'z';
	while ( comienzo <= final ) {
		ft_putchar(comienzo);
		comienzo = comienzo + 1;
	}
}
