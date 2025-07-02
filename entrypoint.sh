#!/bin/sh

echo "Checking if theme-source exists:"
ls -l /var/lib/ghost/theme-source/adambalm-theme || echo "SOURCE THEME MISSING"

echo "Injecting custom theme to persistent content path..."
cp -R /var/lib/ghost/theme-source/adambalm-theme /var/lib/ghost/content/themes/

echo "Verifying theme contents at persistent path:"
ls -l /var/lib/ghost/content/themes/adambalm-theme
cat /var/lib/ghost/content/themes/adambalm-theme/package.json || echo "package.json MISSING"

echo "Listing Ghost content/themes directory:"
ls -l /var/lib/ghost/content/themes || echo "themes folder MISSING"

# Dynamic fallback: also inject to Ghost's runtime version path
GHOST_VER_DIR=$(find /var/lib/ghost/versions -maxdepth 1 -mindepth 1 -type d | sort -V | tail -n 1)
if [ -d "$GHOST_VER_DIR/content/themes/" ]; then
  echo "Injecting theme into runtime path: $GHOST_VER_DIR/content/themes/"
  cp -R /var/lib/ghost/theme-source/adambalm-theme "$GHOST_VER_DIR/content/themes/"
else
  echo "Warning: runtime version theme path not found"
fi

echo "Injecting dynamic config.production.json..."
cat <<EOF > /var/lib/ghost/config.production.json
{
  "server": {
    "port": ${PORT},
    "host": "0.0.0.0"
  },
  "mail": {
    "transport": "SMTP",
    "from": "Ghost <espoconnell@gmail.com>",
    "options": {
      "host": "smtp.gmail.com",
      "port": 587,
      "secure": false,
      "auth": {
        "user": "espoconnell@gmail.com",
        "pass": "${MAIL__SMTP__AUTH__PASS}"
      }
    }
  },
  "logging": {
    "level": "info",
    "transports": ["stdout"]
  }
}
EOF

echo "Dumping config.production.json:"
cat /var/lib/ghost/config.production.json || echo "config.production.json missing"

echo "Starting Ghost..."
docker-entrypoint.sh node current/index.js
