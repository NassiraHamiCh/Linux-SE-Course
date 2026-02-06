#!/bin/bash
echo "Création d'archive..."
archive="logs_$(date +%Y%m%d).tar.gz"
tar -czf "$archive" *.log 2>/dev/null
echo "✓ Archive créée : $archive ($(ls -lh $archive | awk '{print $5}'))"
