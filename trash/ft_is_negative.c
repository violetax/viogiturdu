/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_negative.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: viogonza <viogonza@student.42urduliz.fr>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/07 15:14:46 by viogonza          #+#    #+#             */
/*   Updated: 2022/07/08 15:11:45 by viogonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdio.h>
#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_is_negative(int n)
{
		if (n < 0)
		{
			ft_putchar('N');
		}
		else
		{
			ft_putchar('P');
		}
}

int main() {

    int a = 2147483640;
    int b = -2147483640;
	int rest = 0;


    while ( a>=0 && b<=0 )
    {
			rest = a - b;
            ft_is_negative(b);
			printf("%d\n",b);
            a++;
            b--;
    }
}
