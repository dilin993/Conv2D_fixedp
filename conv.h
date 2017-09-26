#include<ap_int.h>

typedef ap_fixed<12,8> data_t;
//typedef float data_t;

#define IMGW 256
#define IMGH 256
#define K 3

void conv2Dfixp(data_t in[IMGW*IMGH],data_t out[IMGW*IMGH],data_t kernel[K*K]);
