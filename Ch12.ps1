# Script Name:                  Challenge 12
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/09/2023
# Purpose:                      Write a Powershell script that returns the IPv4 address of the computer.
#                               Use Select-String cmdlet to only return the IPv4 address string and no other extraneous information.

# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
cd $home\Desktop\ch09
Get-NetIPAddress -AddressFamily IPV4 | Out-File -FilePath network_report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path network_report.txt -Pattern '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value

# Remove the network_report.txt when you are finished searching it.
Remove-Item -Path network_report.txt

# END