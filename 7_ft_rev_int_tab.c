//https://stackoverflow.com/questions/17381867/declaring-arrays-in-c-language-without-initial-size

#include <stdio.h>
void	ft_rev_int_tab(int *tab, int size)
{
	int	p[] = {0};
	int			i;

	i = 0;
	size--;
	while (size >= 0)
	{
		printf("p[i] %d\n",p[i]);
		printf("i %d\n",i);
		printf("tab[size] %d\n",tab[size]);
		printf("%d\n",size);
		p[i] = tab[size];
		i++;
		size--;
	}
// output → 
//
// ./a.out
//p[i] 0
//i 0
//tab[size] 4
//3
//p[i] 1
//i 1
//tab[size] 3
//2
//p[i] 190308925
//i 4
//tab[size] 2
//1
//p[i] 21945
//i 5
//tab[size] 1
//0
//Segmentation fault
//
	//
//	i = 0;
//	size = 4;
//    while (i < size)
//    {
//        printf("p\t→ %d\n",p[i]);
//        i++;
//    }
//	i = 0;
//	printf("----\n");
//    while (i < size)
//    {
//        printf("tab\t→ %d\n",tab[i]);
//        i++;
//    }
}
int main() {

    int tab[] = {1, 2, 3, 4};
//    int *p;
    int size;
//    int i;
//
//    p = tab;
//    i = 0;
    size = 4;

    ft_rev_int_tab(tab, size);

return 0;
}
