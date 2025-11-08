#!/bin/bash
# ==========================================
# backup.sh - Simple Backup Utility
# ==========================================

set -euo pipefail

SRC_DIR="/data/test_src"
BACKUP_DIR="/data/backups"
LOG_FILE="/data/logs/backup.log"

mkdir -p "$BACKUP_DIR" "$(dirname "$LOG_FILE")"

echo "===== BACKUP STARTED at $(date) =====" | tee -a "$LOG_FILE"

if [ -d "$SRC_DIR" ]; then
    BACKUP_FILE="$BACKUP_DIR/test_src_backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
    tar -czf "$BACKUP_FILE" -C "$SRC_DIR" .
    echo "[INFO] Backup created at: $BACKUP_FILE" | tee -a "$LOG_FILE"
else
    echo "[ERROR] Source directory $SRC_DIR not found!" | tee -a "$LOG_FILE"
fi

echo "===== BACKUP FINISHED at $(date) =====" | tee -a "$LOG_FILE"
