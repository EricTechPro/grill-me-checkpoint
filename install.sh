#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${GRILL_ME_CHECKPOINT_SKILLS_DIR:-$HOME/.claude/skills}"
DEST="$SKILLS_DIR/grill-me-checkpoint"

mkdir -p "$SKILLS_DIR"
rm -rf "$DEST"
mkdir -p "$DEST"
cp -R "$REPO_ROOT/skills/grill-me-checkpoint/." "$DEST/"

echo "installed grill-me-checkpoint into $DEST"
