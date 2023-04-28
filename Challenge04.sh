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


#     Explanation: 
#     This script uses the mkdir command to create the four directories, 
#     then puts their names in an array called directories. The script 
#     then loops through the array using a for loop and creates a new 
#     .txt file in each directory using the touch command. The resulting 
#     file names will be dir1/dir1.txt, dir2/dir2.txt, dir3/dir3.txt, and
#     dir4/dir4.txt.






