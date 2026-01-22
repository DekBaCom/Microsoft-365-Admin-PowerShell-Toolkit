
function Get-MFAStatus {
    Get-MgReportAuthenticationMethodUserRegistrationDetail |
    Export-Csv .\Reports\MFA-Status.csv -NoTypeInformation
}
