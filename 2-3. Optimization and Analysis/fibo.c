#include <stdio.h>
#include <time.h>

long fibo(long a) {
	if (a <= 0L) {
		return 0L;
	}
	if (a == 1L) {
		return 1L;
	}
	return fibo(a-1L)+fibo(a-2L);
}

int main (int argc, char *argv[]) {
	int N = 5;
	double sum_time_used = 0;

	for (int r = 1; r <= N; r++) {
		printf("\n----------Round #%i----------\n", r);

		clock_t begin = clock();
		for (long i = 1L; i < 45L; i++) {
			long f = fibo(i);
			printf("fibo of %ld is %ld\n", i, f);
		}
		clock_t end = clock();

		double time_used = (double)(end-begin)/CLOCKS_PER_SEC;
		printf("\n====> Time used: %lf s \n", time_used);
		sum_time_used += time_used;
	}

	printf("\n\n<=== Average Time used: %lf s! ===>\n\n", (double) sum_time_used/N);
}