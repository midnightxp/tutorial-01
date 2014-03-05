#!/usr/bin/env perl
use warnings;
use strict;

my @days = (
    "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
    "Sunday"
    );
my $key_in;
my $day="";
my $rand_date = int(rand(6)+1);

#Debugging only
print $rand_date."\n";

#Accept user input and remove trailing new line
print "Please enter a date (1 - 31): ";
$key_in = <STDIN>;
chomp($key_in);

#date not in valid range
if($key_in > 31 || $key_in < 1) {
    die "Date selected is not possible. Exiting...\n";
}

my $date = $key_in - $rand_date;

#splits alogorithm into two to be more efficient. Entered amount either 
#greater than random number or its less.

if($key_in >= $rand_date) {

    while($date > 7) {
        $date -= 7;
    }
    $day = $days[$date];
}   
else {
    $day = $days[$date];
}

print "The date you entered is a $day\n";
if($key_in > 28 && $key_in < 32) {
    warn "Date might not be valid in current month...\n";
}

