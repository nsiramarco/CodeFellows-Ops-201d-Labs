#!/bin/bash

# Script Name:                  Challenge 06
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/01/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
#                               Your script must use at least one array, one loop, and one conditional.

# Declaration of variables
# Create a script that detects if a file or directory exists
read -p "Enter the file or directory: " path


# Declaration of functions


# Main
# Name of the file or directory to be created
name read -p "Enter the name of the file or directory to be created: "

# Array with the possible paths to the file or directory
paths=("/home/ns/CodeFellows-Ops-201d-Labs/CodeFellows-Ops-201d-Labs-2/$name")

# Loop through each path in the array
for path in "${paths[@]}"
do
    # Check if the path exists
    if [ -e "$path" ]
    then
        echo "Path already exists: $path"
    else
        # If the path does not exist, create it
        mkdir -p "$path"
        echo "Created path: $path"
    fi
done


# End