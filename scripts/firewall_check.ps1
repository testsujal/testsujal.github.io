Write-Host "`n[Firewall Check] Debug Output:" -ForegroundColor Cyan

$profiles = @("Domain", "Private", "Public")

foreach ($profile in $profiles) {
    Write-Host "`n--- $profile ---" -ForegroundColor Yellow
    netsh advfirewall show $profile state
}
