# IGM WhatsApp Bot - Gita Quiz 2025

Interactive WhatsApp menu system for International Gita Mahotsav

## Quick Start

### On Server (kurukshetra.gov.in):
```bash
# Clone repository
cd /var/www
git clone https://github.com/YOUR_USERNAME/igm-whatsapp-bot.git
cd igm-whatsapp-bot

# Install
./scripts/install.sh

# Configure
cp .env.example .env
nano .env  # Add your credentials

# Start
./scripts/start.sh
```

## Features
- 📱 Interactive menu (1-5 options)
- 🤖 Auto-reply system
- 📝 Registration handling
- ⚡ Lightweight (no Docker!)

## Menu Options
1. Quiz Information
2. Registration
3. Rules & Terms
4. Important Dates
5. Contact Information

## Webhook URL
`https://n8n.kurukshetra.gov.in/webhook/whatsapp-incoming`

## Support
District Administration Kurukshetra
EOF

