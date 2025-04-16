 <#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
# Remediation Script: Configure Application Event Log Maximum Size
# User Context: PS C:\Users\montystig>
# Description: Sets Application event log max size to 0x8000 (32,768 bytes)

Write-Output "`n[+] Configuring Application Event Log Maximum Size"
Write-Output "[*] Setting MaxSize to 0x8000 (32768 bytes)..."

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

# Ensure the registry key exists
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
    Write-Output "[+] Created missing registry path: $regPath"
}

# Set the MaxSize DWORD value to 0x8000
Set-ItemProperty -Path $regPath -Name "MaxSize" -Value 0x8000 -Type DWord
Write-Output "[✔] MaxSize successfully set to 0x8000 (32768 bytes)"

# Confirm the value was set
$current = Get-ItemProperty -Path $regPath -Name "MaxSize"
Write-Output ("[i] Current MaxSize value: {0}" -f $current.MaxSize)

Write-Output "`n[✓] Application Event Log size configuration complete for user: montystig"

#>


# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

# Ensure the registry key exists (creates it if not)
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the MaxSize DWORD value to 0x8000 (32,768 bytes)
Set-ItemProperty -Path $regPath -Name "MaxSize" -Value 0x8000 -Type DWord

# Confirm the value was set
Get-ItemProperty -Path $regPath | Select-Object MaxSize
 
