<#
.SYNOPSIS
   The system must be configured to audit Account Management - User Account Management failures.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
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
    # Remediation Script for STIG ID: WN10-AU-000035
# User Context: PS C:\Users\montystig>
# Description: Enables audit logging for Logoff events (Success)

Write-Output "`n[+] Remediating STIG: WN10-AU-000035"
Write-Output "[*] Ensuring audit policy is set to audit Logoff events (Success)..."

# Enable auditing for Logoff events (Success only)
AuditPol.exe /set /subcategory:"Logoff" /success:enable

# Optional: Also enable Failure auditing (uncomment if required by policy)
# AuditPol.exe /set /subcategory:"Logoff" /failure:enable

# Confirm the current setting for Logoff auditing
Write-Output "`n[✔] Current Logoff auditing setting:"
AuditPol.exe /get /subcategory:"Logoff"

Write-Output "`n[✓] STIG WN10-AU-000035 remediation completed for user: montystig"

#>


# Must be run as Administrator
Write-Output "`n[+] Remediating STIG: WN10-AU-000035"
Write-Output "[*] Ensuring audit policy is set to audit Logoff events (Success)..."

# Enable auditing for Logoff events (Success only, per most STIGs)
AuditPol.exe /set /subcategory:"Logoff" /success:enable

# Optional: Also enable Failure auditing if required by your environment
# AuditPol.exe /set /subcategory:"Logoff" /failure:enable

# Confirm the change
Write-Output "`n[✔] Current Logoff auditing setting:"
AuditPol.exe /get /subcategory:"Logoff"
