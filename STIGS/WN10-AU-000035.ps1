<#
.SYNOPSIS
  The system must be configured to audit Account Management - User Account Management failures.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-16
    Last Modified   : 2025-04-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000035

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
PS C:\Users\montystig> # Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-AU-000035"
Write-Output "[*] Configuring audit policy for 'User Account Management' failures..."

try {
    # Set Audit Policy using auditpol.exe
    $auditSetting = "User Account Management"
    $desiredAuditLevel = "Failure"

    # Apply the setting
    auditpol /set /subcategory:"$auditSetting" /failure:enable | Out-Null

    Write-Output "[✔] Audit policy for '$auditSetting' failures has been enabled."
    Write-Output "[✔] STIG WN10-AU-000035 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while configuring audit policy."
    Write-Output $_
}


[+] Remediating STIG: WN10-AU-000035
[*] Configuring audit policy for 'User Account Management' failures...
[✔] Audit policy for 'User Account Management' failures has been enabled.
[✔] STIG WN10-AU-000035 remediation completed successfully.

PS C:\Users\montystig> 


# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-AU-000035"
Write-Output "[*] Configuring audit policy for 'User Account Management' failures..."

try {
    # Set Audit Policy using auditpol.exe
    $auditSetting = "User Account Management"
    $desiredAuditLevel = "Failure"

    # Apply the setting
    auditpol /set /subcategory:"$auditSetting" /failure:enable | Out-Null

    Write-Output "[✔] Audit policy for '$auditSetting' failures has been enabled."
    Write-Output "[✔] STIG WN10-AU-000035 remediation completed successfully."
}
catch {
    Write-Output "[!] An error occurred while configuring audit policy."
    Write-Output $_
}

