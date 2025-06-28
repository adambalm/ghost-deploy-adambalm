#!/bin/sh

echo "Injecting custom theme..."
cp -R /var/lib/ghost/theme-source/adambalm-theme /var/lib/ghost/versions/5.127.2/content/themes/

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

echo "Starting Ghost..."
docker-entrypoint.sh node current/index.js

