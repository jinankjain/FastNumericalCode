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

#define _MM256_TRANSPOSE4_PD(row0, row1, row2, row3) {\
	tmp0 = _mm256_unpacklo_pd(row0, row1);\
	tmp2 = _mm256_unpacklo_pd(row2, row3);\
	tmp1 = _mm256_unpackhi_pd(row0, row1);\
	tmp3 = _mm256_unpackhi_pd(row2, row3);\
	row0 = _mm256_permute2f128_pd(tmp0, tmp2, 0x20);\
	row1 = _mm256_permute2f128_pd(tmp2, tmp0, 0x13);\
	row2 = _mm256_permute2f128_pd(tmp1, tmp3, 0x20);\
	row3 = _mm256_permute2f128_pd(tmp3, tmp1, 0x13);\
}

//write the AVX version here, like the SSE, try to optimize as much as possible
void comp_avx(double *C , double *A , double *B , int n){
	int i,j,k;
	__m256d tmp0, tmp1, tmp2, tmp3;
	__m256d zero =  _mm256_setzero_pd();
	for(i=0; i < n; i+=4){
		for(j=0; j < n; j+=4){
			__m256d sum1 =  _mm256_setzero_pd();
			__m256d sum2 =  _mm256_setzero_pd();
			__m256d sum3 =  _mm256_setzero_pd();
			__m256d sum4 =  _mm256_setzero_pd();
			__m256d sum5 =  _mm256_setzero_pd();
			__m256d sum6 =  _mm256_setzero_pd();
			__m256d sum7 =  _mm256_setzero_pd();
			__m256d sum8 =  _mm256_setzero_pd();
			__m256d sum9 =  _mm256_setzero_pd();
			__m256d sum10 =  _mm256_setzero_pd();
			__m256d sum11 =  _mm256_setzero_pd();
			__m256d sum12 =  _mm256_setzero_pd();
			__m256d sum13 =  _mm256_setzero_pd();
			__m256d sum14 =  _mm256_setzero_pd();
			__m256d sum15 =  _mm256_setzero_pd();
			__m256d sum16 =  _mm256_setzero_pd();
			for(k=0; k < n; k+=4){
				// Load all the required A and B
				__m256d b1 = _mm256_load_pd(B+(n*i+k));
				__m256d b2 = _mm256_load_pd(B+(n*(i+1)+k));
				__m256d b3 = _mm256_load_pd(B+(n*(i+2)+k));
				__m256d b4 = _mm256_load_pd(B+(n*(i+3)+k));

				__m256d a1 = _mm256_load_pd(A+(n*k+j));
				__m256d a2 = _mm256_load_pd(A+(n*(k+1)+j));
				__m256d a3 = _mm256_load_pd(A+(n*(k+2)+j));
				__m256d a4 = _mm256_load_pd(A+(n*(k+3)+j));
				_MM256_TRANSPOSE4_PD(a1, a2, a3, a4)

				// Get mul results
				__m256d res1 = _mm256_mul_pd(b1, a1);
				__m256d res2 = _mm256_mul_pd(b1, a2);
				__m256d res3 = _mm256_mul_pd(b1, a3);
				__m256d res4 = _mm256_mul_pd(b1, a4);
				__m256d res5 = _mm256_mul_pd(b2, a1);
				__m256d res6 = _mm256_mul_pd(b2, a2);
				__m256d res7 = _mm256_mul_pd(b2, a3);
				__m256d res8 = _mm256_mul_pd(b2, a4);
				__m256d res9 = _mm256_mul_pd(b3, a1);
				__m256d res10 = _mm256_mul_pd(b3, a2);
				__m256d res11 = _mm256_mul_pd(b3, a3);
				__m256d res12 = _mm256_mul_pd(b3, a4);
				__m256d res13 = _mm256_mul_pd(b4, a1);
				__m256d res14 = _mm256_mul_pd(b4, a2);
				__m256d res15 = _mm256_mul_pd(b4, a3);
				__m256d res16 = _mm256_mul_pd(b4, a4);

				// Load all the required A and B
				__m256d a5 = _mm256_load_pd(A+(n*i+k));
				__m256d a6 = _mm256_load_pd(A+(n*i+k));
				__m256d a7 = _mm256_load_pd(A+(n*i+k));
				__m256d a8 = _mm256_load_pd(A+(n*i+k));

				__m256d b5 = _mm256_load_pd(B+(n*k+j));
				__m256d b6 = _mm256_load_pd(B+n*(k+1)+j);
				__m256d b7 = _mm256_load_pd(B+n*(k+2)+j);
				__m256d b8 = _mm256_load_pd(B+n*(k+3)+j);
				_MM256_TRANSPOSE4_PD(b5, b6, b7, b8)

				__m256d res1_1 = _mm256_mul_pd(a5, b5);
				__m256d res2_1 = _mm256_mul_pd(a5, b6);
				__m256d res3_1 = _mm256_mul_pd(a5, b7);
				__m256d res4_1 = _mm256_mul_pd(a5, b8);
				__m256d res5_1 = _mm256_mul_pd(a6, b5);
				__m256d res6_1 = _mm256_mul_pd(a6, b6);
				__m256d res7_1 = _mm256_mul_pd(a6, b7);
				__m256d res8_1 = _mm256_mul_pd(a6, b8);
				__m256d res9_1 = _mm256_mul_pd(a7, b5);
				__m256d res10_1 = _mm256_mul_pd(a7, b6);
				__m256d res11_1 = _mm256_mul_pd(a7, b7);
				__m256d res12_1 = _mm256_mul_pd(a7, b8);
				__m256d res13_1 = _mm256_mul_pd(a8, b5);
				__m256d res14_1 = _mm256_mul_pd(a8, b6);
				__m256d res15_1 = _mm256_mul_pd(a8, b7);
				__m256d res16_1 = _mm256_mul_pd(a8, b8);

				// Calculate min
				__m256d res31 = _mm256_min_pd (res1, res1_1);
				__m256d res32 = _mm256_min_pd (res2, res2_1);
				__m256d res33 = _mm256_min_pd (res3, res3_1);
				__m256d res34 = _mm256_min_pd (res4, res4_1);
				__m256d res35 = _mm256_min_pd (res5, res5_1);
				__m256d res36 = _mm256_min_pd (res6, res6_1);
				__m256d res37 = _mm256_min_pd (res7, res7_1);
				__m256d res38 = _mm256_min_pd (res8, res8_1);
				__m256d res39 = _mm256_min_pd (res9, res9_1);
				__m256d res310 = _mm256_min_pd (res10, res10_1);
				__m256d res311 = _mm256_min_pd (res11, res11_1);
				__m256d res312 = _mm256_min_pd (res12, res12_1);
				__m256d res313 = _mm256_min_pd (res13, res13_1);
				__m256d res314 = _mm256_min_pd (res14, res14_1);
				__m256d res315 = _mm256_min_pd (res15, res15_1);
				__m256d res316 = _mm256_min_pd (res16, res16_1);
 	
				// Cluster Fuck Sum
				sum1 = _mm256_add_pd(sum1, res31);
				sum2 = _mm256_add_pd(sum2, res32);
				sum3 = _mm256_add_pd(sum3, res33);
				sum4 = _mm256_add_pd(sum4, res34);
				sum5 = _mm256_add_pd(sum5, res35);
				sum6 = _mm256_add_pd(sum6, res36);
				sum7 = _mm256_add_pd(sum7, res37);
				sum8 = _mm256_add_pd(sum8, res38);
				sum9 = _mm256_add_pd(sum9, res39);
				sum10 = _mm256_add_pd(sum10, res310);
				sum11 = _mm256_add_pd(sum11, res311);
				sum12 = _mm256_add_pd(sum12, res312);
				sum13 = _mm256_add_pd(sum13, res313);
				sum14 = _mm256_add_pd(sum14, res314);
				sum15 = _mm256_add_pd(sum15, res315);
				sum16 = _mm256_add_pd(sum16, res316);
			}
			sum1 = _mm256_hadd_pd(sum1, zero);
			sum2 = _mm256_hadd_pd(sum2, zero);
			sum3 = _mm256_hadd_pd(sum3, zero);
			sum4 = _mm256_hadd_pd(sum4, zero);
			sum5 = _mm256_hadd_pd(sum5, zero);
			sum6 = _mm256_hadd_pd(sum6, zero);
			sum7 = _mm256_hadd_pd(sum7, zero);
			sum8 = _mm256_hadd_pd(sum8, zero);
			sum9 = _mm256_hadd_pd(sum9, zero);
			sum10 = _mm256_hadd_pd(sum10, zero);
			sum11 = _mm256_hadd_pd(sum11, zero);
			sum12 = _mm256_hadd_pd(sum12, zero);
			sum13 = _mm256_hadd_pd(sum13, zero);
			sum14 = _mm256_hadd_pd(sum14, zero);
			sum15 = _mm256_hadd_pd(sum15, zero);
			sum16 = _mm256_hadd_pd(sum16, zero);

			sum1 = _mm256_permute4x64_pd(sum1, 0x0213);
			sum2 = _mm256_permute4x64_pd(sum2, 0x0213);
			sum3 = _mm256_permute4x64_pd(sum3, 0x0213);
			sum4 = _mm256_permute4x64_pd(sum4, 0x0213);
			sum5 = _mm256_permute4x64_pd(sum5, 0x0213);
			sum6 = _mm256_permute4x64_pd(sum6, 0x0213);
			sum7 = _mm256_permute4x64_pd(sum7, 0x0213);
			sum8 = _mm256_permute4x64_pd(sum8, 0x0213);
			sum9 = _mm256_permute4x64_pd(sum9, 0x0213);
			sum10 = _mm256_permute4x64_pd(sum10, 0x0213);
			sum11 = _mm256_permute4x64_pd(sum11, 0x0213);
			sum12 = _mm256_permute4x64_pd(sum12, 0x0213);
			sum13 = _mm256_permute4x64_pd(sum13, 0x0213);
			sum14 = _mm256_permute4x64_pd(sum14, 0x0213);
			sum15 = _mm256_permute4x64_pd(sum15, 0x0213);
			sum16 = _mm256_permute4x64_pd(sum16, 0x0213);

			sum1 = _mm256_hadd_pd(sum1, zero);
			sum2 = _mm256_hadd_pd(sum2, zero);
			sum3 = _mm256_hadd_pd(sum3, zero);
			sum4 = _mm256_hadd_pd(sum4, zero);
			sum5 = _mm256_hadd_pd(sum5, zero);
			sum6 = _mm256_hadd_pd(sum6, zero);
			sum7 = _mm256_hadd_pd(sum7, zero);
			sum8 = _mm256_hadd_pd(sum8, zero);
			sum9 = _mm256_hadd_pd(sum9, zero);
			sum10 = _mm256_hadd_pd(sum10, zero);
			sum11 = _mm256_hadd_pd(sum11, zero);
			sum12 = _mm256_hadd_pd(sum12, zero);
			sum13 = _mm256_hadd_pd(sum13, zero);
			sum14 = _mm256_hadd_pd(sum14, zero);
			sum15 = _mm256_hadd_pd(sum15, zero);
			sum16 = _mm256_hadd_pd(sum16, zero);

			__m256i mask = _mm256_set_epi64x(0, 0, 0, 1);

			_mm256_maskstore_pd(C+n*i+j, mask, sum1);
			_mm256_maskstore_pd(C+n*i+j+1, mask, sum2);
			_mm256_maskstore_pd(C+n*i+j+2, mask, sum3);
			_mm256_maskstore_pd(C+n*i+j+3, mask, sum4);
			_mm256_maskstore_pd(C+n*(i+1)+j, mask, sum5);
			_mm256_maskstore_pd(C+n*(i+1)+j+1, mask, sum6);
			_mm256_maskstore_pd(C+n*(i+1)+j+2, mask, sum7);
			_mm256_maskstore_pd(C+n*(i+1)+j+3, mask, sum8);
			_mm256_maskstore_pd(C+n*(i+2)+j, mask, sum9);
			_mm256_maskstore_pd(C+n*(i+2)+j+1, mask, sum10);
			_mm256_maskstore_pd(C+n*(i+2)+j+2, mask, sum11);
			_mm256_maskstore_pd(C+n*(i+2)+j+3, mask, sum12);
			_mm256_maskstore_pd(C+n*(i+3)+j, mask, sum13);
			_mm256_maskstore_pd(C+n*(i+3)+j+1, mask, sum14);
			_mm256_maskstore_pd(C+n*(i+3)+j+2, mask, sum15);
			_mm256_maskstore_pd(C+n*(i+3)+j+3, mask, sum16);
		}
	}
}
