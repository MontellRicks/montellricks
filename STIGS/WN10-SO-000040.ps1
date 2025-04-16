<#
.SYNOPSIS
    Outgoing secure channel traffic must be encrypted when possible.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
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
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(WN10-SO-000040).ps1 
#>


# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-SO-000040"
Write-Output "[*] Checking the status of the built-in Guest account..."

try {
    # Get the built-in Guest account
    $guestAccount = Get-LocalUser -Name "Guest"

    # Check if it's enabled
    if ($guestAccount.Enabled) {
        Write-Output "[-] Guest account is ENABLED. Disabling it now..."
        Disable-LocalUser -Name "Guest"
        Write-Output "[✔] Guest account has been DISABLED to meet STIG WN10-SO-000040."
    } else {
        Write-Output "[✔] Guest account is already DISABLED. No action needed."
    }
}
catch {
    Write-Output "[!] Guest account not found or error retrieving account. Skipping..."
    Write-Output $_
}
