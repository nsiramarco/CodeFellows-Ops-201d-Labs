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


# The script uses a while loop to ensure that the script repeats until the user exits the script by pressing Ctrl + C. 
# Inside the loop, the script uses the ps aux command to display the running processes, then prompts the user to enter a 
# PID to kill. If the user enters a valid PID, the script uses the kill command with the -9 option to send a SIGKILL signal (signal number 9) 
# to the process with that PID, which terminates the process. If the PID is not valid or the process cannot be killed 
# for some reason, the script prints an error message.
# The loop ensures that the script repeats until the user exits by pressing Ctrl + C.