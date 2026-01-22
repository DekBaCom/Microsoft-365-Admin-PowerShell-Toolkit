
function Get-AdminRoleReview {
    $roles = Get-MgDirectoryRole
    foreach ($role in $roles) {
        Get-MgDirectoryRoleMember -DirectoryRoleId $role.Id |
        ForEach-Object {
            $u = Get-MgUser -UserId $_.Id -ErrorAction SilentlyContinue
            [pscustomobject]@{
                Role=$role.DisplayName
                User=$u.UserPrincipalName
                Name=$u.DisplayName
            }
        }
    } | Export-Csv .\Reports\AdminRoles.csv -NoTypeInformation
}
