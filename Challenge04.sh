#!/bin/bash

# Script Name:                  Script Name
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      00/00/0000
# Purpose:                      Purpose

# Declaration of variables
# Creates four directories: dir1, dir2, dir3, dir4
dirs=("dir1" "dir2" "dir3" "dir4")


# Declaration of functions


# Main

# Put the names of the four directories in an array
for dir in "${dirs[@]}"
do
  
    # Create the directory if it doesn't exist
      mkdir -p "$dir"
      
# References the array variable to create a new .txt file in each directory

  touch "$dir/$dir.txt"


done

# End