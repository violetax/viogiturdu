void	ft_putstr(char *str)
{
	unsigned int	 i;

	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}
}	
