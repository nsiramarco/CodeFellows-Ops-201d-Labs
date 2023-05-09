# Script Name:                  Challenge 11
# Author:                       NATASHA SIRAMARCO
# Date of latest revision:      05/08/2023
# Purpose:                      Write a Powershell script that automates the configuration of a new Windows 10 endpoint
#                               resources have been used in this  challeneg https://github.com/superswan/Powershell-SysAdmin


# Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

# Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 

# Enable Remote management
Get-Service -Name winrm

# Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force