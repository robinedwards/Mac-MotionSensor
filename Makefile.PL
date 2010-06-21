use 5.008000;
use ExtUtils::MakeMaker;

my $bits_are_64 = unpack("L!", pack("LL", 0x12345678, 0x9ABCDEF)) >= 2**32;

if ($bits_are_64) {
    print '-' x 80 . "\n";
    print "64 BIT PERL, BOLLOCKS. THIS *PROBABLY* WONT WORK!\n";
    print '-' x 80 . "\n";
}

WriteMakefile(
    NAME              => 'Mac::MotionSensor',
    VERSION_FROM      => 'lib/Mac/MotionSensor.pm', # finds $VERSION
    PREREQ_PM         => {}, 
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Mac/MotionSensor.pm', # retrieve abstract from module
       AUTHOR         => 'Robin Edwards <robin.ge@gmail.com>') : ()),
    LIBS              => [''],
	LDDLFLAGS         => '-bundle -flat_namespace -undefined dynamic_lookup -framework CoreFoundation -framework IOKit',
    OBJECT            => '$(O_FILES)',
);
