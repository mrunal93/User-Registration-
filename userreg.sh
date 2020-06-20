#!/bin/bash
echo "Welcome to User Registration"

read -p "Enter your first name:" name
pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $name =~ $pattern ]]
then
	echo "Valid"
else
	echo "Invalid"

fi

