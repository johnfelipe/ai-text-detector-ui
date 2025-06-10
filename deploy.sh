#!/bin/bash

# Quick Deploy Script for AI Text Detector UI
# This script helps you deploy to various platforms

echo "🚀 AI Text Detector - Quick Deploy Script"
echo "=========================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if files exist
if [ ! -f "app.py" ]; then
    echo -e "${RED}❌ Error: app.py not found${NC}"
    echo "Please run this script from the ai-detector-ui directory"
    exit 1
fi

echo -e "${BLUE}📋 Available Deployment Options:${NC}"
echo "1. 🎈 Streamlit Cloud (Recommended - Free)"
echo "2. 🤗 Hugging Face Spaces (Free, ML-focused)"
echo "3. 🚂 Railway (Free tier with custom domains)"
echo "4. 🎯 Render (Free tier available)"
echo "5. 📋 Just show me the URLs"
echo ""

read -p "Choose deployment option (1-5): " choice

case $choice in
    1)
        echo -e "${GREEN}🎈 Streamlit Cloud Deployment${NC}"
        echo "=========================================="
        echo "1. Create a GitHub repository with these files:"
        echo "   - app.py"
        echo "   - requirements.txt"
        echo "   - README.md"
        echo ""
        echo "2. Go to: https://share.streamlit.io"
        echo "3. Sign in with GitHub"
        echo "4. Click 'New app'"
        echo "5. Select your repository"
        echo "6. Set main file: app.py"
        echo "7. Click 'Deploy'"
        echo ""
        echo -e "${YELLOW}💡 Your app will be live at:${NC}"
        echo "https://YOUR_USERNAME-REPO_NAME-app-xyz123.streamlit.app"
        ;;
    2)
        echo -e "${GREEN}🤗 Hugging Face Spaces Deployment${NC}"
        echo "=========================================="
        echo "1. Go to: https://huggingface.co/spaces"
        echo "2. Click 'Create new Space'"
        echo "3. Name: ai-text-detector"
        echo "4. SDK: Streamlit"
        echo "5. Upload app.py and requirements.txt"
        echo ""
        echo -e "${YELLOW}💡 Your app will be live at:${NC}"
        echo "https://huggingface.co/spaces/YOUR_USERNAME/ai-text-detector"
        ;;
    3)
        echo -e "${GREEN}🚂 Railway Deployment${NC}"
        echo "=========================================="
        echo "Creating railway.toml..."
        cat > railway.toml << EOF
[build]
builder = "nixpacks"

[deploy]
startCommand = "streamlit run app.py --server.port \$PORT"
EOF
        echo "✅ railway.toml created"
        echo ""
        echo "Next steps:"
        echo "1. Push your code to GitHub"
        echo "2. Go to: https://railway.app"
        echo "3. Connect your GitHub repository"
        echo "4. Railway will auto-deploy"
        ;;
    4)
        echo -e "${GREEN}🎯 Render Deployment${NC}"
        echo "=========================================="
        echo "Creating render.yaml..."
        cat > render.yaml << EOF
services:
  - type: web
    name: ai-detector-ui
    env: python
    buildCommand: pip install -r requirements.txt
    startCommand: streamlit run app.py --server.port \$PORT --server.address 0.0.0.0
EOF
        echo "✅ render.yaml created"
        echo ""
        echo "Next steps:"
        echo "1. Push your code to GitHub"
        echo "2. Go to: https://render.com"
        echo "3. Connect your GitHub repository"
        echo "4. Render will auto-deploy"
        ;;
    5)
        echo -e "${BLUE}📋 Deployment URLs${NC}"
        echo "=========================================="
        echo "🎈 Streamlit Cloud: https://share.streamlit.io"
        echo "🤗 Hugging Face: https://huggingface.co/spaces"
        echo "🚂 Railway: https://railway.app"
        echo "🎯 Render: https://render.com"
        echo "⚡ Vercel: https://vercel.com"
        echo "🌊 Netlify: https://netlify.com"
        ;;
    *)
        echo -e "${RED}❌ Invalid option${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${GREEN}✅ Ready to deploy!${NC}"
echo ""
echo -e "${YELLOW}💡 Tips:${NC}"
echo "- Your API is running at: https://9l4pjnll4k9miw-8000.proxy.runpod.net"
echo "- The UI will connect automatically to your RunPod API"
echo "- No additional configuration needed"
echo "- All platforms above offer free tiers"
echo ""
echo -e "${BLUE}🔗 Useful Links:${NC}"
echo "- API Documentation: https://9l4pjnll4k9miw-8000.proxy.runpod.net/docs"
echo "- API Health Check: https://9l4pjnll4k9miw-8000.proxy.runpod.net/api/v1/health"
echo "- RunPod Dashboard: https://runpod.io"
