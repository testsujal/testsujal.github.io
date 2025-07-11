Write-Host "`n[Firewall Check] Checking all profiles..." -ForegroundColor Cyan

$profiles = @("Domain", "Private", "Public")

foreach ($profile in $profiles) {
    $status = (netsh advfirewall show $profile state) -match 'State\s+(\w+)'
    if ($status) {
        $state = $Matches[1]
        Write-Host "$profile Firewall: $state"
    } else {
        Write-Host "$profile Firewall: Unknown" -ForegroundColor Yellow
    }
}
