#include <stdio.h>
#include <math.h>
int main( void) {
	double x_d, y_d, z_d;
	int x_i, y_i, z_i;
	/* 64-bit floating-point precision */
	/* integer (fixed-point) variables */
	x_d = 0.85;
	y_d = 0.76;
	z_d = atan( y_d / x_d); /* call to std-C math routine */
	x_i = x_d * (1 << 14); /* convert to 16-bit integers*/
	y_i = y_d * (1 << 14); /* convert to 16-bit integers*/
	z_i = z_d * (1 << 14); /* convert to 16-bit integers*/

	printf( "x_d = %f\t\t\tx_i = %i\n", x_d, x_i);
	printf( "y_d = %f\t\t\ty_i = %i\n", y_d, y_i);
	printf( "z_d = %f\t\t\tz_i = %i\n", z_d, z_i);
	printf( "\n");
	printf( "The angle table:\n");
	int i;
	float scale=1;
	for( i=0; i<15; i++) {
		printf( "z[%2i] = %i\n", i,
		(int)(atan( pow( 2.0, (double)(-i))) * (1 << 14)));
		scale=scale*pow(1+pow(2,0-2*i),0.5);
		printf("scale: %f",scale);
	}
	printf("scale: %f",scale);
}
