#include "motionsimple.h"
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>

int get_raw_x(void) {
	int x, y, z, type;
	type = detect_sms();
	if( read_sms_raw(type, &x, &y, &z) ) {
		return x;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}

int get_raw_y(void) {
	int x, y, z, type;
	type = detect_sms();
	if( read_sms_raw(type, &x, &y, &z) ) {
		return y;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}

int get_raw_z(void) {
	int x, y, z, type;
	type = detect_sms();
	if( read_sms_raw(type, &x, &y, &z) ) {
		return z;
	}
	else {
		fprintf(stderr, "Could not detect an SMS\n");
		return 0;
	}
}

