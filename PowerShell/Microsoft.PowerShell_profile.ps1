#Sets $UserName to whatever environment youre in.
$UserName = $env:username

# Creates alias'
Set-Alias gh Get-Help -option none
Set-Alias tp Test-Path
Set-Alias his Get-History
Set-Alias ihis Invoke-History

# Load profile (Start Page)
function posh { .$profile }

# Clear-Screen
Clear-Host

# Prompt
function Prompt { "PawelShell > "}
if ($host.UI.RawUI.WindowTitle -match 'Administrator')
{
function Prompt { "PawelShellAdmin > "}
}

# PowerShell Version, Date, Hostname, Print Working Directory, Ip Configuration and List Custom Modules
$GH = Get-Host
Write-Host PowerShell Version: $GH.Version
''
Get-Date -format g
Get-Location

