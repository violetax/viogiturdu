/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_negative.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:46 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/08 15:03:17 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_is_negative(int n)
{
	int	upper_limit;
	int	lower_limit;

	upper_limit = 2147483647;
	lower_limit = -2147483648;

	if ((n%2 = 0) || (n%2 = 1))
	{








	if (n <= 2147483647 && n > -2147483648)
	{

		if ( n == -2147483648)
		{
			ft_putchar('?');
			printf("%d",n);
			prueba = n + 2147483647;
			printf("%d",prueba);

			return;
		}
		

		if (n < 0)
		{
			ft_putchar('N');
			ft_putchar(10);
		}
		else if (n > 0)
		{
			ft_putchar('P');
			ft_putchar(10);
		}
		else
		{
			ft_putchar('E');
		}
	}
}

int main() {
	int p = 2147483647;
	int n = -2147483647;
	int prueba;

	
	prueba = n + p;

	printf("%d",prueba);
	
	
	ft_putchar(10);
	ft_is_negative(p);
	ft_putchar(10);
	ft_is_negative(n);
}
