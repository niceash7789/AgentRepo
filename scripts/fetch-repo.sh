#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${REPO_URL:?Set REPO_URL to the repository URL}"
TARGET_DIR="${TARGET_DIR:-pnp-powershell-schemas}"

if [ -d "$TARGET_DIR/.git" ]; then
  git -C "$TARGET_DIR" pull --ff-only
else
  git clone --depth=1 "$REPO_URL" "$TARGET_DIR"
fi
