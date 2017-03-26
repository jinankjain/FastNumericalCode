#include "microbenchmark.h"
#include "perf.h"

double (*benchmark_func)(double a, double b);

static microbenchmark_mode_t benchmark_mode;
double arg1;
double arg2;
double ans;
uint64_t number_of_iterations;

void microbenchmark_mode (microbenchmark_mode_t mode)
{
    uint64_t x = 0x0000000000000001;
    number_of_iterations=MAX_ITER;

    benchmark_mode=mode;
    switch (mode) {
        case MUL_LATENCY:
            benchmark_func=mul_latency;
            arg1=1.2;
            arg2=0.9999;
            break;
        case MUL_THROUGHPUT:
            benchmark_func=mul_tps;
            arg1=1.2;
            arg2=0.9999;
            break;
        case DIV_LATENCY:
            benchmark_func=div_latency;
            arg1=1e32;
            arg2=1.0005;
            break;
        case DIV_THROUGHPUT:
            benchmark_func=div_tps;
            arg1=1e32;
            arg2=1.0005;
            break;
        case DIV2_LATENCY:
            benchmark_func=div_latency;
            arg1=1e200;
            arg2=2;
            break;
        case DIV2_THROUGHPUT:
            benchmark_func=div_tps;
            arg1=1e200;
            arg2=2;
            break;
        case MUL2_LATENCY:
            benchmark_func=mul_latency;
            arg1=*((double*)&x);
            arg2=-1.2;
            break;
        case MUL2_THROUGHPUT:
            benchmark_func=mul_tps;
            arg1=*((double*)&x);
            arg2=-1.2;
            break;
        default: break;
    }
}

double div_latency(double a, double b){
    int i=number_of_iterations;
    for(;i>0; --i){
        a=a/b;
    }
    return a+i;
}

double mul_latency(double a, double b){
    int i=number_of_iterations;
    for(;i>0; --i){
        a=a*b;
    }
    return a+i;
}

double div_tps(double a, double b){
    double a1=a;
    double a2=a-2;
    double a3=a-3;
    double a4=a-4;
    double a5=a-4;
    double a6=a-4;

    int i=number_of_iterations/6;
    for(;i>0; --i){
        a1=a1/b;
        a2=a2/b;
        a3=a3/b;
        a4=a4/b;
        a5=a5/b;
        a6=a6/b;
    }
    return a1+a2+a3+a4+a5+a6+i;
}

double mul_tps(double a, double b){
    double b1=b+.001;
    double b2=b+.002;
    double b3=b+.003;
    double b4=b+.004;
    double b5=b+.005;
    double b6=b+.006;

    double a1=a;
    double a2=a;
    double a3=a;
    double a4=a;
    double a5=a;
    double a6=a;


    int i=number_of_iterations/6;
    for(;i>0; --i){
        a1=a1*b1;
        a2=a2*b2;
        a3=a3*b3;
        a4=a4*b4;
        a5=a5*b5;
        a6=a6*b6;
    }
    double tmp=a1+a2+a3+a4+a5+a6;
    return a1+a2+a3+a4+a5+a6+i;
}

double microbenchmark_get_mul_latency()
{
    cycles_count_start ();
    ans = benchmark_func(arg1, arg2);
    int64_t cycles = cycles_count_stop ();
    return cycles/(double)number_of_iterations;
}

throughput_t microbenchmark_get_mul_throughput ()
{
    cycles_count_start ();
    ans = benchmark_func(arg1, arg2);
    int64_t cycles = cycles_count_stop ();
    throughput_t result;
    result.gap        = (double)cycles/(double)number_of_iterations;
    result.throughput = 1 / result.gap;
    return result;
}

double microbenchmark_get_div_latency()
{
    cycles_count_start ();
    ans = benchmark_func(arg1, arg2);
    int64_t cycles = cycles_count_stop ();
    return cycles/(double)number_of_iterations;
}

throughput_t microbenchmark_get_div_throughput ()
{
    cycles_count_start ();
    ans = benchmark_func(arg1, arg2);
    int64_t cycles = cycles_count_stop ();
    throughput_t result;
    result.gap        = (double)cycles/(double)number_of_iterations;
    result.throughput = 1 / result.gap;
    return result;
}
