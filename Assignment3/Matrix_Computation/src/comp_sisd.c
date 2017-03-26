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

//scalar code for the matrix computation
void comp_sisd(double *C , double *A , double *B , int n){
	int i,j,k;
	double sum = 0;
	for(i=0; i < n; i++){
		for(j=0; j < n; j++){
			// double sum1 = 0;
			// double sum2 = 0;
			// for(k=0; k < n; k+=2){
			// 	int i1 = n*i+k;
			// 	int i11 = i1+1;
			// 	int i1n = i1+n;
			// 	int i2 = n*k+j;
			// 	int i21 = i2+1;
			// 	int i2n = i2+n;
			// 	double t1 = A[i1];
			// 	double t2 = B[i2];
			// 	double t3 = B[i1];
			// 	double t4 = A[i2];
			// 	double t5 = A[i11];
			// 	double t6 = B[i2n];
			// 	double t7 = B[i11];
			// 	double t8 = A[i2n];
			// 	sum1 = sum1 + fmin(t1*t2,t3*t4);
			// 	sum2 = sum2 + fmin(t5*t6,t7*t8);
			// }
			// C[n*i+j] = sum1+sum2;
			double sum = 0;
			for(k=0; k < n; k++){
				int i1 = n*i+k;
				int i2 = n*k+j;
				double t1 = A[i1];
				double t2 = B[i2];
				double t3 = B[i1];
				double t4 = A[i2];
				double t5 = t1*t2;
				double t6 = t3*t4;
				sum = sum + fmin(t5,t6);
			}
			C[n*i+j] = sum;
		}
	}
}
