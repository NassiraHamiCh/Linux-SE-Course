#!/bin/bash
# TD3 - Exercice 3 : Boucles et conditions
# Auteur : Filière IIA S3
# Description : Afficher les nombres de 1 à 20 avec leurs propriétés

echo "============================================"
echo "   Exercice 3 : Nombres de 1 à 20"
echo "============================================"
echo ""

for i in {1..20}
do
    # Construire le message
    message="$i : "
    
    # Test pair/impair
    if [ $((i % 2)) -eq 0 ]; then
        message="${message}Pair"
    else
        message="${message}Impair"
    fi
    
    # Test multiple de 3
    if [ $((i % 3)) -eq 0 ]; then
        message="${message}, Multiple de 3"
    fi
    
    # Test multiple de 5
    if [ $((i % 5)) -eq 0 ]; then
        message="${message}, Multiple de 5"
    fi
    
    echo "$message"
done

echo ""
echo "============================================"
echo "Nombres pairs : 2, 4, 6, 8, 10, 12, 14, 16, 18, 20"
echo "Multiples de 3 : 3, 6, 9, 12, 15, 18"
echo "Multiples de 5 : 5, 10, 15, 20"
echo "============================================"
