#!/bin/bash
echo "Analyse des logs..."
# Créer un faux fichier de log
for i in {1..50}; do
    echo "$(date) [ERROR] Erreur $i" >> app.log
    echo "$(date) [INFO] Message $i" >> app.log
done
grep "ERROR" app.log > errors.log
echo "✓ $(wc -l < errors.log) erreurs trouvées"
