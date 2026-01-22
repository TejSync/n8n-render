FROM n8nio/n8n:latest

# Render injects PORT automatically
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

EXPOSE 5678
