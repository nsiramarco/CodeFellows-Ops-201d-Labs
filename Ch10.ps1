# Script Name:                  Challenge 10
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/07/2023
# Purpose:                      Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.
#                               Include language appropriate syntax and file extensions.


# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending  | Format-Table ProcessName, CPU # ChatGPT used to help only display processname and CPU

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending | Format-Table ProcessName, Id

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 Name, WS # ChatGPT on how to output (WS(K)) in powershell

# Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process "chrome.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) { Start-Process "notepad.exe" }

# Close all instances of the Notepad.
Get-Process | Where-Object {$_.Name -eq "notepad"} | Stop-Process

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Get-Process  | Format-Table ProcessName, Id
$pid = Read-Host "Enter the PID of the process to kill or press (CTRL+C) to exit" #ChatGPT used to help on how to have user input added
Stop-Process -Id $pid -Force