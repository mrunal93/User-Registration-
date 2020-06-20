#!/bin/bash -x
echo "Welcome to User Registration"

read -p "Enter your first name:" name
read  -p "Enter your Last name:" Lname
pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $name =~ $pattern ]]
then
	echo "Valid"
else
	echo "Invalid"

fi
if [[ $Lname =~ $pattern ]]
then
        echo "Valid"
else
        echo "Invalid"

fi


