#!/bin/bash

# Create a script which will print a random word. There is a file containing a list of words on your system (usually /usr/share/dict/words or /usr/dict/words). Hint: Piping will be useful here.


word=/usr/share/dict/words

#The below if statement checks if you have the wordlist file and gives an error code if it doesn't
if [ ! -f $word ]; then
	echo "Wordlist does not exist, consider installing a wordlist"
	exit 1
fi

shuf $word | head -1


