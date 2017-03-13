#include "microbenchmark.h"
#include "perf.h"
#define SPECIAL 1

int (*benchmark_func)();
int ans;

void microbenchmark_mode (microbenchmark_mode_t mode)
{
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

int sp_mul_latency() {
    float a = 2.1;
    float b;
    if(SPECIAL)
        b = 1;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        a = a*b;
    }
    return (int ) a;
    //printf("%f\n", a);
}

int sp_mul_tps() {
	// printf("Hell\n");
	float a = 2.1;
    float b;
    float c = 2.3;
    float d = 2.7;
    float e = 2.5;
    float f = 2.8;
    if(SPECIAL)
        b = 1;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=5) {
        a = a*b;
        c = c*b;
        d = d*b;
        e = e*b;
        f = f*b;
    }
    return (int ) (a+c+d+e+f);
}

int sp_div_latency() {
    float a = 1.99;
    float b;
    if(SPECIAL)
        b = 2.0;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        a = a/b;
    }
    return (int) a;
}

int sp_div_tps() {
    float a = 1.99;
    float c = 1.98;
    float b;
    if(SPECIAL)
        b = 2.0;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=2) {
        a = a/b;
        c = c/b;
    }
    return (int) (a+c);
}

int dp_mul_latency() {
    double a = 2.1;
    double b;
    if(SPECIAL)
        b = 0x0000000000000001;
    else
    	b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
       	a *= b;
    }
    return (int) a;
}

int dp_mul_tps() {
    double a = 2.1;
    double c = 2.4;
    double d = 2.2;
    double e = 2.5;
    double f = 2.7;
    double g = 2.6;
    double h = 2.8;
    double q = 2.9;
    double j = 3.1;
    double p = 3.2;
    double b;
    if(SPECIAL)
        b = 0x0000000000000001;
    else
    	b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=10) {
       	a *= b;
       	c *= b;
       	d *= b;
       	e *= b;
       	f *= b;
       	g *= b;
       	h *= b;
       	q *= b;
       	j *= b;
       	p *= b;
    }
    return (int) (a+c+d+e+f+g+h+q+j+p);
}

int dp_div_latency() {
    double a = 2.2;
    double b;
    if(SPECIAL)
        b = 2.0;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        a = a/b;
    }
    return (int) a;
}

int dp_div_tps() {
    double a = 2.2;
    double c = 2.4;
    double b;
    if(SPECIAL)
        b = 2.0;
    else
        b = 0.9999;
    int i = 0;
    for(i=0; i<MAX_ITER; i+=2) {
        a = a/b;
        c = c/b;
    }
    return (int) (a+c);
}

double microbenchmark_get_mul_latency()
{
   	cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    cycles = cycles/MAX_ITER;
    return cycles;
}

throughput_t microbenchmark_get_mul_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
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
    cycles = cycles/MAX_ITER;
    return cycles;
}

throughput_t microbenchmark_get_div_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    ans = benchmark_func();
    double cycles = cycles_count_stop ();
    cycles = cycles/MAX_ITER;
    throughput_t result;
    result.gap        = (double)cycles;
    result.throughput = 1 / result.gap;
    return result;

}

