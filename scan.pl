use strict;
use warnings;

my $file = 'urls.txt';
open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {   
    print $line;    
    last if $. == 2;
}

close $info;