#!/bin/bash

#This is a simple script that takes an argument from the user and counts the number of letters in that word.

#To do this I used command substitution.
#The command to check the character count is wc -m (or -c) so I first outputed (with echo with the -n flag to remove the newline so it doesn't count it as a character) the word the user supplied using the first argument $1.
#This is passed as an input for the " tr -d " " " command that I used in removing the whitespace and so the white space won't be counted as a character in the command.
#This is then passed as input for the word cound using pipe (|) .
#
#All this was saved as a variable (var1)
#
#var1 value is the result of the command and so the command must be in a bracket and the bracket must have a $ before it.

var1=$( echo -n "$1" | tr -d " " | wc -c )

#Finally I pass the word count result to the user using echo.

echo "There are $var1 letters in $1"
