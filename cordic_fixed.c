#include <stdio.h>
#include <stdlib.h>
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

void cordic_V_fixed_point( int *x, int *y, int *z) {

	int x_temp_1, y_temp_1, z_temp;
	int x_temp_2, y_temp_2;
	int i;
	x_temp_1 = *x;
	y_temp_1 = *y;
	z_temp = *z;
	printf("zzz: %d\n", z_temp);
	for( i=0; i<14; i++) { 
		if( z_temp < 0) {
			x_temp_2 = x_temp_1 +(y_temp_1 >> i);
			y_temp_2 = y_temp_1 -(x_temp_1 >> i);
			z_temp += z_table[i];
			printf("+x: %d\n", x_temp_2);
		}
		else {
			x_temp_2 = x_temp_1 -(y_temp_1 >> i);
			y_temp_2 = y_temp_1 +(x_temp_1 >> i);
			z_temp -= z_table[i];
			printf("-x: %d\n", x_temp_2);
		}
		x_temp_1 = x_temp_2;
		y_temp_1 = y_temp_2;
		printf("z: %d\n", z_temp);
		
	}
	printf("%d\n", z_temp);
	printf("%d\n", y_temp_1);
	*x=x_temp_1;
	*y=y_temp_1;
	*z=z_temp;
}


int arctan_y_x (int x_in, int y_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=x_in;
	*y=y_in;
	*z=0;
	cordic_V_fixed_point( x, y, z);
	return *z;



}

int arctan_x (int x_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1;
	*y=x_in;
	*z=0;
	cordic_V_fixed_point( x, y, z);
	return *z;
}

int cosine (int z_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1<<14;
	*y=0;
	*z=z_in;

	cordic_V_fixed_point( x, y, z);
	return *x;
}

int sine (int z_in){
	int *x=malloc(sizeof(int));
	int *y=malloc(sizeof(int));
	int *z=malloc(sizeof(int));
	*x=1<<14;
	*y=0;
	*z=z_in;
	cordic_V_fixed_point( x, y, z);
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
	printf("Cos(45deg): %.15lf\n", int2float(cosine(float2int(deg2rad(45)))));
	/*
	printf("Cos(30deg): %.15lf\n", rad2deg(int2float(cosine(float2int(deg2rad(30))))));
	printf("TESTING: Sine:\n");
	printf("Sin(45deg): %.15lf\n", rad2deg(int2float(sine(float2int(deg2rad(45))))));
	printf("Sin(30deg): %.15lf\n", rad2deg(int2float(sine(float2int(deg2rad(30))))));
	printf("TESTING: Arctan X/Y:\n");
	printf("Arctan(1/1): %.15lf\n", rad2deg(int2float(arctan_y_x(1,1))));
	printf("Arctan(2/1): %.15lf\n", rad2deg(int2float(arctan_y_x(2,1))));
	printf("Arctan(1/2): %.15lf\n", rad2deg(int2float(arctan_y_x(1,2))));
	printf("TESTING: Arctan X:\n");
	printf("Arctan(1): %.15lf\n", rad2deg(int2float(arctan_x(1))));
	printf("Arctan(2): %.15lf\n", rad2deg(int2float(arctan_x(2))));
	*/
	return 0;
}