#!/bin/bash
# Rotate and compress logs
LOG_FILE="/var/log/apt/history.log"
BACKUP_DIR="/home/invoker/Desktop/devops/LPIC/useful_bash/backup/logs"
TIMESTAMP=$(date "+%Y-%m-%d-%H-%M")
sudo mv $LOG_FILE $BACKUP_DIR/log_$TIMESTAMP.log
gzip -q $BACKUP_DIR/log_$TIMESTAMP.log
sudo touch $LOG_FILE
echo "Log rotation completed"
