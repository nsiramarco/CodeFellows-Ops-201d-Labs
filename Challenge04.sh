#!/bin/bash

# Script Name:                  Directory Creations
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      04/27/2023
# Purpose:                      Create directories and also have them in new text files in each directory

# Declaration of variables
# Creates four directories: dir1, dir2, dir3, dir4
mkdir dir1 dir2 dir3 dir4


# Declaration of functions


# Main
# Put the names of the four directories in an array
directories=(dir1 dir2 dir3 dir4)

      
# References the array variable to create a new .txt file in each directory
for dir in "${directories[@]}"; do
    touch "$dir"/"$dir".txt
done

# End