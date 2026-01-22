FROM n8nio/n8n:latest

# Render provides PORT dynamically
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Required for public webhooks
ENV WEBHOOK_URL=https://YOUR-RENDER-SERVICE.onrender.com
ENV N8N_EDITOR_BASE_URL=https://YOUR-RENDER-SERVICE.onrender.com

EXPOSE 5678

CMD ["n8n", "start"]
