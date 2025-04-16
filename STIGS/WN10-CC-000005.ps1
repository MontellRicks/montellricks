<#
.SYNOPSIS
   Camera access from the lock screen must be disabled.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    
# Remediation Script: WN10-CC-000005
# User Context: PS C:\Users\montystig>
# Description: Disables camera access on the Windows lock screen via registry

Write-Output "`n[+] Remediating STIG: WN10-CC-000005"
Write-Output "[*] Disabling camera access from the lock screen..."

# Define the registry path for lock screen camera policy
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Create the key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
    Write-Output "[+] Created registry path: $regPath"
}

# Set NoLockScreenCamera to 1 (disable camera on lock screen)
Set-ItemProperty -Path $regPath -Name "NoLockScreenCamera" -Value 1 -Type DWord
Write-Output "[✔] Camera access on lock screen has been DISABLED."

# Confirm the setting
$current = Get-ItemProperty -Path $regPath -Name "NoLockScreenCamera"
Write-Output ("[i] Current NoLockScreenCamera value: {0}" -f $current.NoLockScreenCamera)

Write-Output "`n[✓] STIG WN10-CC-000005 remediation complete for user: montystig"


# Must be run as Administrator
Write-Output "`n[+] Remediating STIG: WN10-CC-000005"
Write-Output "[*] Disabling camera access from the lock screen..."

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Create the key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the NoLockScreenCamera value to 1 (disable camera)
Set-ItemProperty -Path $regPath -Name "NoLockScreenCamera" -Value 1 -Type DWord

# Confirm the setting
$current = Get-ItemProperty -Path $regPath -Name "NoLockScreenCamera"
Write-Output ("[✔] NoLockScreenCamera set to: {0}" -f $current.NoLockScreenCamera)

