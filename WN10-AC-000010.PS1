<#
.SYNOPSIS
    This PowerShell script sets the account lockout threshold to 3 invalid logon attempts, as required by DISA STIG WN10-AC-000010.

.DESCRIPTION
    The script uses the `net accounts` command to configure the account lockout threshold. This setting limits the number of invalid login attempts before an account is locked, helping to prevent brute-force attacks. A value of 3 or fewer is compliant, while 0 (no lockout) is not acceptable per STIG guidelines.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000010

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

# Powershell remediation
# Set lockout threshold to 3 invalid login attempts
net accounts /lockoutthreshold:3

# Verify
net accounts
# Look for 
Lockout threshold (invalid logon attempts): 3

