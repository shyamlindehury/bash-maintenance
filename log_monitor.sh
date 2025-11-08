#!/bin/bash
# ------------------------------------------
# log_monitor.sh
# Monitors log files for errors or warnings
# ------------------------------------------

set -euo pipefail

SRC_DIR="/data/test_src"
LOG_DIR="/data/logs"
REPORT_FILE="$LOG_DIR/monitor_report.log"

mkdir -p "$LOG_DIR"

echo "===== LOG MONITOR STARTED at $(date) =====" | tee -a "$REPORT_FILE"

# Check if there are any log files to analyze
if [ -z "$(ls -A $SRC_DIR/*.log 2>/dev/null || true)" ]; then
    echo "[INFO] No log files found in $SRC_DIR" | tee -a "$REPORT_FILE"
else
    # Search for ERROR and WARN patterns
    echo "[INFO] Scanning log files in $SRC_DIR ..." | tee -a "$REPORT_FILE"

    ERRORS=$(grep -i "error" $SRC_DIR/*.log || true)
    WARNS=$(grep -i "warn" $SRC_DIR/*.log || true)

    if [ -n "$ERRORS" ]; then
        echo "[ERROR] Found the following errors:" | tee -a "$REPORT_FILE"
        echo "$ERRORS" | tee -a "$REPORT_FILE"
    else
        echo "[INFO] No errors found." | tee -a "$REPORT_FILE"
    fi

    if [ -n "$WARNS" ]; then
        echo "[WARN] Found the following warnings:" | tee -a "$REPORT_FILE"
        echo "$WARNS" | tee -a "$REPORT_FILE"
    else
        echo "[INFO] No warnings found." | tee -a "$REPORT_FILE"
    fi
fi

echo "===== LOG MONITOR FINISHED at $(date) =====" | tee -a "$REPORT_FILE"
