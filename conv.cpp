#include "conv.h"

void conv2Dfixp(data_t in[IMGW*IMGH],data_t out[IMGW*IMGH],data_t kernel[K*K])
{
	const short kCenterX = K / 2;
	const short kCenterY = K / 2;

	for(short i=0; i < IMGH; ++i)              // rows
	{
	    for(short j=0; j < IMGW; ++j)          // columns
	    {
	        for(short m=0; m < K; ++m)     // kernel rows
	        {
	            short mm = K - 1 - m;      // row index of flipped kernel

	            for(short n=0; n < K; ++n) // kernel columns
	            {
	                short nn = K - 1 - n;  // column index of flipped kernel

	                // index of input signal, used for checking boundary
	                short ii = i + (m - kCenterY);
	                short jj = j + (n - kCenterX);

	                // ignore input samples which are out of bound
	                if( ii >= 0 && ii < IMGH && jj >= 0 && jj < IMGW )
	                    out[i*IMGW+j] += in[ii*K+jj] * kernel[mm*K+nn];
	            }
	        }
	    }
	}
}
