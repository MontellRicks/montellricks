<#
.SYNOPSIS
    Outgoing secure channel traffic must be encrypted when possible.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000040

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-SO-000040"
Write-Output "[*] Ensuring outgoing secure channel traffic is encrypted..."

try {
    $regPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters"
    $valueName = "SealSecureChannel"
    $desiredValue = 1

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-SO-000040 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-SO-000040
[*] Ensuring outgoing secure channel traffic is encrypted...
[✔] Registry value 'SealSecureChannel' set to 1 at HKLM:\SYSTEM\CurrentControlSet\Services\N
etlogon\Parameters
[✔] STIG WN10-SO-000040 remediation completed successfully.

PS C:\Users\montystig> 


# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-SO-000040"
Write-Output "[*] Ensuring outgoing secure channel traffic is encrypted..."

try {
    $regPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters"
    $valueName = "SealSecureChannel"
    $desiredValue = 1

    # Create the registry path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-SO-000040 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}

