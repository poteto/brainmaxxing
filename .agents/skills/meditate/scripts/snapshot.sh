#!/bin/sh
# Concatenate all .md files in a directory into a single snapshot file.
# Usage: snapshot.sh <dir> <output-file>
# Each file is delimited with === path === headers.

dir="${1:?Usage: snapshot.sh <dir> <output-file>}"
output="${2:?Usage: snapshot.sh <dir> <output-file>}"

: > "$output"

find "$dir" -name '*.md' -type f -not -path '*/node_modules/*' | sort | while IFS= read -r f; do
  printf '=== %s ===\n' "$f" >> "$output"
  cat "$f" >> "$output"
  printf '\n\n' >> "$output"
done

echo "$output"
