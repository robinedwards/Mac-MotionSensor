#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "motionsimple.h"


MODULE = Mac::MotionSensor		PACKAGE = Mac::MotionSensor		

int
get_raw_x()

int
get_raw_y()

int
get_raw_z()
