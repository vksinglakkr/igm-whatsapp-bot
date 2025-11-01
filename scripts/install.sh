#!/bin/bash

echo "🚀 Installing IGM WhatsApp Bot..."

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "📦 Installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# Install n8n
echo "📦 Installing n8n..."
sudo npm install -g n8n

# Install PM2 for process management
echo "📦 Installing PM2..."
sudo npm install -g pm2

# Create .env if not exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file..."
    cp .env.example .env
    echo ""
    echo "⚠️  IMPORTANT: Edit .env file with your credentials!"
    echo "   nano .env"
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "Next steps:"
echo "1. Edit .env: nano .env"
echo "2. Start bot: ./scripts/start.sh"
EOF

