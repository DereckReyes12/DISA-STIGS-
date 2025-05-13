<#
.SYNOPSIS
    This PowerShell script sets the "Reset account lockout counter after" value to 15 minutes, as required by DISA STIG WN10-AC-000015.

.DESCRIPTION
    The script uses the `net accounts` command to configure the lockout counter reset time. This setting determines how long the system waits before clearing the failed logon attempt counter. Setting it to 15 minutes helps deter brute-force attacks by preventing unlimited retry windows.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000015

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

# powershell remediation

# Set reset account lockout counter time to 15 minutes
net accounts /lockoutwindow:15

# verify
net accounts

# what you should see
Reset account lockout counter after (minutes): 15

