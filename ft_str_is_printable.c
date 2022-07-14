int	ft_str_is_printable(char *str)
{
	unsigned int	i;  
	unsigned char	c;
	char			*p;

	p = str;
	while (p[0] != '\0')
	{   
		if ( c >= 0x20 && c <= 0x7e )
			return 1;
		return 0;
	}   
	return (1);
}
