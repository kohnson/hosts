## Porn blocker installation script

If ([Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544') {
	If (Get-Content ".\hosts.db" >> "C:\Windows\System32\drivers\etc\hosts") {
		Write-Host -ForegroundColor Green "Success. Your PC will now refuse to connect to porn sites."
		Write-Host -ForegroundColor Yellow "A reboot may be required."
	}
	Else {Write-Host -ForegroundColor Red "An error occured."}
}
Else {	Write-Host -ForegroundColor Red "You need to run PowerShell as administrator for this script to work."}

Pause
