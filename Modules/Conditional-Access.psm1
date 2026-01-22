
function Get-ConditionalAccessReport {
    Get-MgIdentityConditionalAccessPolicy |
    Export-Csv .\Reports\ConditionalAccess.csv -NoTypeInformation
}
