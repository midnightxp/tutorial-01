#!/usr/bin/env -q perl
##	Copyright (C) 2014 Dane Leckey
##  Script Langugage Programming - Tutorial 1
##  Question 2 :
##  Write a script to calucluate the day of a given date. 
##  Randomly generate a date between 1-7 as the first monday 
##  using rand.
##  Conditions: 
##  1). If users enters between 1-28 -> output day
##  2). If date between 29-31, same as above but with warning 
##      regarding validity of day existing in given month
##  3). If given day > 31 || < 1 error printed.
use strict;
use warnings;


# Number Randomly selected from set {1,2,3,4,5,6,7}
my $random_date = int(rand(6) + 1);

# Days of the Week Array
my @days = (
	"Monday",
	"Tuesday",
	"Wednesday",
	"Thursday",
	"Friday",
	"Saturday",
	"Sunday"
);

# Debuging - Uncomment
print("Random Number: $random_date\n");

# Get users date value, cleanse and use.
print("Please enter your date (dd) >> ");
my $user_date = <>;
chomp($user_date);

# Check validity of entered date.
if($user_date > 31 || $user_date < 1)	{
	die("Invalid Date Entered... Exiting\n");
}

# Just echo the input value ~ debugging
print("\nYou Entered $user_date\n");

## First case, assume that for the most part that entered date
## likely is later than the generated date, check that date entered
## is later than that randomly generated.
my $index = 0;

if($user_date >= $random_date) {

	for(my $i = $random_date; $i <= 31; $i++)	{		
		if($i == $user_date)	{		
			print("The day of $user_date is a $days[$index]\n");
			if($user_date > 29)	{
				warn("WARNING: The Date May NOT Exist Within Current Month (Condition > 29)\n");
			}
		}
		$index = $index++ < 7 ? $index++ : 0;
	}
} else {
	## Second case, the first monday of a given month is post the
	## entered date value
	
	for(my $i = $random_date; $i > 0; $i--)	{
		if($i == $user_date)	{
			print("The day of $user_date is a $days[$index]\n");
		}
		$index = $index-- > 0 ? $index-- : 6;
	}
}
exit;