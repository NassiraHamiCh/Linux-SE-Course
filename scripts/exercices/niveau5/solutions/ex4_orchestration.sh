#!/bin/bash
# Orchestrer plusieurs services
MAX_PARALLEL=3
running=0

for service in web api db cache; do
    (
        echo "Démarrage $service..."
        sleep $((RANDOM % 5))
        echo "✓ $service démarré"
    ) &
    
    ((running++))
    if ((running >= MAX_PARALLEL)); then
        wait -n
        ((running--))
    fi
done
wait
echo "✓ Tous les services démarrés"
