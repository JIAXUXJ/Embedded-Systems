#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SCALE_CONSTANT 1.64676
typedef struct vector3 {
	int x;
	int y;
	int z;
} vector3;

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

vector3 cordic_V_fixed_point_rotate ( int register x, int register y, int register z) {
	long int z_table[]={
		843259308,
		262998005,
		66978303,
		16711807,
		4128799,
		983047,
		196609,
	};

	int register i;
	int register x_temp;

	for( i= i - i; i<7; i++) { 
		//first time
		x_temp = x;
		x = ( z < 0 )?(x +(y >> (2*i))):(x -(y >> (2*i)));
		y = ( z < 0 )?(y -(x_temp >> (2*i))):(y +(x_temp >> (2*i)));
		z = ( z < 0 )?(z+(int)(z_table[i]>>16)):(z-(int)(z_table[i]>>16));

		x_temp = x;
		x = ( z < 0 )?( x +(y >> (2*i+1))) : (x -(y >> (2*i+1)));
		y = ( z < 0 )?( y -(x_temp >> (2*i+1))) : (y +(x_temp >> (2*i+1)));
		z = ( z < 0 )?( z+(int)(z_table[i]&0xffff)) : (z-(int)(z_table[i]&0xffff));
	}
		
	vector3 result;
	result.x=x;
	result.y=y;
	result.z=z;
	return result;
	
}

vector3 cordic_V_fixed_point_vector( int register x, int register y, int register z) {
	long int z_table[]={
		843259308,
		262998005,
		66978303,
		16711807,
		4128799,
		983047,
		196609,
	};

	int register i;
	int register x_temp;

	for( i= i - i; i<7; i++) { 
		x_temp = x;
		z = (y >= 0)?(z+(int)(z_table[i]>>16)):(z-(int)(z_table[i]>>16));		
		x = (y >= 0)?(x +(y >> (2*i))):(x -(y >> (2*i)));
		y = (y >= 0)?(y -(x_temp >> (2*i))):(y +(x_temp >> (2*i)));
			
		x_temp = x;
		z = (y >= 0)?( z+(int)(z_table[i]&0xffff)) : (z-(int)(z_table[i]&0xffff));
		x = (y >= 0)?(x +(y >> (2*i+1))):(x -(y >> (2*i+1)));
		y = (y >= 0)?(y -(x_temp >> (2*i+1))):(y +(x_temp >> (2*i+1)));
				
	}
		
	vector3 result;
	result.x=x;
	result.y=y;
	result.z=z;
	return result;
	
}

int arctan_y_x (int x, int y){
	vector3 result=cordic_V_fixed_point_vector( x, y, 0<<14);
	return result.z;
}

int arctan_x (int x){
	vector3 result=cordic_V_fixed_point_vector( 1<<14,x, 0<<14);
	return result.z;
}

int cosine (int z_in){

	vector3 result=cordic_V_fixed_point_rotate( 1<<14, 0<<14, z_in);
	return result.x;
}

int sine (int z_in){
	vector3 result=cordic_V_fixed_point_rotate( 1<<14, 0<<14, z_in);
	return result.y;
}



int main()
{	
	clock_t begin = clock();
	int i;
	for( i=0;i<100;i++){
		printf("TESTING: Cosine:\n");
		printf("Cos(45deg): %.15lf\n", int2float(cosine(float2int(deg2rad(45))))/1.64676);
		printf("Cos(30deg): %.15lf\n", int2float(cosine(float2int(deg2rad(30))))/1.64676);
		// printf("Cos(15deg): %.15lf\n", int2float(cosine(float2int(deg2rad(15))))/1.64676);
		printf("TESTING: Sine:\n");
		printf("Sin(45deg): %.15lf\n", int2float(sine(float2int(deg2rad(45))))/1.64676);
		printf("Sin(30deg): %.15lf\n", int2float(sine(float2int(deg2rad(30))))/1.64676);
		// printf("Sin(15deg): %.15lf\n", int2float(sine(float2int(deg2rad(15))))/1.64676);
		printf("TESTING: Arctan Y/X:\n");
		printf("Arctan(1/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(1)))));
		printf("Arctan(1/2): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(2),float2int(1)))));
		// printf("Arctan(1/3): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(3),float2int(1)))));
		printf("Arctan(2/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(2)))));
		// printf("Arctan(3/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(3)))));
		printf("TESTING: Arctan X:\n");
		printf("Arctan(1): %.15lf\n", rad2deg(int2float(arctan_x(float2int(1)))));
		printf("Arctan(2): %.15lf\n", rad2deg(int2float(arctan_x(float2int(2)))));
		// printf("Arctan(3): %.15lf\n", rad2deg(int2float(arctan_x(float2int(3)))));
	}
	//printf("Arctan(1/1): %.15lf\n", rad2deg(int2float(arctan_y_x(float2int(1),float2int(1)))));
	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("Time Spent: %f\n", time_spent);
	return 0;
}
