#!/bin/bash
# TD3 - Exercice 4 : Manipulation de tableaux
# Auteur : Filière IIA S3
# Description : Créer et manipuler un tableau de villes

echo "============================================"
echo "   Exercice 4 : Tableaux"
echo "============================================"
echo ""

# 1. Créer un tableau de villes
echo "=== Étape 1 : Création du tableau ==="
villes=("Oujda" "Nador" "Casablanca" "Rabat" "Fès")
echo "Tableau créé avec 5 villes"
echo ""

# 2. Afficher tous les éléments
echo "=== Étape 2 : Tableau initial ==="
echo "${villes[@]}"
echo ""

# 3. Afficher le nombre d'éléments
echo "=== Étape 3 : Nombre d'éléments ==="
echo "Le tableau contient ${#villes[@]} éléments"
echo ""

# 4. Afficher le troisième élément
echo "=== Étape 4 : Troisième élément ==="
echo "villes[2] = ${villes[2]}"
echo "(Rappel : les indices commencent à 0)"
echo ""

# 5. Modifier le deuxième élément
echo "=== Étape 5 : Modification ==="
echo "Avant : villes[1] = ${villes[1]}"
villes[1]="Tanger"
echo "Après : villes[1] = ${villes[1]}"
echo ""
echo "Tableau après modification :"
echo "${villes[@]}"
echo ""

# 6. Ajouter une nouvelle ville
echo "=== Étape 6 : Ajout d'un élément ==="
echo "Ajout de 'Marrakech' à la fin..."
villes+=("Marrakech")
echo "Tableau après ajout :"
echo "${villes[@]}"
echo ""

# 7. Affichage final détaillé
echo "=== Étape 7 : Affichage détaillé ==="
echo "Nombre final d'éléments : ${#villes[@]}"
echo ""
echo "Liste complète avec indices :"
for i in "${!villes[@]}"
do
    echo "  villes[$i] = ${villes[$i]}"
done

echo ""
echo "============================================"
