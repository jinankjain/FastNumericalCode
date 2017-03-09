inline double babs ( double x) {
  union { uint64_t i; double d; } u = { .d = x };
  u.i = u.i & 0x7FFFFFFFFFFFFFFF ;
  return u.d;
}

void compute() {
  uint64_t i = 0;
  for(i=0; i<n; i++) {
    Z[i]+=X[i]*Y[i]+U[i]*Y[i]+X[i]*Z[i]+babs(U[i]*X[i]);
  }
}
