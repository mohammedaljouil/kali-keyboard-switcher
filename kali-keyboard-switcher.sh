#!/usr/bin/env bash
# kali-keyboard-switcher.sh — configure English/Arabic keyboard switching on X11.

set -euo pipefail

LAYOUTS="${1:-us,ara}"
TOGGLE="${2:-grp:alt_shift_toggle}"

if ! command -v setxkbmap >/dev/null 2>&1; then
  echo "Error: setxkbmap is not installed. Install it with: sudo apt install x11-xkb-utils" >&2
  exit 1
fi

if [[ "${XDG_SESSION_TYPE:-x11}" == "wayland" ]]; then
  echo "Warning: setxkbmap is for X11. Your desktop may manage keyboard layouts separately." >&2
fi

setxkbmap -layout "$LAYOUTS" -option "grp:$TOGGLE"

echo "Keyboard layouts configured: $LAYOUTS"
echo "Switch layout with Left Alt + Left Shift."
echo "Current configuration:"
setxkbmap -query
