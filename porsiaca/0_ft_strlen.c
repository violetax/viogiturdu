#include <stdio.h>
#include <unistd.h>

int	ft_strlen(char *str)
{
	unsigned int	i;
	
	i = 0;
	while (str[i])
		i++;
	return (i);
}

int main() {
	char	str[]= "una abeja bajo el sol";

	printf("str length →  %d\n", ft_strlen(str));

}
