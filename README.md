# IGM WhatsApp Bot - International Gita Mahotsav 2025

Official WhatsApp messaging system for Gita Quiz 2025, organized by District Administration Kurukshetra.

## 🎯 Features

- 📱 **Interactive Menu System** - 5 menu options in Hindi
- 🤖 **Automated Responses** - Instant replies to user queries
- 📝 **Quiz Registration** - Direct links to registration portal
- 📅 **Important Dates** - Quiz schedule and deadlines
- 📞 **Contact Information** - District administration details
- ⚡ **24/7 Availability** - Always ready to assist participants

## 📋 Menu Options

The bot provides the following interactive menu:

1. **क्विज़ जानकारी** - Quiz Information
2. **पंजीकरण करें** - Registration
3. **नियम और शर्तें** - Rules and Terms
4. **महत्वपूर्ण तिथियां** - Important Dates
5. **संपर्क जानकारी** - Contact Information

## 🏗️ Architecture
```
WhatsApp User → Meta WhatsApp API → n8n Workflow → Automated Response
```

**Tech Stack:**
- **Platform:** n8n.cloud
- **API:** WhatsApp Business Cloud API (Meta)
- **Language:** JavaScript (Node.js)
- **Hosting:** n8n Cloud

## 📁 Repository Structure
```
igm-whatsapp-bot/
├── README.md                 # This file
├── .gitignore               # Git ignore rules
├── .env.example             # Environment variables template
│
├── workflows/
│   └── igm-gita-quiz-menu.json   # n8n workflow
│
├── scripts/
│   ├── install.sh           # Installation script
│   ├── start.sh             # Start bot
│   ├── stop.sh              # Stop bot
│   ├── deploy.sh            # Deploy to production
│   ├── update.sh            # Update workflow
│   └── backup.sh            # Backup configuration
│
├── configs/
│   ├── nginx.conf           # Web server config (if needed)
│   └── whatsapp-templates.json   # Message templates
│
├── docs/
│   ├── SETUP.md            # Detailed setup guide
│   ├── API.md              # API documentation
│   └── TROUBLESHOOTING.md  # Common issues & fixes
│
└── media/
    ├── posters/            # IGM event posters
    └── images/             # Bot screenshots
```

## 🚀 Quick Start

### Prerequisites

- n8n account (n8n.cloud or self-hosted)
- WhatsApp Business API access (Meta Developer account)
- GitHub account

### Installation Steps

#### 1. Clone Repository
```bash
git clone https://github.com/vksinglakkr/igm-whatsapp-bot.git
cd igm-whatsapp-bot
```

#### 2. Setup Environment Variables
```bash
cp .env.example .env
nano .env
```

Add your credentials:
```env
WHATSAPP_PHONE_ID=your_phone_number_id
WHATSAPP_ACCESS_TOKEN=your_access_token
WEBHOOK_URL=https://your-n8n-instance.app.n8n.cloud/webhook/whatsapp-incoming
```

#### 3. Import Workflow to n8n

1. Open your n8n instance
2. Go to **Workflows**
3. Click **Import from File**
4. Select `workflows/igm-gita-quiz-menu.json`
5. **Activate** the workflow

#### 4. Configure Meta Webhook

1. Go to [Meta Developer Console](https://developers.facebook.com)
2. Select your app: **IGM Gita Quiz Bot**
3. Go to **WhatsApp → Configuration**
4. Add webhook:
   - **Callback URL:** Your n8n webhook URL
   - **Verify Token:** Your chosen token
   - **Subscribe to:** `messages`

#### 5. Test the Bot

Send a WhatsApp message to your bot number:
```
Hi
```

You should receive the interactive menu!

## 📱 WhatsApp API Credentials

### Where to Find:

**Phone Number ID:**
- Meta Developer Console → WhatsApp → API Setup
- Example: `838788905982249`

**Access Token:**
- Meta Developer Console → WhatsApp → API Setup
- Click "Generate Access Token"
- **Note:** Token expires in 24 hours (for testing)

**Permanent Token (Production):**
- Go to Business Settings → System Users
- Create System User → Generate Token
- Set permissions: `whatsapp_business_messaging`, `whatsapp_business_management`

## 🔧 Configuration

### Update Menu Content

Edit the workflow in n8n:
1. Open **Menu Logic** code node
2. Modify the `responses` object
3. Update text, links, or phone numbers
4. Save and test

### Change Phone Number

To use your official number instead of test number:
1. Meta Console → WhatsApp → Phone Numbers
2. Add your verified business number
3. Update `WHATSAPP_PHONE_ID` in workflow
4. Redeploy

## 📊 Monitoring & Analytics

### View Logs

**In n8n:**
- Workflow → Executions tab
- See all incoming messages and responses

**In Meta Console:**
- WhatsApp → Analytics
- Message delivery rates
- User engagement stats

## 🛠️ Scripts Usage

### Start the Bot
```bash
./scripts/start.sh
```

### Stop the Bot
```bash
./scripts/stop.sh
```

### Update Workflow
```bash
./scripts/update.sh
```

### Deploy to Production
```bash
./scripts/deploy.sh
```

### Backup Configuration
```bash
./scripts/backup.sh
```

## 🔒 Security

- ⚠️ **Never commit `.env` file** with actual credentials
- ✅ Use `.env.example` as template only
- ✅ Rotate access tokens regularly
- ✅ Use system user tokens for production
- ✅ Enable webhook signature verification

## 🐛 Troubleshooting

### Webhook Verification Failed

**Solution:**
1. Ensure n8n workflow is **ACTIVE**
2. Check HTTP Method accepts **GET** and **POST**
3. Verify webhook URL is correct
4. Check verify token matches

### Messages Not Sending

**Solution:**
1. Check access token is valid (not expired)
2. Verify Phone Number ID is correct
3. Test with Meta's API console first
4. Check n8n execution logs for errors

### Bot Not Responding

**Solution:**
1. Verify workflow is active in n8n
2. Check webhook subscriptions in Meta
3. Ensure message field is subscribed
4. Test webhook with sample payload

See [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) for detailed solutions.

## 📞 Support

**Technical Issues:**
- Create an issue on GitHub
- Email: vksinglakkr@kurukshetra.gov.in

**IGM Event Queries:**
- **Website:** https://kurukshetra.gov.in
- **Email:** dc@kurukshetra.gov.in
- **Phone:** 01744-222XXX

## 📅 Event Timeline

- **Registration Opens:** 1 November 2025
- **Registration Closes:** 3 November 2025
- **Quiz Period:** 4-14 November 2025
- **Results:** 20 November 2025
- **Prize Distribution:** 7 December 2025

## 👥 Credits

**Developed by:**
- District Administration Kurukshetra
- NIC Kurukshetra
- VK Singlakkr

**Organized by:**
- International Gita Mahotsav Committee
- Government of Haryana

## 📄 License

© 2025 District Administration Kurukshetra, Government of Haryana

**For Official Use Only**

---

## 🔗 Useful Links

- [WhatsApp Business API Documentation](https://developers.facebook.com/docs/whatsapp)
- [n8n Documentation](https://docs.n8n.io)
- [Meta Developer Console](https://developers.facebook.com)
- [IGM Official Website](https://kurukshetra.gov.in)

---

**Made with ❤️ for International Gita Mahotsav 2025**
