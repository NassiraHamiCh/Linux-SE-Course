# 📘 Guide d'utilisation des scripts TD3

## 📋 Vue d'ensemble

Ce dossier contient les scripts Shell des 6 exercices du TD3 sur la programmation Shell avancée.

| Script | Exercice | Description |
|--------|----------|-------------|
| `exercice1.sh` | Calculs arithmétiques | Trois méthodes de calcul (expr, let, $(( ))) |
| `exercice2.sh` | Tests sur fichiers | Vérifier les propriétés d'un fichier |
| `exercice3.sh` | Boucles et conditions | Nombres de 1 à 20 avec propriétés |
| `exercice4.sh` | Tableaux | Manipulation de tableaux de villes |
| `exercice5.sh` | Fonctions | Fonctions mathématiques |
| `exercice6.sh` | Menu interactif | Menu système avec 6 options |

---

## 🚀 Installation et préparation

### 1. Rendre les scripts exécutables

```bash
# Se placer dans le dossier des scripts
cd exercices/TD3/scripts

# Rendre tous les scripts exécutables
chmod +x exercice1.sh exercice2.sh exercice3.sh exercice4.sh exercice5.sh exercice6.sh

# Ou individuellement
chmod +x exercice1.sh
```

### 2. Vérifier que bash est installé

```bash
# Vérifier la version de bash
bash --version

# Vérifier l'emplacement de bash
which bash
```

---

## 📝 Utilisation des scripts

### Exercice 1 : Calculs arithmétiques

**Objectif :** Calculer la somme de deux nombres avec trois méthodes différentes

**Exécution :**

```bash
./exercice1.sh
```

**Exemple d'interaction :**

```
Entrez le premier nombre : 15
Entrez le deuxième nombre : 7

=== Méthode 1 : expr ===
Somme de 15 + 7 = 22

=== Méthode 2 : let ===
Somme de 15 + 7 = 22

=== Méthode 3 : $(( )) ===
Somme de 15 + 7 = 22
```

**Ce que vous allez apprendre :**
- Utilisation de `expr` pour les calculs
- Utilisation de `let` pour affecter des résultats
- Utilisation de `$(( ))` (méthode recommandée)

---

### Exercice 2 : Tests sur fichiers

**Objectif :** Tester les propriétés d'un fichier

**Exécution :**

```bash
./exercice2.sh
```

**Exemple d'interaction :**

```
Entrez le nom du fichier à tester : exercice1.sh

✓ Le fichier existe
✓ C'est un fichier ordinaire
✗ Ce n'est pas un répertoire
✗ Ce n'est pas un lien symbolique
✓ Le fichier est lisible
✓ Le fichier est modifiable
✓ Le fichier est exécutable
✓ Le fichier est non vide
  Taille : 892 octets
```

**Tests effectués :**
- `-e` : Existence
- `-f` : Fichier ordinaire
- `-d` : Répertoire
- `-L` : Lien symbolique
- `-r` : Lisible
- `-w` : Modifiable
- `-x` : Exécutable
- `-s` : Non vide

**Conseils :**
- Testez avec différents types de fichiers
- Créez un lien symbolique pour tester : `ln -s exercice1.sh lien_test`
- Testez un répertoire : entrez `.` ou `..`

---

### Exercice 3 : Boucles et conditions

**Objectif :** Afficher les nombres de 1 à 20 avec leurs propriétés

**Exécution :**

```bash
./exercice3.sh
```

**Exemple de sortie :**

```
1 : Impair
2 : Pair
3 : Impair, Multiple de 3
4 : Pair
5 : Impair, Multiple de 5
6 : Pair, Multiple de 3
...
15 : Impair, Multiple de 3, Multiple de 5
...
20 : Pair, Multiple de 5
```

**Ce que vous allez apprendre :**
- Boucle `for` avec séquence `{1..20}`
- Opérateur modulo `%` pour tester pair/impair
- Construction progressive de chaînes
- Tests conditionnels multiples

**Pas besoin de saisie utilisateur** - le script s'exécute directement.

---

### Exercice 4 : Tableaux

**Objectif :** Créer et manipuler un tableau de villes marocaines

**Exécution :**

```bash
./exercice4.sh
```

**Ce que le script fait :**

1. Crée un tableau avec 5 villes
2. Affiche tous les éléments
3. Affiche le nombre d'éléments
4. Affiche le 3ème élément (indice 2)
5. Modifie le 2ème élément (indice 1)
6. Ajoute une ville à la fin
7. Affiche le tableau final avec indices

**Concepts démontrés :**
- Création de tableau : `villes=("A" "B" "C")`
- Accès aux éléments : `${villes[2]}`
- Tous les éléments : `${villes[@]}`
- Taille du tableau : `${#villes[@]}`
- Modification : `villes[1]="Nouvelle valeur"`
- Ajout : `villes+=("Élément")`
- Parcours : `for i in "${!villes[@]}"`

**Pas besoin de saisie utilisateur** - démonstration automatique.

---

### Exercice 5 : Fonctions

**Objectif :** Utiliser des fonctions mathématiques

**Exécution :**

```bash
./exercice5.sh
```

**Exemple d'interaction :**

```
Entrez le premier nombre : 5
Entrez le deuxième nombre : 3

--- Fonction somme() ---
somme(5, 3) = 8

--- Fonction produit() ---
produit(5, 3) = 15

--- Fonction est_pair() ---
5 est impair
3 est impair

--- Fonction factorielle() ---
factorielle(5) = 120
factorielle(3) = 6
```

**Fonctions implémentées :**

1. **`somme(a, b)`** : Retourne a + b
2. **`produit(a, b)`** : Retourne a × b
3. **`est_pair(n)`** : Retourne 0 si pair, 1 si impair
4. **`factorielle(n)`** : Calcule n!

**Ce que vous allez apprendre :**
- Définir une fonction : `fonction() { ... }`
- Paramètres : `$1`, `$2`
- Retourner une valeur : `echo $resultat`
- Capturer le résultat : `var=$(fonction args)`
- Variables locales : `local var=valeur`
- Code de retour : `return 0` ou `return 1`

---

### Exercice 6 : Menu interactif

**Objectif :** Créer un menu système avec 6 options

**Exécution :**

```bash
./exercice6.sh
```

**Menu affiché :**

```
============================================
         MENU PRINCIPAL
============================================
  1. Afficher la date et l'heure
  2. Afficher l'utilisateur courant
  3. Afficher le répertoire courant
  4. Lister les fichiers du répertoire
  5. Afficher l'espace disque disponible
  6. Quitter le programme
============================================
Votre choix (1-6) :
```

**Fonctionnalités :**
- **Option 1** : Date et heure complètes
- **Option 2** : Infos utilisateur (USER, UID, GID, groupes)
- **Option 3** : Répertoire courant (pwd)
- **Option 4** : Liste détaillée des fichiers (ls -lh)
- **Option 5** : Espace disque (df -h)
- **Option 6** : Quitter proprement

**Ce que vous allez apprendre :**
- Boucle infinie : `while true`
- Menu avec `case`
- Fonctions : `afficher_menu()`
- Commandes système : `date`, `pwd`, `df`, `ls`
- Quitter proprement : `exit 0`
- Effacer l'écran : `clear`

**Pour quitter :** Choisissez l'option 6 ou appuyez sur `Ctrl+C`

---

## 🛠️ Dépannage

### Problème : "Permission denied"

**Solution :**

```bash
chmod +x exerciceX.sh
```

### Problème : "bash: command not found"

**Solution :**

```bash
# Exécuter avec bash explicitement
bash exercice1.sh

# Ou vérifier le shebang
head -1 exercice1.sh
# Doit afficher : #!/bin/bash
```

### Problème : Script ne fonctionne pas sous Windows

**Solution :**

Les scripts sont conçus pour Linux/macOS. Sous Windows :

1. Utilisez **WSL (Windows Subsystem for Linux)**
2. Ou **Git Bash**
3. Ou une **machine virtuelle Linux**

---

## 📚 Concepts abordés

### Variables et saisie

```bash
read -p "Message : " variable
echo "Valeur : $variable"
```

### Calculs

```bash
resultat=$((a + b))
let "x = a * b"
somme=$(expr $a + $b)
```

### Tests

```bash
if [ condition ]; then
    commandes
fi
```

### Boucles

```bash
for i in {1..10}; do
    echo $i
done
```

### Tableaux

```bash
tableau=("a" "b" "c")
echo ${tableau[0]}
```

### Fonctions

```bash
fonction() {
    echo $(($1 + $2))
}
resultat=$(fonction 5 3)
```

---

## 💡 Conseils d'apprentissage

### Pour débutants

1. **Commencez par l'exercice 1** (le plus simple)
2. **Lisez le code** avant d'exécuter
3. **Modifiez les valeurs** pour expérimenter
4. **Testez avec différentes entrées**

### Pour aller plus loin

1. **Modifiez les scripts** :
   - Ajoutez des fonctionnalités
   - Gérez les erreurs de saisie
   - Ajoutez des couleurs (echo -e "\033[0;32mVert\033[0m")

2. **Combinez les exercices** :
   - Créez un menu utilisant toutes les fonctions
   - Ajoutez la gestion de fichiers

3. **Optimisez** :
   - Réduisez les répétitions de code
   - Créez des bibliothèques de fonctions
   - Ajoutez des commentaires détaillés

---

## 📖 Ressources supplémentaires

- **Documentation complète** : [`solutions/corrections_td3.md`](../solutions/corrections_td3.md)
- **Chapitres du cours** : [`docs/03-programmation-shell.md`](../../../docs/03-programmation-shell.md)
- **ShellCheck** : https://www.shellcheck.net/ (vérificateur de scripts)

---

## ✅ Checklist d'apprentissage

Après avoir terminé les 6 exercices, vous devriez savoir :

- [ ] Déclarer et utiliser des variables
- [ ] Effectuer des calculs arithmétiques
- [ ] Lire une saisie utilisateur avec `read`
- [ ] Tester des fichiers avec `-f`, `-d`, `-r`, etc.
- [ ] Utiliser `if`, `elif`, `else`
- [ ] Utiliser `case` pour les menus
- [ ] Créer des boucles `for`, `while`, `until`
- [ ] Créer et manipuler des tableaux
- [ ] Définir et appeler des fonctions
- [ ] Passer des paramètres aux fonctions
- [ ] Retourner des valeurs depuis les fonctions

---

## 🎯 Projet final suggéré

Créez un **gestionnaire de tâches** en Shell qui combine tous ces concepts :

- Menu interactif (exercice 6)
- Tableau de tâches (exercice 4)
- Fonctions pour ajouter/supprimer/lister (exercice 5)
- Tests sur fichiers pour sauvegarder (exercice 2)
- Calculs de statistiques (exercice 1)
- Boucles pour afficher les tâches (exercice 3)

---

**Bon apprentissage ! 🚀**

*Cours de Systèmes d'Exploitation - Filière IIA S3*  
*Faculté Pluridisciplinaire de Nador*
