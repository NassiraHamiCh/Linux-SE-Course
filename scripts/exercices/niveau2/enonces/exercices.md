# 🟡 Niveau 2 : Intermédiaire

## Ex 1 : Filtrage logs
Extraire lignes "ERROR" vers `errors.log`  
**Commandes:** `grep`, `>`

## Ex 2 : Archivage
Créer `logs_20250206.tar.gz`  
**Commandes:** `tar -czf`, `date +%Y%m%d`

## Ex 3 : Processus utilisateur
Afficher tous vos processus  
**Commandes:** `ps aux`, `grep`, `$USER`

## Ex 4 : Top CPU
Top 5 processus par utilisation CPU  
**Commandes:** `ps aux`, `sort -nrk 3`, `head`, `awk`
