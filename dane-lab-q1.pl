#!/usr/bin/env -q perl
##	Copyright (C) 2014 Dane Leckey
##  Script Langugage Programming - Lab 1
##  Question 1 :
##  Write a perl script to iterate through a list of numeric values. Print smallest and largest value. 
##  If less than two elements, show error message.
use strict;
use warnings;

##  Define Array
my @elements = (-2,3,4,11,23,55);
#my @elements = (-3);
my $min = $elements[0];
my $max = $elements[0];

print "Lab 1 - Question 1\n";
if(scalar(@elements) < 2) {
	die("Less than two array elements... Exiting\n");;
} else {
	print("Element Check OK!\n");
}

############################################################
## implementation using 'foreach' loop structure
############################################################
print("Using 'foreach' loop structure\n");
foreach my $e (@elements ) {
	$min = $min > $e ? $e : $min;
	$max = $max < $e ? $e : $max;
}
print("Smallest: $min\n");
print("Largest: $max\n");
# reset values
$min = 0;
$max = 0;

############################################################
## implementation using 'while' loop structure
############################################################
print("Using 'while' loop structure\n");
my $counter = 0;
while($counter < @elements) {
	$min = $min > $elements[$counter] ? $elements[$counter] : $min;
	$max = $max < $elements[$counter] ? $elements[$counter] : $max;
	$counter++;
}
print("Smallest: $min\n");
print("Largest: $max\n");
# reset values.
$min = 0;
$max = 0;

############################################################
## implementation using 'do-while' loop control structure
############################################################
print("Using 'do-while' loop control structure\n");
$counter = 0;
do {
	$min = $min > $elements[$counter] ? $elements[$counter] : $min;
	$max = $max < $elements[$counter] ? $elements[$counter] : $max;
	$counter++;
} while ($counter < @elements);
print("Smallest: $min\n");
print("Largest: $max\n");