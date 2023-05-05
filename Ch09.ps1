# Script Name:                  Challenge 09
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/04/2023
# Purpose:                      Use Powershell ISE

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
cd $home\Desktop\ch09 #ChatGPT used to navigate to desktop file
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File -FilePath last_24.txt

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.
cd $home\Desktop\ch09
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath errors.txt

# Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -Logname System -InstanceId 16

# Print to the screen the most recent 20 entries from the System event log.
Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -LogName System -Newest 500 | Format-List Source, Message #ChatGPT to help with formatting a list with the source and display the message
