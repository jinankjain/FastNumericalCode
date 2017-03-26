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
 *	                Markus Pueschel (pueschel@inf.ethz.ch)
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
#include "immintrin.h"

//write the AVX version here, like the SSE, try to optimize as much as possible
void comp_avx(double *C , double *A , double *B , int n){
	int i,j,k;
	for(i=0; i < n; i++){
		for(j=0; j < n; j++){
			__m256d sum = _mm256_setzero_pd();
			for(k=0; k < n; k+=4){
				// Load all the required A
				__m256d a1 = _mm256_load_pd(A+(n*i+k));
				__m256d a2 = _mm256_load_pd(A+(n*k+j));
				__m256d a3 = _mm256_load_pd(A+(n*(k+1)+j));
				__m256d a4 = _mm256_load_pd(A+(n*(k+2)+j));
				__m256d a5 = _mm256_load_pd(A+(n*(k+3)+j));
				__m256d a6 = _mm256_shuffle_pd(a2, a3, _MM_SHUFFLE(1,0,2,0));
				__m256d a7 = _mm256_shuffle_pd(a4, a5, _MM_SHUFFLE(1,0,2,0));
				__m256d a8 = _mm256_shuffle_pd(a6, a7, _MM_SHUFFLE(2,0,2,0));

				// Load all the required B
				__m256d b1 = _mm256_load_pd(B+(n*i+k));
				__m256d b2 = _mm256_load_pd(B+(n*k+j));
				__m256d b3 = _mm256_load_pd(B+n*(k+1)+j);
				__m256d b4 = _mm256_load_pd(B+n*(k+2)+j);
				__m256d b5 = _mm256_load_pd(B+n*(k+3)+j);
				__m256d b6 = _mm256_shuffle_pd(b2, b3, _MM_SHUFFLE(1,0,2,0));
				__m256d b7 = _mm256_shuffle_pd(b4, b5, _MM_SHUFFLE(1,0,2,0));
				__m256d b8 = _mm256_shuffle_pd(b6, b7, _MM_SHUFFLE(2,0,2,0));

				// Get mul results
				__m256d res1 = _mm256_mul_pd(a1, b8);
				__m256d res2 = _mm256_mul_pd(a8, b1);

				// Calculate min
				__m256d res3 = _mm256_min_pd (res1, res2);
				sum = _mm256_add_pd (sum, res3);
			}
			double temp[4];
			_mm256_store_pd(temp, sum);
			C[n*i+j] = temp[0]+temp[1]+temp[2]+temp[3];
		}
	}
}
