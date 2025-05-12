<#
.SYNOPSIS
    This PowerShell script ensures that Windows 10 requires a password when a computer wakes from sleep while on battery power, as required by DISA STIG WN10-CC-000145.

.DESCRIPTION
    The script sets the 'DCSettingIndex' registry value to 1 under the specified GUID for sleep settings. 
    It also sets 'ACSettingIndex' to 1 to ensure compliance when the device is plugged in, providing full coverage. 
    This enforces authentication upon wake from sleep to prevent unauthorized access.

.NOTES
    Author          : Dereck
    LinkedIn        : linkedin.com/in/DereckReyes/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2025-05-12
    Last Modified   : 2025-05-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000145

.TESTED ON
    Date(s) Tested  : 2025-05-12
    Tested By       : Dereck
    Systems Tested  : Windows 10 Pro (21H2)
    PowerShell Ver. : 5.1.19041.2364
#>

#Running this powershell commands automates setting the values to 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" -Name DCSettingIndex -Value 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" -Name ACSettingIndex -Value 1

#To verify Powershell Command worked
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51"

