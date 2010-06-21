#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#include "unimotion.h"
#include <stdio.h>

int get_raw_x(int type) {
	int x, y, z;
	if( read_sms_raw(type, &x, &y, &z) ) {
		return x;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}

int get_raw_y(int type) {
	int x, y, z;
	if( read_sms_raw(type, &x, &y, &z) ) {
		return y;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}

int get_raw_z(int type) {
	int x, y, z;
	if( read_sms_raw(type, &x, &y, &z) ) {
		return z;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}


MODULE = Mac::MotionSensor		PACKAGE = Mac::MotionSensor		

int
detect_sms()

int
get_raw_x(type)
	int type

int
get_raw_y(type)
	int type

int
get_raw_z(type)
	int type
