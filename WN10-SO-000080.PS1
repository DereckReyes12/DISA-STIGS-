<#
.SYNOPSIS
    This PowerShell script sets the interactive logon message title for users attempting to log on, as required by DISA STIG WN10-SO-000080.

.DESCRIPTION
    The script sets the 'LegalNoticeCaption' registry value under:
    HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
    to display a compliant logon message title such as "DoD Notice and Consent Banner." This ensures that Windows 10 systems meet DoD security requirements for login banners.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000080

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>


# PowerShell remediation
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "LegalNoticeCaption" -Value "DoD Notice and Consent Banner"

#Verifying if it worked
(Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System").LegalNoticeCaption

#should return
DoD Notice and Consent Banner


