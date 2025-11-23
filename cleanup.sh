#!/bin/bash
set -e

source config.env

find "$BACKUP_DIR" -type f -mtime +$RETENTION_DAYS -name "*.gz" -exec rm {} \;

echo "$(date): Deleted backups older than $RETENTION_DAYS days." >> "$LOG_FILE"
