#!/bin/bash

echo "🛑 Stopping IGM WhatsApp Bot..."

pm2 stop igm-whatsapp-bot
pm2 delete igm-whatsapp-bot

echo "✅ Bot stopped!"
EOF
