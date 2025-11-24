<!-- Badges -->
![DevOps](https://img.shields.io/badge/DevOps-Automation-blueviolet)
![Backup Workflow](https://github.com/saurabhkumargit/auto-backup-tool/actions/workflows/backup.yml/badge.svg)
![Language](https://img.shields.io/badge/language-bash-blue)
![Last Commit](https://img.shields.io/github/last-commit/saurabhkumargit/auto-backup-tool)
![Repo Size](https://img.shields.io/github/repo-size/saurabhkumargit/auto-backup-tool)
![Stars](https://img.shields.io/github/stars/saurabhkumargit/auto-backup-tool)
![Forks](https://img.shields.io/github/forks/saurabhkumargit/auto-backup-tool)
![Issues](https://img.shields.io/github/issues/saurabhkumargit/auto-backup-tool)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)



# 🗄️ Auto Backup Tool

A lightweight, automated backup and cleanup tool written in **Bash**, designed for practicing DevOps fundamentals.  
This tool compresses a directory, stores timestamped backups, logs all activity, and optionally cleans up older backups — all fully configurable.

---

## 🚀 Features

- 📦 **Automatic backup** of any directory  
- 🕒 **Timestamped** `.tar.gz` backup files  
- 📝 **Logging** of all backup events  
- 🧹 **Optional cleanup** of old backups after a set number of days  
- ⚙️ **Config-driven** via `config.env`  
- 🐧 Simple and works on any Linux environment  
- 🤖 GitHub Actions integration (optional)

---

## 📁 Project Structure

```
auto-backup-tool/
│── backup.sh
│── cleanup.sh
│── config.env
│── logs/
│     └── backup.log
│── backups/
│── .github/
│     └── workflows/
│           └── backup.yml  (optional)
│── README.md
```

---

## ⚙️ Configuration (config.env)

```
# Folder to back up
SOURCE_DIR="$HOME/logs"

# Store backups inside this project folder
BACKUP_DIR="$PWD/backups"

# Log file stays inside project folder
LOG_FILE="$PWD/logs/backup.log"

# Delete backups older than 7 days
RETENTION_DAYS=7
```

Modify these values according to your needs.

---

## ▶️ Running the Backup Script

Make scripts executable (run once):

```bash
chmod +x backup.sh cleanup.sh
```

Run the backup:

```bash
./backup.sh
```

You will see:

```
Backup successful: /path/to/backup_logs_YYYYMMDD_HHMMSS.tar.gz
```

Check backup files:

```bash
ls backups/
```

Check logs:

```bash
cat logs/backup.log
```

---

## 🧹 Running Cleanup (optional)

```bash
./cleanup.sh
```

This removes `.tar.gz` backup files older than `RETENTION_DAYS`.

---

## 🤖 GitHub Actions Automation (optional)

If you use the provided workflow under `.github/workflows/backup.yml`,  
backups will run **daily at midnight** and cleanup will run automatically.

Example schedule:

```yaml
on:
  schedule:
    - cron: "0 0 * * *"      # every night at 00:00
```

---

## 📸 Screenshots / Proof of Work

### ✔ Backup file created  
```
backups/
└── backup_logs_20251123_171520.tar.gz
```

### ✔ Log entry  
```
Sun Nov 23 05:15:20 PM IST 2025: Backup created -> /home/.../backup_logs_20251123_171520.tar.gz
```

---

## 📜 License

MIT License — free to use, modify, and learn from.

---

## ✨ Author

Built by **Saurabh Kumar Tiwari** as part of his DevOps learning journey.

