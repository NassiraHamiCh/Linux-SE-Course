# Chapitre 1 : Introduction aux systèmes d'exploitation

## 📑 Table des matières

- [1. Qu'est-ce qu'un système d'exploitation ?](#1-quest-ce-quun-système-dexploitation)
- [2. Histoire de UNIX et Linux](#2-histoire-de-unix-et-linux)
- [3. Distributions Linux](#3-distributions-linux)
- [4. Architecture d'un système Linux](#4-architecture-dun-système-linux)
- [5. Installation de Linux](#5-installation-de-linux)

---

## 1. Qu'est-ce qu'un système d'exploitation ?

### Définition

Un **système d'exploitation (SE)** ou **Operating System (OS)** est un ensemble de programmes qui assurent la gestion efficace de l'ordinateur et de ses périphériques.

### Rôles principaux

#### 🔗 Interface entre matériel et applications

Le système d'exploitation sert d'intermédiaire entre :
- Les ressources matérielles de l'ordinateur (processeur, mémoire, disque...)
- Les applications informatiques de l'utilisateur (logiciels)
- Il masque la complexité du matériel aux programmes

#### 🎯 Gestion des ressources matérielles

Le SE gère de manière équitable et efficace :

**Processeur :**
- Répartition du temps CPU entre les programmes
- Ordonnancement des tâches
- Multitâche (plusieurs programmes semblent s'exécuter simultanément)

**Mémoire :**
- Allocation de la mémoire RAM
- Gestion de la mémoire virtuelle (swap)
- Protection de la mémoire entre processus

**Disque dur :**
- Organisation des fichiers (système de fichiers)
- Gestion de l'espace de stockage
- Optimisation des accès

**Périphériques :**
- Gestion des imprimantes, clavier, souris, etc.
- Pilotes (drivers) pour communiquer avec le matériel

#### 🛡️ Sécurité et accès aux données

- **Authentification** : vérification de l'identité des utilisateurs
- **Autorisations** : contrôle d'accès aux fichiers et ressources
- **Permissions** : définition des droits (lecture, écriture, exécution)
- **Chiffrement** : protection des données sensibles

#### 🔄 Gestion du processeur

Le système d'exploitation utilise le **multitâche** pour donner l'impression que plusieurs programmes s'exécutent en même temps.

> **Note importante :** En réalité, le processeur n'exécute qu'un seul processus à la fois. Le SE effectue une commutation rapide entre les processus, créant l'illusion de simultanéité.

#### 💾 Gestion de la mémoire

**Mémoire physique (RAM) :**
- Allocation dynamique aux programmes
- Partage entre tous les processus actifs

**Mémoire virtuelle :**
- Utilisation du disque dur comme extension de la RAM
- Appelée "swap" ou "fichier d'échange"
- Permet d'exécuter plus de programmes que la RAM disponible

### Exemples de systèmes d'exploitation

| Type | Systèmes d'exploitation |
|------|------------------------|
| **Bureau** | Windows, macOS, Linux (Ubuntu, Fedora...) |
| **Serveurs** | Linux (Debian, CentOS...), Windows Server, UNIX |
| **Mobile** | Android, iOS |
| **Embarqué** | Linux embarqué, RTOS |

---

## 2. Histoire de UNIX et Linux

### UNIX : Les origines (1969)

#### Naissance

UNIX a été développé à partir de **1969** aux **Bell Labs (AT&T)** par :
- **Ken Thompson**
- **Dennis Ritchie**
- Autres collaborateurs

**Évolution technique :**
- Initialement écrit en **langage assembleur**
- Réécrit en **langage C** en **1973**
- Cette réécriture a rendu UNIX portable sur différentes architectures

#### Caractéristiques historiques

✅ Premier système d'exploitation **portable**  
✅ Architecture **modulaire** et **multi-utilisateurs**  
✅ Philosophie : "Tout est fichier"  
✅ Outils simples et composables

### Linux : La révolution libre (1991)

#### Création

En **1991**, **Linus Torvalds**, étudiant finlandais à l'Université d'Helsinki, crée un noyau libre inspiré d'UNIX, qu'il nomme **Linux**.

**Motivations :**
- Créer un système libre et gratuit
- Apprendre le fonctionnement d'un système d'exploitation
- Alternative accessible à UNIX (très coûteux)

#### Licence GPL

Linux est publié sous **GNU General Public License (GPL)**, garantissant :

✅ **Liberté d'utilisation** : pour n'importe quel usage  
✅ **Liberté d'étude** : accès au code source  
✅ **Liberté de modification** : adapter selon ses besoins  
✅ **Liberté de distribution** : partager avec d'autres

#### Architecture technique

Le noyau Linux est principalement écrit en :
- **Langage C** (~95%)
- **Assembleur** (~5%) pour les parties spécifiques au matériel

### Comparaison UNIX vs Linux

| Caractéristique | UNIX | Linux |
|-----------------|------|-------|
| **Licence** | Propriétaire | Libre (GPL) |
| **Développement** | Entreprises (IBM, Oracle, HP...) | Communauté mondiale |
| **Coût** | Très élevé | Gratuit |
| **Code source** | Fermé | Ouvert |
| **Portabilité** | Limitée à certains matériels | Très large (PC, serveurs, mobile, IoT) |
| **Support** | Commercial | Communautaire + commercial |

---

## 3. Distributions Linux

### Qu'est-ce qu'une distribution ?

Une **distribution Linux** est un système d'exploitation complet qui combine :

📦 **Le noyau Linux** (cœur du système)  
🛠️ **Outils GNU** (commandes de base)  
📋 **Gestionnaire de paquets** (installation de logiciels)  
🎨 **Interface graphique** (optionnelle)  
💿 **Applications** (navigateur, bureautique, multimédia...)

### Distributions populaires

#### 🖥️ Pour ordinateurs de bureau (Desktop)

Ces distributions sont optimisées pour les utilisateurs finaux avec interface graphique :

**Débutants :**
- **Ubuntu** : La plus populaire, facile d'utilisation
- **Linux Mint** : Basée sur Ubuntu, interface familière
- **elementary OS** : Design élégant, similaire à macOS
- **Zorin OS** : Interface proche de Windows

**Utilisateurs avancés :**
- **Fedora** : Technologies récentes, sponsorisée par Red Hat
- **Debian** : Très stable, base de nombreuses distributions
- **Arch Linux** : Personnalisable, pour experts
- **Manjaro** : Arch Linux simplifiée

**Usages spécifiques :**
- **Kali Linux** : Tests de sécurité et pentesting
- **Ubuntu Studio** : Création multimédia
- **Pop!_OS** : Développeurs et gaming

#### 🌐 Pour serveurs

Ces distributions sont optimisées pour héberger des services, souvent **sans interface graphique** :

**Entreprises :**
- **Red Hat Enterprise Linux (RHEL)** : Support commercial
- **SUSE Linux Enterprise** : Très utilisée en Europe
- **Ubuntu Server** : Populaire dans le cloud

**Communautaires :**
- **Debian** : Extrêmement stable
- **CentOS / Rocky Linux** : Clone gratuit de RHEL
- **Fedora Server** : Technologies récentes

### Distributions légères

Pour ordinateurs anciens ou avec peu de ressources :

| Distribution | RAM min | Espace disque | Interface |
|--------------|---------|---------------|-----------|
| **Puppy Linux** | 256 Mo | 2-4 Go | Très légère |
| **AntiX** | 256 Mo | 3-5 Go | Sans systemd |
| **Lubuntu** | 1 Go | 8-10 Go | LXDE/LXQt |
| **Xubuntu** | 1 Go | 8-10 Go | Xfce |
| **Linux Lite** | 1 Go | 8-10 Go | Xfce |

### Architecture du processeur

#### 32 bits vs 64 bits

**32 bits (i386, i686) :**
- Limite de 4 Go de RAM
- Support arrêté par la plupart des distributions modernes

**64 bits (x86_64, amd64) :**
- Supporte plus de 4 Go de RAM
- Standard actuel pour les ordinateurs modernes
- Meilleures performances

> **Important :** La plupart des distributions Linux modernes ne supportent plus que l'architecture 64 bits.

**Autres architectures :**
- **ARM** : Smartphones, Raspberry Pi, serveurs ARM
- **PowerPC** : Anciens Mac, serveurs IBM
- **RISC-V** : Architecture émergente

---

## 4. Architecture d'un système Linux

### Architecture en couches

Un système Linux est organisé en couches successives :

```
┌─────────────────────────────────────────┐
│     Applications utilisateur            │  Niveau 5
│  (Firefox, LibreOffice, GIMP...)        │
├─────────────────────────────────────────┤
│            Shell                        │  Niveau 4
│  (bash, zsh, scripts...)                │
├─────────────────────────────────────────┤
│     Bibliothèques système               │  Niveau 3
│  (glibc, API système...)                │
├─────────────────────────────────────────┤
│       Noyau Linux (Kernel)              │  Niveau 2
│  (Gestion processus, mémoire, E/S...)   │
├─────────────────────────────────────────┤
│         Matériel (Hardware)             │  Niveau 1
│  (CPU, RAM, Disque, Périphériques...)   │
└─────────────────────────────────────────┘
```

### Description des couches

#### 1️⃣ Matériel (Hardware)

La couche la plus basse, comprenant :
- **Processeur (CPU)** : exécute les instructions
- **Mémoire (RAM)** : stockage temporaire rapide
- **Stockage** : disque dur, SSD
- **Périphériques** : clavier, souris, imprimante, carte réseau...

#### 2️⃣ Noyau (Kernel)

Le **noyau Linux** est chargé en mémoire au démarrage. Ses fonctions essentielles :

**Gestion de la mémoire :**
- Allocation de mémoire aux processus
- Mémoire virtuelle et swap
- Protection entre processus

**Gestion des processus :**
- Création et destruction de processus
- Ordonnancement (scheduler)
- Commutation entre processus

**Gestion du système de fichiers :**
- Lecture et écriture de fichiers
- Organisation des données sur le disque
- Support de différents systèmes de fichiers (ext4, btrfs, xfs...)

**Gestion des entrées-sorties :**
- Communication avec les périphériques
- Pilotes (drivers)
- Gestion des interruptions

**Gestion réseau :**
- Protocoles TCP/IP
- Pare-feu (netfilter/iptables)
- Communication inter-processus

#### 3️⃣ Bibliothèques système

Les **bibliothèques système** fournissent des fonctions standard :
- Interface entre les programmes et le noyau
- Fonctions courantes réutilisables (glibc)
- Pas besoin de connaître les détails du noyau

#### 4️⃣ Shell (Interpréteur de commandes)

Le **shell** offre une interface de haut niveau :

**Principaux shells :**

| Shell | Nom complet | Caractéristiques |
|-------|-------------|------------------|
| **sh** | Bourne Shell | Shell historique, standard |
| **bash** | Bourne Again Shell | Le plus utilisé sous Linux |
| **zsh** | Z Shell | Très personnalisable, puissant |
| **fish** | Friendly Interactive Shell | Moderne, suggestions automatiques |
| **ksh** | Korn Shell | Utilisé sur UNIX propriétaire |
| **csh** | C Shell | Syntaxe proche du C |

**Fonctionnalités :**
- Exécution de commandes
- Scripts pour automatiser des tâches
- Variables d'environnement
- Redirections et tubes

**Vérifier son shell :**

```bash
echo $SHELL
```

#### 5️⃣ Applications utilisateur

Cette couche comprend :

**Utilitaires :**
- Éditeurs de texte (nano, vim, gedit)
- Compilateurs (gcc, g++)
- Outils de développement

**Environnements de bureau :**
- **GNOME** : Interface moderne et simple
- **KDE Plasma** : Très personnalisable
- **Xfce** : Léger et efficace
- **LXDE/LXQt** : Très léger
- **Cinnamon** : Traditionnel et élégant

**Applications :**
- Navigateurs (Firefox, Chrome)
- Bureautique (LibreOffice)
- Multimédia (VLC, GIMP)

### Système de fichiers sous Linux

#### Philosophie : "Tout est fichier"

Sous Linux, du point de vue de l'utilisateur :
- Il n'y a **pas** de notion de disques C:, D:, E: (comme Windows)
- Une **seule arborescence hiérarchique** partant de `/` (racine)
- Les périphériques de stockage sont **montés** dans cette arborescence

#### Arborescence standard

```
/
├── bin/          # Binaires essentiels (ls, cp, cat...)
├── boot/         # Fichiers de démarrage (noyau, GRUB...)
├── dev/          # Périphériques (disques, terminaux...)
├── etc/          # Fichiers de configuration
├── home/         # Répertoires personnels des utilisateurs
│   ├── user1/
│   ├── user2/
│   └── ...
├── lib/          # Bibliothèques partagées
├── media/        # Points de montage amovibles (USB, CD...)
├── mnt/          # Points de montage temporaires
├── opt/          # Logiciels optionnels
├── proc/         # Informations sur les processus (virtuel)
├── root/         # Répertoire de l'administrateur
├── run/          # Données d'exécution
├── sbin/         # Binaires système (administration)
├── srv/          # Données des services (web, ftp...)
├── sys/          # Informations système (virtuel)
├── tmp/          # Fichiers temporaires
├── usr/          # Programmes et bibliothèques utilisateur
│   ├── bin/
│   ├── lib/
│   ├── local/
│   └── share/
└── var/          # Données variables (logs, cache...)
    ├── log/
    ├── cache/
    └── tmp/
```

### Périphériques en tant que fichiers

Les **périphériques** sont représentés comme des fichiers dans `/dev/` :

**Exemples :**

| Fichier | Description |
|---------|-------------|
| `/dev/sda` | Premier disque dur SATA/SCSI |
| `/dev/sda1` | Première partition du premier disque |
| `/dev/sdb` | Deuxième disque dur |
| `/dev/nvme0n1` | Disque SSD NVMe |
| `/dev/tty1` | Premier terminal virtuel |
| `/dev/pts/0` | Pseudo-terminal |
| `/dev/null` | "Trou noir" (supprime toutes les données) |
| `/dev/zero` | Génère des zéros à l'infini |
| `/dev/random` | Générateur aléatoire |

**Avantages :**
- Accès uniforme via les mêmes commandes (cat, echo...)
- Indépendance du matériel
- Portabilité du système

---

## 5. Installation de Linux

Il existe deux principaux modes d'installation :

### Installation directe

**Installation directe** sur la machine physique :

#### En remplacement complet

- Efface le système existant (Windows, macOS)
- Linux devient l'unique système
- Meilleures performances

#### En dual-boot

- Linux cohabite avec Windows/macOS
- Choix du système au démarrage (GRUB)
- Permet de garder son ancien système

**✅ Avantages :**
- Performances maximales
- Accès direct au matériel
- Toutes les ressources disponibles

**❌ Inconvénients :**
- Risque de perte de données si mal effectué
- Nécessite de redémarrer pour changer de système
- Plus difficile pour débutants

### Installation virtualisée

**Installation virtualisée** via un logiciel de virtualisation :

#### Logiciels de virtualisation

| Logiciel | Licence | Plateformes | Usage |
|----------|---------|-------------|-------|
| **VirtualBox** | Gratuit (Open Source) | Windows, macOS, Linux | Usage personnel/pro |
| **VMware Workstation Player** | Gratuit (usage personnel) | Windows, Linux | Très performant |
| **VMware Fusion** | Payant | macOS | Optimisé pour Mac |
| **QEMU/KVM** | Gratuit (Open Source) | Linux | Très performant, natif Linux |
| **Hyper-V** | Inclus Windows Pro | Windows | Microsoft |

#### Comment ça marche ?

```
┌─────────────────────────────────────────┐
│    Système hôte (Windows/macOS/Linux)   │
│  ┌───────────────────────────────────┐  │
│  │  Logiciel de virtualisation       │  │
│  │  ┌─────────────────────────────┐  │  │
│  │  │  Machine virtuelle Linux    │  │  │
│  │  │  (système invité)           │  │  │
│  │  └─────────────────────────────┘  │  │
│  └───────────────────────────────────┘  │
└─────────────────────────────────────────┘
```

**✅ Avantages :**
- Aucun risque pour le système hôte
- Possibilité de tester plusieurs distributions
- Facile à supprimer ou réinstaller
- Peut fonctionner simultanément avec le système hôte
- Idéal pour l'apprentissage

**❌ Inconvénients :**
- Performances légèrement réduites
- Nécessite suffisamment de RAM (4 Go minimum recommandé)
- Partage des ressources avec le système hôte

### Configuration minimale recommandée

#### Pour installation directe

- **Processeur** : 1 GHz ou plus
- **RAM** : 2 Go minimum (4 Go recommandé)
- **Disque** : 20 Go minimum (50 Go recommandé)
- **Carte graphique** : Supportant le serveur X

#### Pour virtualisation

**Système hôte :**
- **Processeur** : Support de la virtualisation (VT-x/AMD-V)
- **RAM** : 8 Go minimum (pour allouer 2-4 Go à la VM)
- **Disque** : 50 Go d'espace libre

**Machine virtuelle :**
- **RAM** : 2-4 Go
- **Disque** : 20-30 Go (disque virtuel)
- **Processeurs** : 2 cœurs virtuels

> **Recommandation pour débutants :** Commencez avec VirtualBox pour tester Linux sans risque, puis passez à une installation directe si vous êtes satisfait.

---

## 🎯 Résumé du chapitre

Dans ce chapitre, nous avons découvert :

✅ **Le rôle d'un système d'exploitation** et ses fonctions principales  
✅ **L'histoire d'UNIX et Linux** de 1969 à aujourd'hui  
✅ **Les distributions Linux** populaires et leurs usages  
✅ **L'architecture en couches** d'un système Linux  
✅ **Le système de fichiers** où "tout est fichier"  
✅ **Les modes d'installation** : directe vs virtualisée

---

## 📚 Pour aller plus loin

**Sites officiels :**
- [Kernel.org](https://www.kernel.org/) - Noyau Linux officiel
- [Linux.org](https://www.linux.org/) - Documentation et actualités
- [The Linux Foundation](https://www.linuxfoundation.org/)

**Ressources pédagogiques :**
- [Linux Journey](https://linuxjourney.com/) - Tutoriel interactif
- [Introduction to Linux (edX)](https://www.edx.org/course/introduction-to-linux)

**Comparaisons de distributions :**
- [DistroWatch](https://distrowatch.com/)

---

[⬅️ Retour au sommaire](../README.md) | [➡️ Chapitre suivant : Commandes de base](02-commandes-base.md)
