# Chapitre 2 : SE Linux - Fondamentaux et commandes de base

## 📑 Table des matières

- [1. Le Shell](#1-le-shell)
- [2. Commandes de base](#2-commandes-de-base)
- [3. Gestion des fichiers et répertoires](#3-gestion-des-fichiers-et-répertoires)
- [4. Permissions et droits d'accès](#4-permissions-et-droits-daccès)
- [5. Liens (physiques et symboliques)](#5-liens-physiques-et-symboliques)
- [6. Redirections et tubes](#6-redirections-et-tubes)
- [7. Commandes avancées](#7-commandes-avancées)

---

## 1. Le Shell

### Qu'est-ce que le shell ?

Le **shell** est un programme (un fichier exécutable) chargé d'analyser et d'exécuter les commandes :

- Il **lit et interprète** les commandes
- Il les **transmet au système**
- Il en **retourne le résultat**

Le shell sert d'**interface** entre le noyau du système d'exploitation et l'utilisateur. Toutes les commandes sont envoyées au noyau par l'intermédiaire du shell.

### Modes d'utilisation

Le shell peut fonctionner de deux façons :

#### 🖥️ Mode ligne de commande (terminal)

Le shell affiche dans un terminal ou une console virtuelle une chaîne de caractères appelée **prompt** (ou **invite de commande**) et attend la saisie d'une commande.

**Exemple de prompt :**

```bash
user@machine:~$
```

**Signification des éléments :**
- `user` : nom de l'utilisateur
- `machine` : nom de la machine (hostname)
- `~` : répertoire courant (ici, le répertoire personnel)
- `$` : utilisateur normal (prompt)
- `#` : superutilisateur/administrateur (root)

#### 🎨 Mode graphique

En mode ligne de commande (appelé aussi **mode console** ou **mode interactif**), on peut utiliser les options des commandes, contrairement à l'interface graphique, qui n'en propose généralement qu'une partie.

> **Remarque :** En mode graphique, le terminal est accessible via des applications comme **Terminal**, **Konsole**, **GNOME Terminal**, etc.

### Lancer un terminal

Pour lancer un terminal depuis l'interface graphique :
- Utilisez le menu du bureau
- Ou la combinaison de touches : **`Ctrl + Alt + T`** (sous Ubuntu)

### Invite de commande

La convention pour l'invite de commande (prompt) est la suivante :
- **`$`** ou **`%`** pour un utilisateur normal
- **`#`** pour le superutilisateur (administrateur), dans tous les shells

---

## 2. Commandes de base

### Structure d'une commande

Une commande est généralement un programme exécutable. Pour l'exécuter, l'utilisateur saisit son nom, éventuellement suivi d'options et d'arguments, puis valide avec la touche **Entrée**.

**Syntaxe :**

```bash
nom_commande [options] [arguments]
```

**Composants :**
- **nom_commande** : nom de la commande à exécuter
- **options** (facultatif) : une ou plusieurs options modifiant le comportement
- **arguments** (facultatif) : données ou valeurs transmises à la commande

#### Remarques importantes

✅ Les crochets **`[ ]`** indiquent un élément facultatif  
✅ Chaque mot est séparé des autres par un espace ou une tabulation  
✅ Une option est suivie d'un tiret (`-`) suivi d'un seul caractère  
✅ Les options peuvent être regroupées : **`-asli`** équivaut à **`-a -s -l -i`**  
✅ Une commande peut comporter plusieurs arguments

**Exemple :**

```bash
mkdir mon_repertoire
```

---

### Types de commandes

Lorsqu'une commande est saisie :

- Soit c'est le shell lui-même qui l'exécute (**commande interne** ou **builtin**)
- Soit le shell crée un processus fils pour l'exécuter (**commande externe**)

#### Commandes internes

Une **commande interne** ne possède pas de fichier exécutable associé : elle est intégrée directement au code du shell. Son exécution ne nécessite donc pas la création d'un processus fils.

#### Commandes externes

En revanche, lors de l'exécution d'une **commande externe**, le shell lance un processus fils. Il ne pourra traiter une nouvelle commande qu'après la fin de ce processus.

#### Identifier le type d'une commande

Pour identifier le type des commandes, on utilise la commande interne **`type`**.

**Exemples :**

```bash
# Vérifier le type de la commande cd
type cd

# Lister les commandes internes
compgen -b
```

**Liste (non exhaustive) des commandes internes :** `cd`, `echo`, `kill`, `pwd`, `read`, `type`, `wait`

#### Localisation des commandes externes

Les **commandes externes** au shell sont situées dans des répertoires du système :
- `/bin`, `/sbin`, `/usr/bin`, `/usr/sbin`, etc.

**Commande utile :**

```bash
# Afficher toutes les commandes disponibles
compgen -c

# Vérifier l'emplacement d'une commande
type mkdir
```

---

## 3. Gestion des fichiers et répertoires

### Navigation dans le système de fichiers

#### Commande `pwd`

La commande **`pwd`** (Print Working Directory) affiche le chemin absolu du répertoire de travail actuel.

**Syntaxe :**

```bash
pwd
```

#### Commande `ls`

La commande **`ls`** (list sorted) liste le contenu d'un répertoire.

**Syntaxe :**

```bash
ls [option] [arguments]
```

**Options courantes :**

| Option | Description |
|--------|-------------|
| `-l` | Affichage détaillé (permissions, propriétaire, taille, date...) |
| `-a` | Inclut les fichiers cachés (ceux dont le nom commence par un point) |
| `-h` | Tailles en format lisible (Ko, Mo, Go) |
| `-d` | Affiche uniquement les répertoires |
| `-t` | Trie par date de modification (du plus récent au plus ancien) |
| `-r` | Inverse l'ordre du tri |

**Exemples d'utilisation :**

```bash
# Liste les fichiers du répertoire courant
ls

# Affichage détaillé
ls -l

# Affichage détaillé + fichiers cachés
ls -la

# Liste le contenu de /home
ls /home

# Affichage détaillé d'un répertoire spécifique
ls -l mon_repertoire
```

#### Commande `cd`

La commande **`cd`** (Change Directory) permet de changer de répertoire.

**Syntaxe :**

```bash
cd [répertoire]
```

**Utilisations courantes :**

| Commande | Description |
|----------|-------------|
| `cd` | Retour au répertoire de connexion |
| `cd /chemin/complet` | Va vers le répertoire spécifié (chemin absolu) |
| `cd ..` | Remonte d'un niveau dans l'arborescence |
| `cd /` | Va à la racine du système de fichiers |
| `cd -` | Retourne au dernier répertoire visité |
| `cd ~` | Va au répertoire personnel |

**Exemples :**

```bash
# Aller dans le dossier Documents
cd Documents

# Remonter d'un niveau
cd ..

# Aller à la racine
cd /

# Retour au répertoire personnel
cd ~
```

#### Raccourcis importants

| Symbole | Signification |
|---------|---------------|
| `.` | Répertoire actuel |
| `..` | Répertoire parent |
| `~` | Répertoire personnel de l'utilisateur |
| `/` | Racine du système de fichiers |

---

### Gestion des répertoires

#### Commande `mkdir`

La commande **`mkdir`** (Make Directory) permet de créer des répertoires.

**Syntaxe :**

```bash
mkdir [-p] [repertoire]
```

**Exemples :**

```bash
# Créer un répertoire dans le dossier courant
mkdir mon_projet

# Créer un répertoire avec chemin complet
mkdir /home/user/Documents/nouveau_dossier

# Créer une hiérarchie complète avec -p
mkdir -p projet/src/main/java

# L'option -p évite les erreurs si le dossier existe déjà
mkdir -p dossier_existant
```

#### Sous-répertoires automatiques

Lorsqu'un répertoire est créé, le système génère automatiquement deux sous-répertoires :

- **`.`** : lien vers le répertoire lui-même
- **`..`** : lien vers le répertoire parent

**Vérification :**

```bash
# Afficher les répertoires cachés
ls -a mon_repertoire
```

#### Commande `rmdir`

La commande **`rmdir`** (Remove Directory) permet de supprimer des répertoires **vides uniquement**.

**Syntaxe :**

```bash
rmdir [répertoire]
```

**Exemples :**

```bash
# Supprimer un répertoire vide
rmdir dossier_vide

# Supprimer une hiérarchie de répertoires vides
rmdir -p projet/ancien/vide
```

---

### Gestion des fichiers

#### Commande `touch`

La commande **`touch`** permet de créer un fichier vide ou de mettre à jour la date de modification.

**Syntaxe :**

```bash
touch nom_fichier
```

**Exemples :**

```bash
# Créer un fichier vide
touch nouveau_fichier.txt

# Créer plusieurs fichiers
touch fichier1.txt fichier2.txt fichier3.txt

# Mettre à jour la date de modification (si le fichier existe)
touch fichier_existant.txt
```

---

#### Éditeurs de texte

Quatre éditeurs de texte couramment utilisés sous Linux :

| Éditeur | Interface | Présent partout ? | Niveau |
|---------|-----------|-------------------|--------|
| **nano** | Terminal | Presque toujours | Débutant |
| **vi** | Terminal | Oui | Avancé |
| **vim** | Terminal | Non par défaut | Avancé |
| **gedit** | Graphique | Non par défaut | Débutant/Intermédiaire |

##### Éditeur nano

**Syntaxe :**

```bash
nano nom_fichier
```

**Raccourcis clavier principaux :**

| Raccourci | Action |
|-----------|--------|
| `Ctrl + O`, puis `Entrée` | Sauvegarder |
| `Ctrl + X` | Quitter |
| `Ctrl + K` | Couper une ligne |
| `Ctrl + U` | Coller une ligne |
| `Ctrl + W` | Rechercher du texte |
| `Ctrl + G` | Afficher l'aide |

##### Éditeur vi

**Syntaxe :**

```bash
vi nom_fichier
```

**Modes :**
- **Mode commande** : par défaut au lancement
- **Mode insertion** : pour taper du texte (touche `a` ou `i`)

**Commandes principales :**

| Commande | Action |
|----------|--------|
| `a` ou `i` | Passer en mode insertion |
| `Esc` | Revenir au mode commande |
| `:q!` | Quitter sans enregistrer |
| `:x` ou `:wq` | Enregistrer et quitter |
| `:w` | Enregistrer sans quitter |

##### Éditeur gedit

**Installation (Ubuntu/Debian) :**

```bash
sudo apt update
sudo apt install gedit
```

**Utilisation :**

```bash
gedit nom_fichier
```

---

#### Commande `cat`

La commande **`cat`** (concatenate) est polyvalente : afficher, créer, copier et concaténer des fichiers.

**Usages principaux :**

```bash
# Afficher le contenu d'un fichier
cat fichier.txt

# Afficher avec numéros de ligne
cat -n fichier.txt

# Créer un fichier avec saisie au clavier
cat > nouveau_fichier.txt
# Tapez le contenu, puis Ctrl+D pour terminer

# Copier le contenu d'un fichier
cat fichier_source.txt > fichier_destination.txt

# Ajouter du contenu à la fin d'un fichier
cat ajout.txt >> fichier_existant.txt

# Concaténer plusieurs fichiers
cat fichier1.txt fichier2.txt > fichier_combine.txt
```

**Options utiles :**

| Option | Description |
|--------|-------------|
| `-n` | Numéroter toutes les lignes |
| `-b` | Numéroter seulement les lignes non vides |
| `-s` | Supprimer les lignes vides répétées |
| `-E` | Afficher $ à la fin de chaque ligne |

---

#### Commande `cp`

La commande **`cp`** (copy) permet de copier des fichiers et des répertoires.

**Syntaxe :**

```bash
cp [options] source destination
```

**Exemples :**

```bash
# Copier un fichier
cp fichier1.txt fichier2.txt

# Copier avec confirmation en cas d'écrasement
cp -i fichier1.txt fichier2.txt

# Copier un répertoire et son contenu
cp -r dossier1 dossier2

# Copier plusieurs fichiers vers un répertoire
cp fichier1.txt fichier2.txt fichier3.txt /chemin/destination/
```

**Options importantes :**

| Option | Description |
|--------|-------------|
| `-i` | Demander confirmation avant écrasement |
| `-r` ou `-R` | Copier récursivement (pour les répertoires) |
| `-v` | Mode verbeux (affiche ce qui est copié) |
| `-u` | Copier seulement si la source est plus récente |

---

#### Commande `mv`

La commande **`mv`** (move) permet de déplacer ou renommer des fichiers/répertoires.

**Syntaxe :**

```bash
mv [options] source destination
```

**Exemples d'utilisation :**

```bash
# Renommer un fichier
mv ancien_nom.txt nouveau_nom.txt

# Déplacer un fichier vers un autre répertoire
mv fichier.txt /chemin/destination/

# Déplacer ET renommer en une seule commande
mv fichier.txt /chemin/destination/nouveau_nom.txt

# Déplacer un répertoire complet
mv dossier_source /chemin/destination/
```

**Options utiles :**

| Option | Description |
|--------|-------------|
| `-i` | Demander confirmation avant écrasement |
| `-v` | Mode verbeux |
| `-n` | Ne pas écraser les fichiers existants |

---

#### Commande `rm`

La commande **`rm`** (remove) permet de supprimer des fichiers ou des répertoires.

**Syntaxe :**

```bash
rm [options] fichier(s)
```

**Exemples :**

```bash
# Supprimer un fichier
rm fichier.txt

# Supprimer plusieurs fichiers
rm fichier1.txt fichier2.txt fichier3.txt

# Supprimer avec confirmation
rm -i fichier.txt

# Supprimer un répertoire et son contenu
rm -r dossier/

# Forcer la suppression sans confirmation
rm -f fichier.txt

# Supprimer un répertoire non vide (ATTENTION : dangereux)
rm -rf dossier/
```

**⚠️ Options importantes (à utiliser avec précaution) :**

| Option | Description |
|--------|-------------|
| `-i` | Demander confirmation pour chaque fichier |
| `-r` ou `-R` | Supprimer récursivement (répertoires) |
| `-f` | Forcer la suppression sans confirmation |
| `-v` | Mode verbeux |

**⚠️ ATTENTION :** La commande `rm -rf` est très puissante et peut supprimer définitivement des données importantes. Utilisez-la avec précaution !

---

## 4. Permissions et droits d'accès

### Introduction

Sous Linux, chaque fichier et répertoire possède des **permissions** qui contrôlent qui peut :
- **Lire** (r - read)
- **Écrire** (w - write)
- **Exécuter** (x - execute)

Ces permissions s'appliquent à trois catégories d'utilisateurs :
- **Propriétaire** (u - user)
- **Groupe** (g - group)
- **Autres** (o - others)

### Afficher les permissions

```bash
# Afficher les permissions détaillées
ls -l fichier.txt
```

**Format de sortie :**

```
-rwxr-xr--  1  user  group  1024  Jan 15 10:30  fichier.txt
│││││││││
││││││││└─ Autres : lecture
│││││││└── Autres : pas d'écriture
││││││└─── Groupe : exécution
│││││└──── Groupe : lecture
││││└───── Groupe : pas d'écriture
│││└────── Propriétaire : exécution
││└─────── Propriétaire : écriture
│└──────── Propriétaire : lecture
└───────── Type de fichier (- = fichier, d = répertoire, l = lien)
```

### Commande `chmod`

La commande **`chmod`** (change mode) modifie les permissions d'un fichier ou répertoire.

**Syntaxe :**

```bash
chmod mode fichier
```

---

### Forme numérique (octale)

Les permissions sont représentées par trois chiffres de 0 à 7 :

| Octal | Binaire | Droits | Signification |
|-------|---------|--------|---------------|
| 0 | 000 | `---` | Aucun droit |
| 1 | 001 | `--x` | Exécution seulement |
| 2 | 010 | `-w-` | Écriture seulement |
| 3 | 011 | `-wx` | Écriture + exécution |
| 4 | 100 | `r--` | Lecture seulement |
| 5 | 101 | `r-x` | Lecture + exécution |
| 6 | 110 | `rw-` | Lecture + écriture |
| 7 | 111 | `rwx` | Tous les droits |

**Exemples :**

```bash
# rwx pour propriétaire, r-x pour groupe, r-- pour autres
chmod 754 script.sh

# rw- pour propriétaire, rw- pour groupe, r-- pour autres
chmod 664 document.txt

# Permissions complètes pour le propriétaire uniquement
chmod 700 fichier_prive.txt

# Permissions de lecture pour tout le monde
chmod 444 fichier_lecture_seule.txt
```

---

### Forme symbolique

**Syntaxe :**

```bash
chmod [qui][opération][permissions] fichier
```

**Catégories (qui) :**

| Symbole | Signification |
|---------|---------------|
| `u` | Propriétaire (user) |
| `g` | Groupe (group) |
| `o` | Autres (others) |
| `a` | Tous (all) |

**Opérations :**

| Symbole | Action |
|---------|--------|
| `+` | Ajouter des permissions |
| `-` | Retirer des permissions |
| `=` | Définir exactement ces permissions |

**Permissions :**

| Symbole | Droit |
|---------|-------|
| `r` | Lecture |
| `w` | Écriture |
| `x` | Exécution |

**Exemples :**

```bash
# Ajouter l'exécution pour le propriétaire
chmod u+x script.sh

# Retirer l'écriture pour les autres
chmod o-w fichier.txt

# Donner lecture+exécution au groupe
chmod g+rx programme

# Définir les permissions exactes pour tous
chmod a=r fichier.txt

# Combinaisons multiples
chmod u+x,g+x,o-w script.sh
chmod u=rwx,g=rx,o=r fichier.txt
```

---

### Permissions pour les fichiers

| Permission | Effet |
|------------|-------|
| **r** (lecture) | Peut lire le contenu du fichier |
| **w** (écriture) | Peut modifier le fichier |
| **x** (exécution) | Peut exécuter le fichier (si c'est un script ou programme) |

### Permissions pour les répertoires

| Permission | Effet |
|------------|-------|
| **r** (lecture) | Peut lister le contenu du répertoire (avec `ls`) |
| **w** (écriture) | Peut créer, supprimer ou renommer des fichiers dans le répertoire |
| **x** (exécution) | Peut entrer dans le répertoire (avec `cd`) |

**⚠️ Note importante :** Pour modifier un répertoire (créer/supprimer des fichiers), il faut à la fois les permissions `w` ET `x`.

---

## 5. Liens (physiques et symboliques)

### Commande `ln`

La commande **`ln`** (link) permet de créer des liens vers un fichier existant.

**Syntaxe :**

```bash
ln [options] fichier_source fichier_lien
```

### Lien physique (hard link)

Un **lien physique** crée un nouveau nom pour un fichier existant. Les deux noms pointent vers le même contenu sur le disque.

**Caractéristiques :**
- Partage le même inode que le fichier source
- Le contenu reste accessible tant qu'au moins un lien existe
- Ne fonctionne que sur le même système de fichiers
- Ne peut pas pointer vers un répertoire

**Création :**

```bash
# Créer un lien physique
ln fichier_original.txt lien_physique.txt

# Vérifier les inodes (doivent être identiques)
ls -li fichier_original.txt lien_physique.txt
```

### Lien symbolique (symbolic link / symlink)

Un **lien symbolique** est un fichier spécial qui pointe vers le chemin d'un autre fichier.

**Caractéristiques :**
- Possède son propre inode
- Peut pointer vers des répertoires
- Peut pointer vers des fichiers sur d'autres systèmes de fichiers
- Devient invalide si le fichier source est supprimé

**Création :**

```bash
# Créer un lien symbolique avec l'option -s
ln -s fichier_original.txt lien_symbolique.txt

# Créer un lien vers un répertoire
ln -s /chemin/vers/dossier lien_dossier

# Vérifier les inodes (seront différents)
ls -li fichier_original.txt lien_symbolique.txt
```

### Comparaison

| Aspect | Lien physique | Lien symbolique |
|--------|---------------|-----------------|
| Commande | `ln source lien` | `ln -s source lien` |
| Inode | Identique | Différent |
| Fichier supprimé | Contenu préservé | Lien cassé |
| Répertoires | Non supporté | Supporté |
| Systèmes de fichiers | Même système uniquement | Peut traverser |

---

## 6. Redirections et tubes

### Canaux de communication standards

Chaque commande Linux utilise trois canaux de communication :

| Canal | Nom | Descripteur | Par défaut |
|-------|-----|-------------|------------|
| Entrée standard | `stdin` | 0 | Clavier |
| Sortie standard | `stdout` | 1 | Écran |
| Sortie d'erreur | `stderr` | 2 | Écran |

### Redirection de l'entrée standard

**Opérateur : `<`**

```bash
# Lire le contenu depuis un fichier au lieu du clavier
commande < fichier_entree

# Exemple : compter les lignes d'un fichier
wc -l < fichier.txt
```

### Redirection de la sortie standard

**Opérateurs : `>` et `>>`**

```bash
# Rediriger vers un fichier (écrase le fichier)
commande > fichier_sortie

# Ajouter à la fin du fichier
commande >> fichier_sortie

# Exemples
ls -l > liste_fichiers.txt
echo "Nouvelle ligne" >> fichier.txt
date >> journal.log
```

**Différence importante :**
- `>` : Écrase le fichier s'il existe
- `>>` : Ajoute à la fin du fichier

### Redirection de la sortie d'erreur

**Opérateurs : `2>` et `2>>`**

```bash
# Rediriger les erreurs vers un fichier
commande 2> fichier_erreurs

# Ajouter les erreurs
commande 2>> fichier_erreurs

# Rediriger sortie ET erreurs vers des fichiers différents
commande > sortie.txt 2> erreurs.txt

# Rediriger sortie ET erreurs vers le même fichier
commande > tout.log 2>&1

# Ignorer les erreurs (envoyer vers /dev/null)
commande 2> /dev/null
```

### Tubes (Pipes)

**Opérateur : `|`**

Le tube permet de connecter la sortie d'une commande à l'entrée d'une autre.

**Syntaxe :**

```bash
commande1 | commande2
```

**Exemples pratiques :**

```bash
# Compter le nombre de fichiers
ls | wc -l

# Rechercher un processus
ps aux | grep firefox

# Trier et afficher les 10 premiers
cat fichier.txt | sort | head -10

# Chaîne de commandes
cat /var/log/syslog | grep "error" | wc -l

# Pagination avec less
ls -la /usr/bin | less

# Filtrer puis compter
find . -name "*.txt" | wc -l
```

### Tubes nommés (Named Pipes / FIFO)

**Création avec `mkfifo` :**

```bash
# Créer un tube nommé
mkfifo mon_tube

# Terminal 1 : écrire dans le tube
echo "Message" > mon_tube

# Terminal 2 : lire depuis le tube
cat < mon_tube
```

---

## 7. Commandes avancées

### Informations système

#### Commande `lsb_release`

```bash
# Afficher les informations de la distribution
lsb_release -a
```

**Alternatives :**

```bash
cat /etc/os-release
cat /etc/issue
uname -a
```

#### Commande `hostname`

```bash
# Afficher le nom de la machine
hostname
```

#### Commandes utilisateur

```bash
# Afficher le nom d'utilisateur actuel
whoami
logname
echo $USER

# Afficher les utilisateurs connectés
who
w

# Afficher les informations UID/GID
id
```

#### Commande `pwd`

```bash
# Afficher le répertoire courant
pwd
```

### Commandes de contrôle

```bash
# Effacer l'écran
clear
# ou Ctrl+L

# Terminer la session
exit
# ou Ctrl+D

# Arrêter ou redémarrer le système
shutdown -h now          # Arrêt immédiat
shutdown -h +10          # Arrêt dans 10 minutes
shutdown -r now          # Redémarrage immédiat
shutdown -c              # Annuler un arrêt programmé
```

### Commande `more` et `less`

```bash
# Afficher page par page avec more
more fichier.txt

# Afficher avec less (plus de fonctionnalités)
less fichier.txt
```

**Navigation dans `less` :**
- `Espace` : Page suivante
- `b` : Page précédente
- `/motif` : Rechercher
- `q` : Quitter

### Commande `file`

```bash
# Déterminer le type de fichier
file document.txt
file image.png
file script.sh
file repertoire
```

### Commande `wc`

```bash
# Compter lignes, mots et caractères
wc fichier.txt

# Options
wc -l fichier.txt        # Nombre de lignes
wc -w fichier.txt        # Nombre de mots
wc -c fichier.txt        # Nombre de caractères
```

### Commande `diff`

```bash
# Comparer deux fichiers
diff fichier1.txt fichier2.txt

# Format côte à côte
diff -y fichier1.txt fichier2.txt

# Ignorer les espaces
diff -w fichier1.txt fichier2.txt
```

### Commande `sort`

```bash
# Trier un fichier
sort fichier.txt

# Options
sort -r fichier.txt      # Tri décroissant
sort -n fichier.txt      # Tri numérique
sort -u fichier.txt      # Supprimer les doublons
sort -f fichier.txt      # Ignorer la casse

# Sauvegarder le résultat
sort fichier.txt -o fichier_trie.txt
```

### Commande `cut`

```bash
# Extraire des colonnes de caractères
cut -c1-5 fichier.txt           # Caractères 1 à 5
cut -c1,3,7 fichier.txt         # Caractères 1, 3 et 7
cut -c3- fichier.txt            # À partir du 3e caractère

# Extraire des champs (avec délimiteur)
cut -d':' -f1 /etc/passwd       # Premier champ
cut -d',' -f1,3 fichier.csv     # Champs 1 et 3
```

### Commande `grep`

```bash
# Rechercher du texte dans des fichiers
grep "motif" fichier.txt

# Options utiles
grep -i "motif" fichier.txt     # Ignorer la casse
grep -n "motif" fichier.txt     # Afficher les numéros de ligne
grep -v "motif" fichier.txt     # Lignes ne contenant PAS le motif
grep -r "motif" dossier/        # Recherche récursive
grep -c "motif" fichier.txt     # Compter les occurrences

# Expressions régulières
grep "^debut" fichier.txt       # Lignes commençant par "debut"
grep "fin$" fichier.txt         # Lignes se terminant par "fin"
```

### Commande `find`

```bash
# Rechercher des fichiers
find /chemin -name "*.txt"

# Critères de recherche
find . -type f                  # Fichiers ordinaires
find . -type d                  # Répertoires
find . -name "*.log"            # Par nom
find . -size +10M               # Taille > 10 Mo
find . -user nomuser            # Par propriétaire
find . -mtime -7                # Modifiés dans les 7 derniers jours

# Combinaisons
find . -name "*.txt" -type f
find /var/log -name "*.log" -size +1M

# Exécuter une commande sur les résultats
find . -name "*.tmp" -exec rm {} \;
find . -type f -name "*.txt" -exec grep "motif" {} \;
```

---

## 🎯 Résumé du chapitre

Dans ce chapitre, nous avons exploré :

✅ **Le Shell** : interface entre l'utilisateur et le système  
✅ **Navigation** : `pwd`, `ls`, `cd` pour se déplacer  
✅ **Gestion de fichiers** : `touch`, `cat`, `cp`, `mv`, `rm`  
✅ **Gestion de répertoires** : `mkdir`, `rmdir`  
✅ **Éditeurs de texte** : nano, vi, gedit  
✅ **Permissions** : `chmod` (numérique et symbolique)  
✅ **Liens** : physiques et symboliques avec `ln`  
✅ **Redirections** : `<`, `>`, `>>`, `2>`, `|`  
✅ **Commandes avancées** : `grep`, `find`, `sort`, `wc`, `diff`

---

## 📚 Pour aller plus loin

- [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [The Linux Command Line](http://linuxcommand.org/tlcl.php)
- [ExplainShell](https://explainshell.com/)

---

[⬅️ Chapitre précédent : Introduction](01-introduction.md) | [➡️ Chapitre suivant : Programmation Shell](03-programmation-shell.md)
