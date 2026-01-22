
function Get-LicenseReport {
    Get-MgSubscribedSku |
    Select SkuPartNumber,ConsumedUnits,@{n="Total";e={$_.PrepaidUnits.Enabled}} |
    Export-Csv .\Reports\LicenseReport.csv -NoTypeInformation
}
