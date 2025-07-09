#!/bin/bash

OUTPUT="lint-report.txt"
THEME_DIR="content/themes/adambalm-theme"

echo "🔍 Scanning for suspicious dev files (e.g. shell scripts, editor temp files):" > $OUTPUT

# Find suspicious files
FOUND=$(find "$THEME_DIR" -type f \( \
    -name "*.sh" -o -name "*.bat" -o -name "*.ps1" -o \
    -name "*.tmp" -o -name "*~" -o -name "*.bak" -o \
    -name ".DS_Store" -o -name "Thumbs.db" -o \
    -name "cd" -o -name "ls" -o -name "dir" \
    -name "notepad" -o -name "main" -o -name "mkdir" -o -name "powershell" \
    \) -exec ls -l {} \; )

if [[ -z "$FOUND" ]]; then
    echo "✅ No suspicious files found in $THEME_DIR" >> $OUTPUT
    echo "✅ No suspicious files found."
else
    echo "$FOUND" >> $OUTPUT
    echo "⚠️ Suspicious files detected. See lint-report.txt for details."
fi
