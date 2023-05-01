#!/bin/bash

# Script Name:                  Challenge 05
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      04/28/2023
# Purpose:                      1. Displays running processes
#                               2. Asks the user for a PID
#                               3. Kills the process with that PID
#                               4. Starts over at step 1 and continues until the user exits with Ctrl + C

# Declaration of variables
while true; do

# Declaration of functions
# Displays running processes
    ps aux

        # Asks the user for a PID
        read -p "Enter PID to kill or (Ctrl + C) to exit: " pid

        # Kills the process with that PID
        # Starts over at step 1 and continues until the user exits with Ctrl + C
        kill -9 "$pid"

        echo "Process with PID $pid has been killed."

done


# Main



# End
