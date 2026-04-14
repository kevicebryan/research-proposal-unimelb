#!/usr/bin/env bash
# Regenerate wordcount.tex from texcount (body text only: excludes %TC:ignore
# regions, section headings, float captions, and inline/display math per texcount).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
MAIN="${1:-templateArxiv.tex}"
if ! command -v texcount >/dev/null 2>&1; then
  echo "texcount not found (install TeX Live / MacTeX)." >&2
  exit 1
fi
# texcount -1 prints e.g. "6416+64+30 (21/2/11/2) Total" — first field is words in body text (do not use -sum here)
line="$(texcount -1 "$MAIN" 2>/dev/null | tail -1 || true)"
count="$(printf '%s' "$line" | sed -E 's/^([0-9]+).*/\1/')"
if ! [[ "$count" =~ ^[0-9]+$ ]]; then
  echo "Could not parse texcount output: $line" >&2
  exit 1
fi
OUT="wordcount.tex"
cat >"$OUT" <<EOF
%%% AUTO-GENERATED — do not edit by hand. Regenerate: ./scripts/update_wordcount.sh
\\def\\ProposalTextWords{$count}
EOF
echo "Wrote $OUT (body text words: $count)"
