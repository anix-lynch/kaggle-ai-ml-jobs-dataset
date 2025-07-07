#!/bin/bash
# 🚀 Kaggle AI/ML Jobs Scraper Runner

echo "🚀 Kaggle AI/ML Jobs Scraper"
echo "============================"

# Build the container
echo "📦 Building Docker image..."
docker-compose build

# Run options
echo ""
echo "Choose an option:"
echo "1. 🧪 Test scraper (quick test)"
echo "2. 🔄 Full scrape (all sources)"
echo "3. 💻 Interactive shell (for development)"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        echo "🧪 Running test scraper..."
        docker-compose run --rm job-scraper python test_scraper.py
        ;;
    2)
        echo "🔄 Running full scrape..."
        docker-compose run --rm job-scraper python scrapers/remote_co_scraper.py
        ;;
    3)
        echo "💻 Starting interactive shell..."
        docker-compose run --rm job-scraper bash
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "📊 Check ./data/ folder for results"
echo "✅ Done!"