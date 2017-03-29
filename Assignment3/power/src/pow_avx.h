#include <immintrin.h>
#include <math.h> // you will probably not ned this header

__m256d ones;

#define INIT_EXPO_MASKS(_vi_name, _u_name)\
    __m256i _vi_name = _mm256_set_epi64x(_u_name<<60, _u_name<<61, _u_name<<62, _u_name<<63);

#define CREATE_MASK(_mask_name, _vi_name) __m256d _mask_name = _mm256_castsi256_pd(_vi_name);

void print_vector(__m256d vec){
    double buf[4];
    _mm256_storeu_pd(buf,vec);
    printf("%1.2f %1.2f %1.2f %1.2f\n",buf[0], buf[1], buf[2], buf[3]);
}

void pow_avx_init () {
    // perform initialization here
    //v1 = _mm256_set_epi64x((uint64_t)0, (uint64_t)0, (uint64_t)0, (uint64_t)0);
	ones = _mm256_set1_pd(1.0);
}

double pow_avx (double x, uint32_t n_int) {
    // write your implementation here

	uint32_t exponent = n_int;
	// Generate mask
	u_int8_t u_mask1=0xF; u_mask1&=n_int; n_int>>=4;
    u_int8_t u_mask2=0xF; u_mask2&=n_int; n_int>>=4;
    u_int8_t u_mask3=0xF; u_mask3&=n_int; n_int>>=4;
    u_int8_t u_mask4=0xF; u_mask4&=n_int; n_int>>=4;
    u_int8_t u_mask5=0xF; u_mask5&=n_int; n_int>>=4;
    u_int8_t u_mask6=0xF; u_mask6&=n_int; n_int>>=4;
    u_int8_t u_mask7=0xF; u_mask7&=n_int; n_int>>=4;
    u_int8_t u_mask8=0xF; u_mask8&=n_int; n_int>>=4;

    INIT_EXPO_MASKS(vi_mask1, u_mask1);
    INIT_EXPO_MASKS(vi_mask2, u_mask2);
    INIT_EXPO_MASKS(vi_mask3, u_mask3);
    INIT_EXPO_MASKS(vi_mask4, u_mask4);
    INIT_EXPO_MASKS(vi_mask5, u_mask5);
    INIT_EXPO_MASKS(vi_mask6, u_mask6);
    INIT_EXPO_MASKS(vi_mask7, u_mask7);
    INIT_EXPO_MASKS(vi_mask8, u_mask8);

    CREATE_MASK(mask1, vi_mask1);
    CREATE_MASK(mask2, vi_mask2);
    CREATE_MASK(mask3, vi_mask3);
    CREATE_MASK(mask4, vi_mask4);
    CREATE_MASK(mask5, vi_mask5);
    CREATE_MASK(mask6, vi_mask6);
    CREATE_MASK(mask7, vi_mask7);
    CREATE_MASK(mask8, vi_mask8);

    // Generate base now [b, b^2, b^4, b^8]
    __m256d tmp0 = _mm256_set1_pd(x);
    __m256d mask1_1 = _mm256_cmp_pd (mask1, ones, 13);
    printf("%u\n", u_mask1);
    print_vector(mask8);
    tmp0 = _mm256_blendv_pd(ones, tmp0, mask1_1);
    // print_vector(mask1);
    // print_vector(tmp0);
    __m256d tmp1 = _mm256_blend_pd(tmp0, ones, 0x01);
    // Squaring step
    __m256d tmp2 = _mm256_mul_pd(tmp0, tmp1);
    __m256d tmp3 = _mm256_blend_pd(tmp2, ones, 0x03);
    // Squaring Step
    __m256d tmp4 = _mm256_mul_pd(tmp2, tmp3);
    __m256d tmp5 = _mm256_blend_pd(tmp4, ones, 0x07);
    // Squaring Step
    __m256d base1 = _mm256_mul_pd(tmp4, tmp5);
    //print_vector(base1);

    // double temp[4];
    // _mm256_store_pd (temp, base1);
    // tmp0 = _mm256_set1_pd(temp[3]*temp[3]);
    // tmp1 = _mm256_blend_pd(tmp0, ones, 0x01);
    // print_vector(tmp0);
    // // Squaring step
    // tmp2 = _mm256_mul_pd(tmp0, tmp1);
    // tmp3 = _mm256_blend_pd(tmp2, ones, 0x03);
    // // Squaring Step
    // tmp4 = _mm256_mul_pd(tmp2, tmp3);
    // tmp5 = _mm256_blend_pd(tmp4, ones, 0x07);
    // // Squaring Step
    // __m256d base2 = _mm256_mul_pd(tmp4, tmp5);
    // print_vector(base2);
	return 1.0;
}