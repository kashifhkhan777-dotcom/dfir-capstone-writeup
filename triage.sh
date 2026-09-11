#!/usr/bin/env bash
target="$1"
if [ -z "$target" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi
echo "[*] Hidden files:"
find "$target" -name ".*" -type f
echo "[*] File types:"
find "$target" -type f -exec file {} \;
echo "[*] Searching for flag patterns:"
grep -RIna "{.*of.*4}" "$target" 2>/dev/null
echo "[*] Checking for fake extensions:"
find "$target" -type f -exec file {} \; | grep -iE "jpeg|png|zip" | sort
