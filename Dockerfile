FROM ghost:5-alpine

WORKDIR /var/lib/ghost

# Copy theme to a safe location (not overwritten by Render volume)
COPY content/themes/adambalm-theme /var/lib/ghost/theme-source/adambalm-theme

# Add entrypoint script to inject the theme at runtime
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Start Ghost via the script
ENTRYPOINT ["sh", "/entrypoint.sh"]

