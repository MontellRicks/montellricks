<#
.SYNOPSIS
   Camera access from the lock screen must be disabled.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
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
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000005"
Write-Output "[*] Disabling camera access from the lock screen..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"
    $valueName = "NoLockScreenCamera"
    $desiredValue = 1

    # Create the registry key if it does not exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000005 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-CC-000005
[*] Disabling camera access from the lock screen...
[✔] Registry value 'NoLockScreenCamera' set to 1 at HKLM:\SOFTWARE\Policies\Microsoft\Window
s\Personalization
[✔] STIG WN10-CC-000005 remediation completed successfully.

PS C:\Users\montystig> 

# YOUR CODE GOES HERE
# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000005"
Write-Output "[*] Disabling camera access from the lock screen..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"
    $valueName = "NoLockScreenCamera"
    $desiredValue = 1

    # Create the registry key if it does not exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000005 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}
