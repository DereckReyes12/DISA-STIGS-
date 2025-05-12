<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Security event log is set to at least 1024000 KB (1 GB) as required by DISA STIG WN10-AU-000030.

.DESCRIPTION
    The script creates the required registry path if it does not exist and sets the 'MaxSize' value under:
    HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security
    This ensures compliance with audit log retention and forensic analysis best practices.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000505.PS1

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364

# Step 1: Create the required registry path if it doesn't exist
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Force

# Step 2: Set the MaxSize value to 1024000 KB (1 GB)
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "MaxSize" -PropertyType DWord -Value 1024000 -Force

After running the script:

Open Registry Editor (regedit)

Navigate to:

HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security
You should now see a MaxSize key set to 1024000 (decimal)

