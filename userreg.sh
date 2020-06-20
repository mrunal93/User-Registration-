#!/bin/bash 
echo "Welcome to User Registration"

Name_pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
Email_pattern="^[a-zA-z0-9]+(\.[a-zA-z0-9+])*@([a-z0-9]+([a-z0-9]*)\.)+[a-z]{2,4}$"

function validate() {

	read -p "Enter:" value
	pattern=$1
	if [[ $value =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"

	fi
}

function FirstName() {
	echo "Enter your First name"
	validate $Name_pattern
	}
function LirstName() {
        echo "Enter your Lats name"
        validate $Name_pattern
        }
function Email() {
        echo "Enter your email"
        validate $Email_pattern
        }

function patternEnter() {
	FirstName
	LirstName
	Email
}

patternEnter
