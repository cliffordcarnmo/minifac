#include <stdio.h>
#include <stdlib.h>

void factorial(unsigned int number) {
	static unsigned int result = 1;
	number >= 1 ? result *= number, factorial(--number) : 0;
	printf(number == 1 ? "%u\n" : "", result);
}

int main(int argc, char *argv[]){
	argc == 2 ? factorial(atoi(argv[1])) : 0;
	return 0;
}
