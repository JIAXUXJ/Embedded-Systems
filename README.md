# Embedded-Systems
PROJEC-cordic

name: 	Yuhe Jin - yuhejin@uvic.ca 
	Jia Xu - xujia@uvic.ca

file included: cordic_TB.c -- a test bench using math standard C library, 
			the executable outputs the angle table(which is 
			neede in the fixed_point implementation).
	       cordic_fixed_time.c -- implement CORDIC algorithm, only 
	       		integer operations are used.
	       cordic_fixed_opt_rev3_time.c -- modified by using 
	       		optimization methods to improve the efficiency.
	       cordic_fixed_time.s -- assembly file generated from 
	       		cordic_fixed_time.c.
	       cordic_fixed_opt_rev3_time.s -- assembly file generated from 
	       		 cordic_fixed_opt_rev3_time.c.
	       cordic_fixed_opt_rev3_time_full.s -- modified mutually 
	       		 exclusive load and move opertions on 
	       		 ordic_fixed_opt_rev3_time.s.
	       cordic_fixed_time.o -- the arm-based executable file compiled 
	          	 from cordic_fixed_time.c.
	       cordic_fixed_opt_rev3_time.o -- the arm-based executable file 
	        	 compiled from cordic_fixed_opt_rev3_time.c.
	       cordic_fixed_opt_rev3_time_full.o -- the arm-based executable file 
	        	 compiled from cordic_fixed_opt_rev3_time_full.s.
