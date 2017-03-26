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
#include "emmintrin.h"

// write the SSE version here, try to optimize it as much as possible
void comp_sse(double *C , double *A , double *B , int n){
	int i,j,k;
	for(i=0; i < n; i++){
		for(j=0; j < n; j++){
			__m128d sum =  _mm_setzero_pd();
			for(k=0; k < n; k+=2){
				
				// Load all the required A
				__m128d a1 = _mm_load_pd(A+(n*i+k));
				__m128d a2 = _mm_load_sd(A+(n*k+j));
				__m128d a3 = _mm_load_sd(A+(n*(k+1)+j));
				__m128d a4 = _mm_shuffle_pd(a2, a3, 0);

				// Load all the required B
				__m128d b1 = _mm_load_pd(B+(n*i+k));
				__m128d b2 = _mm_load_sd(B+(n*k+j));
				__m128d b3 = _mm_load_sd(B+n*(k+1)+j);
				__m128d b4 = _mm_shuffle_pd(b2, b3, 0);

				// Get mul results
				__m128d res1 = _mm_mul_pd(a1, b4);
				__m128d res2 = _mm_mul_pd(a4, b1);

				// Calculate min
				__m128d res3 = _mm_min_pd (res1, res2);
				sum = _mm_add_pd (sum, res3);
			}

			double temp[2];
			_mm_store_pd(temp, sum);
			C[n*i+j] = temp[0]+temp[1];
			
		}
	}
}
