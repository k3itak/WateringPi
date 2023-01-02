#!/usr/bin/perl

$ENV{'TZ'} = "JST-9";
print "Content-type: image/jpeg\n\n";
system("/bin/fswebcam -r 1280x720 --no-banner /images/tmp.jpg");
system("cp /images/tmp.jpg /images/`date '+%Y%m%d_%H%M%S'`.jpg");
open(FH, "</images/tmp.jpg");
binmode FH;
print <FH>
#close (FH);
