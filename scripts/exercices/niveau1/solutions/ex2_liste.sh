#!/bin/bash
echo "Recherche des fichiers .txt..."
find . -name "*.txt" > fichiers.log
nb=$(wc -l < fichiers.log)
echo "✓ $nb fichiers trouvés (liste dans fichiers.log)"
