
function Get-InactiveUsers {
    $users = Get-MgUser -All -Property DisplayName,UserPrincipalName,SignInActivity
    $users | Where-Object {
        $_.SignInActivity.LastSignInDateTime -lt (Get-Date).AddDays(-90)
    } | Export-Csv .\Reports\InactiveUsers.csv -NoTypeInformation
}
