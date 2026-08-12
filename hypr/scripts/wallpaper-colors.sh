#!/usr/bin/env bash
set -euo pipefail
WALLPAPER="$1"

wallust run "$WALLPAPER"
matugen image "$WALLPAPER" --source-color-index 0

hyprctl reload

pkill quickshell
quickshell &
disown

notify-send "Theme updated" "Colors regenerated from wallpaper" -t 2000
