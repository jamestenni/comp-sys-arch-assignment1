#include "max.c"
#include <stdio.h>
#include <time.h>

int main() {
	int times = 1e9;
	int N = 10;
	double sum_time_used = 0; 
	int result;

	for (int i = 0; i < N; i++) {
		clock_t begin = clock();
		for (int j = 0; j < times; j++) {
			result = max1(2,3);
		}
		clock_t end = clock();

		double time_used = (double)(end-begin)/CLOCKS_PER_SEC;
		sum_time_used += time_used;
	}
	
	printf("Average Time used: %lf\n", (double) sum_time_used/N);
	return 0;
}