<#
.SYNOPSIS
    Solicited Remote Assistance must not be allowed.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000155

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000155"
Write-Output "[*] Disabling Solicited Remote Assistance..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
    $valueName = "fAllowToGetHelp"
    $desiredValue = 0

    # Create the registry key if it does not exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the value to disable solicited remote assistance
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000155 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-CC-000155
[*] Disabling Solicited Remote Assistance...
[✔] Registry value 'fAllowToGetHelp' set to 0 at HKLM:\SOFTWARE\Policies\Microsoft\Windows N
T\Terminal Services
[✔] STIG WN10-CC-000155 remediation completed successfully.

PS C:\Users\montystig>


# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000155"
Write-Output "[*] Disabling Solicited Remote Assistance..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
    $valueName = "fAllowToGetHelp"
    $desiredValue = 0

    # Create the registry key if it does not exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the value to disable solicited remote assistance
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000155 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}
