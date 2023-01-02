#!/usr/bin/perl
use strict;
use CGI;
my $form=CGI->new();
&water_init();
print "Content-Type: text/html; charset=utf-8\n\n";
print <<"HTML";
<html>
<head><title>Planter</title></head>
<body>
<h1>Keep them hydrated!</h1>
<h1><form action='' method='post'><input type='submit' name='water' value='WATER'></form><h1>
<img src="./capture.cgi" style="transform-origin: bottom left; transform:rotate(90deg) scale(0.7) translateX(-80%);"> 
</body>
</html>
HTML

if($form->param('water')){
&water();
}

sub water_init{
system("raspi-gpio set 2 op");
}

sub water{
system("raspi-gpio set 2 dh");
system("sleep 10");
system("raspi-gpio set 2 dl");
}
exit;

