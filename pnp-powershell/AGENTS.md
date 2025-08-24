# PnP PowerShell Schema Guide

This directory stores JSON definitions for PnP PowerShell cmdlets.

## AI Agent Usage
- These instructions help automated agents interact with this folder.
- When generating or modifying PnP PowerShell commands, always cross-check them against the JSON schemas here.
- Ensure command syntax aligns with official PnP PowerShell expectations before use.

## Finding Commands
- Consult `../index.json` in the repo root for a mapping of each `cmdlet` to the JSON file containing its schema.
- Use `rg` for quick searches, for example: `rg Add-PnPStoredCredential`.

## Validating Changes
- After editing any JSON file, run `jq empty <file>` to verify it remains valid JSON.
- To check all JSON files in this folder, run `for f in *.json; do jq empty "$f"; done`.

## Build Integration
- Use `scripts/fetch-repo.sh` to clone this repository during your build phase. Set `REPO_URL` to the git URL and optional `TARGET_DIR` for the destination.
- Example: `REPO_URL=https://github.com/ORG/REPO.git scripts/fetch-repo.sh`
