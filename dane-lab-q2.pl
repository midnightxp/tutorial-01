#!/usr/bin/env -q perl
##	Copyright (C) 2014 Dane Leckey
##  Script Langugage Programming - Tutorial 1
##  Question 1 :
##  Write a perl script to iterate through a list of numeric values. Print smallest and largest value. 
##  If less than two elements, show error message
use strict;
use warnings;

##  Define Array
my @elements = (-2,3,4,11,23,55);
#my @elements = (-3);

print "Tutorial 1 - Question 1\n";

# Implementation Using unless in replacement of if-else
unless (@elements >= 2) {
	die("Less than two array elements... Exiting\n");
} else {
	print("Element Check OK!\n");
}

## Sort Array, get the first and last indexes to show 
## smallest and largest element values. Implicitly calls
## an iterator.
my @sorted = sort(@elements);
print("Smallest:  $sorted[0]\n");
print("Largest: $sorted[scalar(@sorted)-1]\n");


####################################################
## Clear iterative method of achieving  
## the same outcome.
####################################################
my $min = $elements[0];
my $max = $elements[0];

for(my $i = 0; $i < @elements; $i++) {
	$min = $min > $elements[$i] ? $elements[$i] : $min;
	$max = $max < $elements[$i] ? $elements[$i] : $max;
}

print("Smallest: $min\n");
print("Largest: $max\n");

