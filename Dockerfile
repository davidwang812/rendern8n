FROM n8nio/n8n

# Set user to root to avoid permission issues
USER root

# Fix npm permissions
RUN npm config set unsafe-perm true

# Expose the port
EXPOSE 5678

# Install n8n globally
RUN npm install -g n8n

# Start n8n
CMD ["n8n"]
