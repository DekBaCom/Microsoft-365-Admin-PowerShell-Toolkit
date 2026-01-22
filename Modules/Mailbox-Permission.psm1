
function Get-MailboxPermissionReview {
    foreach ($mbx in Get-EXOMailbox -ResultSize Unlimited) {
        Get-EXOMailboxPermission $mbx.UserPrincipalName |
        Where-Object { $_.User -notlike "NT AUTHORITY*" } |
        Select @{n="Mailbox";e={$mbx.UserPrincipalName}},User,AccessRights
    } | Export-Csv .\Reports\MailboxPermissions.csv -NoTypeInformation
}
