#include "microbenchmark.h"
#include "perf.h"

double (*benchmark_func)();
double ans;
double SPECIAL_MUL_DOUBLE;
double SPECIAL_DIV_DOUBLE;

void microbenchmark_mode (microbenchmark_mode_t mode)
{
    SPECIAL_DIV_DOUBLE = 2.0;
    uint64_t x = 0x0000000000000001;
    SPECIAL_MUL_DOUBLE = *((double*)&x);
    switch (mode) {
        case MUL_LATENCY:
        	benchmark_func = sp_mul_latency;
        	break;
        case MUL_THROUGHPUT:
            benchmark_func = sp_mul_tps;
            break;
        case DIV_LATENCY:
        	benchmark_func = sp_div_latency;
        	break;
        case DIV_THROUGHPUT:
            benchmark_func = sp_div_tps;
            break;
        case DIV2_LATENCY:
        	benchmark_func = dp_div_latency;
        	break;
        case DIV2_THROUGHPUT:
            benchmark_func = dp_div_tps;
            break;
        case MUL2_LATENCY:
        	benchmark_func = dp_mul_latency;
        	break;
        case MUL2_THROUGHPUT:
            benchmark_func = dp_mul_tps;
            break;
        default: break;
    }
}

double sp_mul_latency() {
    double a = 2.1;
    double b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        a = a*b;
    }
    return a;
}

double sp_mul_tps() {
	// printf("Hell\n");
	double a = 2.1;
    double b = 0.9999;
    double c = 2.3;
    double d = 2.7;
    double e = 2.5;
    double f = 2.8;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=5) {
        a = a*b;
        c = c*b;
        d = d*b;
        e = e*b;
        f = f*b;
    }
    return (a+c+d+e+f);
}

double sp_div_latency() {
    double a = 0.9999;
    double b = 1.99;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        b = b/a;
    }
    return b;
}

double sp_div_tps() {
    double a = 1.99;
    double c = 1.98;
    double b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=2) {
        a = a/b;
        c = c/b;
    }
    return (a+c);
}

double dp_mul_latency() {
    double a = 1.1;
    double b = SPECIAL_MUL_DOUBLE;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
       	b = b*a;
    }
    return  b;
}

double dp_mul_tps() {
    double a = 1.1;
    double c = 1.4;
    double d = 1.2;
    double e = 1.5;
    double f = 1.7;
    double g = 1.6;
    double b = SPECIAL_MUL_DOUBLE;
    double b1 = SPECIAL_MUL_DOUBLE;
    double b2 = SPECIAL_MUL_DOUBLE;
    double b3 = SPECIAL_MUL_DOUBLE;
    double b4 = SPECIAL_MUL_DOUBLE;
    double b5 = SPECIAL_MUL_DOUBLE;

    int i = 0;
    for(i=0; i<MAX_ITER; i+=6) {
       	b *= a;
       	b1 *= c;
       	b2 *= d;
       	b3 *= e;
       	b4 *= f;
       	b5 *= g;

    }
    return (b + b1 + b2 + b3 + b4 + b5);
}

double dp_div_latency() {
    double a = SPECIAL_DIV_DOUBLE;
    double b = 1e302;

    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        b = b/a;
    }
    return b;
}

double dp_div_tps() {
    double a = 1e202;
    double c = 1e201;
    double b = SPECIAL_DIV_DOUBLE;

    int i = 0;
    for(i=0; i<MAX_ITER; i+=2) {
        a = a/b;
        c = c/b;
    }
    return (a+c);
}

double microbenchmark_get_mul_latency()
{
   	cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    printf("Latency MUL %g\n", ans);
    cycles = cycles/MAX_ITER;
    return cycles;
}

throughput_t microbenchmark_get_mul_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    printf("TPS MUL %g\n", ans);
    cycles = cycles/MAX_ITER;
    throughput_t result;
    result.gap        = (double)cycles;
    result.throughput = 1 / result.gap;
    return result;
}

double microbenchmark_get_div_latency()
{
    cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    printf("Latency DIV %g\n", ans);
    cycles = cycles/MAX_ITER;
    return cycles;
}

throughput_t microbenchmark_get_div_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    printf("TPS DIV %g\n", ans);
    cycles = cycles/MAX_ITER;
    throughput_t result;
    result.gap        = (double)cycles;
    result.throughput = 1 / result.gap;
    return result;

}

