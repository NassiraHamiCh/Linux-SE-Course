#!/bin/bash
echo "Création de l'arborescence projet..."
mkdir -p projet/{src,docs,tests,data}
echo "✓ Terminé !"
tree projet 2>/dev/null || find projet
