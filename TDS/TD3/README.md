# TD 3 : Programmation Shell avancée

## 📋 Objectifs

- Maîtriser la programmation Shell (Bash)
- Utiliser les structures de contrôle (if, case, boucles)
- Manipuler les tableaux
- Créer et utiliser des fonctions
- Automatiser des tâches avec des scripts

---

## 📝 Exercice 1 : Calculs arithmétiques

### Énoncé

Écrire un script Shell qui :
1. Demande à l'utilisateur de saisir deux entiers `a` et `b`
2. Calcule et affiche leur somme en utilisant :
   - La commande `expr`
   - La commande `let`
   - La syntaxe `$(( ))`

### Exemple d'exécution

```
Entrez le premier nombre : 15
Entrez le deuxième nombre : 7

=== Méthode 1 : expr ===
Somme : 22

=== Méthode 2 : let ===
Somme : 22

=== Méthode 3 : (( )) ===
Somme : 22
```

---

## 📝 Exercice 2 : Tests sur fichiers

### Énoncé

Écrire un script Shell qui :
1. Demande à l'utilisateur d'entrer le nom d'un fichier
2. Vérifie et affiche :
   - Si le fichier existe
   - Si c'est un fichier ordinaire
   - Si c'est un répertoire
   - Si c'est un lien symbolique
   - S'il est lisible
   - S'il est modifiable (writable)
   - S'il est exécutable

### Exemple d'exécution

```
Entrez le nom du fichier : script.sh

Résultats des tests :
✓ Le fichier existe
✓ C'est un fichier ordinaire
✗ Ce n'est pas un répertoire
✗ Ce n'est pas un lien symbolique
✓ Le fichier est lisible
✓ Le fichier est modifiable
✓ Le fichier est exécutable
```

---

## 📝 Exercice 3 : Boucles et conditions

### Énoncé

Écrire un script Shell qui :
1. Affiche tous les nombres de 1 à 20
2. Pour chaque nombre, indique s'il est :
   - Pair ou impair
   - Multiple de 3 ou non
   - Multiple de 5 ou non

### Exemple d'exécution

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

---

## 📝 Exercice 4 : Tableaux

### Énoncé

Écrire un script Shell qui :
1. Crée un tableau avec les noms de 5 villes
2. Affiche tous les éléments du tableau
3. Affiche le nombre d'éléments
4. Affiche le troisième élément
5. Modifie le deuxième élément
6. Ajoute une nouvelle ville à la fin
7. Affiche le tableau final

### Exemple d'exécution

```
=== Tableau initial ===
Oujda Nador Casablanca Rabat Fès

Nombre d'éléments : 5

Troisième élément : Casablanca

=== Après modification ===
Oujda Tanger Casablanca Rabat Fès

=== Après ajout ===
Oujda Tanger Casablanca Rabat Fès Marrakech

Nombre final d'éléments : 6
```

---

## 📝 Exercice 5 : Fonctions avec paramètres

### Énoncé

Écrire un script Shell contenant les fonctions suivantes :

1. **`somme()`** : Prend deux nombres en paramètres et retourne leur somme
2. **`produit()`** : Prend deux nombres en paramètres et retourne leur produit
3. **`est_pair()`** : Prend un nombre en paramètre et retourne 0 s'il est pair, 1 sinon
4. **`factorielle()`** : Prend un nombre en paramètre et calcule sa factorielle

Le script doit :
- Définir ces 4 fonctions
- Demander à l'utilisateur de saisir deux nombres
- Tester toutes les fonctions avec ces nombres

### Exemple d'exécution

```
Entrez le premier nombre : 5
Entrez le deuxième nombre : 3

=== Résultats ===
Somme de 5 et 3 : 8
Produit de 5 et 3 : 15

5 est impair
3 est impair

Factorielle de 5 : 120
Factorielle de 3 : 6
```

---

## 📝 Exercice 6 : Menu interactif

### Énoncé

Écrire un script Shell qui affiche un menu interactif permettant de :
1. Afficher la date et l'heure
2. Afficher l'utilisateur courant
3. Afficher le répertoire courant
4. Lister les fichiers du répertoire courant
5. Afficher l'espace disque disponible
6. Quitter

Le menu doit se réafficher après chaque action jusqu'à ce que l'utilisateur choisisse de quitter.

### Exemple d'exécution

```
============================
    MENU PRINCIPAL
============================
1. Date et heure
2. Utilisateur courant
3. Répertoire courant
4. Lister les fichiers
5. Espace disque
6. Quitter
============================
Votre choix : 1

Date : jeu. 06 févr. 2026 11:30:15 CET

============================
    MENU PRINCIPAL
============================
...
Votre choix : 6

Au revoir !
```

---

## 💡 Conseils

- Utilisez `#!/bin/bash` en première ligne
- Commentez votre code
- Testez vos scripts avec différentes valeurs
- Vérifiez les erreurs de saisie utilisateur
- Rendez vos scripts exécutables avec `chmod +x script.sh`

---

## ✅ Solutions

Les solutions complètes sont disponibles dans le dossier [`solutions/`](solutions/).

**Fichiers de solutions :**
- [`solutions/corrections_td3.md`](solutions/corrections_td3.md) - Solutions détaillées
- [`scripts/exercice1.sh`](scripts/exercice1.sh) - Script exercice 1
- [`scripts/exercice2.sh`](scripts/exercice2.sh) - Script exercice 2
- [`scripts/exercice3.sh`](scripts/exercice3.sh) - Script exercice 3
- [`scripts/exercice4.sh`](scripts/exercice4.sh) - Script exercice 4
- [`scripts/exercice5.sh`](scripts/exercice5.sh) - Script exercice 5
- [`scripts/exercice6.sh`](scripts/exercice6.sh) - Script exercice 6

---

[⬅️ Retour au sommaire](../../README.md) | [➡️ TD précédent : TD2](../TD2/)
