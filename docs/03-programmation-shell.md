# Chapitre 3 : La programmation Shell

## 📑 Table des matières

- [1. Introduction](#1-introduction)
- [2. Variables](#2-variables)
- [3. Expressions arithmétiques](#3-expressions-arithmétiques)
- [4. Paramètres et arguments](#4-paramètres-et-arguments)
- [5. Tests et conditions](#5-tests-et-conditions)
- [6. Structures conditionnelles](#6-structures-conditionnelles)
- [7. Boucles](#7-boucles)
- [8. Tableaux](#8-tableaux)
- [9. Fonctions](#9-fonctions)

---

## 1. Introduction

### Qu'est-ce qu'un script Shell ?

Un **script shell** est un fichier texte contenant une suite de commandes Linux qui seront exécutées automatiquement. C'est un moyen puissant d'automatiser des tâches répétitives.

**Extension recommandée :** `.sh`

### Langage interprété

Le shell est un **langage interprété**, ce qui signifie :
- Pas de compilation nécessaire
- Exécution directe du code
- Modifications faciles et rapides
- Multiplateforme (fonctionne sur tout système avec bash)

**Avantages :**
✅ Simple à apprendre  
✅ Rapide à développer  
✅ Code source accessible  
✅ Idéal pour l'automatisation  

**Inconvénients :**
❌ Plus lent qu'un programme compilé  
❌ Nécessite un interpréteur  
❌ Code source visible  

### Structure d'un script

**Format minimal :**

```bash
#!/bin/bash
# Commentaire : description du script

# Commandes
echo "Bonjour !"
```

**Première ligne (shebang) :**
- `#!/bin/bash` : indique l'interpréteur à utiliser
- Toujours sur la première ligne
- Obligatoire pour l'exécution directe

### Principaux shells

| Shell | Nom | Utilisation |
|-------|-----|-------------|
| **bash** | Bourne Again Shell | Standard sous Linux |
| **sh** | Bourne Shell | Shell POSIX de base |
| **zsh** | Z Shell | Shell moderne, puissant |
| **ksh** | Korn Shell | Souvent sur UNIX |
| **fish** | Friendly Interactive Shell | Convivial, auto-complétion |

**Vérifier son shell :**

```bash
echo $SHELL
```

### Créer et exécuter un script

**Méthode 1 : Exécution avec bash**

```bash
# Créer le script
nano mon_script.sh

# Exécuter
bash mon_script.sh
```

**Méthode 2 : Exécution directe**

```bash
# Rendre exécutable
chmod +x mon_script.sh

# Exécuter
./mon_script.sh
```

---

## 2. Variables

### Déclaration et affectation

**Syntaxe :**

```bash
nom_variable=valeur
```

**⚠️ Règles importantes :**
- Pas d'espaces autour du `=`
- Nom : lettres, chiffres, underscore (pas de tiret)
- Sensible à la casse : `var` ≠ `VAR`
- Guillemets obligatoires si la valeur contient des espaces

**Exemples :**

```bash
# Variables simples
nom="Ahmed"
age=25
ville="Oujda"

# Variable avec espaces (guillemets obligatoires)
phrase="Bonjour tout le monde"

# Erreur courante (espaces autour de =)
prenom = "Ali"  # ❌ ERREUR !
prenom="Ali"    # ✅ CORRECT
```

### Utilisation des variables

Pour accéder à la valeur, préfixer par `$` :

```bash
# Afficher une variable
echo $nom
echo "Mon nom est $nom"

# Forme recommandée avec accolades
echo "Mon nom est ${nom}"
```

### Commande `echo`

Affiche du texte et des variables :

```bash
# Texte simple
echo "Bonjour"

# Variable
echo $nom

# Combinaison
echo "Je m'appelle $nom et j'ai $age ans"
```

**Options utiles :**

| Option | Description | Exemple |
|--------|-------------|---------|
| `-n` | Pas de retour à la ligne | `echo -n "Texte"` |
| `-e` | Interpréter les échappements | `echo -e "Ligne1\nLigne2"` |

**Codes d'échappement avec -e :**

| Code | Effet |
|------|-------|
| `\n` | Nouvelle ligne |
| `\t` | Tabulation |
| `\\` | Backslash |
| `\c` | Supprime le retour à la ligne final |

**Exemples :**

```bash
# Sans retour à la ligne
echo -n "Bonjour "
echo "monde"  # Affiche : Bonjour monde

# Avec nouvelle ligne
echo -e "Ligne 1\nLigne 2"

# Avec tabulation
echo -e "Colonne1\tColonne2"
```

### Commande `read`

Lit une saisie utilisateur :

```bash
# Lecture simple
read variable
echo "Vous avez saisi : $variable"

# Avec prompt
read -p "Entrez votre nom : " nom
echo "Bonjour $nom"

# Plusieurs variables
read -p "Prénom et nom : " prenom nom
echo "Bonjour $prenom $nom"
```

**Options utiles :**

| Option | Description | Exemple |
|--------|-------------|---------|
| `-p` | Afficher un message | `read -p "Nom : " nom` |
| `-t` | Timeout en secondes | `read -t 10 variable` |
| `-n` | Nombre de caractères max | `read -n 5 code` |
| `-s` | Mode silencieux (mot de passe) | `read -s password` |

### Variables d'environnement

Variables prédéfinies par le système :

| Variable | Description |
|----------|-------------|
| `$HOME` | Répertoire personnel |
| `$USER` | Nom d'utilisateur |
| `$PWD` | Répertoire courant |
| `$SHELL` | Shell utilisé |
| `$PATH` | Chemins de recherche des commandes |
| `$LANG` | Langue du système |

**Exemples :**

```bash
echo "Utilisateur : $USER"
echo "Répertoire : $HOME"
echo "Shell : $SHELL"
```

**Lister toutes les variables :**

```bash
env
```

### Commandes `unset` et `readonly`

**Supprimer une variable :**

```bash
# Créer
nom="Ahmed"

# Supprimer
unset nom

# Variable n'existe plus
echo $nom  # Affiche rien
```

**Variable en lecture seule :**

```bash
# Créer une constante
readonly PI=3.14159

# Tentative de modification
PI=3  # Erreur : variable en lecture seule
```

---

## 3. Expressions arithmétiques

En shell, toutes les variables sont des chaînes de caractères par défaut. Pour faire des calculs, on utilise des commandes spéciales.

### Méthode 1 : `expr`

```bash
# Addition
resultat=$(expr 5 + 3)
echo $resultat  # 8

# Autres opérations
somme=$(expr 10 + 5)
diff=$(expr 10 - 5)
prod=$(expr 10 \* 5)   # Attention : * doit être échappé
quot=$(expr 10 / 5)
reste=$(expr 10 % 3)
```

⚠️ **Attention :** Espaces obligatoires autour des opérateurs !

### Méthode 2 : `(( ))` (Recommandée)

```bash
# Plus simple et lisible
a=10
b=5

resultat=$((a + b))
echo $resultat  # 15

# Opérations multiples
calcul=$((a * b + 10))
echo $calcul  # 60

# Incrémentation
compteur=0
((compteur++))
echo $compteur  # 1
```

### Méthode 3 : `let`

```bash
# Affecter directement
let "resultat = 10 + 5"
echo $resultat  # 15

# Sans guillemets (une seule opération)
let resultat=10+5
echo $resultat  # 15
```

### Opérateurs arithmétiques

| Opérateur | Description | Exemple |
|-----------|-------------|---------|
| `+` | Addition | `$((5 + 3))` → 8 |
| `-` | Soustraction | `$((5 - 3))` → 2 |
| `*` | Multiplication | `$((5 * 3))` → 15 |
| `/` | Division | `$((10 / 3))` → 3 |
| `%` | Modulo (reste) | `$((10 % 3))` → 1 |
| `**` | Puissance | `$((2 ** 3))` → 8 |

**Exemple complet :**

```bash
#!/bin/bash
# Calculatrice simple

read -p "Premier nombre : " num1
read -p "Deuxième nombre : " num2

somme=$((num1 + num2))
produit=$((num1 * num2))

echo "Somme : $somme"
echo "Produit : $produit"
```

---

## 4. Paramètres et arguments

### Paramètres positionnels

Les arguments passés au script sont accessibles via des variables spéciales :

| Variable | Description |
|----------|-------------|
| `$0` | Nom du script |
| `$1` | Premier argument |
| `$2` | Deuxième argument |
| `$3` | Troisième argument |
| ... | ... |
| `$9` | Neuvième argument |
| `${10}` | Dixième argument (accolades obligatoires) |

**Exemple :**

```bash
#!/bin/bash
# Script : salutation.sh

echo "Nom du script : $0"
echo "Bonjour $1 $2 !"
```

**Exécution :**

```bash
./salutation.sh Ahmed Bennani
# Affiche :
# Nom du script : ./salutation.sh
# Bonjour Ahmed Bennani !
```

### Paramètres spéciaux

| Variable | Description |
|----------|-------------|
| `$#` | Nombre d'arguments |
| `$@` | Tous les arguments (liste séparée) |
| `$*` | Tous les arguments (chaîne unique) |
| `$?` | Code de retour de la dernière commande (0 = succès) |
| `$$` | PID du script |

**Exemple :**

```bash
#!/bin/bash

echo "Nombre d'arguments : $#"
echo "Tous les arguments : $@"
echo "Premier argument : $1"
```

**Tester le code de retour :**

```bash
# Commande qui réussit
ls /home
echo $?  # 0

# Commande qui échoue
ls /dossier_inexistant
echo $?  # 2
```

---

## 5. Tests et conditions

### Commande `test` et `[ ]`

La commande `test` évalue une expression et retourne :
- `0` si l'expression est **vraie**
- `1` si l'expression est **fausse**

**Deux syntaxes équivalentes :**

```bash
test expression
[ expression ]  # Espaces obligatoires !
```

### Tests sur les fichiers

| Test | Description |
|------|-------------|
| `-e fichier` | Fichier existe |
| `-f fichier` | Fichier ordinaire |
| `-d fichier` | Répertoire |
| `-L fichier` | Lien symbolique |
| `-r fichier` | Lisible |
| `-w fichier` | Modifiable |
| `-x fichier` | Exécutable |
| `-s fichier` | Non vide (taille > 0) |

**Exemples :**

```bash
# Tester si un fichier existe
if [ -f "fichier.txt" ]; then
    echo "Le fichier existe"
fi

# Tester si c'est un répertoire
if [ -d "/home/user" ]; then
    echo "C'est un répertoire"
fi

# Tester si le fichier est exécutable
if [ -x "script.sh" ]; then
    echo "Le script est exécutable"
fi
```

### Tests sur les chaînes

| Test | Description |
|------|-------------|
| `"$str1" = "$str2"` | Chaînes identiques |
| `"$str1" != "$str2"` | Chaînes différentes |
| `-z "$str"` | Chaîne vide |
| `-n "$str"` | Chaîne non vide |
| `"$str1" < "$str2"` | Ordre lexicographique < |
| `"$str1" > "$str2"` | Ordre lexicographique > |

**Exemples :**

```bash
nom="Ahmed"

# Tester l'égalité
if [ "$nom" = "Ahmed" ]; then
    echo "C'est Ahmed"
fi

# Tester si vide
if [ -z "$nom" ]; then
    echo "Nom vide"
else
    echo "Nom : $nom"
fi
```

⚠️ **Bonnes pratiques :**
- Toujours mettre les variables entre guillemets : `"$var"`
- Utiliser `=` pour les chaînes, `-eq` pour les nombres

### Tests numériques

| Test | Description |
|------|-------------|
| `$a -eq $b` | Égal (equal) |
| `$a -ne $b` | Différent (not equal) |
| `$a -lt $b` | Plus petit (less than) |
| `$a -le $b` | Plus petit ou égal (less or equal) |
| `$a -gt $b` | Plus grand (greater than) |
| `$a -ge $b` | Plus grand ou égal (greater or equal) |

**Exemples :**

```bash
age=25

# Tester si majeur
if [ $age -ge 18 ]; then
    echo "Majeur"
else
    echo "Mineur"
fi

# Comparer deux nombres
a=10
b=20
if [ $a -lt $b ]; then
    echo "$a est plus petit que $b"
fi
```

### Opérateurs logiques

| Opérateur | Description | Exemple |
|-----------|-------------|---------|
| `&&` ou `-a` | ET logique | `[ $a -gt 0 ] && [ $a -lt 10 ]` |
| `||` ou `-o` | OU logique | `[ $a -eq 5 ] || [ $a -eq 10 ]` |
| `!` | NON logique | `[ ! -f fichier ]` |

**Exemples :**

```bash
age=25

# ET logique
if [ $age -ge 18 ] && [ $age -le 65 ]; then
    echo "Âge actif"
fi

# OU logique
if [ $age -lt 18 ] || [ $age -gt 65 ]; then
    echo "Non actif"
fi

# Négation
if [ ! -f "fichier.txt" ]; then
    echo "Le fichier n'existe pas"
fi
```

---

## 6. Structures conditionnelles

### Structure `if...then...fi`

**Syntaxe :**

```bash
if [ condition ]; then
    commandes
fi
```

**Exemple :**

```bash
#!/bin/bash

read -p "Entrez un nombre : " nombre

if [ $nombre -gt 10 ]; then
    echo "Le nombre est supérieur à 10"
fi
```

### Structure `if...then...else...fi`

```bash
if [ condition ]; then
    commandes_si_vrai
else
    commandes_si_faux
fi
```

**Exemple :**

```bash
#!/bin/bash

read -p "Entrez votre âge : " age

if [ $age -ge 18 ]; then
    echo "Vous êtes majeur"
else
    echo "Vous êtes mineur"
fi
```

### Structure `if...elif...else...fi`

```bash
if [ condition1 ]; then
    commandes1
elif [ condition2 ]; then
    commandes2
else
    commandes3
fi
```

**Exemple :**

```bash
#!/bin/bash

read -p "Note (0-20) : " note

if [ $note -ge 16 ]; then
    echo "Excellent"
elif [ $note -ge 14 ]; then
    echo "Bien"
elif [ $note -ge 12 ]; then
    echo "Assez bien"
elif [ $note -ge 10 ]; then
    echo "Passable"
else
    echo "Insuffisant"
fi
```

### Structure `case`

Pour tester plusieurs valeurs possibles :

```bash
case $variable in
    valeur1)
        commandes1
        ;;
    valeur2)
        commandes2
        ;;
    *)
        commandes_defaut
        ;;
esac
```

**Exemple :**

```bash
#!/bin/bash

read -p "Entrez un jour (1-7) : " jour

case $jour in
    1)
        echo "Lundi"
        ;;
    2)
        echo "Mardi"
        ;;
    3)
        echo "Mercredi"
        ;;
    *)
        echo "Autre jour"
        ;;
esac
```

**Avec patterns :**

```bash
read -p "Entrez une extension : " ext

case $ext in
    jpg|jpeg|png|gif)
        echo "Image"
        ;;
    mp3|wav|flac)
        echo "Audio"
        ;;
    mp4|avi|mkv)
        echo "Vidéo"
        ;;
    *)
        echo "Type inconnu"
        ;;
esac
```

---

## 7. Boucles

### Boucle `for`

**Syntaxe avec liste :**

```bash
for variable in liste
do
    commandes
done
```

**Exemples :**

```bash
# Liste simple
for jour in lundi mardi mercredi jeudi vendredi
do
    echo "Jour : $jour"
done

# Liste de fichiers
for fichier in *.txt
do
    echo "Fichier : $fichier"
done

# Séquence de nombres
for i in {1..5}
do
    echo "Nombre : $i"
done

# Avec seq
for i in $(seq 1 10)
do
    echo "Itération $i"
done

# Avec pas
for i in {0..20..2}
do
    echo "Nombre pair : $i"
done
```

### Boucle `while`

Répète tant que la condition est vraie :

```bash
while [ condition ]
do
    commandes
done
```

**Exemples :**

```bash
# Compteur simple
compteur=1
while [ $compteur -le 5 ]
do
    echo "Compteur : $compteur"
    ((compteur++))
done

# Lecture de fichier ligne par ligne
while read ligne
do
    echo "Ligne : $ligne"
done < fichier.txt

# Demander une saisie valide
while true
do
    read -p "Entrez 'oui' pour continuer : " reponse
    if [ "$reponse" = "oui" ]; then
        break
    fi
done
```

### Boucle `until`

Répète tant que la condition est fausse (inverse de while) :

```bash
until [ condition ]
do
    commandes
done
```

**Exemple :**

```bash
compteur=1
until [ $compteur -gt 5 ]
do
    echo "Compteur : $compteur"
    ((compteur++))
done
```

### Contrôle des boucles

**`break` : Sortir de la boucle**

```bash
for i in {1..10}
do
    if [ $i -eq 5 ]; then
        break  # Sort de la boucle
    fi
    echo $i
done
# Affiche : 1 2 3 4
```

**`continue` : Passer à l'itération suivante**

```bash
for i in {1..10}
do
    if [ $i -eq 5 ]; then
        continue  # Saute cette itération
    fi
    echo $i
done
# Affiche : 1 2 3 4 6 7 8 9 10 (5 est sauté)
```

**`exit` : Quitter le script**

```bash
for i in {1..10}
do
    if [ $i -eq 5 ]; then
        exit  # Quitte complètement le script
    fi
    echo $i
done
# Affiche : 1 2 3 4 puis quitte
```

---

## 8. Tableaux

### Tableaux indexés

**Déclaration :**

```bash
# Déclaration vide
declare -a tableau

# Déclaration avec valeurs
declare -a fruits=("pomme" "banane" "orange")

# Ou directement
fruits=("pomme" "banane" "orange")
```

**Accès aux éléments :**

```bash
# Premier élément (indice 0)
echo ${fruits[0]}  # pomme

# Deuxième élément
echo ${fruits[1]}  # banane

# Tous les éléments
echo ${fruits[@]}  # pomme banane orange
echo ${fruits[*]}  # pomme banane orange
```

**Modification :**

```bash
# Modifier un élément
fruits[1]="fraise"

# Ajouter un élément
fruits[3]="kiwi"
fruits+=("mangue")
```

**Informations sur le tableau :**

```bash
# Taille du tableau
echo ${#fruits[@]}

# Indices utilisés
echo ${!fruits[@]}

# Longueur d'un élément
echo ${#fruits[0]}
```

**Parcourir un tableau :**

```bash
# Méthode 1 : par valeurs
for fruit in "${fruits[@]}"
do
    echo "Fruit : $fruit"
done

# Méthode 2 : par indices
for i in "${!fruits[@]}"
do
    echo "fruits[$i] = ${fruits[$i]}"
done
```

**Supprimer :**

```bash
# Supprimer un élément
unset fruits[1]

# Supprimer tout le tableau
unset fruits
```

### Tableaux associatifs

**Déclaration :**

```bash
# Obligatoire avec -A
declare -A notes

# Avec valeurs
declare -A notes=(
    ["Ahmed"]=15
    ["Sara"]=17
    ["Ali"]=14
)
```

**Utilisation :**

```bash
# Ajouter/modifier
notes["Mohamed"]=16

# Accéder
echo ${notes["Ahmed"]}  # 15

# Tous les éléments
echo ${notes[@]}

# Toutes les clés
echo ${!notes[@]}

# Parcourir
for nom in "${!notes[@]}"
do
    echo "$nom a eu ${notes[$nom]}"
done
```

---

## 9. Fonctions

### Définition

**Syntaxe :**

```bash
# Méthode 1
function nom_fonction {
    commandes
}

# Méthode 2 (recommandée)
nom_fonction() {
    commandes
}
```

**Exemple simple :**

```bash
#!/bin/bash

# Définir la fonction
saluer() {
    echo "Bonjour !"
}

# Appeler la fonction
saluer
```

### Paramètres de fonction

Les fonctions utilisent `$1`, `$2`, etc. comme les scripts :

```bash
#!/bin/bash

saluer() {
    echo "Bonjour $1 $2 !"
}

saluer "Ahmed" "Bennani"
# Affiche : Bonjour Ahmed Bennani !
```

**Accès aux paramètres :**

```bash
fonction() {
    echo "Nombre de paramètres : $#"
    echo "Tous les paramètres : $@"
    echo "Premier paramètre : $1"
}

fonction un deux trois
```

### Valeur de retour

**Avec `return` :**

```bash
est_pair() {
    if [ $(($1 % 2)) -eq 0 ]; then
        return 0  # Vrai
    else
        return 1  # Faux
    fi
}

est_pair 10
if [ $? -eq 0 ]; then
    echo "Pair"
else
    echo "Impair"
fi
```

**Avec `echo` (recommandé pour retourner des valeurs) :**

```bash
somme() {
    resultat=$(($1 + $2))
    echo $resultat
}

total=$(somme 5 3)
echo "Total : $total"  # 8
```

### Variables locales et globales

```bash
#!/bin/bash

# Variable globale
compteur=0

incrementer() {
    # Variable locale
    local temp=10
    
    # Modification de la globale
    ((compteur++))
    
    echo "Temp (local) : $temp"
    echo "Compteur (global) : $compteur"
}

incrementer
echo "Compteur après fonction : $compteur"  # 1
echo "Temp après fonction : $temp"  # Vide (variable locale)
```

### Supprimer une fonction

```bash
# Définir
ma_fonction() {
    echo "Fonction"
}

# Supprimer
unset -f ma_fonction
```

---

## 🎯 Résumé du chapitre

Dans ce chapitre, nous avons appris :

✅ **Scripts Shell** : structure, shebang, exécution  
✅ **Variables** : déclaration, utilisation, `echo`, `read`  
✅ **Calculs** : `expr`, `(())`, `let`  
✅ **Paramètres** : `$1`, `$#`, `$@`, `$?`  
✅ **Tests** : fichiers, chaînes, nombres  
✅ **Conditions** : `if`, `elif`, `else`, `case`  
✅ **Boucles** : `for`, `while`, `until`, `break`, `continue`  
✅ **Tableaux** : indexés et associatifs  
✅ **Fonctions** : définition, paramètres, retour

---

## 📚 Pour aller plus loin

- [Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/)
- [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [ShellCheck](https://www.shellcheck.net/) - Vérificateur de scripts

---

[⬅️ Chapitre précédent : Commandes de base](02-commandes-base.md) | [➡️ Exercices pratiques (TDs)](../exercices/)
