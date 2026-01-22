
function Export-M365Dashboard {
    Import-Module ImportExcel -ErrorAction Stop
    $path = ".\Reports\M365-Security-Dashboard.xlsx"
    Remove-Item $path -ErrorAction SilentlyContinue
    Get-ChildItem .\Reports\*.csv | ForEach-Object {
        Import-Csv $_.FullName | Export-Excel $path -WorksheetName $_.BaseName -AutoSize
    }
}
