#!/usr/bin/env bash
# Link this collection's skills into Grok Build's user discovery path.
# Grok loads ~/.grok/skills/<name>/SKILL.md (or $GROK_HOME/skills/...).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST="${GROK_HOME:-$HOME/.grok}/skills"
SRC="$ROOT/skills"

if [[ ! -d "$SRC" ]]; then
  echo "install.sh: missing $SRC" >&2
  exit 1
fi

mkdir -p "$DEST"

linked=0
for skill in "$SRC"/*/; do
  [[ -f "${skill}SKILL.md" ]] || continue
  name="$(basename "$skill")"
  ln -sfn "${skill%/}" "$DEST/$name"
  echo "linked $DEST/$name -> ${skill%/}"
  linked=$((linked + 1))
done

if [[ "$linked" -eq 0 ]]; then
  echo "install.sh: no SKILL.md directories under $SRC" >&2
  exit 1
fi

echo "done: $linked skill(s) on the Grok discovery path"
echo "open a new Grok Build session or /skills to confirm"
