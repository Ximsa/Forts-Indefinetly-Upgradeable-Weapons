# Deploys this Forts mod into its Steam Workshop folder for testing.
# Usage: .\deploy.ps1 [-WorkshopDir <path>] [-UpgradeCount <n>]
#   -UpgradeCount lowers UpgradeCount in the deployed copy of lib/scalings.lua only, for faster loading while
#   testing. The repo keeps the release count; the extra stubs in the deployed folder are harmless.
param(
    [string]$WorkshopDir = "C:\Program Files (x86)\Steam\steamapps\workshop\content\410900\1369514837",
    [int]$UpgradeCount = 0
)

$src = $PSScriptRoot
if (-not (Test-Path $WorkshopDir)) { throw "Workshop folder not found: $WorkshopDir" }

# Replace the workshop item's contents with the mod files (/MIR deletes anything not in the repo).
robocopy $src $WorkshopDir /MIR /NJH /NP `
    /XD .git .idea .vscode llm dump docs `
    /XF .gitignore CLAUDE.md README.md GLOSSARY.md deploy.ps1 | Out-Host

# robocopy: exit codes < 8 mean success
if ($LASTEXITCODE -ge 8) { throw "robocopy failed with exit code $LASTEXITCODE" }

if ($UpgradeCount -gt 0) {
    $scalings = Join-Path $WorkshopDir "lib\scalings.lua"
    $text = [System.IO.File]::ReadAllText($scalings)
    $pattern = '(?m)^UpgradeCount = \d+'
    $current = [int](([regex]::Match($text, $pattern)).Value -replace '\D', '')
    if (-not $current) { throw "UpgradeCount line not found in $scalings" }
    if ($UpgradeCount -gt $current) { throw "-UpgradeCount $UpgradeCount is above the repo's $current; there are no stubs for it" }
    $text = ([regex]$pattern).Replace($text, "UpgradeCount = $UpgradeCount", 1)
    [System.IO.File]::WriteAllText($scalings, $text)
    Write-Host "Deployed with UpgradeCount = $UpgradeCount (repo: $current)"
}

Write-Host "Deployed to $WorkshopDir"
exit 0
