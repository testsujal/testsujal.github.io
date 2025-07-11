Write-Host "=== SujalScript Menu ===" -ForegroundColor Cyan
Write-Host "[1] Check UAC"
Write-Host "[2] Check Firewall"
Write-Host "[3] Exit"
$choice = Read-Host "Select an option"

switch ($choice) {
    '1' {
        iwr https://testsujal.github.io/scripts/uac_check.ps1 | iex
    }
    '2' {
        iwr https://testsujal.github.io/scripts/firewall_check.ps1 | iex
    }
    default {
        Write-Host "Exiting..."
    }
}
