#!/bin/bash
dossier="backup_$(date +%Y-%m-%d)"
mkdir -p "$dossier"
cp *.sh "$dossier/" 2>/dev/null
echo "✓ Scripts sauvegardés dans $dossier"
