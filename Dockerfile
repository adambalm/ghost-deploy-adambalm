FROM ghost:5-alpine

WORKDIR /var/lib/ghost

COPY content/themes/adambalm-theme /var/lib/ghost/content/themes/adambalm-theme

# Optional: Include routes file if you use one
# COPY content/routes.yaml /var/lib/ghost/content/routes.yaml

