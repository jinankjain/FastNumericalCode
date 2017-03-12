#include "microbenchmark.h"
#include "perf.h"
#define SPECIAL 0

void (*benchmark_func)();

void microbenchmark_mode (microbenchmark_mode_t mode)
{
    switch (mode) {
        case MUL_LATENCY:
        case MUL_THROUGHPUT:
            benchmark_func = sp_mul;
            break;
        case DIV_LATENCY:
        case DIV_THROUGHPUT:
            benchmark_func = sp_div;
            break;
        case DIV2_LATENCY:
        case DIV2_THROUGHPUT:
            benchmark_func = dp_div;
            break;
        case MUL2_LATENCY:
        case MUL2_THROUGHPUT:
            benchmark_func = dp_mul;
            break;
        default: break;
    }
}

void sp_mul() {
    float a = rand();
    float b;
    if(SPECIAL)
        b = 0x0000000000000001;
    else
        b = rand();
    float c;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        c = a*b;
    }
}

void sp_div() {
    float a = rand();
    float b;
    if(SPECIAL)
        b = 2.0;
    else
        b = rand();
    float c;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        c = a/b;
    }
}

void dp_mul() {
    double a = rand();
    double b;
    if(SPECIAL)
        b = 0x0000000000000001;
    else
        b = rand();
    double c;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        c = a*b;
    }
}

void dp_div() {
    double a = rand();
    double b;
    if(SPECIAL)
        b = 2.0;
    else
        b = rand();
    double c;
    int i = 0;
    for(i=0; i<MAX_ITER; i++) {
        c = a/b;
    }
}

double microbenchmark_get_mul_latency()
{
    cycles_count_start ();
    // Your benchmark goes here
    benchmark_func();
    int64_t cycles = cycles_count_stop ();
    return cycles;
}

throughput_t microbenchmark_get_mul_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    benchmark_func();
    int64_t cycles = cycles_count_stop ();

    throughput_t result;
    result.gap        = (double)cycles;
    result.throughput = 1 / result.gap;
    return result;
}

double microbenchmark_get_div_latency()
{
    cycles_count_start ();
    // Your benchmark goes here
    benchmark_func();
    int64_t cycles = cycles_count_stop ();
    return cycles;
}

throughput_t microbenchmark_get_div_throughput ()
{
    cycles_count_start ();
    // Your benchmark goes here
    benchmark_func();
    int64_t cycles = cycles_count_stop ();

    throughput_t result;
    result.gap        = (double)cycles;
    result.throughput = 1 / result.gap;
    return result;

}

