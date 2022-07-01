#include <stdio.h>

char write(int x, char *a, int y)
{
	scanf("%c", &a);
	printf("%c",a);
}

int main() {
	char a = 'z';
	write(1, &a, 1);
}
