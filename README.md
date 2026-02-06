# 🐧 Cours de Systèmes d'Exploitation Linux

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Linux](https://img.shields.io/badge/OS-Linux-blue.svg)](https://www.linux.org/)
[![Shell](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](CONTRIBUTING.md)

> 📚 **Un guide complet pour maîtriser Linux et la programmation Shell - Filière IIA**

Ce dépôt contient un cours complet sur les systèmes d'exploitation Linux, incluant les commandes de base, la programmation Shell et les travaux dirigés (TDs) et des exemples pratiques réalisés durant le semestre.

## 🎓 Informations académiques

Ce cours a été réalisé dans le cadre du module **Systèmes d’Exploitation Linux** à :

- 🎓 **Université :** Université Mohammed Premier – Oujda  
- 🏫 **Faculté :** Faculté Pluridisciplinaire de Nador (FPN)
- 👨‍🏫 **Professeur :** Pr. Khalid El Makkaoui 
- 🧑‍🎓 **Étudiante :** Nassira HamiCh  
- 📝 **Module :** Systèmes d'Exploitation I
- 🧭 **Filière :** Informatique et Intelligence Artificielle (IIA)
- 📆 **Année universitaire :** 2025 – 2026

> 📝 **Note :** Ce cours est basé sur les slides et le contenu pédagogique du module Systèmes d'Exploitation enseigné à la Faculté Pluridisciplinaire de Nador. Il a été réorganisé et structuré pour servir de référence accessible aux étudiants.

---

## 📖 Table des matières

- [🎯 À propos](#-À-propos)
- [🚀 Contenu du cours](#-contenu-du-cours)
- [📝 Exercices pratiques](#-exercices-pratiques)
- [🛠️ Installation et utilisation](#️-installation-et-utilisation)
- [📚 Documentation](#-documentation)
- [🤝 Contribution](#-contribution)
- [📜 Licence](#-licence)

---

## 🎯 À propos

Ce cours s'adresse aux aprenats en informatique  souhaitant acquérir des compétences solides en administration système Linux et en programmation Shell.

### Objectifs pédagogiques

✅ Comprendre les fondamentaux de Linux (historique, distributions, architecture)  
✅ Maîtriser les commandes essentielles du terminal  
✅ Gérer les fichiers, répertoires et permissions  
✅ Programmer en Shell (Bash)  
✅ Automatiser des tâches avec des scripts  
✅ Utiliser les tubes, redirections et processus

### 🎓 Public cible

- Étudiants en Licence Informatique 
- Débutants en Linux
- Développeurs souhaitant maîtriser le Shell
- Administrateurs système en formation

---

## 🚀 Contenu du cours

### 📂 Chapitre 1 : Introduction aux systèmes d'exploitation

**Concepts abordés :**
- Qu'est-ce qu'un système d'exploitation ?
- Histoire de UNIX et Linux
- Distributions Linux populaires
- Architecture en couches
- Installation (directe vs virtualisée)

👉 [**Voir le chapitre complet**](docs/01-introduction.md)

---

### 📂 Chapitre 2 : Commandes de base Linux

#### 🔧 Commandes essentielles

| Catégorie | Commandes |
|-----------|-----------|
| **Navigation** | `pwd`, `ls`, `cd` |
| **Fichiers** | `touch`, `cat`, `cp`, `mv`, `rm` |
| **Répertoires** | `mkdir`, `rmdir` |
| **Recherche** | `grep`, `find` |
| **Permissions** | `chmod`, `chown` |

#### 🔐 Gestion des permissions

```bash
# Format octal
chmod 755 script.sh   # rwxr-xr-x

# Format symbolique
chmod u+x script.sh   # Ajoute l'exécution au propriétaire
```

#### 🔗 Redirections et tubes

```bash
# Redirections
commande > fichier        # Écraser
commande >> fichier       # Ajouter
commande 2> erreurs.log   # Erreurs

# Tubes
ls | grep ".txt" | wc -l  # Compter les fichiers .txt
```

👉 [**Voir le chapitre complet**](docs/02-commandes-base.md)

---

### 📂 Chapitre 3 : Programmation Shell

#### 📝 Variables et calculs

```bash
# Variables
nom="Ahmed"
age=25

# Calculs
resultat=$((10 + 5))
echo $resultat  # 15
```

#### 🔄 Structures de contrôle

```bash
# Condition
if [ $nombre -gt 10 ]; then
    echo "Grand nombre"
fi

# Boucle for
for i in {1..5}; do
    echo "Itération $i"
done

# Boucle while
while [ $compteur -lt 10 ]; do
    echo $compteur
    ((compteur++))
done
```

#### 📦 Fonctions

```bash
saluer() {
    echo "Bonjour $1 !"
}

saluer "Nassira"  # Sortie : Bonjour Nassira !
```

👉 [**Voir le chapitre complet**](docs/03-programmation-shell.md)

---

## 📝 Les Travaux pratiques

### 📋 TD 1 : Introduction et commandes de base

**Objectifs :** Maîtriser les commandes essentielles de navigation et manipulation

- ✅ Questions de cours sur Linux
- ✅ Manipulation de fichiers et répertoires
- ✅ Arborescences et chemins
- ✅ Affichage d'informations système

👉 [**Accéder au TD1**](exercices/TD1/)

---

### 📋 TD 2 : Gestion des fichiers et permissions

**Objectifs :** Comprendre les permissions, les liens et les arborescences

- ✅ Commande `cat` et ses options
- ✅ Permissions (lecture, écriture, exécution)
- ✅ Liens symboliques et physiques
- ✅ Recherche de fichiers avec critères

👉 [**Accéder au TD2**](exercices/TD2/)

---

### 📋 TD 3 : Programmation Shell avancée

**Objectifs :** Créer des scripts Shell avec structures de contrôle

- ✅ Scripts avec conditions et boucles
- ✅ Vérification de fichiers/liens
- ✅ Manipulation de tableaux
- ✅ Fonctions avec paramètres

👉 [**Accéder au TD3**](exercices/TD3/)

---

## 🛠️ Installation et utilisation

### Prérequis

- 🖥️ Un système Linux (Ubuntu, Debian, Fedora...) ou macOS
- 💻 Accès au terminal
- 📦 Bash installé (généralement par défaut)

### Cloner ce dépôt

```bash
git clone https://github.com/NassiraHamiCh/Linux-SE-Course.git
cd Linux-SE-Course
```

### Exécuter un script d'exemple

```bash
cd scripts/exemples
chmod +x hello.sh
./hello.sh
```

### Tester un exercice

```bash
cd TDS/TD1/scripts
chmod +x exercice1.sh
./exercice1.sh
```

---

## 📚 Documentation

La documentation complète est disponible dans le dossier [`docs/`](docs/) :

| Chapitre | Fichier |
|----------|---------|
| 📄 Introduction aux systèmes d'exploitation | [01-introduction.md](docs/01-introduction.md) |
| 📄 Commandes de base | [02-commandes-base.md](docs/02-commandes-base.md) |
| 📄 Programmation Shell | [03-programmation-shell.md](docs/03-programmation-shell.md) |

---

## 🤝 Contribution

Les contributions sont les bienvenues ! Voici comment participer :

1. 🍴 **Fork** ce dépôt
2. 🌿 Créez une branche : `git checkout -b feature/amelioration`
3. ✏️ Committez vos changements : `git commit -m 'Ajout d'une fonctionnalité'`
4. 📤 Push vers la branche : `git push origin feature/amelioration`
5. 🔃 Ouvrez une **Pull Request**

Consultez [CONTRIBUTING.md](CONTRIBUTING.md) pour plus de détails.

---

## 📬 Contact

- 📧 **Email** : nassirahamich15@gmail.com

**Pour toute question concernant ce dépôt :**

- Ouvrez une [Issue](../../issues)
- Consultez les [Discussions](../../discussions)

---

## 📜 Licence

Ce projet est sous licence **MIT**. Voir [LICENSE](LICENSE) pour plus d'informations.

**Note importante :** Ce cours est basé sur le contenu pédagogique enseigné à la FPN. Il a été restructuré et réorganisé par des étudiants pour servir de référence d'apprentissage. Tous les droits sur le contenu original reviennent au professeur du module.

---

## 🌟 Remerciements

- 👨‍🏫 **Professeur du module** Systèmes d'Exploitation à la FPN
- 💻 **Communauté open-source** Linux et Bash

---

## 📊 Statistiques du dépôt

![GitHub stars](https://img.shields.io/github/stars/NassiraHamiCh/Linux-SE-Course?style=social)
![GitHub forks](https://img.shields.io/github/forks/NassiraHamiCh/Linux-SE-Course?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/NassiraHamiCh/Linux-SE-Course?style=social)

---

<div align="center">
  
**⭐ Si ce cours vous a été utile, n'hésitez pas à mettre une étoile ! ⭐**

**🎓 Bon apprentissage à tous les apprenants! 🎓**

Made with ❤️ for Linux learners
</div>
