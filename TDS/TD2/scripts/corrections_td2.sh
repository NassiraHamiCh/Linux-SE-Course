#!/bin/bash

echo "=== Initialisation de l'environnement de test ==="

# Création du répertoire de travail
rm -rf rep
mkdir rep
cd rep || exit

# Création du fichier de test avec 100 lignes
echo "Création de fichier.txt avec 100 lignes..."
for i in $(seq 1 100); do
  echo "ligne $i" >> fichier.txt
done

# Ajout de quelques lignes contenant 'passwd'
echo "user:passwd:123" >> fichier.txt
echo "root:passwd:456" >> fichier.txt

echo "=== Exercice 1 ==="

echo "[1] Nombre de lignes :"
wc -l fichier.txt

echo "[2] Nombre de lignes, mots et caractères :"
wc fichier.txt

echo "[3] Tri du fichier (méthode 1) :"
sort fichier.txt > fichier_trie1.txt

echo "[4] Tri du fichier (méthode 2 avec pipe) :"
cat fichier.txt | sort > fichier_trie2.txt

echo "[5] Caractères positions 1-7 et 10-19 :"
cut -c1-7,10-19 fichier.txt | head -n 5

echo "[6] 7 premières lignes :"
head -n 7 fichier.txt

echo "[7] 7 dernières lignes :"
tail -n 7 fichier.txt

echo "[8] Recherche de 'passwd' avec numéro de ligne :"
grep -n "passwd" fichier.txt

echo "=== Exercice 2 ==="

echo "[1] Droits d'accès (chmod symbolique et numérique) :"
chmod u+x,o+w fichier.txt
chmod 753 fichier.txt
ls -l fichier.txt

echo "[2] Création des liens :"
ln fichier.txt lienPhysique.txt
ln -s fichier.txt lienSymbolique.txt
ls -l

echo "[3] Recherche de fichiers .txt :"
find . -name "*.txt"

echo "[4] Recherche de liens symboliques :"
find . -type l

echo "[5] Affichage en arborescence :"
if command -v tree >/dev/null 2>&1; then
  tree .
else
  ls -R .
fi

echo "=== Exercice 3 ==="

echo "[1] Compter fichiers ordinaires (pipe) :"
ls -l . | grep "^-" | wc -l

echo "[2] Compter sous-répertoires (méthode 1, redirection erreurs) :"
ls -l . 2> erreurs_ls.txt | grep "^d" | wc -l

echo "[3] Compter sous-répertoires (méthode 2, find + redirection erreurs) :"
find . -maxdepth 1 -type d 2> erreurs_find.txt | wc -l

echo "=== Fin du script ==="
