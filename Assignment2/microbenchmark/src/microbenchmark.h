#ifndef MICROBENCHMARK_H
#define MICROBENCHMARK_H
#define MAX_ITER 1000

typedef enum {
    MUL_LATENCY,
    MUL_THROUGHPUT,
    DIV_LATENCY,
    DIV_THROUGHPUT,
    DIV2_LATENCY,
    DIV2_THROUGHPUT,
    MUL2_LATENCY,
    MUL2_THROUGHPUT
} microbenchmark_mode_t;

typedef struct {
    double throughput;
    double gap;
} throughput_t;

void          microbenchmark_mode               (microbenchmark_mode_t mode);
double        microbenchmark_get_mul_latency    ();
throughput_t  microbenchmark_get_mul_throughput ();
double        microbenchmark_get_div_latency    ();
throughput_t  microbenchmark_get_div_throughput ();

double sp_mul_latency();
double sp_div_latency();
double dp_mul_latency();
double dp_div_latency();
double sp_mul_tps();
double sp_div_tps();
double dp_mul_tps();
double dp_div_tps();

#endif /* MICROBENCHMARK_H */
