#!/bin/bash
{
    echo "=== RAPPORT SYSTÈME ==="
    echo "Date: $(date)"
    echo "Utilisateur: $USER"
    echo "Fichiers: $(ls -1 | wc -l)"
    echo "Disque: $(df -h . | tail -1 | awk '{print $4}')"
} > rapport.txt
echo "✓ Rapport créé : rapport.txt"
cat rapport.txt
