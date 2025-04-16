<#
.SYNOPSIS
    Attachments must be prevented from being downloaded from RSS feeds.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000295

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000295"
Write-Output "[*] Preventing attachments from being downloaded from RSS feeds..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds"
    $valueName = "DisableEnclosureDownload"
    $desiredValue = 1

    # Create the key path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000295 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}


[+] Remediating STIG: WN10-CC-000295
[*] Preventing attachments from being downloaded from RSS feeds...
[*] Created registry path: HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds
[✔] Registry value 'DisableEnclosureDownload' set to 1 at HKLM:\SOFTWARE\Policies\Microsoft\Internet Expl
orer\Feeds
[✔] STIG WN10-CC-000295 remediation completed successfully.

PS C:\Users\montystig> 
#>

# YOUR CODE GOES HERE
# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-CC-000295"
Write-Output "[*] Preventing attachments from being downloaded from RSS feeds..."

try {
    $regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds"
    $valueName = "DisableEnclosureDownload"
    $desiredValue = 1

    # Create the key path if it doesn't exist
    if (-not (Test-Path $regPath)) {
        New-Item -Path $regPath -Force | Out-Null
        Write-Output "[*] Created registry path: $regPath"
    }

    # Set the registry value
    Set-ItemProperty -Path $regPath -Name $valueName -Type DWord -Value $desiredValue -Force
    Write-Output "[✔] Registry value '$valueName' set to $desiredValue at $regPath"

    Write-Output "[✔] STIG WN10-CC-000295 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while applying the registry setting."
    Write-Output $_
}

