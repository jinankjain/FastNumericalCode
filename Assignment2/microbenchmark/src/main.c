#include <stdio.h>
#include "perf.h"
#include "microbenchmark.h"


int main () {

    perf_init ();

    microbenchmark_mode(MUL_LATENCY);
    double mul_lat = microbenchmark_get_mul_latency();

    microbenchmark_mode(MUL_THROUGHPUT);
    throughput_t mul_tp = microbenchmark_get_mul_throughput();

    microbenchmark_mode(DIV_LATENCY);
    double div_lat = microbenchmark_get_div_latency();

    microbenchmark_mode(DIV_THROUGHPUT);
    throughput_t div_tp = microbenchmark_get_div_throughput();

    microbenchmark_mode(MUL2_LATENCY);
    double mul2_lat = microbenchmark_get_mul_latency();

    microbenchmark_mode(MUL2_THROUGHPUT);
    throughput_t mul2_tp = microbenchmark_get_mul_throughput();

    microbenchmark_mode(DIV2_LATENCY);
    double div2_lat = microbenchmark_get_div_latency();

    microbenchmark_mode(DIV2_THROUGHPUT);
    throughput_t div2_tp = microbenchmark_get_div_throughput();


    printf("Measured mul latency     : %lf cycles\n", mul_lat);
    printf("Measured mul throughput  : %lf cycles\n", mul_tp.throughput);
    printf("Measured mul gap         : %lf cycles\n", mul_tp.gap);
    printf("\n");

    printf("Measured div latency     : %lf cycles\n", div_lat);
    printf("Measured div throughput  : %lf cycles\n", div_tp.throughput);
    printf("Measured div gap         : %lf cycles\n", div_tp.gap);
    printf("\n");

    printf("Measured mul2 latency    : %lf cycles\n", mul2_lat);
    printf("Measured mul2 throughput : %lf cycles\n", mul2_tp.throughput);
    printf("Measured mul2 gap        : %lf cycles\n", mul2_tp.gap);
    printf("\n");

    printf("Measured div2 latency    : %lf cycles\n", div2_lat);
    printf("Measured div2 throughput : %lf cycles\n", div2_tp.throughput);
    printf("Measured div2 gap        : %lf cycles\n", div2_tp.gap);
    printf("\n");


    perf_done();

    return 0;
}