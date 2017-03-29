/*
 * MVM 10x10
 */

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

#include <x86intrin.h>
#include "immintrin.h"

#include "utils.h"
#include "rdtsc.h"


// Procedure mvm10: Serial code (do not need to modify)

void vec_mvm10(float const * A, float const * x, float * y) {
  __m256 zero = _mm256_setzero_ps();
  __m256 x1_1 = _mm256_load_ps(x);
  __m256i mask1 = _mm256_set_epi32(0,0,0,0,0,0,0xFFFFFFFF,0xFFFFFFFF);
  __m256i store_mask = _mm256_set_epi32(0,0,0,0,0,0,0,0xFFFFFFFF);
  __m256 x1_2 = _mm256_maskload_ps(x+8, mask1);

  for(int i = 0; i < 10; i++) {
      __m256 res1_1 = _mm256_setzero_ps();
      __m256 res1_2 = _mm256_setzero_ps();

      __m256 A1_1 = _mm256_load_ps(A+10*i);
      __m256 A1_2 = _mm256_maskload_ps(A+10*i+8, mask1);

      res1_1 = _mm256_mul_ps(x1_1, A1_1);
      res1_2 = _mm256_mul_ps(x1_2, A1_2);
      
      __m256 res1_3 = _mm256_hadd_ps(res1_1, res1_2);
  
      res1_3 = _mm256_hadd_ps(res1_3, zero);
      res1_3 = _mm256_hadd_ps(res1_3, zero);
      float tmp[8];
      _mm256_store_ps(tmp, res1_3);
      y[i] = tmp[0]+tmp[4];
  }
}


// Procedure vec_mvm10: vector code
// Implement WITHOUT unaligned instructions
 
void mvm10(float const * A, float const * x, float * y) {
	//your code comes in here	
	for (int i = 0; i < 10; i++) {
		float t = 0.f;
		for (int j = 0; j < 10; j++)
			t += A[i * 10 + j] * x[j];
		y[i] = t;
	}
}




/*
 * Do not need to modify from here on
 */

#define RUNS     400
#define CYCLES_REQUIRED 1e7

void verify(float const * A, float const * x, float const * y)
{
  float * temp = (float *) _mm_malloc(sizeof(float)*10, 32);
  setzero(temp, 10, 1);
  printf("Verifying\n");
  for(int i = 0; i < 10; i++) {
      for(int j = 0; j < 10; j++)
        temp[i] += A[i*10+j]*x[j];
      double err = fabs(y[i] - temp[i]);
      if(err > 1E-5)
        {
          printf("Error at y[%d] %g\n", i, temp[i]);
        }
  }

  _mm_free(temp);

}

void test_vec_mvm10(float const * A, float const * x, float * y)
{
  tsc_counter start, end;
  double cycles = 0.;
  size_t num_runs = RUNS;

  //Cache warm-up
  // RDTSCP reads ts register guaranteeing that the execution of all the code
  // we wanted to measure is completed. This way we avoid including the
  // execution of a CPUID in between. The last CPUID guarantees no other
  // instruction can be scheduled before it (and so also before RDTSCP)

  CPUID(); RDTSC(start); CPUID(); RDTSC(end);
  CPUID(); RDTSC(start); CPUID(); RDTSC(end);
  CPUID(); RDTSC(start); CPUID(); RDTSC(end);

  while(1) {
      CPUID(); RDTSC(start);
      for (int i = 0; i < num_runs; ++i) {
          vec_mvm10(A, x, y);
      }
      CPUID(); RDTSC(end);

      cycles = (double)(COUNTER_DIFF(end, start));

      if(cycles >= CYCLES_REQUIRED) break;

      num_runs *= 2;

  }

  CPUID(); RDTSC(start);
  for (int i = 0; i < num_runs; ++i) {
      vec_mvm10(A, x, y);
  }
  CPUID(); RDTSC(end);

  cycles = (double)(COUNTER_DIFF(end, start))/num_runs;

  printf("Test vec_mvm10  - Performance [flops/cycle]: %f\n", 190/cycles);

#ifdef VERIFY
  verify(A, x, y);
#endif

}


int main()
{
  float * A = (float *) _mm_malloc(sizeof(float)*10*10, 32);
  float * x = (float *) _mm_malloc(sizeof(float)*10, 32);
  float * y = (float *) _mm_malloc(sizeof(float)*10, 32);

  setrandom(A, 10, 10);
  setrandom(x, 10, 1);

  test_vec_mvm10(A, x, y);

  return 0;
}
