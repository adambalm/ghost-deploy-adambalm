FROM ghost:5-alpine

WORKDIR /var/lib/ghost

COPY content/themes/adambalm-theme /var/lib/ghost/content/themes/adambalm-theme

# TEMPORARY DEBUG: list theme folders at runtime
RUN echo "Listing /var/lib/ghost/content/themes" && ls -la /var/lib/ghost/content/themes
