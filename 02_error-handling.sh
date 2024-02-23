#!/bin/bash

# Problem Statement

#This exercise requires you to handle various errors.
# The goal of this exercise is to consider the number of arguments passed to your program. If there is exactly one argument, print a greeting message. Otherwise print an error message and exit with a non-zero status.

# Check if the only one script argument passed 

if (( $# == 1 ))
then 
    echo "Hello, $1"

# Specify the correct syntax if that isn't the case and signify an error with the exit 1 parameter
else
    echo "Usage: error_handling.sh <person>"
    exit 1
fi