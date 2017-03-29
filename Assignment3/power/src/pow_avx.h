#include <immintrin.h>
#include <math.h> // you will probably not ned this header


void pow_avx_init () {
    // perform initialization here
    //v1 = _mm256_set_epi64x((uint64_t)0, (uint64_t)0, (uint64_t)0, (uint64_t)0);
	
    
}

void print_vector(__m256d res) {
	//printf("Printing vectors\n");
	for(int i=0; i<4; i++) {
		printf("%f\n", res[i]);
	}
} 

void printi_vector(__m256i res) {
	// printf("Printing vectors\n");
	for(int i=0; i<4; i++) {
		printf("%lld\n", res[i]);
	}
} 

double pow_avx (double x, uint32_t n_int) {
    // write your implementation here

	// Convert exponent to 32 bit representation
	double bit[32];

	for(int i=0; i<32; i++) {
		bit[i] = (double)(n_int%2);
		// printf("%g\n", bit[i]);
		n_int = n_int/2;
	}
	__m256d ones = _mm256_set1_pd(1.0);
	__m256d base1=_mm256_set_pd(x,x,x,x);
	//print_vector(base1);
    __m256d tmp1=_mm256_set_pd(x,x,x,1.0);
    __m256d tmp2=_mm256_set_pd(x,x,1.0,1.0);
    __m256d tmp4=_mm256_set_pd(x,1.0,1.0,1.0);
    base1=_mm256_mul_pd(base1, tmp1);
    base1=_mm256_mul_pd(base1, tmp2);
    base1=_mm256_mul_pd(base1, tmp2);
    base1=_mm256_mul_pd(base1, tmp4);
    base1=_mm256_mul_pd(base1, tmp4);
    base1=_mm256_mul_pd(base1, tmp4);
    base1=_mm256_mul_pd(base1, tmp4);
    
	// for(int i=0; i<32; i++) {
	// 	printf("%g\n", bit[i]);
	// }
	__m256d mask = _mm256_set_pd(bit[3], bit[2], bit[1], bit[0]);
	// printf("Heello %lld\n", mask[0]);
	// print_vector(mask);
	base1 = _mm256_blendv_pd (ones, base1, mask);
	__m256d result=base1;
    __m256d tmp=base1;
    tmp=_mm256_permute_pd(base1, 0x5);
    result=_mm256_mul_pd(tmp, base1);
    // print_vector(result);
    tmp=_mm256_permute2f128_pd(result, result, 0x1);
    // print_vector(tmp);
    result=_mm256_mul_pd(tmp, result);
    // print_vector(result);
	
	
	// __m256d base2 = _mm256_set_pd(powers[7], powers[6], powers[5], powers[4]);
	// mask = _mm256_set_epi64x(bit[7], bit[6], bit[5], bit[4]);
	// __m256i c2 = _mm256_set_epi64x((uint64_t)7, (uint64_t)6, (uint64_t)5, (uint64_t)4);
	// c2 = _mm256_blendv_epi8 (v1, c2, mask);
	// base2 = _mm256_blendv_pd (super, base2, mask);
	
	
	// __m256d base3 = _mm256_set_pd(powers[11], powers[10], powers[9], powers[8]);
	// mask = _mm256_set_epi64x(bit[11], bit[10], bit[9], bit[8]);
	// __m256i c3 = _mm256_set_epi64x((uint64_t)11, (uint64_t)10, (uint64_t)9, (uint64_t)8);
	// c3 = _mm256_blendv_epi8 (v1, c3, mask);
	// base3 = _mm256_blendv_pd (super, base3, mask);
	
	
	// __m256d base4 = _mm256_set_pd(powers[15], powers[14], powers[13], powers[12]);
	// mask = _mm256_set_epi64x(bit[15], bit[14], bit[13], bit[12]);
	// __m256i c4 = _mm256_set_epi64x((uint64_t)15, (uint64_t)14, (uint64_t)13, (uint64_t)12);
	// c4 = _mm256_blendv_epi8 (v1, c4, mask);
	// base4 = _mm256_blendv_pd (super, base4, mask);
	
	
	// __m256d base5 = _mm256_set_pd(powers[19], powers[18], powers[17], powers[16]);
	// mask = _mm256_set_epi64x(bit[19], bit[18], bit[17], bit[16]);
	// __m256i c5 = _mm256_set_epi64x((uint64_t)19, (uint64_t)18, (uint64_t)17, (uint64_t)16);
	// c5 = _mm256_blendv_epi8 (v1, c5, mask);
	// base5 = _mm256_blendv_pd (super, base5, mask);
	

	// __m256d base6 = _mm256_set_pd(powers[23], powers[22], powers[21], powers[20]);
	// mask = _mm256_set_epi64x(bit[23], bit[22], bit[21], bit[20]);
	// __m256i c6 = _mm256_set_epi64x((uint64_t)23, (uint64_t)22, (uint64_t)21, (uint64_t)20);
	// c6 = _mm256_blendv_epi8 (v1, c6, mask);
	// base6 = _mm256_blendv_pd (super, base6, mask);
	

	// __m256d base7 = _mm256_set_pd(powers[27], powers[26], powers[25], powers[24]);
	// mask = _mm256_set_epi64x(bit[27], bit[26], bit[25], bit[24]);
	// __m256i c7 = _mm256_set_epi64x((uint64_t)27, (uint64_t)26, (uint64_t)25, (uint64_t)24);
	// c7 = _mm256_blendv_epi8 (v1, c7, mask);
	// base7 = _mm256_blendv_pd (super, base7, mask);
	
	// __m256d base8 = _mm256_set_pd(powers[31], powers[30], powers[29], powers[28]);
	// mask = _mm256_set_epi64x(bit[31], bit[30], bit[29], bit[28]);
	// __m256i c8 = _mm256_set_epi64x((uint64_t)31, (uint64_t)30, (uint64_t)29, (uint64_t)28);
	// c8 = _mm256_blendv_epi8 (v1, c8, mask);
	// base8 = _mm256_blendv_pd (super, base8, mask);
	
	// base1 = _mm256_mul_pd(base1, base2);
	// base3 = _mm256_mul_pd(base3, base4);
	// base5 = _mm256_mul_pd(base5, base6);
	// base7 = _mm256_mul_pd(base7, base8);

	// base1 = _mm256_mul_pd(base1, base3);
	// base5 = _mm256_mul_pd(base5, base7);

	// base1 = _mm256_mul_pd(base1, base5);
    // use pow, so we don get error in validation.
    return result[0];
}