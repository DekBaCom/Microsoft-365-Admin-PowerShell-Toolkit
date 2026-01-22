
function Connect-M365 {
    Connect-MgGraph -Scopes "User.Read.All","Directory.Read.All","AuditLog.Read.All","Reports.Read.All","Policy.Read.All","RoleManagement.Read.Directory","Group.Read.All"
    Select-MgProfile beta
    Connect-ExchangeOnline -ShowBanner:$false
}
