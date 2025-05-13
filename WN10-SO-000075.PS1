<#
.SYNOPSIS
    This PowerShell script sets the interactive logon message text for users attempting to log on, as required by DISA STIG WN10-SO-000075.

.DESCRIPTION
    The script sets the 'LegalNoticeText' registry value under:
    HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
    to display the official DoD Notice and Consent Banner message. This ensures that Windows 10 systems comply with Department of Defense requirements for informing users of monitoring and data access policies prior to logon.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000075

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

#Powershell Script
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "LegalNoticeText" -Value @"
You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only. By using this IS (which includes any device attached to this IS), you consent to the following conditions:

-The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.

-At any time, the USG may inspect and seize data stored on this IS.

-Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.

-This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.

-Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details.
"@


#powershell scripttoverify if it worked
(Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System").LegalNoticeText

If the full message displays (or begins with “You are accessing a U.S. Government...”), you're good 
