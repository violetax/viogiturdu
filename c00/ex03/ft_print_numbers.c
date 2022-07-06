/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cprog.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/04 14:31:29 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/04 14:37:39 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void ft_putchar(char c) {
	write(1,&c,1);
}

void ft_print_numbers(void) {
	char primero='0';
	char ultimo='9';
	while ( primero <= ultimo ) {
		ft_putchar(primero);
		primero = primero + 1;
	}
}
