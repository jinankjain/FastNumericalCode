#include <stdio.h>
#include <stdlib.h>


//the slow base version

void slowperformance1(double *x, double *y, double *z, int n) {
	double sum = 0;
	for (int i = 0; i < n; i = i + 1) {		
			for (int k = 0; k < 4; k++) {
				sum += x[i] * y[(i + k) % 5];				
			}
	}
	z[0] = sum;
}

//add more versions below

// Loop Unrolling
void loop_unroll(double *x, double *y, double *z, int n) {
    double sum = 0;
    for (int i=0; i<n; ++i) {
        sum += (x[i] * y[i%5]);
        sum += (x[i] * y[(i+1)%5]);
        sum += (x[i] * y[(i+2)%5]);
        sum += (x[i] * y[(i+3)%5]);
    }
    z[0] = sum;
}

// Scalar Replacement
void scalar_replacement(double *x, double *y, double *z, int n) {
    double sum1 = 0;
    double sum2 = 0;
    double sum3 = 0;
    double sum4 = 0;
    for (int i=0; i<n; ++i) {
        double a = x[i];
        sum1 += (a * y[i%5]);
        sum2 += (a * y[(i+1)%5]);
        sum3 += (a * y[(i+2)%5]);
        sum4 += (a * y[(i+3)%5]);
    }
    z[0] = (sum1+sum2+sum3+sum4);
}

// Super Optimization
void super_scalar_replacement(double *x, double *y, double *z, int n) {
    double sum1 = 0;
    double sum2 = 0;
    double sum3 = 0;
    double sum4 = 0;
    double sum5 = 0;
    double sum6 = 0;
    double sum7 = 0;
    double sum8 = 0;
    double sum9 = 0;
    double sum10 = 0;
    double sum11 = 0;
    double sum12 = 0;
    double sum13 = 0;
    double sum14 = 0;
    double sum15 = 0;
    double sum16 = 0;
    double sum17 = 0;
    double sum18 = 0;
    double sum19 = 0;
    double sum20 = 0;

    double y0 = y[0];
    double y1 = y[1];
    double y2 = y[2];
    double y3 = y[3];
    double y4 = y[4];
    for (int i=0; i<n; i+=5) {
        
        double x0 = x[i];
        sum1 += (x0 * y0);
        sum2 += (x0 * y1);
        sum3 += (x0 * y2);
        sum4 += (x0 * y3);
        
        double x1 = x[i+1];
        sum5 += (x1 * y1);
        sum6 += (x1 * y2);
        sum7 += (x1 * y3);
        sum8 += (x1 * y4);

        double x2 = x[i+2];
        sum9 += (x2 * y2);
        sum10 += (x2 * y3);
        sum11 += (x2 * y4);
        sum12 += (x2 * y0);

        double x3 = x[i+3];
        sum13 += (x3 * y3);
        sum14 += (x3 * y4);
        sum15 += (x3 * y0);
        sum16 += (x3 * y1);

        double x4 = x[i+4];
        sum17 += (x4 * y4);
        sum18 += (x4 * y0);
        sum19 += (x4 * y1);
        sum20 += (x4 * y2);
        
    }
    z[0] = (sum1+sum2+sum3+sum4+sum5
            +sum6+sum7+sum8+sum9+sum10
            +sum11+sum12+sum13+sum14+sum15
            +sum16+sum17+sum18+sum19+sum20);
}

// Super Optimization
void super_scalar_replacement_generalize(double *x, double *y, double *z, int n) {
    double sum1 = 0;
    double sum2 = 0;
    double sum3 = 0;
    double sum4 = 0;
    double sum5 = 0;
    double sum6 = 0;
    double sum7 = 0;
    double sum8 = 0;
    double sum9 = 0;
    double sum10 = 0;
    double sum11 = 0;
    double sum12 = 0;
    double sum13 = 0;
    double sum14 = 0;
    double sum15 = 0;
    double sum16 = 0;
    double sum17 = 0;
    double sum18 = 0;
    double sum19 = 0;
    double sum20 = 0;

    double y0 = y[0];
    double y1 = y[1];
    double y2 = y[2];
    double y3 = y[3];
    double y4 = y[4];
    for (int i=0; i<n; i+=5) {
        
        if(i>=n) break;
        double x0 = x[i];
        sum1 += (x0 * y0);
        sum2 += (x0 * y1);
        sum3 += (x0 * y2);
        sum4 += (x0 * y3);
        
        if((i+1)>=n) break;
        double x1 = x[i+1];
        sum5 += (x1 * y1);
        sum6 += (x1 * y2);
        sum7 += (x1 * y3);
        sum8 += (x1 * y4);

        if((i+2)>=n) break;
        double x2 = x[i+2];
        sum9 += (x2 * y2);
        sum10 += (x2 * y3);
        sum11 += (x2 * y4);
        sum12 += (x2 * y0);

        if((i+3)>=n) break;
        double x3 = x[i+3];
        sum13 += (x3 * y3);
        sum14 += (x3 * y4);
        sum15 += (x3 * y0);
        sum16 += (x3 * y1);

        if((i+4)>=n) break;
        double x4 = x[i+4];
        sum17 += (x4 * y4);
        sum18 += (x4 * y0);
        sum19 += (x4 * y1);
        sum20 += (x4 * y2);
        
    }
    z[0] = (sum1+sum2+sum3+sum4+sum5
            +sum6+sum7+sum8+sum9+sum10
            +sum11+sum12+sum13+sum14+sum15
            +sum16+sum17+sum18+sum19+sum20);
}
