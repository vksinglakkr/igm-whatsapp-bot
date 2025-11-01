#!/bin/bash

# Load environment variables
if [ -f .env ]; then
    export $(cat .env | grep -v '^#' | xargs)
else
    echo "❌ .env file not found!"
    exit 1
fi

# Create n8n directory if not exists
mkdir -p ~/.n8n/workflows

# Copy workflow
cp workflows/menu-system.json ~/.n8n/workflows/

# Start n8n with PM2
pm2 start n8n --name igm-whatsapp-bot -- start

# Save PM2 config
pm2 save

# Setup auto-start
sudo pm2 startup

echo ""
echo "✅ Bot started successfully!"
echo ""
echo "📱 Webhook URL: $WEBHOOK_URL/webhook/whatsapp-incoming"
echo "🌐 N8N Editor: http://localhost:$N8N_PORT"
echo ""
echo "View logs: pm2 logs igm-whatsapp-bot"
echo "Stop bot: ./scripts/stop.sh"
EOF
