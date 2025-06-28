#!/bin/sh

echo "Injecting custom theme..."
cp -R /var/lib/ghost/theme-source/adambalm-theme /var/lib/ghost/content/themes/

echo "Injecting dynamic config.production.json..."
cat <<EOF > /var/lib/ghost/config.production.json
{
  "mail": {
    "transport": "SMTP",
    "options": {
      "service": "Gmail",
      "auth": {
        "user": "$MAIL__SMTP__AUTH__USER",
        "pass": "$MAIL__SMTP__AUTH__PASS"
      }
    }
  },
  "mail__from": "$MAIL__FROM"
}
EOF

echo "Starting Ghost..."
docker-entrypoint.sh node current/index.js
