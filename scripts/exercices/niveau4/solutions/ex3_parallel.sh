#!/bin/bash
# Exécuter plusieurs tâches en parallèle
for i in {1..5}; do
    (
        sleep $((RANDOM % 3))
        echo "Tâche $i terminée"
    ) &
done
wait
echo "✓ Toutes les tâches terminées"
