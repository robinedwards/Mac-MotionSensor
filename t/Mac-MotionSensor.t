# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Mac-MotionSensor.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 1;
BEGIN { use_ok('Mac::MotionSensor') };

my $type =  Mac::MotionSensor::detect_sms();
diag "type: $type".
diag "x: ".Mac::MotionSensor::get_raw_x($type);
diag "y: ".Mac::MotionSensor::get_raw_y($type);
diag "z: ".Mac::MotionSensor::get_raw_z($type);

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

