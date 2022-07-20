#include <stdio.h>
#include <unistd.h>

void	ft_putstr(char *str)
{
	unsigned int	 i;

	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}
}	

int main(void)
{
	char	str[] = "verano 2022";

	ft_putstr(str);
	return (0);
}
