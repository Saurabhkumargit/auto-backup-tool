#!/bin/bash
set -e

# Load config
source config.env

# Colors
GREEN="\e[32m"
RED="\e[31m"
NC="\e[0m"

# Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Validations
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}ERROR: Source folder '$SOURCE_DIR' does not exists.${NC}"
    exit 1
fi

mkdir -p "$BACKUP_DIR"
mkdir -p "$(dirname "$LOG_FILE")"

# Backup filename
BASENAME=$(basename "$SOURCE_DIR")
BACKUP_FILE="$BACKUP_DIR/backup_${BASENAME}_${TIMESTAMP}.tar.gz"

# Create backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Log entry
echo "$(date): Backup created -> $BACKUP_FILE" >> "$LOG_FILE"

echo -e "${GREEN}Backup successful:${NC} $BACKUP_FILE"