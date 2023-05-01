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
# Check if the path exists
if [ -e "$path" ]; then
    echo "$path exists already."
else
    # If the path doesn't exist, create it
    if [ -f "$path" ]; then
        # Create a file
        touch "$path"
        echo "$path created successfully."
    elif [ -d "$path" ]; then
        # Create a directory
        mkdir "$path"
        echo "$path created successfully."
    else
        echo "$path is not a valid file or directory path."
    fi
fi


# End