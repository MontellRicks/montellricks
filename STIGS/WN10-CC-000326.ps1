<#
.SYNOPSIS
    PowerShell script block logging must be enabled on Windows 10.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : STIG WN10-CC-000326

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000326"
Write-Output "[*] Enabling PowerShell Script Block Logging..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
    $valueName = "EnableScriptBlockLogging"
    $desiredValue = 1

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000326 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-CC-000326
[*] Enabling PowerShell Script Block Logging...
[✔] Registry value 'EnableScriptBlockLogging' set to 1 at HKLM:\SOFTWARE\Policies\Microsoft\
Windows\PowerShell\ScriptBlockLogging
[✔] STIG WN10-CC-000326 remediation completed successfully.

PS C:\Users\montystig> 

# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000326"
Write-Output "[*] Enabling PowerShell Script Block Logging..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
    $valueName = "EnableScriptBlockLogging"
    $desiredValue = 1

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000326 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}
