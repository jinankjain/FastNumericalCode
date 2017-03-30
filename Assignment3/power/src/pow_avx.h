#include <immintrin.h>
#include <math.h> // you will probably not ned this header

__m256d ones;

void pow_avx_init () {
    // perform initialization here
    //v1 = _mm256_set_epi64x((uint64_t)0, (uint64_t)0, (uint64_t)0, (uint64_t)0);
	ones = _mm256_set1_pd(1.0);
}

double pow_avx (double x, uint32_t n_int) {
    // write your implementation here

	uint32_t exponent = n_int;

	// Generate mask
	uint64_t u_mask1=0x0000000F; u_mask1&=n_int;
    uint64_t u_mask2=0x000000F0; u_mask2&=n_int;
    uint64_t u_mask3=0x00000F00; u_mask3&=n_int;
    uint64_t u_mask4=0x0000F000; u_mask4&=n_int;
    uint64_t u_mask5=0x000F0000; u_mask5&=n_int;
    uint64_t u_mask6=0x00F00000; u_mask6&=n_int;
    uint64_t u_mask7=0x0F000000; u_mask7&=n_int;
    uint64_t u_mask8=0xF0000000; u_mask8&=n_int;

    // Generate Integer mask first
    __m256i imask1, imask2, imask3, imask4, imask5, imask6, imask7, imask8;
    imask1 = _mm256_set_epi64x(u_mask1<<60, u_mask1<<61, u_mask1<<62, u_mask1<<63);
    imask2 = _mm256_set_epi64x(u_mask2<<60, u_mask2<<61, u_mask2<<62, u_mask2<<63);
    imask3 = _mm256_set_epi64x(u_mask3<<60, u_mask3<<61, u_mask3<<62, u_mask3<<63);
    imask4 = _mm256_set_epi64x(u_mask4<<60, u_mask4<<61, u_mask4<<62, u_mask4<<63);
    imask5 = _mm256_set_epi64x(u_mask5<<60, u_mask5<<61, u_mask5<<62, u_mask5<<63);
    imask6 = _mm256_set_epi64x(u_mask6<<60, u_mask6<<61, u_mask6<<62, u_mask6<<63);
    imask7 = _mm256_set_epi64x(u_mask7<<60, u_mask7<<61, u_mask7<<62, u_mask7<<63);
    imask8 = _mm256_set_epi64x(u_mask8<<60, u_mask8<<61, u_mask8<<62, u_mask8<<63);

    // Generate double mask now by casting those integer mask
    __m256d dmask1, dmask2, dmask3, dmask4, dmask5, dmask6, dmask7, dmask8;
    dmask1 = _mm256_castsi256_pd(imask1);
    dmask2 = _mm256_castsi256_pd(imask2);
    dmask3 = _mm256_castsi256_pd(imask3);
    dmask4 = _mm256_castsi256_pd(imask4);
    dmask5 = _mm256_castsi256_pd(imask5);
    dmask6 = _mm256_castsi256_pd(imask6);
    dmask7 = _mm256_castsi256_pd(imask7);
    dmask8 = _mm256_castsi256_pd(imask8);

    __m256d tmp;
    __m256d base1, base2, base3, base4, base5, base6, base7, base8;
    __m256d res1, res2, res3, res4, res5, res6, res7, res8;

	// Generate base now [b, b^2, b^4, b^8]
    // In order to generate base you need to multiply it themselves
    base1 = _mm256_set1_pd(x);
    // x-> x^2 x^2->x^4 and so on
    base2 = _mm256_mul_pd(base1, base1);
    
    tmp   =	_mm256_blend_pd(base1, ones, 0x1);
    base1 =	_mm256_mul_pd(base1, tmp);
    tmp   =	_mm256_blend_pd(base1, ones, 0x3);
    base1 =	_mm256_mul_pd(base1, tmp);
    tmp   =	_mm256_blend_pd(base1, ones, 0x7);
    base1 =	_mm256_mul_pd(base1, tmp);

    base2 = _mm256_mul_pd(base2, base2);
    base2 = _mm256_mul_pd(base2, base2);
    base2 = _mm256_mul_pd(base2, base2);
    base3 = _mm256_mul_pd(base2, base2);

    tmp   =	_mm256_blend_pd(base1, ones, 0x1);
    base2 =	_mm256_mul_pd(base2, tmp);
    tmp   =	_mm256_blend_pd(base2, ones, 0x3);
    base2 =	_mm256_mul_pd(base2, tmp);
    tmp   =	_mm256_blend_pd(base2, ones, 0x7);
    base2 =	_mm256_mul_pd(base2, tmp);

    base3 = _mm256_mul_pd(base3, base3);
    base3 = _mm256_mul_pd(base3, base3);
    base3 = _mm256_mul_pd(base3, base3);
    base4 = _mm256_mul_pd(base3, base3);
    
    tmp   =	_mm256_blend_pd(base3, ones, 0x1);
    base3 =	_mm256_mul_pd(base3, tmp);
    tmp   =	_mm256_blend_pd(base3, ones, 0x3);
    base3 =	_mm256_mul_pd(base3, tmp);
    tmp   =	_mm256_blend_pd(base3, ones, 0x7);
    base3 =	_mm256_mul_pd(base3, tmp);

    base4 = _mm256_mul_pd(base4, base4);
    base4 = _mm256_mul_pd(base4, base4);
    base4 = _mm256_mul_pd(base4, base4);
    base5 = _mm256_mul_pd(base4, base4);
    
    tmp   =	_mm256_blend_pd(base4, ones, 0x1);
    base4 =	_mm256_mul_pd(base4, tmp);
    tmp   =	_mm256_blend_pd(base4, ones, 0x3);
    base4 =	_mm256_mul_pd(base4, tmp);
    tmp   =	_mm256_blend_pd(base4, ones, 0x7);
    base4 =	_mm256_mul_pd(base4, tmp);

    base5 = _mm256_mul_pd(base5, base5);
    base5 = _mm256_mul_pd(base5, base5);
    base5 = _mm256_mul_pd(base5, base5);
    base6 = _mm256_mul_pd(base5, base5);

    tmp   =	_mm256_blend_pd(base5, ones, 0x1);
    base5 =	_mm256_mul_pd(base5, tmp);
    tmp   =	_mm256_blend_pd(base5, ones, 0x3);
    base5 =	_mm256_mul_pd(base5, tmp);
    tmp   =	_mm256_blend_pd(base5, ones, 0x7);
    base5 =	_mm256_mul_pd(base5, tmp);

    base6 = _mm256_mul_pd(base6, base6);
    base6 = _mm256_mul_pd(base6, base6);
    base6 = _mm256_mul_pd(base6, base6);
    base7 = _mm256_mul_pd(base6, base6);

    tmp   =	_mm256_blend_pd(base6, ones, 0x1);
    base6 =	_mm256_mul_pd(base6, tmp);
    tmp   =	_mm256_blend_pd(base6, ones, 0x3);
    base6 =	_mm256_mul_pd(base6, tmp);
    tmp   =	_mm256_blend_pd(base6, ones, 0x7);
    base6 =	_mm256_mul_pd(base6, tmp);

    base7 = _mm256_mul_pd(base7, base7);
    base7 = _mm256_mul_pd(base7, base7);
    base7 = _mm256_mul_pd(base7, base7);
    base8 = _mm256_mul_pd(base7, base7);

    tmp   =	_mm256_blend_pd(base7, ones, 0x1);
    base7 =	_mm256_mul_pd(base7, tmp);
    tmp   =	_mm256_blend_pd(base7, ones, 0x3);
    base7 =	_mm256_mul_pd(base7, tmp);
    tmp   =	_mm256_blend_pd(base7, ones, 0x7);
    base7 =	_mm256_mul_pd(base7, tmp);

    base8 = _mm256_mul_pd(base8, base8);
    base8 = _mm256_mul_pd(base8, base8);
    base8 = _mm256_mul_pd(base8, base8);

    tmp   =	_mm256_blend_pd(base8, ones, 0x1);
    base8 =	_mm256_mul_pd(base8, tmp);
    tmp   =	_mm256_blend_pd(base8, ones, 0x3);
    base8 =	_mm256_mul_pd(base8, tmp);
    tmp   =	_mm256_blend_pd(base8, ones, 0x7);
    base8 =	_mm256_mul_pd(base8, tmp);

    base1 = _mm256_blendv_pd(ones, base1, dmask1);
    res1 = base1;
    tmp = base1;
    tmp = _mm256_permute_pd(base1, 0x5);
    res1 = _mm256_mul_pd(tmp, base1);
    tmp = _mm256_permute2f128_pd(res1, res1, 0x1);
    res1 = _mm256_mul_pd(tmp, res1);

    base2 = _mm256_blendv_pd(ones, base2, dmask2);
    res2 = base2;
    tmp = base2;
    tmp = _mm256_permute_pd(base2, 0x5);
    res2 = _mm256_mul_pd(tmp, base2);
    tmp = _mm256_permute2f128_pd(res2, res2, 0x1);
    res2 = _mm256_mul_pd(tmp, res2);

    base3 = _mm256_blendv_pd(ones, base3, dmask3);
    res3 = base3;
    tmp = base3;
    tmp = _mm256_permute_pd(base3, 0x5);
    res3 = _mm256_mul_pd(tmp, base3);
    tmp = _mm256_permute2f128_pd(res3, res3, 0x1);
    res3 = _mm256_mul_pd(tmp, res3);

    base4 = _mm256_blendv_pd(ones, base4, dmask4);
    res4 = base4;
    tmp = base4;
    tmp = _mm256_permute_pd(base4, 0x5);
    res4 = _mm256_mul_pd(tmp, base4);
    tmp = _mm256_permute2f128_pd(res4, res4, 0x1);
    res4 = _mm256_mul_pd(tmp, res4);

    base5 = _mm256_blendv_pd(ones, base5, dmask5);
    res5 = base5;
    tmp = base5;
    tmp = _mm256_permute_pd(base5, 0x5);
    res5 = _mm256_mul_pd(tmp, base5);
    tmp = _mm256_permute2f128_pd(res5, res5, 0x1);
    res5 = _mm256_mul_pd(tmp, res5);

    base6 = _mm256_blendv_pd(ones, base6, dmask6);
    res6 = base6;
    tmp = base6;
    tmp = _mm256_permute_pd(base6, 0x5);
    res6 = _mm256_mul_pd(tmp, base6);
    tmp = _mm256_permute2f128_pd(res6, res6, 0x1);
    res6 = _mm256_mul_pd(tmp, res6);

    base7 = _mm256_blendv_pd(ones, base7, dmask7);
    res7 = base7;
    tmp = base7;
    tmp = _mm256_permute_pd(base7, 0x5);
    res7 = _mm256_mul_pd(tmp, base7);
    tmp = _mm256_permute2f128_pd(res7, res7, 0x1);
    res7 = _mm256_mul_pd(tmp, res7);

    base8 = _mm256_blendv_pd(ones, base8, dmask8);
    res8 = base8;
    tmp = base8;
    tmp = _mm256_permute_pd(base8, 0x5);
    res8 = _mm256_mul_pd(tmp, base8);
    tmp = _mm256_permute2f128_pd(res8, res8, 0x1);
    res8 = _mm256_mul_pd(tmp, res8);

    __m256d final_result = ones;
    final_result = _mm256_mul_pd(final_result, res1);
    final_result = _mm256_mul_pd(final_result, res2);
    final_result = _mm256_mul_pd(final_result, res3);
    final_result = _mm256_mul_pd(final_result, res4);
    final_result = _mm256_mul_pd(final_result, res5);
    final_result = _mm256_mul_pd(final_result, res6);
    final_result = _mm256_mul_pd(final_result, res7);
    final_result = _mm256_mul_pd(final_result, res8);

     double d_result = 0;
    __m128d sse_result = _mm256_extractf128_pd(final_result, 0);
    _mm_store_sd(&d_result, sse_result);
    return d_result;
}