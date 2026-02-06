#!/bin/bash
BACKUP_DIR="backups"
mkdir -p "$BACKUP_DIR"
timestamp=$(date +%Y%m%d_%H%M%S)
find . -type f -newer "$BACKUP_DIR/.last_backup" 2>/dev/null | \
    tar -czf "$BACKUP_DIR/incremental_$timestamp.tar.gz" -T -
touch "$BACKUP_DIR/.last_backup"
echo "✓ Backup incrémental créé"
