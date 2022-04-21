use strict;
use warnings;
require HTTP::Request;

my $file = 'urls.txt';
open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {   
    print $line;
	
	$request = HTTP::Request->new(GET => "http://${line}/?s=");
	
    last if $. == 2;
}

close $info;