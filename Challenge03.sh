#!/bin/bash


# Script Name:                  Challenge-03
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      04/26/2023
# Purpose:                      print the login history of users on this computer 3 times


# Declaration of variables


# Declaration of functions


# Write a function that prints the login history of users on this computer, followed by the text “This is the login history”.
function loginhistory {
  echo “This is the login history”
}


function lastlog {
    last | awk '{ printf "%-15s %-15s %-20s %-20s\n", $1, $2, $4" "$5" "$6, $7" "$8" "$9 }'
}
# In your script, call that function three times.
loginhistory


for i in {1..3}; do
  lastlog
done


# Use the same template introduced in Challenge02.


# Main


# End
