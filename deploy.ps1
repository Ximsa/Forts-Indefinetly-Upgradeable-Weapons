# Deploys this Forts mod into its Steam Workshop folder for testing.
# Usage: .\deploy.ps1 [-WorkshopDir <path>]
param(
    [string]$WorkshopDir = "C:\Program Files (x86)\Steam\steamapps\workshop\content\410900\1369514837"
)

$src = $PSScriptRoot
if (-not (Test-Path $WorkshopDir)) { throw "Workshop folder not found: $WorkshopDir" }

# Replace the workshop item's contents with the mod files (/MIR deletes anything not in the repo).
robocopy $src $WorkshopDir /MIR /NJH /NP `
    /XD .git .idea .vscode llm dump `
    /XF .gitignore CLAUDE.md README.md deploy.ps1 | Out-Host

# robocopy: exit codes < 8 mean success
if ($LASTEXITCODE -ge 8) { throw "robocopy failed with exit code $LASTEXITCODE" }
Write-Host "Deployed to $WorkshopDir"
exit 0
