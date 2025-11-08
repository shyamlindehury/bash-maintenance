#!/bin/bash
# ------------------------------------------
# update_cleanup.sh
# Demo script for system update & cleanup
# ------------------------------------------

set -euo pipefail

LOG_DIR="/data/logs"
LOG_FILE="$LOG_DIR/update_cleanup.log"

# Ensure log directory exists
mkdir -p "$LOG_DIR"

echo "===== UPDATE & CLEANUP STARTED at $(date) =====" | tee -a "$LOG_FILE"

# Simulated update commands
echo "[INFO] Checking for system updates..." | tee -a "$LOG_FILE"
sleep 2
echo "[INFO] All packages are up to date." | tee -a "$LOG_FILE"

# Simulated cleanup commands
echo "[INFO] Cleaning temporary files..." | tee -a "$LOG_FILE"
sleep 2
echo "[INFO] Temporary files cleaned successfully." | tee -a "$LOG_FILE"

# Simulated cache cleanup
echo "[INFO] Removing unused Docker images..." | tee -a "$LOG_FILE"
sleep 2
echo "[INFO] No unused images found." | tee -a "$LOG_FILE"

echo "===== UPDATE & CLEANUP FINISHED at $(date) =====" | tee -a "$LOG_FILE"
