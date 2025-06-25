#!/bin/sh

echo "Injecting custom theme..."

# Copy theme from build-time location to live content directory
cp -R /var/lib/ghost/theme-source/adambalm-theme /var/lib/ghost/content/themes/

# Start Ghost using original entrypoint
docker-entrypoint.sh node current/index.js
