Write-Host "`n[Firewall Check] Checking all profiles..." -ForegroundColor Cyan

$profiles = @("Domain", "Private", "Public")

foreach ($profile in $profiles) {
    $output = netsh advfirewall show $profile state 2>&1

    if ($output -match "State\s+:\s+(\w+)") {
        $state = $Matches[1]
        Write-Host "$profile Firewall: $state" -ForegroundColor Green
    } else {
        Write-Host "$profile Firewall: Could not determine status ❌" -ForegroundColor Red
    }
}
