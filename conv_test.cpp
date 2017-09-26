#include<hls_opencv.h>
//#include<ap_int_sim.h>
#include "conv.h"


int main()
{
	cv::Mat imgU = cv::imread("/home/dilin/Desktop/izBHx.jpg",CV_LOAD_IMAGE_GRAYSCALE);
	cv::Mat img;
	imgU.convertTo(img,CV_32FC1);
	data_t in[IMGW*IMGH];
	data_t out[IMGW*IMGH];
	data_t kernel[K*K] = {-1,0,1,-2,0,2,-1,0,1};

	for(int i=0;i<img.rows;i++)
	{
		for(int j=0;j<img.cols;j++)
		{
			in[i*IMGW+j] = img.at<float>(i,j);
		}
	}

	conv2Dfixp(in,out,kernel);

	for (int i = 0; i < img.rows; i++)
	{
		for (int j = 0; j < img.cols; j++)
		{
			img.at<float>(i, j) = out[i * IMGW + j].to_float();
		}
	}

	cv::imwrite("/home/dilin/Desktop/out.jpg",img);

	return 0;
}
