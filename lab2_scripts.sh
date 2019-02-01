#!/bin/bash
# Authors : Vamshi Arugonda
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter Regular Expression"
read regex
echo "Enter Filename"
read filein
#collecting inputs from user 

grep $regex $filein
#finding in file given user provided regex

count1=$(grep -c "\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}" $filein) #syntax from stack overflow
#finding any instance of phone numbers
#grep -c "[[:alnum:]]\+@[[:alnum:]]\+" $filein
count2=$(grep -c "@" $filein)
#finding emails

echo "Count of phone numbers: $count1"
echo "Count of emails: $count2"

#search for numbers that start with 303 and add to text file
areanums=$(grep "\(([303]\{3\})\|[303]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}" $filein)
echo "$areanums" >phone_results.txt

#search for emails and add to text file
geoemails=$(grep "@geocities.com" $filein)
echo "$geoemails" >email_results.txt

command=$(grep $1 "regex_practice.txt")
echo "$command" >command_results.txt