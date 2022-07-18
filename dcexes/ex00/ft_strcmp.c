#include <stdio.h>
#include <unistd.h>
 
unsigned int	get_legth(char *s1)
{
	char            *p;
	unsigned int    i;

	p = s1;
	i = 0;
	while (p[0] != '\0')
	{
		i++;
		p++;
	}
	return (i);
}

int ft_strcmp(char *s1, char *s2)
{
	// returns an integer indicating the result of the comparison
	// 0, if the s1 and s2 are equal
	// negative value if s1 is less than s2
	// positive value if s1 is greater than s2
	// strncmp () is similar except only compares the first (at most) n bytes
	char			*p;
	unsigned int	len1; 
	unsigned int	len2; 

	len1 = get_legth(s1);
	len2 = get_legth(s2);

	if (len1 > len2)
		return (1);
	else if (len1 < len2)
		return (-1);
	else
		return (0);
}

int main(void)
{
	char			*s1;
	char			*s2;
	char			*s3;
	int				i;

	s1 = "uno dos y tres";
	s2 = "uno";
	s3 = "dos";
	
	i = ft_strcmp(s2, s1);
	printf("'%s' mas larga que '%s', retorna '1' → %d\n", s1, s2);
	i = ft_strcmp(s1, s2);
	printf("'%s' mas corta que '%s', retorna '-1' → %d\n", s2, s1);
	i = ft_strcmp(s3, s2);
	printf("'%s' igual a '%s', retorna '0' → %d\n", s2, s3);
	return (0);
}
