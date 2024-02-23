#!/bin/bash

# Problem to solve
# Two-fer or 2-fer is short for two for one. One for you and one for me.

# Given a name, return a string with the message:

# One for name, one for me.
# Where "name" is the given name.

# However, if the name is missing, return the string:

# One for you, one for me.



# If there are no arguments passed for the name then the name would be you
if (( $# == 0 )) 
then
    name="you"
# else the name would be the argument the user passed
else
    name=$1
fi

# Finally echo the statement below
echo "One for ${name}, one for me."