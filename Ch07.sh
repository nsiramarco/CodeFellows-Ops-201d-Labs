#!/bin/bash

# Script Name:                  Challenge 07
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/02/2023
# Purpose:                      Uses lshw to display system information to the screen about the following components:
#                               Name of the computer
#                               CPU: Product, Vendor, Physical ID, Bus info, Width
#                               RAM: Description, Physical ID, Size
#                               Display adapter: Description, Product, Vendor, Physical ID, Bus info, Width, Clock, Capabilities, Configuration, Resources
#                               Network adapter: Description, Product, Vendor, Physical ID, Bus info, Logical name, Version, Serial, Size, Capacity, Width, Clock, Capabilities, Configuration, Resources
#                               Uses grep to remove irrelevant information from the lshw output
#                               Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
#                               Runs as Root; you may execute the shell script with sudo or as Root


# Declaration of variables

# Declaration of functions


# Main
# Print computer name
echo "Computer Name:"
sudo lshw -class system | head -n 1
echo "---------------"

# Print information
echo "CPU Information:"
sudo lshw | grep -A6 *-cpu

echo "RAM Information:"
sudo lshw | grep -A4 '*-memory' | grep -v 'slot'

echo "Adapter Information:"
sudo lshw | grep -A11 *-display | grep -v 'version' 

echo "Network Adapter Information:"
sudo lshw | grep -A15 *-network


# End