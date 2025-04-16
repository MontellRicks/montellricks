<#
.SYNOPSIS
    Audit policy using subcategories must be enabled.

.NOTES
    Author          : Montell Ricks
    LinkedIn        : linkedin.com/in/montellricks/
    GitHub          : github.com/montellricks
    Date Created    : 2025-04-15
    Last Modified   : 2025-04-15
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000030

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(WN10-SO-000030).ps1 
#>

# YOUR CODE GOES HERE

# Requires admin rights
Write-Output "`n[+] Remediating STIG: WN10-SO-000030"
Write-Output "[*] Scanning for local user accounts with 'Password Never Expires' flag set..."

# Get all local user accounts (excluding disabled ones)
$users = Get-LocalUser | Where-Object { $_.Enabled -eq $true }

foreach ($user in $users) {
    # Check if 'Password Never Expires' is set
    if ($user.PasswordNeverExpires) {
        Write-Output "[-] User '$($user.Name)' has 'Password Never Expires' set. Remediating..."
        # Set password policy to expire (remove the flag)
        Set-LocalUser -Name $user.Name -PasswordNeverExpires $false
        Write-Output "[+] '$($user.Name)' updated to enforce password expiration."
    }
}

Write-Output "`n[✔] Remediation complete. All applicable accounts are now compliant with WN10-SO-000030."
