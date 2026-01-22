
function Start-UserOffboarding {
    param([string]$UserUPN)
    Update-MgUser -UserId $UserUPN -AccountEnabled:$false
    Revoke-MgUserSignInSession -UserId $UserUPN
    $licenses = Get-MgUserLicenseDetail -UserId $UserUPN
    if ($licenses) {
        Set-MgUserLicense -UserId $UserUPN -AddLicenses @() -RemoveLicenses $licenses.SkuId
    }
}
