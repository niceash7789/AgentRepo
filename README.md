# PnP PowerShell Command Schemas

This repository stores JSON definitions for PnP PowerShell cmdlets. Files are organized by topic in the `pnp-powershell/` folder.

Use `index.json` for a list of all cmdlets and the JSON files that contain them. Search across the repository with `rg` and validate JSON edits using `jq empty <file>`.

For usage guidance and build integration instructions, see `pnp-powershell/AGENTS.md`. A helper script at `scripts/fetch-repo.sh` can clone these schemas during your build phase.
