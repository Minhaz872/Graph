# Graph

## Auto-sync pipeline

This repository includes a small local automation setup:

- `scripts/auto-sync.ps1` auto-stages, commits, and pushes changes.
- `.vscode/tasks.json` defines a VS Code task to run the auto-sync script.
- `.githooks/post-commit` pushes every commit automatically to `origin`.

Run the sync task from VS Code via Terminal > Run Task > `Auto Sync to GitHub`, or use the script directly:

```powershell
cd "d:\Study Materials\Research\Graph"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\auto-sync.ps1
```

