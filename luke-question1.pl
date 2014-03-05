#!/usr/bin/env perl
use warnings;
use strict;

my @numbers = (3,10, -2, 9.8, 23,893, 74, 12, 377);
my $size = @numbers;
my $min = $numbers[0];
my $max;

if($size < 2) {
    die "There are less than two elements in the array!!!\n";
}

for my $number (@numbers) {
   
    if($min > $number) {
        $min = $number;
    }
    $max = $min;
    if($max < $number) {
        $max = $number;
    }
}

print "Minimum number is: $min\n";
print "Maximum number is: $max\n";
