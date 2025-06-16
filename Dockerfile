FROM n8nio/n8n

# Set user to root to avoid permission issues
USER root

# Fix permissions for n8n settings file
RUN chmod 600 /home/node/.n8n/config

# Expose the port
EXPOSE 5678

# Install n8n globally
RUN npm install -g n8n

# Start n8n
CMD ["n8n"]
