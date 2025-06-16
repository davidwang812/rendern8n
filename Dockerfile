FROM n8nio/n8n

# Expose the port
EXPOSE 5678

# Install n8n globally
RUN npm install -g n8n

# Start n8n
CMD ["n8n"]
