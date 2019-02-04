#!/bin/bash
# Authors : Chad Wireman
# Date: 2/3/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!


# get command-line arguments
regexp="$1"
filename="$2"
# grep on user input
grep $regexp $filename

# grep prints the number of lines that are XXX-XXX-XXXX where X is an integer
echo "Number of phone numbers:"
grep "^[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}$" regex_practice.txt | wc -l

# grep prints the number of lines that are lettersOrNums@letterOrNum.com
echo "Number of emails:"
grep "^[A-Za-z0-9]*@[A-Za-z0-9]*.com$" regex_practice.txt | wc -l

# grep stores lines that are 303-XXX-XXXX where x is an integer in phone_resuts.txt
grep "^303-[0-9]\{3\}-[0-9]\{4\}$" regex_practice.txt > phone_results.txt
echo "List of 303 Numbers stored in phone_results.txt"

# grep stores lines that are lettersOrNums@geocities.com in phone_resuts.txt
grep "^[A-Za-z0-9]*@geocities.com$" regex_practice.txt > email_results.txt
echo "List of geocities email addresses stored in email_results.txt"

# grep stores lines that are ^anyCharacterButReturn$ in phone_resuts.txt
grep "^\^.*\$$" regex_practice.txt > command_results.txt
echo "List of command-line regular expressions stored in command_resutsl.txt"
