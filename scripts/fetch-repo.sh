#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/niceash7789/AgentRepo.git"
TARGET_DIR="${TARGET_DIR:-pnp-powershell-schemas}"

if [ -d "$TARGET_DIR/.git" ]; then
  git -C "$TARGET_DIR" pull --ff-only
else
  git clone --depth=1 "$REPO_URL" "$TARGET_DIR"
fi
