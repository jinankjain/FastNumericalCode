/**
*      _________   _____________________  ____  ______
*     / ____/   | / ___/_  __/ ____/ __ \/ __ \/ ____/
*    / /_  / /| | \__ \ / / / /   / / / / / / / __/
*   / __/ / ___ |___/ // / / /___/ /_/ / /_/ / /___
*  /_/   /_/  |_/____//_/  \____/\____/_____/_____/
*
*  http://www.inf.ethz.ch/personal/markusp/teaching/
*  How to Write Fast Numerical Code 263-2300 - ETH Zurich
*  Copyright (C) 2017  Alen Stojanov      (astojanov@inf.ethz.ch)
*                      Georg Ofenbeck     (ofenbeck@inf.ethz.ch)
*                      Singh Gagandeep    (gsingh@inf.ethz.ch)
*	                Markus Pueschel    (pueschel@inf.ethz.ch)
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
//#include "stdafx.h"

#include <list>

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <string.h>
#include "tsc_x86.h"

/* prototype of the function you need to optimize */
typedef void(*comp_func)(double *, double*, double *,int );



#define CYCLES_REQUIRED 1e7
#define REP 30
#define MAX_FUNCS 32
#define FLOPS (4.*n)
#define EPS (1e-3)

using namespace std;

//headers
double get_perf_score(comp_func f);
void register_functions();
double perf_test(comp_func f, char *desc, int flops);


void maxperformance(double *x, double *y, double *z, int n);
void slowperformance2(double *x, double *y, double *z, int n);
void slowperformance1(double *x, double *y, double *z, int n);
void scalar_replacement(double *x, double *y, double *z, int n);
void loop_unroll(double *x, double *y, double *z, int n);
void super_scalar_replacement(double *x, double *y, double *z, int n);
void super_scalar_replacement_generalize(double *x, double *y, double *z, int n);

void add_function(comp_func f, char *name, int flop);

/* Global vars, used to keep track of student functions */
comp_func userFuncs[MAX_FUNCS];
char *funcNames[MAX_FUNCS];
int funcFlops[MAX_FUNCS];
int numFuncs = 0;


void rands(double * m, size_t row, size_t col)
{
	for (size_t i = 0; i < row*col; ++i)  
		m[i] = static_cast<double>(rand() + 1) / RAND_MAX;
}

void build(double ** m, unsigned n)
{
	*m = static_cast<double *>(malloc(n * sizeof(double)));
	rands(*m, 1, n);
}

void destroy(double * m)
{
	free(m);
}

/*
* Called by the driver to register your functions
* Use add_function(func, description) to add your own functions
*/
void register_functions()
{
	add_function(&slowperformance1, "Slow Performance 1",40/5);
    add_function(&loop_unroll, "Simple Loop Unrolling", 40/5);
    add_function(&scalar_replacement, "Scalar Replacement", 40/5);
    add_function(&super_scalar_replacement, "Super Scalar Replacement", 40/5);
    add_function(&super_scalar_replacement_generalize, "Super Scalar Replacement Generalize", 40/5);
	// Add your functions here
	// add_function(&your_function, "function: Optimization X", nrflops);
	//the number of flops should not change

}

/*
* Main driver routine - calls register_funcs to get student functions, then
* tests all functions registered, and reports the best performance
*/
int main(int argc, char **argv)
{
	printf("starting program");
	double perf;
	double maxPerf = 0;
	int i;
	int maxInd = 0;
	int verbosity = 2;

	register_functions();

	if (numFuncs == 0)
	{
		printf("No functions registered - nothing for driver to do\n");
		printf("Register functions by calling register_func(f, name)\n");
		printf("in register_funcs()\n");

		return 0;
	}
	printf("\n%d functions registered", numFuncs);
    
	int n = 32000;
	double *x, *y, *z;
	build(&x, n);
	build(&y, n);
	build(&z, n);
	comp_func f = userFuncs[0];
	f(x, y, z, n);
	double result = z[0];
	double error = 0;
	for (i = 0; i < numFuncs; i++)
	{
		comp_func f = userFuncs[i];
		f(x, y, z, n);
		//printf("%f\n", z[0]);
		error = fabs(z[0] - result);
		result = z[0];
		if (error > EPS)
			printf("ERROR!!!!  the results for the %d th function are different to the previous", i);
	}
	destroy(x);
	destroy(y);
	destroy(z);


	for (i = 0; i < numFuncs; i++)
	{
		perf = perf_test(userFuncs[i], funcNames[i], funcFlops[i]);
		printf("\nPerformance: %s\nPerf: %.3f FLOPs/c\n", funcNames[i], perf);
	}



	return 0;
}








/*
* Registers a user function to be tested by the driver program. Registers a
* string description of the function as well
*/
void add_function(comp_func f, char *name, int flops)
{
	if (numFuncs >= MAX_FUNCS)
	{
		printf("Couldn't register %s, too many functions registered (Max: %d)",
			name, MAX_FUNCS);
		return;
	}

	userFuncs[numFuncs] = f;
	funcNames[numFuncs] = name;
	funcFlops[numFuncs] = flops;

	numFuncs++;
}




/*
* Checks the given function for validity. If valid, then computes and
* reports and returns its performance in MFLOPs
*/
double perf_test(comp_func f, char *desc, int flops)
{
	double cycles = 0.;
	double perf = 0.0;
	long num_runs = 100;
	double multiplier = 1;
	myInt64 start, end;

	double * x, *y, *z;
	int n = 32000;

	build(&x, n);
	build(&y, n);
	build(&z, n);

	// Warm-up phase: we determine a number of executions that allows
	// the code to be executed for at least CYCLES_REQUIRED cycles.
	// This helps excluding timing overhead when measuring small runtimes.
	do {
		num_runs = num_runs * multiplier;
		start = start_tsc();
		for (size_t i = 0; i < num_runs; i++) {
			f(x,y,z,n);			
		}
		end = stop_tsc(start);

		cycles = (double)end;
		multiplier = (CYCLES_REQUIRED) / (cycles);
		
	} while (multiplier > 2);

	list< double > cyclesList, perfList;

	// Actual performance measurements repeated REP times.
	// We simply store all results and compute medians during post-processing.
	for (size_t j = 0; j < REP; j++) {

		start = start_tsc();
		for (size_t i = 0; i < num_runs; ++i) {
			f(x,y,z,n);
		}
		end = stop_tsc(start);

		cycles = ((double)end) / num_runs;
		//printf("%g %d\n", cycles,num_runs);
		cyclesList.push_back(cycles);
		perfList.push_back(FLOPS / cycles);
	}

	//printf("%f", y[0]);
	destroy(x);
	destroy(y);
	destroy(z);
	cyclesList.sort();
	cycles = cyclesList.front();

	return (n * flops * 1.0) / cycles;
}


