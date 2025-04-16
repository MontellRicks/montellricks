<#
.SYNOPSIS
 The Deny access to this computer from the network user right on workstations must be configured to prevent access from highly privileged domain accounts and local accounts on domain systems and unauthenticated access on all systems.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-UR-000070

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-UR-000070"
Write-Output "[*] Limiting local account use of blank passwords to console logon only..."

try {
    $regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
    $valueName = "LimitLocalAccountUseOfBlankPasswords"
    $desiredValue = 1

    # Ensure the registry key exists
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the required registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-UR-000070 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-UR-000070
[*] Limiting local account use of blank passwords to console logon only...
[✔] Registry value 'LimitLocalAccountUseOfBlankPasswords' set to 1 at HKLM:\SYSTEM\CurrentCo
ntrolSet\Control\Lsa
[✔] STIG WN10-UR-000070 remediation completed successfully.

PS C:\Users\montystig> 
# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-UR-000070"
Write-Output "[*] Limiting local account use of blank passwords to console logon only..."

try {
    $regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
    $valueName = "LimitLocalAccountUseOfBlankPasswords"
    $desiredValue = 1

    # Ensure the registry key exists
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the required registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-UR-000070 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}
