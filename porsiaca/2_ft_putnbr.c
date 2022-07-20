#include <stdio.h>
#include <unistd.h>

int	getlength(int nb)
{
	unsigned int	 len;

	len = 0;
	while (nb)
	{
		nb = nb/10;
		len++;
	}
	return (len);
}

int	getmod(int len)
{
	unsigned int	 mod;

	mod = 1;
	while (len)
	{
		mod = mod * 10;
		len--;
	}
	return (mod);
}

void	ft_putnbr(int nb)
{
	int					i;
	int					len;	
	int					mod;
	char				c;
	unsigned char		minus;

	minus = '-';
	if (nb < 0)
	{
		nb = nb * -1;
		write(1, &minus, 1);
	}
	len = getlength(nb);
	i = getmod(len);
	while (len)
	{
		mod = nb % i;
		if (mod > 10)
			mod = mod / (i / 10);
		i = i / 10;
		c = mod + '0';
		write(1, &c, 1);
		len--;
	}
}

int main(void)
{
	int	num1;
	int	num2;

	num1 = 15987653;
	num2 = -89547;

	ft_putnbr(num1);
	printf("\n");
	ft_putnbr(num2);

	return (0);
}
