# ⚫ Niveau 5 : Maître

## Ex 1 : Déploiement automatique
Script complet : git pull, install, test, deploy  
**Techniques:** `set -euo pipefail`, `trap`, gestion erreurs

## Ex 2 : Scan de sécurité
Analyser ports, SUID, logs auth  
**Commandes:** `ss -tuln`, `find -perm -4000`, `/var/log/auth.log`

## Ex 3 : Optimisation performance
Traiter 1M lignes efficacement  
**Techniques:** `awk` vs boucles, optimisation

## Ex 4 : Orchestration services
Démarrer N services en parallèle limité  
**Techniques:** Pool de workers, `wait -n`, compteurs
