<#
.SYNOPSIS
    This PowerShell script sets the account lockout duration to 15 minutes or more, as required by DISA STIG WN10-AC-000005.

.DESCRIPTION
    The script configures the Windows account lockout duration policy using the `net accounts` command. This ensures that locked accounts remain inaccessible for a minimum of 15 minutes unless manually unlocked by an administrator, enhancing protection against brute-force login attempts.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-13
    Last Modified   : 2025-05-13
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

# powershell script that was ran

# Set account lockout duration to 15 minutes
net accounts /lockoutduration:15
# to verify if it worked
net accounts
# look for 
Lockout duration (minutes):      15

