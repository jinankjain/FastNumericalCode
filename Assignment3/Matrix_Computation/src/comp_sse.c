/**
 *      _________   _____________________  ____  ______
 *     / ____/   | / ___/_  __/ ____/ __ \/ __ \/ ____/
 *    / /_  / /| | \__ \ / / / /   / / / / / / / __/
 *   / __/ / ___ |___/ // / / /___/ /_/ / /_/ / /___
 *  /_/   /_/  |_/____//_/  \____/\____/_____/_____/
 *
 *  http://www.inf.ethz.ch/personal/markusp/teaching/
 *  How to Write Fast Numerical Code 263-2300 - ETH Zurich
 *  Copyright (C) 2017  Alen Stojanov   (astojanov@inf.ethz.ch)
 *                      Gagandeep Singh (gsingh@inf.ethz.ch)
 *                      Georg Ofenbeck  (ofenbeck@inf.ethz.ch)
 *	                	Markus Pueschel (pueschel@inf.ethz.ch)
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see http://www.gnu.org/licenses/.
 */

#include "comp.h"
#include "emmintrin.h"
#include "pmmintrin.h"

// write the SSE version here, try to optimize it as much as possible
void comp_sse(double *C , double *A , double *B , int n){
	int i,j,k;
	__m128d tmp1, tmp2, tmp3, tmp4;
	__m128d zero =  _mm_setzero_pd();

	for(i=0; i < n; i+=2){
		for(j=0; j < n; j+=2){
			__m128d sum1 =  _mm_setzero_pd();
			__m128d sum2 =  _mm_setzero_pd();
			__m128d sum3 =  _mm_setzero_pd();
			__m128d sum4 =  _mm_setzero_pd();
			for(k=0; k < n; k+=2){
				// Load 2 rows of A
				__m128d a1 = _mm_load_pd(A+(n*i+k));
				__m128d a4 = _mm_load_pd(A+(n*(i+1)+k));

				// Load 2 rows of B
				__m128d b1 = _mm_load_pd(B+(n*i+k));
				__m128d b4 = _mm_load_pd(B+(n*(i+1)+k));
				
				// Load 2 cols of B
				__m128d b2 = _mm_load_pd(B+(n*k+j));
				__m128d b3 = _mm_load_pd(B+n*(k+1)+j);
				tmp1 = _mm_unpacklo_pd(b2, b3);
				tmp2 = _mm_unpackhi_pd(b2, b3);

				// Load 2 cols of A
				__m128d a2 = _mm_load_pd(A+(n*k+j));
				__m128d a3 = _mm_load_pd(A+(n*(k+1)+j));
				tmp3 = _mm_unpacklo_pd(a2, a3);
				tmp4 = _mm_unpackhi_pd(a2, a3);

				__m128d res1 = _mm_mul_pd(a1, tmp1);
				__m128d res2 = _mm_mul_pd(a1, tmp2);
				__m128d res3 = _mm_mul_pd(a4, tmp1);
				__m128d res4 = _mm_mul_pd(a4, tmp2);

				__m128d res5 = _mm_mul_pd(b1, tmp3);
				__m128d res6 = _mm_mul_pd(b1, tmp4);
				__m128d res7 = _mm_mul_pd(b4, tmp3);
				__m128d res8 = _mm_mul_pd(b4, tmp4);
				
				__m128d res9  = _mm_min_pd(res1, res5);
				__m128d res10 = _mm_min_pd(res2, res6);
				__m128d res11 = _mm_min_pd(res3, res7);
				__m128d res12 = _mm_min_pd(res4, res8);

				sum1 = _mm_add_pd(sum1,  res9);
				sum2 = _mm_add_pd(sum2, res10);
				sum3 = _mm_add_pd(sum3, res11);
				sum4 = _mm_add_pd(sum4, res12);
			}
			sum1 = _mm_hadd_pd(sum1, zero);
			sum2 = _mm_hadd_pd(sum2, zero);
			sum3 = _mm_hadd_pd(sum3, zero);
			sum4 = _mm_hadd_pd(sum4, zero);
			_mm_store_sd(C+n*i+j, sum1);
			_mm_store_sd(C+n*i+j+1, sum2);
			_mm_store_sd(C+n*(i+1)+j, sum3);
			_mm_store_sd(C+n*(i+1)+j+1, sum4);
		}
	}
}
