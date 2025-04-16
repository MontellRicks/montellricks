<#
.SYNOPSIS
    The Windows Remote Management (WinRM) service must not use Basic authentication.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000345

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000345"
Write-Output "[*] Disabling Basic authentication for WinRM service..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service"
    $valueName = "AllowBasic"
    $desiredValue = 0

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value to disable Basic auth
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000345 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-CC-000345
[*] Disabling Basic authentication for WinRM service...
[*] Created registry path: HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service
[✔] Registry value 'AllowBasic' set to 0 at HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\
Service
[✔] STIG WN10-CC-000345 remediation completed successfully.

PS C:\Users\montystig>


# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000345"
Write-Output "[*] Disabling Basic authentication for WinRM service..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service"
    $valueName = "AllowBasic"
    $desiredValue = 0

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value to disable Basic auth
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000345 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}
