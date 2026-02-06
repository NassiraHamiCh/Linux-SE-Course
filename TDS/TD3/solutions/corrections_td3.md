# Solutions TD3 - Programmation Shell avancée

## Exercice 1 : Calculs arithmétiques

### Solution

```bash
#!/bin/bash
# Exercice 1 : Calculs avec trois méthodes

echo "=== Calculatrice Shell ==="
read -p "Entrez le premier nombre : " a
read -p "Entrez le deuxième nombre : " b

echo ""
echo "=== Méthode 1 : expr ==="
somme1=$(expr $a + $b)
echo "Somme : $somme1"

echo ""
echo "=== Méthode 2 : let ==="
let somme2=$a+$b
echo "Somme : $somme2"

echo ""
echo "=== Méthode 3 : (( )) ==="
somme3=$((a + b))
echo "Somme : $somme3"
```

### Explications

**Méthode 1 - `expr` :**
- Syntaxe : `expr $a + $b`
- Espaces obligatoires autour de l'opérateur
- Utiliser `$()` pour capturer le résultat

**Méthode 2 - `let` :**
- Syntaxe : `let variable=expression`
- Pas d'espaces autour du `=`
- Affectation directe à une variable

**Méthode 3 - `$(( ))` (Recommandée) :**
- Syntaxe : `$((expression))`
- Plus simple et lisible
- Pas besoin d'échapper les opérateurs

---

## Exercice 2 : Tests sur fichiers

### Solution

```bash
#!/bin/bash
# Exercice 2 : Tests sur fichiers

read -p "Entrez le nom du fichier : " fichier

echo ""
echo "Résultats des tests :"
echo "===================="

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
    echo "✓ Le fichier est lisible"
else
    echo "✗ Le fichier n'est pas lisible"
fi

# Test écriture
if [ -w "$fichier" ]; then
    echo "✓ Le fichier est modifiable"
else
    echo "✗ Le fichier n'est pas modifiable"
fi

# Test exécution
if [ -x "$fichier" ]; then
    echo "✓ Le fichier est exécutable"
else
    echo "✗ Le fichier n'est pas exécutable"
fi
```

### Explications

**Tests sur fichiers :**

| Test | Description |
|------|-------------|
| `-e` | Fichier existe |
| `-f` | Fichier ordinaire |
| `-d` | Répertoire |
| `-L` | Lien symbolique |
| `-r` | Lisible |
| `-w` | Modifiable (writable) |
| `-x` | Exécutable |

**Bonnes pratiques :**
- Toujours mettre les noms de fichiers entre guillemets : `"$fichier"`
- Tester d'abord l'existence avant les autres tests
- Utiliser `exit 1` en cas d'erreur

---

## Exercice 3 : Boucles et conditions

### Solution

```bash
#!/bin/bash
# Exercice 3 : Boucle avec tests multiples

echo "=== Nombres de 1 à 20 ==="
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
```

### Explications

**Opérateur modulo `%` :**
- `$((i % 2))` : reste de la division par 2
- Si le reste est 0, le nombre est pair
- Sinon, le nombre est impair

**Construction de chaîne :**
- `message="${message}texte"` : concaténation
- Permet de construire le message progressivement

**Alternative avec case :**

```bash
for i in {1..20}
do
    message="$i : "
    
    case $((i % 2)) in
        0) message="${message}Pair" ;;
        *) message="${message}Impair" ;;
    esac
    
    # ... reste du code
    echo "$message"
done
```

---

## Exercice 4 : Tableaux

### Solution

```bash
#!/bin/bash
# Exercice 4 : Manipulation de tableaux

# 1. Créer un tableau
villes=("Oujda" "Nador" "Casablanca" "Rabat" "Fès")

# 2. Afficher tous les éléments
echo "=== Tableau initial ==="
echo "${villes[@]}"
echo ""

# 3. Afficher le nombre d'éléments
echo "Nombre d'éléments : ${#villes[@]}"
echo ""

# 4. Afficher le troisième élément (indice 2)
echo "Troisième élément : ${villes[2]}"
echo ""

# 5. Modifier le deuxième élément (indice 1)
villes[1]="Tanger"
echo "=== Après modification ==="
echo "${villes[@]}"
echo ""

# 6. Ajouter une nouvelle ville
villes+=("Marrakech")
echo "=== Après ajout ==="
echo "${villes[@]}"
echo ""

# 7. Afficher le tableau final
echo "Nombre final d'éléments : ${#villes[@]}"

echo ""
echo "=== Affichage détaillé ==="
for i in "${!villes[@]}"
do
    echo "villes[$i] = ${villes[$i]}"
done
```

### Explications

**Syntaxe des tableaux :**

| Syntaxe | Description |
|---------|-------------|
| `tableau=("a" "b" "c")` | Créer un tableau |
| `${tableau[@]}` | Tous les éléments |
| `${tableau[i]}` | Élément à l'indice i |
| `${#tableau[@]}` | Nombre d'éléments |
| `${!tableau[@]}` | Liste des indices |
| `tableau[i]=valeur` | Modifier un élément |
| `tableau+=("x")` | Ajouter un élément |

**Indices :**
- Les tableaux commencent à l'indice 0
- Premier élément : `${tableau[0]}`
- Deuxième élément : `${tableau[1]}`

**Parcourir un tableau :**

```bash
# Par valeurs
for ville in "${villes[@]}"
do
    echo "$ville"
done

# Par indices
for i in "${!villes[@]}"
do
    echo "villes[$i] = ${villes[$i]}"
done
```

---

## Exercice 5 : Fonctions avec paramètres

### Solution

```bash
#!/bin/bash
# Exercice 5 : Fonctions mathématiques

# Fonction somme
somme() {
    resultat=$(($1 + $2))
    echo $resultat
}

# Fonction produit
produit() {
    resultat=$(($1 * $2))
    echo $resultat
}

# Fonction est_pair
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
    
    if [ $n -eq 0 ] || [ $n -eq 1 ]; then
        echo 1
        return
    fi
    
    for ((i=2; i<=n; i++))
    do
        result=$((result * i))
    done
    
    echo $result
}

# Programme principal
echo "=== Calculatrice avec fonctions ==="
read -p "Entrez le premier nombre : " num1
read -p "Entrez le deuxième nombre : " num2

echo ""
echo "=== Résultats ==="

# Tester somme
s=$(somme $num1 $num2)
echo "Somme de $num1 et $num2 : $s"

# Tester produit
p=$(produit $num1 $num2)
echo "Produit de $num1 et $num2 : $p"

echo ""

# Tester est_pair pour num1
if est_pair $num1; then
    echo "$num1 est pair"
else
    echo "$num1 est impair"
fi

# Tester est_pair pour num2
if est_pair $num2; then
    echo "$num2 est pair"
else
    echo "$num2 est impair"
fi

echo ""

# Tester factorielle
fact1=$(factorielle $num1)
echo "Factorielle de $num1 : $fact1"

fact2=$(factorielle $num2)
echo "Factorielle de $num2 : $fact2"
```

### Explications

**Retourner une valeur :**

**Méthode 1 - `echo` (recommandée pour valeurs) :**
```bash
fonction() {
    resultat=$(($1 + $2))
    echo $resultat  # Affiche le résultat
}

valeur=$(fonction 5 3)  # Capture avec $()
```

**Méthode 2 - `return` (pour codes de succès/échec) :**
```bash
fonction() {
    if [ ... ]; then
        return 0  # Succès
    else
        return 1  # Échec
    fi
}

if fonction; then
    echo "Succès"
fi
```

**Variables locales :**
```bash
fonction() {
    local var=10  # Variable locale
    # ...
}
```

**Factorielle récursive (alternative) :**
```bash
factorielle() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        local temp=$(factorielle $(($1 - 1)))
        echo $(($1 * temp))
    fi
}
```

---

## Exercice 6 : Menu interactif

### Solution

```bash
#!/bin/bash
# Exercice 6 : Menu interactif

afficher_menu() {
    echo ""
    echo "============================"
    echo "    MENU PRINCIPAL"
    echo "============================"
    echo "1. Date et heure"
    echo "2. Utilisateur courant"
    echo "3. Répertoire courant"
    echo "4. Lister les fichiers"
    echo "5. Espace disque"
    echo "6. Quitter"
    echo "============================"
}

# Boucle principale
while true
do
    afficher_menu
    read -p "Votre choix : " choix
    echo ""
    
    case $choix in
        1)
            echo "Date : $(date)"
            ;;
        2)
            echo "Utilisateur : $USER"
            ;;
        3)
            echo "Répertoire : $(pwd)"
            ;;
        4)
            echo "Fichiers :"
            ls -lh
            ;;
        5)
            echo "Espace disque :"
            df -h .
            ;;
        6)
            echo "Au revoir !"
            exit 0
            ;;
        *)
            echo "❌ Choix invalide ! Choisissez entre 1 et 6."
            ;;
    esac
    
    # Pause avant de réafficher le menu
    echo ""
    read -p "Appuyez sur Entrée pour continuer..."
done
```

### Explications

**Structure du menu :**
1. **Fonction `afficher_menu()`** : affiche le menu
2. **Boucle `while true`** : boucle infinie
3. **`case`** : traite les choix
4. **`exit 0`** : quitte le script

**Commandes système utilisées :**

| Commande | Description |
|----------|-------------|
| `date` | Date et heure actuelles |
| `$USER` | Variable d'utilisateur |
| `pwd` | Répertoire courant |
| `ls -lh` | Liste détaillée lisible |
| `df -h .` | Espace disque du répertoire courant |

**Améliorations possibles :**

```bash
# Effacer l'écran avant d'afficher le menu
clear

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}✓ Succès${NC}"
echo -e "${RED}✗ Erreur${NC}"

# Validation du choix
if ! [[ "$choix" =~ ^[1-6]$ ]]; then
    echo "Erreur : entrez un chiffre entre 1 et 6"
fi
```

---

## 🎯 Résumé des concepts

### Variables et calculs

```bash
# Variables
nom="Ahmed"
age=25

# Calculs
resultat=$((a + b))
let "x = a * b"
```

### Tests

```bash
# Fichiers
[ -f fichier ]     # Fichier ordinaire
[ -d repertoire ]  # Répertoire

# Nombres
[ $a -eq $b ]      # Égal
[ $a -lt $b ]      # Inférieur

# Chaînes
[ "$str1" = "$str2" ]  # Égal
[ -z "$str" ]          # Vide
```

### Structures de contrôle

```bash
# If
if [ condition ]; then
    commandes
fi

# Case
case $var in
    valeur1) commandes ;;
    *) defaut ;;
esac
```

### Boucles

```bash
# For
for i in {1..10}; do
    echo $i
done

# While
while [ condition ]; do
    commandes
done
```

### Tableaux

```bash
tableau=("a" "b" "c")
echo ${tableau[0]}      # Premier élément
echo ${tableau[@]}      # Tous
echo ${#tableau[@]}     # Taille
```

### Fonctions

```bash
fonction() {
    echo $(($1 + $2))
}

resultat=$(fonction 5 3)
```

---

## 📚 Pour aller plus loin

**Tests avancés :**
- Tests sur plusieurs fichiers
- Combinaisons logiques complexes
- Expressions régulières

**Boucles :**
- `break` et `continue`
- Boucles imbriquées
- Boucles sur fichiers

**Fonctions :**
- Fonctions récursives
- Fonctions avec nombre variable de paramètres
- Bibliothèques de fonctions

---

[⬅️ Retour au TD3](../README.md)
