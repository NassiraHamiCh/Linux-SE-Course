#!/bin/bash
# TD3 - Exercice 2 : Tests sur fichiers
# Auteur : Filière IIA S3
# Description : Vérifier les propriétés d'un fichier

echo "============================================"
echo "   Exercice 2 : Tests sur fichiers"
echo "============================================"
echo ""

# Saisie du nom de fichier
read -p "Entrez le nom du fichier à tester : " fichier

echo ""
echo "============================================"
echo "Résultats des tests pour : $fichier"
echo "============================================"
echo ""

# Test d'existence
if [ -e "$fichier" ]; then
    echo "✓ Le fichier existe"
else
    echo "✗ Le fichier n'existe pas"
    exit 1
fi

# Test fichier ordinaire
if [ -f "$fichier" ]; then
    echo "✓ C'est un fichier ordinaire"
else
    echo "✗ Ce n'est pas un fichier ordinaire"
fi

# Test répertoire
if [ -d "$fichier" ]; then
    echo "✓ C'est un répertoire"
else
    echo "✗ Ce n'est pas un répertoire"
fi

# Test lien symbolique
if [ -L "$fichier" ]; then
    echo "✓ C'est un lien symbolique"
else
    echo "✗ Ce n'est pas un lien symbolique"
fi

# Test lecture
if [ -r "$fichier" ]; then
    echo "✓ Le fichier est lisible (readable)"
else
    echo "✗ Le fichier n'est pas lisible"
fi

# Test écriture
if [ -w "$fichier" ]; then
    echo "✓ Le fichier est modifiable (writable)"
else
    echo "✗ Le fichier n'est pas modifiable"
fi

# Test exécution
if [ -x "$fichier" ]; then
    echo "✓ Le fichier est exécutable"
else
    echo "✗ Le fichier n'est pas exécutable"
fi

# Test non vide
if [ -s "$fichier" ]; then
    echo "✓ Le fichier est non vide (taille > 0)"
    # Afficher la taille
    taille=$(wc -c < "$fichier")
    echo "  Taille : $taille octets"
else
    echo "✗ Le fichier est vide"
fi

echo ""
echo "============================================"
