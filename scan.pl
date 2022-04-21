use strict;
use warnings;
require HTTP::Request;

my $file = 'urls.txt';

open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {   

    print $line;
	
	for ($b=1; $b<=50; $b+=1) {
        
        $res = HTTP::Request->new(GET => "http://${line}/?s=");

        while ($res =~ m/http\%3a\/\/(.+?)\"/g) {
            
            my $link = $1;
        }
    }
	
    last if $. == 2;
}

close $info;