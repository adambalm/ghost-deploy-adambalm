#!/bin/bash
set -e

# Inject config.production.json dynamically using environment variables
cat <<EOF > /var/lib/ghost/config.production.json
{
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

# Start Ghost
cd /var/lib/ghost
exec node current/index.js
