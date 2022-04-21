# Veriz0wn 2022
# https://github.com/Curt-Lucas/Wordpress-Post-Scanner
# https://github.com/Curt-Lucas/Vulnerable

use strict;
use warnings;
require HTTP::Request;

my $file = 'urls.txt';
open (fh, ">", "found_urls.txt");
open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {   

    print $line;
	
	for ($b=1; $b<=50; $b+=1) {
        
	$res = HTTP::Request->new(GET => "http://${line}/page/${b}/?s=");

        while ($res =~ m/http\%3a\/\/(.+?)\"/g) {
            
			print fh $1;
        }
    }
	
    last if $. == 2;
}

close(fh) or "Couldn't close the file"; 
close $info;