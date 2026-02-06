#!/bin/bash
# Nettoyer un fichier de configuration
sed -e 's/#.*//' -e '/^$/d' -e 's/^[ \t]*//' config.txt > config.clean
echo "✓ Configuration nettoyée"
