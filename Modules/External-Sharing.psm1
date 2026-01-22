
function Get-ExternalSharing {
    Search-UnifiedAuditLog -StartDate (Get-Date).AddDays(-30) -EndDate (Get-Date) |
    Export-Csv .\Reports\ExternalSharing.csv -NoTypeInformation
}
