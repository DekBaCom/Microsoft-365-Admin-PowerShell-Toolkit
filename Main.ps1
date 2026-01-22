
Import-Module .\Modules\*.psm1 -Force
Connect-M365

do {
    Clear-Host
    Write-Host "Microsoft 365 Admin Toolkit 2026" -ForegroundColor Cyan
    Write-Host "--------------------------------"
    Write-Host "1. User Offboarding"
    Write-Host "2. Inactive Users"
    Write-Host "3. License Report"
    Write-Host "4. Admin Role Review"
    Write-Host "5. PIM Activation Audit"
    Write-Host "6. MFA Status Report"
    Write-Host "7. External Sharing Audit"
    Write-Host "8. Mailbox Permission Review"
    Write-Host "9. Conditional Access Report"
    Write-Host "10. Export Excel Dashboard"
    Write-Host "0. Exit"

    $choice = Read-Host "Select menu"

    switch ($choice) {
        "1" { Start-UserOffboarding -UserUPN (Read-Host "Enter UPN") }
        "2" { Get-InactiveUsers }
        "3" { Get-LicenseReport }
        "4" { Get-AdminRoleReview }
        "5" { Get-PIMActivations }
        "6" { Get-MFAStatus }
        "7" { Get-ExternalSharing }
        "8" { Get-MailboxPermissionReview }
        "9" { Get-ConditionalAccessReport }
        "10" { Export-M365Dashboard }
        "0" { break }
    }

    Pause
}
while ($true)
