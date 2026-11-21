# Deploys v1 into its Steam Workshop folder for testing.
# Usage: .\deploy.ps1 [-WorkshopDir <path>]
# v1 and v2 share the Workshop item, so this replaces whatever v2 deploy is in that folder (and vice versa).
param(
    [string]$WorkshopDir = "C:\Program Files (x86)\Steam\steamapps\workshop\content\410900\1369514837"
)

$src = $PSScriptRoot
if (-not (Test-Path $WorkshopDir)) { throw "Workshop folder not found: $WorkshopDir" }

# Replace the workshop item's contents with the mod files (/MIR deletes anything not in the repo).
robocopy $src $WorkshopDir /MIR /NJH /NP `
    /XD .git .idea .vscode .agent-shell llm dump docs pregen_scripts `
    /XF .gitignore .gitkeep CLAUDE.md deploy.ps1 | Out-Host

# robocopy: exit codes < 8 mean success
if ($LASTEXITCODE -ge 8) { throw "robocopy failed with exit code $LASTEXITCODE" }

Write-Host "Deployed to $WorkshopDir"
exit 0
