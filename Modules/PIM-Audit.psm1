
function Get-PIMActivations {
    Get-MgAuditLogDirectoryAudit -Filter "category eq 'RoleManagement'" |
    Export-Csv .\Reports\PIM-Activations.csv -NoTypeInformation
}
