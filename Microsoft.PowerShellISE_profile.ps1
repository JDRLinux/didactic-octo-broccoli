Start-Transcript

Update-Help

Get-Module -ListAvailable | Where-Object {$_.ModuleType -eq "Script"} | Import-Module
Get-Module

#Set Aliases
Set-Alias -Name np -Value "C:\Program Files (x86)\Notepad++\notepad++.exe"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Resolve-Path $here\functions\*.ps1 |
Where-Object { -not ($_.ProviderPath.Contains(“.Tests.”)) } | `
ForEach-Object { . $_.ProviderPath }

function Prompt
	{
	    "PS [$env:COMPUTERNAME] $(Get-Location)>"
	}

Stop-Transcript