#include <stdio.h>
#include <stdlib.h>
#define SCALE_CONSTANT 1.64676
int z_table[]={
	12867,
	7596,
	4013,
	2037,
	1022,
	511,
	255,
	127,	
	63,
	31,
	15,
	7,
	3,
	1
};

void cordic_V_fixed_point( int *x, int *y, int *z,int mode) {

	int x_temp, y_temp, z_temp;
	int i, x_temp_2;
	x_temp = *x;
	y_temp = *y;
	z_temp = *z;
	for( i=0; i<14; i++) { 
		//printf("x: %.4lf y: %.4lf z: %.4lf \n", (double)x_temp/(float)(1<<14), (double)y_temp/(float)(1<<14),(double)z_temp/(float)(1<<14)*180/3.1415926);
		x_temp_2 = x_temp;
		if(( z_temp < 0 && mode==0)||(y_temp >= 0 && mode==1)) {
			x_temp = x_temp +(y_temp >> i);
			y_temp = y_temp -(x_temp_2 >> i);
			z_temp += z_table[i];

		}
		else {
			x_temp = x_temp -(y_temp >> i);
			y_temp = y_temp +(x_temp_2 >> i);
			z_temp -= z_table[i];

		}		
	}

	*x=x_temp;
	*y=y_temp;
	*z=z_temp;
}


int arctan_y_x (int x_in, int y_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=x_in;
	*y=y_in;
	*z=0<<14;
	cordic_V_fixed_point( x, y, z,1);
	return *z;



}

int arctan_x (int x_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1<<14;
	*y=x_in;
	*z=0<<14;
	cordic_V_fixed_point( x, y, z,1);
	return *z;
}

int cosine (int z_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1<<14;
	*y=0<<14;
	*z=z_in;

	cordic_V_fixed_point( x, y, z,0);
	return *x;
}

int sine (int z_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1<<14;
	*y=0<<14;
	*z=z_in;
	cordic_V_fixed_point( x, y, z,0);
	return *y;
}

double int2float(int in)
{
	return in / (float)(1<<14);
}

int float2int(float flt)
{
	return (int)(flt*(float)(1<<14));
}

float deg2rad(float flt)
{

	return flt/180*3.1415926;
}

float rad2deg(float flt)
{
	return flt*180/3.1415926;
}

int main()
{	
	printf("TESTING: Cosine:\n");
	printf("Cos(45deg): %d\n", cosine(float2int(deg2rad(45))));
	printf("Cos(45deg): %.15lf\n", int2float(cosine(float2int(deg2rad(45))))/1.64676);
	printf("Cos(30deg): %.15lf\n", int2float(cosine(float2int(deg2rad(30))))/1.64676);
	printf("TESTING: Sine:\n");
	printf("Sin(45deg): %.15lf\n", int2float(sine(float2int(deg2rad(45))))/1.64676);
	printf("Sin(30deg): %.15lf\n", int2float(sine(float2int(deg2rad(30))))/1.64676);
	printf("TESTING: Arctan Y/X:\n");
	printf("Arctan(1/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(1)))));
	printf("Arctan(1/2): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(2),float2int(1)))));
	printf("Arctan(2/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(2)))));
	printf("TESTING: Arctan X:\n");
	printf("Arctan(1): %.15lf\n", rad2deg(int2float(arctan_x(float2int(1)))));
	printf("Arctan(2): %.15lf\n", rad2deg(int2float(arctan_x(float2int(2)))));
	
	return 0;
}