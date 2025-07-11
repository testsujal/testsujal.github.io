Write-Host "`n[UAC Check] Detecting UAC status..." -ForegroundColor Cyan
$uac = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name EnableLUA

if ($uac.EnableLUA -eq 1) {
    Write-Host "UAC is ENABLED ✅" -ForegroundColor Green
} else {
    Write-Host "UAC is DISABLED ❌" -ForegroundColor Red
}
