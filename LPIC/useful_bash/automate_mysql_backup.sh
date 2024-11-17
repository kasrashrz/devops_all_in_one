#!/bin/bash
# MySQL database backup using mysqldump
DB_NAME=""
USER=""
PASSWORD=""
BACKUP_DIR=""
TIMESTAMP=$(date "+%Y-%m-%d-%H-%M-%S")
mysqldump -u $USER -p$PASSWORD $DB_NAME > $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql
echo "Database backup completed: $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql"
