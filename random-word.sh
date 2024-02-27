#!/bin/bash

# Create a script which will print a random word. There is a file containing a list of words on your system (usually /usr/share/dict/words or /usr/dict/words). Hint: Piping will be useful here.


word=/usr/share/dict/words

# Check if the user passed an argument and prompt then to.
if [ $# == 0 ]; then
	echo -e "Usage: $0 <word length> \neg $0 7"
	exit 1
fi

#The below if statement checks if you have the wordlist file and gives an error code if it doesn't
if [ ! -f $word ]; then
	echo "Wordlist does not exist, consider installing a wordlist"
	exit 1
fi

shuf $word | grep -w "^.\{$1\}$" | head -1

# Explainantion of the last line of code above

# The shuf command will shuffle the words in the wordlist file
# grep will filter the outputted words and using the -w flag it will match full words that match the condition given.
# ^: This is a special character in regular expressions and signifies the start of a line. It ensures that the pattern matches from the beginning of a line.
# .: This is a special character in regular expressions and matches any single character except a newline character.
# .\{$1\}: This part of the pattern matches exactly the number passed in the argument occurrences of any character. If 8 was passed by the user, the backslash \{8\} is used to specify exactly 8 occurrences of the preceding character or character class.
# $: This is a special character in regular expressions and signifies the end of a line. It ensures that the pattern matches up to the end of a line.
# Putting it all together:
#
# "^.\{$1\}$": This regular expression matches lines that start with any character, followed by exactly the number of characters (that matches the argument supplied by the user) of any type, and then end immediately. In other words, it matches lines containing exactly 8 characters (if 8 was suppliedby the user). You will also notice that I used double quotes and not single quotes, using double quotes allow for subsitution and so the variable can be swapped for the value of that variable which will be the number supplied by the user. However using single quotes will not allow such substitution.

