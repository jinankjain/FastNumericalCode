//#error Please comment out the next two lines under linux, then comment this error
//#include "stdafx.h" //Visual studio expects this line to be the first one, comment out if different compiler
//#include <windows.h> // Include if under windows

#ifndef WIN32
#include <sys/time.h>
#endif
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <time.h>

#include "tsc_x86.h"

#define NUM_RUNS 1
#define CYCLES_REQUIRED 1e8
#define FREQUENCY 2.2e9
#define CALIBRATE

uint64_t n;
double *U, *X, *Y, *Z;

double randDouble()
{
  double out;
  out = (double)rand()/(RAND_MAX); //each iteration produces a number in [0, 1)
  out = (rand() + out)/RAND_MAX;
  out = (rand() + out)/RAND_MAX;
  out = (rand() + out)/RAND_MAX;
  out = (rand() + out)/RAND_MAX;
  out = (rand() + out)/RAND_MAX;

  return out;
}

/******
	Initialize the input
******/

void init_mat(double * m){
  uint64_t i,j;
  for(i =0; i<n;i++) {
		m[i] = randDouble()*5+1.0;
  }
}

void print_mat(double *m){
	unsigned short int i,j;
	for(i=0; i < n; i++){
		for(j=0; j < n; j++){
			printf("%g ",m[n*i+j]);
		}
		printf("\n");
	}
}

double babs ( double x);
inline double babs ( double x) {
  union { uint64_t i; double d; } u = { .d = x };
  u.i = u.i & 0x7FFFFFFFFFFFFFFF ;
  return u.d;
}

/* 
 * Straightforward implementation of Matrix Multiplication
 * 
 */

void compute() {
  uint64_t i = 0;
  for(i=0; i<n; i++) {
    Z[i]+=X[i]*Y[i]+U[i]*Y[i]+X[i]*Z[i]+babs(U[i]*X[i]);
  }
}

/* 
 * Timing function based on the TimeStep Counter of the CPU.
 */

double rdtsc() {
  int i, num_runs;
  myInt64 cycles;
  myInt64 start;
  num_runs = NUM_RUNS;

/* 
 * The CPUID instruction serializes the pipeline.
 * Using it, we can create execution barriers around the code we want to time.
 * The calibrate section is used to make the computation large enough so as to 
 * avoid measurements bias due to the timing overhead.
 */
#ifdef CALIBRATE
  while(num_runs < (1 << 14)) {
      start = start_tsc();
      for (i = 0; i < num_runs; ++i) {
          compute();
      }
      cycles = stop_tsc(start);

      if(cycles >= CYCLES_REQUIRED) break;

      num_runs *= 2;
  }
#endif

  start = start_tsc();
  for (i = 0; i < num_runs; ++i) {
    compute();
  }

  cycles = stop_tsc(start)/num_runs;
  return cycles;
}

double c_clock() {
  int i, num_runs;
  double cycles;
  clock_t start, end;

  num_runs = NUM_RUNS;
#ifdef CALIBRATE
  while(num_runs < (1 << 14)) {
      start = clock();
      for (i = 0; i < num_runs; ++i) {
          compute();
      }
      end = clock();

      cycles = (double)(end-start);

      // Same as in c_clock: CYCLES_REQUIRED should be expressed accordingly to the order of magnitude of CLOCKS_PER_SEC
      if(cycles >= CYCLES_REQUIRED/(FREQUENCY/CLOCKS_PER_SEC)) break;

      num_runs *= 2;
  }
#endif

  start = clock();
  for(i=0; i<num_runs; ++i)
    { compute(); }
  end = clock();

  return (double)(end-start)/num_runs;
}

#ifndef WIN32
double timeofday() {
  int i, num_runs;
  double cycles;
  struct timeval start, end;

  num_runs = NUM_RUNS;
#ifdef CALIBRATE
  while(num_runs < (1 << 14)) {
      gettimeofday(&start, NULL);
      for (i = 0; i < num_runs; ++i) {
          compute();
      }
      gettimeofday(&end, NULL);

      cycles = (double)((end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1e6)*FREQUENCY;

      if(cycles >= CYCLES_REQUIRED) break;

      num_runs *= 2;
  }
#endif

  gettimeofday(&start, NULL);
  for(i=0; i < num_runs; ++i) {
    compute(); 
  }
  gettimeofday(&end, NULL);
  
  return (double)((end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1e6)/ num_runs;
}

#else

double gettickcount() {
  int i, num_runs;
  double cycles, start, end;

  num_runs = NUM_RUNS;
#ifdef CALIBRATE
  while(num_runs < (1 << 14)) {
      start = (double)GetTickCount();
      for (i = 0; i < num_runs; ++i) {
          compute();
      }
      end = (double)GetTickCount();

      cycles = (end-start)*FREQUENCY/1e3; // end-start provides a measurement in the order of milliseconds

      if(cycles >= CYCLES_REQUIRED) break;

      num_runs *= 2;
  }
#endif

  start = (double)GetTickCount();
  for(i=0; i < num_runs; ++i) {
    compute(); 
  }
  end = (double)GetTickCount();

  return (end-start)/num_runs;
}

double queryperfcounter(LARGE_INTEGER f) {
  int i, num_runs;
  double cycles;
  LARGE_INTEGER start, end;

  num_runs = NUM_RUNS;
#ifdef CALIBRATE
  while(num_runs < (1 << 14)) {
      QueryPerformanceCounter(&start);
      for (i = 0; i < num_runs; ++i) {
          compute();
      }
      QueryPerformanceCounter(&end);

      cycles = (double)(end.QuadPart - start.QuadPart);
      
      // Same as in c_clock: CYCLES_REQUIRED should be expressed accordingly to the order of magnitude of f
      if(cycles >= CYCLES_REQUIRED/(FREQUENCY/f.QuadPart)) break; 

      num_runs *= 2;
  }
#endif

  QueryPerformanceCounter(&start);
  for(i=0; i < num_runs; ++i) {
    compute(); 
  }
  QueryPerformanceCounter(&end);

  return (double)(end.QuadPart - start.QuadPart)/num_runs;
}

#endif

int main(int argc, char **argv){

  int i;
  double r;
  double c;
  double t;
#ifdef WIN32  
  LARGE_INTEGER f;
#endif
  double p;
  if (argc!=2) {printf("usage: FW <n>\n"); return -1;}
  n = 1<<atoi(argv[1]);
  printf("n=%d \n",n);
  U = (double *)malloc(n*sizeof(double));
  X = (double *)malloc(n*sizeof(double));
  Y = (double *)malloc(n*sizeof(double));
  Z = (double *)malloc(n*sizeof(double));
  
  init_mat(U);
  init_mat(X);
  init_mat(Y);
  init_mat(Z);
  
  r = rdtsc();
  printf("RDTSC instruction:\n %lf cycles measured => %lf seconds, assuming frequency is %lf MHz. (change in source file if different)\n\n", r, r/(FREQUENCY), (FREQUENCY)/1e6);
   
 
  c = c_clock();
  printf("C clock() function:\n %lf cycles measured. On some systems, this number seems to be actually computed from a timer in seconds then transformed into clock ticks using the variable CLOCKS_PER_SEC. Unfortunately, it appears that CLOCKS_PER_SEC is sometimes set improperly. (According to this variable, your computer should be running at %lf MHz). In any case, dividing by this value should give a correct timing: %lf seconds. \n\n",c, (double) CLOCKS_PER_SEC/1e6, c/CLOCKS_PER_SEC);

  
#ifndef WIN32
  t = timeofday();
  printf("C gettimeofday() function:\n %lf seconds measured\n\n",t);
#else
  t = gettickcount();
  printf("Windows getTickCount() function:\n %lf milliseconds measured\n\n",t);

  QueryPerformanceFrequency((LARGE_INTEGER *)&f);

  p = queryperfcounter(f);
  printf("Windows QueryPerformanceCounter() function:\n %lf cycles measured => %lf seconds, with reported CPU frequency %lf MHz\n\n",p,p/f.QuadPart,(double)f.QuadPart/1000);
#endif

  
  return 0;
}

