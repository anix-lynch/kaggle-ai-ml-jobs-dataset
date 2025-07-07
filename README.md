# 🚀 AI/ML Remote Jobs Dataset 2025

## 🎯 Quick Start (When Claude is Frozen)

```bash
cd /Users/anixlynch/kaggle-ai-ml-jobs-dataset
chmod +x run.sh
./run.sh
```

**Choose option:**
- **1** = Quick test (few jobs)
- **2** = Full scrape (all sources) 
- **3** = Development shell

## 📁 Project Structure
```
kaggle-ai-ml-jobs-dataset/
├── 🐳 Dockerfile              (Container definition)
├── 🐳 docker-compose.yml      (Easy container management)
├── 🚀 run.sh                  (One-click runner)
├── 📊 requirements.txt        (Python dependencies)
├── 🧪 test_scraper.py         (Quick test)
├── scrapers/
│   └── remote_co_scraper.py   (Remote.co scraper)
└── data/                      (Scraped CSV files appear here)
```

## 🔧 Manual Commands

### Build container:
```bash
docker-compose build
```

### Quick test:
```bash
docker-compose run --rm job-scraper python test_scraper.py
```

### Full scrape:
```bash
docker-compose run --rm job-scraper python scrapers/remote_co_scraper.py
```

### Development shell:
```bash
docker-compose run --rm job-scraper bash
```

### Edit in Cursor:
- ✅ Files are mounted from Mac
- ✅ Edit `scrapers/` folder in Cursor
- ✅ Changes reflect immediately in container

## 📊 Output

CSV files appear in `./data/` with format:
```
remote_co_jobs_YYYYMMDD_HHMMSS.csv
```

## 🎯 Next Steps (When Ready)

1. **Build Remotive.io scraper** (scrapers/remotive_scraper.py)
2. **Build Himalayas scraper** (scrapers/himalayas_scraper.py)  
3. **Data cleaning pipeline** (clean_data.py)
4. **Upload to Kaggle** (boost credibility score!)

## 🔥 Features
- ✅ **Fully containerized** - No Python packages on Mac
- ✅ **Cursor editable** - Live file mounting
- ✅ **One-click runner** - `./run.sh`
- ✅ **Data persistence** - CSV files saved to Mac
- ✅ **Rate limited** - Respectful scraping
- ✅ **AI/ML filtered** - Only relevant jobs

## 🎪 Goal
Upload quality dataset to Kaggle → Boost credibility score from 0/100 to hero status! 🚀

## 🆘 Recovery Instructions

**If you accidentally delete the project:**

```bash
# Clone from GitHub backup
git clone https://github.com/anix-lynch/kaggle-ai-ml-jobs-dataset.git
cd kaggle-ai-ml-jobs-dataset
chmod +x run.sh
./run.sh
```

**Your project is safe!** 🛡️
