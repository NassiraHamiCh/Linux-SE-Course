#!/bin/bash
# Créer CSV exemple
cat > data.csv << 'DATA'
nom,age,ville
Ahmed,25,Oujda
Sara,30,Nador
Ali,22,Casablanca
DATA

echo "=== Analyse CSV ==="
echo "Âge moyen: $(awk -F, 'NR>1 {sum+=$2; n++} END {print sum/n}' data.csv)"
awk -F, 'NR>1 {print $3}' data.csv | sort | uniq -c
