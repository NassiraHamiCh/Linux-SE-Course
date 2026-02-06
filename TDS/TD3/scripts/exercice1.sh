#!/bin/bash
# TD3 - Exercice 1 : Calculs arithmétiques
# Auteur : Filière IIA S3
# Description : Calcul de somme avec trois méthodes différentes

echo "============================================"
echo "   Exercice 1 : Calculs arithmétiques"
echo "============================================"
echo ""

# Saisie des nombres
read -p "Entrez le premier nombre : " a
read -p "Entrez le deuxième nombre : " b

echo ""
echo "============================================"

# Méthode 1 : expr
echo ""
echo "=== Méthode 1 : expr ==="
somme1=$(expr $a + $b)
echo "Somme de $a + $b = $somme1"

# Méthode 2 : let
echo ""
echo "=== Méthode 2 : let ==="
let somme2=$a+$b
echo "Somme de $a + $b = $somme2"

# Méthode 3 : $(( ))
echo ""
echo "=== Méthode 3 : \$(( )) ===" 
somme3=$((a + b))
echo "Somme de $a + $b = $somme3"

echo ""
echo "============================================"
echo "Toutes les méthodes donnent le même résultat !"
echo "============================================"
