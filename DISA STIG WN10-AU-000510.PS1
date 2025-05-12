<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows System event log is set to at least 32768 KB (32 MB) as required by DISA STIG WN10-AU-000510.

.DESCRIPTION
    The script creates the required registry path if it does not exist and sets the 'MaxSize' value under:
    HKLM:\Software\Policies\Microsoft\Windows\EventLog\System
    This ensures compliance with system log retention requirements for forensic analysis and system reliability monitoring.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000065

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

#Script run to fix this issue 
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Name "MaxSize" -PropertyType DWord -Value 32768 -Force

#To check if it worked enter this in Powershell
Get-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System"


