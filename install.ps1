# Enable Gemini in Chrome (PowerShell)
# Patches Chrome config to unlock Gemini features for non-US users
# Supports: Windows

Write-Host ""
Write-Host "🚀 Gemini in Chrome Enabler" -ForegroundColor Cyan
Write-Host ""

# Set Chrome config path
$chromeStatePath = "$env:LOCALAPPDATA\Google\Chrome\User Data\Local State"

# Check if Chrome is running
$chromeProcesses = Get-Process -Name "chrome" -ErrorAction SilentlyContinue

if ($chromeProcesses) {
    Write-Host "⚠️  Chrome is running. Please quit completely before proceeding." -ForegroundColor Yellow
    Read-Host "Press Enter after closing Chrome"
    $chromeProcesses = Get-Process -Name "chrome" -ErrorAction SilentlyContinue
    if ($chromeProcesses) {
        Write-Host "❌ Chrome is still running. Please quit and try again." -ForegroundColor Red
        exit 1
    }
}

# Check if config file exists
if (-not (Test-Path $chromeStatePath)) {
    Write-Host "❌ Chrome config not found: $chromeStatePath" -ForegroundColor Red
    exit 1
}

# Backup and read
$backupPath = "$chromeStatePath.bak"
Copy-Item -Path $chromeStatePath -Destination $backupPath -Force
Write-Host "✓ Backed up: Local State.bak" -ForegroundColor Green

$content = Get-Content -Path $chromeStatePath -Raw -Encoding UTF8

# Apply patches
$content = $content -replace '"is_glic_eligible"\s*:\s*false', '"is_glic_eligible":true'
$content = $content -replace '"variations_country":"[^"]*"', '"variations_country":"us"'
$content = $content -replace '("variations_permanent_consistency_country":\[[^]]*)"[^"]*"\]', '$1"us"]'

# Write with UTF-8 no BOM (Chrome expects this)
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($chromeStatePath, $content, $utf8NoBom)

# Verify changes
Write-Host ""
$errors = 0
$verifyContent = Get-Content -Path $chromeStatePath -Raw
if ($verifyContent -match '"is_glic_eligible":true') {
    Write-Host "✓ enabled" -ForegroundColor Green
} else {
    Write-Host "⚠️  is_glic_eligible not modified (field may not exist)" -ForegroundColor Yellow
    $errors++
}
if ($verifyContent -match '"variations_country":"us"') {
    Write-Host "✓ set to us" -ForegroundColor Green
} else {
    Write-Host "⚠️  variations_country not modified (field may not exist)" -ForegroundColor Yellow
    $errors++
}

Write-Host ""
if ($errors -eq 0) {
    Write-Host "✅ Done! Restart Chrome to apply changes." -ForegroundColor Green
} else {
    Write-Host "⚠️  Some changes may not have applied. Check your Chrome version." -ForegroundColor Yellow
}
