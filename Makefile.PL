use 5.008001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my $SDK = `ls /Developer/SDKs | sort -r | head -n 1`;
chomp($SDK);


WriteMakefile(
    NAME              => 'Mac::MotionSensor',
    VERSION_FROM      => 'lib/Mac/MotionSensor.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Mac/MotionSensor.pm', # retrieve abstract from module
       AUTHOR         => 'Robin Edwards <rob@london.net-a-porter.com>') : ()),
    LIBS              => [''], # e.g., '-lm'
    DEFINE            => '-DPERL_DARWIN', # e.g., '-DHAVE_SOMETHING'
	# Un-comment this if you add C files to link with later:
    CCFLAGS           => "-Wall -fno-common -fno-strict-aliasing -pipe -fstack-protector -arch x86_64 "
                        ."-isysroot /Developer/SDKs/$SDK ",
    LDDLFLAGS         => "-bundle -undefined dynamic_lookup -fstack-protector -arch x86_64 "
                        ."-Wl,-syslibroot,/Developer/SDKs/$SDK,-framework,IOKit,-framework,CoreFoundation",
#    OPTIMIZE          => '-Os',
    OBJECT            => 'MotionSensor.o motionsimple.o unimotion.o', # link all the C files too
);
