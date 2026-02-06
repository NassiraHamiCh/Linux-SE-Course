#!/bin/bash
# TD3 - Exercice 5 : Fonctions avec paramètres
# Auteur : Filière IIA S3
# Description : Fonctions mathématiques (somme, produit, pair, factorielle)

echo "============================================"
echo "   Exercice 5 : Fonctions"
echo "============================================"
echo ""

# Fonction somme
somme() {
    local resultat=$(($1 + $2))
    echo $resultat
}

# Fonction produit
produit() {
    local resultat=$(($1 * $2))
    echo $resultat
}

# Fonction est_pair (retourne 0 si pair, 1 sinon)
est_pair() {
    if [ $(($1 % 2)) -eq 0 ]; then
        return 0  # Vrai (pair)
    else
        return 1  # Faux (impair)
    fi
}

# Fonction factorielle
factorielle() {
    local n=$1
    local result=1
    
    # Cas de base
    if [ $n -eq 0 ] || [ $n -eq 1 ]; then
        echo 1
        return
    fi
    
    # Calcul de la factorielle
    for ((i=2; i<=n; i++))
    do
        result=$((result * i))
    done
    
    echo $result
}

# Programme principal
read -p "Entrez le premier nombre : " num1
read -p "Entrez le deuxième nombre : " num2

echo ""
echo "============================================"
echo "=== Résultats ==="
echo "============================================"
echo ""

# Test somme
echo "--- Fonction somme() ---"
s=$(somme $num1 $num2)
echo "somme($num1, $num2) = $s"
echo ""

# Test produit
echo "--- Fonction produit() ---"
p=$(produit $num1 $num2)
echo "produit($num1, $num2) = $p"
echo ""

# Test est_pair
echo "--- Fonction est_pair() ---"
if est_pair $num1; then
    echo "$num1 est pair"
else
    echo "$num1 est impair"
fi

if est_pair $num2; then
    echo "$num2 est pair"
else
    echo "$num2 est impair"
fi
echo ""

# Test factorielle
echo "--- Fonction factorielle() ---"
fact1=$(factorielle $num1)
echo "factorielle($num1) = $fact1"

fact2=$(factorielle $num2)
echo "factorielle($num2) = $fact2"

echo ""
echo "============================================"
echo "Rappels :"
echo "  - Factorielle de 0 = 1"
echo "  - Factorielle de n = n × (n-1) × ... × 1"
echo "  - Exemple : 5! = 5×4×3×2×1 = 120"
echo "============================================"
