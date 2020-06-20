#!/bin/bash 
echo "Welcome to User Registration"

Name_pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
Email_pattern="^[a-zA-z0-9]+(\.[a-zA-z0-9+])*@([a-z0-9]+([a-z0-9]*)\.)+[a-z]{2,4}$"
mobile_pattern="^[1-9]{2}[[:space:]]{1}[0-9]{10}$"
Password_pattern="^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]{3,})\w{6,13}$"
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
function mobile() {
	echo "Enter your mobile"
	validate $mobile_pattern
}
function password() {
	echo "Enter password"
	validate $password_pattern
}

function patternEnter() {
	FirstName
	LirstName
	Email
	mobile
	password
}

patternEnter
