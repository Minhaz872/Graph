# Auto-sync PowerShell script for this repository
param(
    [string]$RepoPath = "$(Resolve-Path .).Path",
    [string]$Remote = "origin"
)

Set-Location $RepoPath

$changes = git status --porcelain
if ([string]::IsNullOrWhiteSpace($changes)) {
    Write-Output "No local changes to sync."
    exit 0
}

git add -A

$commitMessage = "Auto-sync $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m $commitMessage

git push $Remote HEAD
