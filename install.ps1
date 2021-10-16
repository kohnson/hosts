## Porn blocker installation script - Windows

If ([Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544') {
	Get-Content ".\hosts.db" >> "C:\Windows\System32\drivers\etc\hosts" # Append hosts.db to hosts
	Write-Host -ForegroundColor Green "Success. Your PC will now refuse to connect to porn sites."
	Write-Host -ForegroundColor Yellow "A reboot may be required."
}
Else {Write-Host -ForegroundColor Red "You need to run PowerShell as administrator for this script to work."} # Exit if script is not run as administrator

Pause
