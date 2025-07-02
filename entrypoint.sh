#!/bin/sh

echo "Checking if theme-source exists:"
ls -l /var/lib/ghost/theme-source/adambalm-theme || echo "SOURCE THEME MISSING"

echo "Injecting custom theme..."
cp -R /var/lib/ghost/theme-source/adambalm-theme /var/lib/ghost/content/themes/

echo "Verifying theme contents at expected path:"
ls -l /var/lib/ghost/content/themes/adambalm-theme
cat /var/lib/ghost/content/themes/adambalm-theme/package.json || echo "package.json MISSING"

echo "Listing Ghost content/themes directory:"
ls -l /var/lib/ghost/content/themes || echo "themes folder MISSING"

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
