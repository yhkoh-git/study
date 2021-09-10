#main.pl

use strict;
use warnings;
use v5.24;

print "Hello Perl!\n";

my $value = 1;
my @array = (1,2,3,4,5,6,7);
my %hash;

$hash{"name"} = "gil-dong";
$hash{"age"} = 25;

say $value;
say @array;
say $hash{"name"};
say $hash{"age"};

my $file = $ARGV[0];
open(FI0, $file);

while(<FI0>) {    #FI0에 있는 값을 한줄씩 읽는다
    my $line = $_;
    if($line =~ /평가원/) {
        say $line;
    }
}

close(FI0);
