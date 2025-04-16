<#
.SYNOPSIS
    PowerShell script block logging must be enabled on Windows 10.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000326

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\Users\montystig> # Must be run as Administrator
Write-Output "`n[+] Remediating STIG: WN10-CC-000326"
Write-Output "[*] Enabling PowerShell Script Block Logging..."

# Define registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the EnableScriptBlockLogging value to 1 (enabled)
Set-ItemProperty -Path $regPath -Name "EnableScriptBlockLogging" -Value 1 -Type DWord

# Confirm the setting
$current = Get-ItemProperty -Path $regPath -Name "EnableScriptBlockLogging"
Write-Output ("[✔] EnableScriptBlockLogging set to: {0} (1 = Enabled)" -f $current.EnableScriptBlockLogging)


[+] Remediating STIG: WN10-CC-000326
[*] Enabling PowerShell Script Block Logging...
[✔] EnableScriptBlockLogging set to: 1 (1 = Enabled)

PS C:\Users\montystig> 
#>

# Must be run as Administrator
Write-Output "`n[+] Remediating STIG: WN10-CC-000326"
Write-Output "[*] Enabling PowerShell Script Block Logging..."

# Define registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the EnableScriptBlockLogging value to 1 (enabled)
Set-ItemProperty -Path $regPath -Name "EnableScriptBlockLogging" -Value 1 -Type DWord

# Confirm the setting
$current = Get-ItemProperty -Path $regPath -Name "EnableScriptBlockLogging"
Write-Output ("[✔] EnableScriptBlockLogging set to: {0} (1 = Enabled)" -f $current.EnableScriptBlockLogging)
