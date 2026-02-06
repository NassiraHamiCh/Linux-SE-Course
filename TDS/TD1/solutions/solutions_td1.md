# Solutions TD1 - Introduction et commandes de base

## Exercice 1 : Questions de cours

### 1. Principales caractéristiques du système d'exploitation Linux

- **Open Source** : Code source libre et gratuit
- **Multitâche** : Plusieurs processus peuvent s'exécuter simultanément
- **Multi-utilisateurs** : Plusieurs utilisateurs peuvent travailler en même temps
- **Portable** : Fonctionne sur de nombreuses architectures matérielles
- **Sécurité robuste** : Système de permissions et d'authentification
- **Stabilité** : Rarement besoin de redémarrer
- **Flexibilité** : Personnalisable et modulaire

### 2. Rôle du noyau de Linux

Le **noyau (kernel)** assure les fonctions essentielles :
- Gestion de la mémoire (allocation, mémoire virtuelle)
- Gestion des processus (ordonnancement, création/destruction)
- Gestion du système de fichiers
- Gestion des entrées-sorties et périphériques
- Gestion des communications réseau

### 3. Rôle du shell

Le **shell** est l'interpréteur de commandes qui :
- Sert d'interface entre l'utilisateur et le système
- Lit et interprète les commandes
- Transmet les commandes au noyau
- Retourne les résultats à l'utilisateur
- Permet l'écriture de scripts pour automatiser des tâches

### 4. Virtualisation basée sur l'hôte vs bare-metal

**Virtualisation basée sur l'hôte :**
- Un OS hôte est installé (Windows, macOS, Linux)
- Un logiciel de virtualisation s'exécute sur l'OS (VirtualBox, VMware)
- Les machines virtuelles fonctionnent au-dessus de l'hyperviseur
- **Avantages** : Facile à installer, permet de tester facilement
- **Inconvénients** : Performances réduites

**Virtualisation bare-metal :**
- L'hyperviseur s'installe directement sur le matériel
- Pas d'OS intermédiaire
- **Avantages** : Meilleures performances, plus efficace
- **Inconvénients** : Plus complexe à configurer
- **Exemples** : VMware ESXi, Proxmox, KVM

---

## Exercice 2 : Informations système

### 1. Afficher des informations sur la distribution

```bash
lsb_release -a
```

**Alternatives :**
```bash
cat /etc/os-release
cat /etc/issue
uname -a
```

### 2. Afficher le nom de la machine

```bash
hostname
```

### 3. Afficher le nom d'utilisateur actuel

```bash
logname
# ou
whoami
# ou
echo $USER
```

### 4. Afficher la liste des utilisateurs connectés

```bash
who
# ou pour plus de détails
w
```

---

## Exercice 3 : Navigation et manipulation de répertoires

### 1. Vérifier si vous êtes dans votre répertoire de connexion

```bash
pwd
# Comparer avec
echo $HOME
# Ou simplement
cd ~
pwd
```

### 2. Créer l'arborescence IIA3/SEI

```bash
cd ~
mkdir -p IIA3/SEI
```

### 3. Créer le répertoire Compte-rendu1 dans le bureau

```bash
mkdir ~/Bureau/Compte-rendu1
# ou si vous êtes dans le répertoire Bureau
cd ~/Bureau
mkdir Compte-rendu1
```

### 4. Déplacer Compte-rendu1 vers SEI

```bash
mv ~/Bureau/Compte-rendu1 ~/IIA3/SEI/
```

### 5. Afficher l'arborescence

```bash
tree ~/IIA3
# ou si tree n'est pas installé
find ~/IIA3 -type d
# ou
ls -R ~/IIA3
```

### 6. Supprimer le répertoire IIA

```bash
rm -rf ~/IIA3
# ou de manière plus sûre (répertoires vides uniquement)
rmdir ~/IIA3/SEI/Compte-rendu1
rmdir ~/IIA3/SEI
rmdir ~/IIA3
```

---

## Exercice 4 : Manipulation de fichiers

### 1. Créer les répertoires TDM1 et TDM1_SEI

```bash
cd ~
mkdir TDM1 TDM1_SEI
```

### 2. Créer le fichier TDM1.txt

```bash
touch TDM1.txt
# ou
cat > TDM1.txt
# (puis Ctrl+D pour terminer)
```

### 3. Dupliquer TDM1.txt sous le nom TDM1_SEI.txt

```bash
cp TDM1.txt TDM1_SEI.txt
```

### 4. Déplacer TDM1_SEI.txt dans TDM1_SEI

```bash
mv TDM1_SEI.txt TDM1_SEI/
```

### 5. Afficher le contenu de TDM1_SEI en détail

```bash
ls -l TDM1_SEI/
```

### 6. Supprimer TDM1.txt avec confirmation

```bash
rm -i TDM1.txt
# Répondre 'y' ou 'o' pour confirmer
```

---

## 📚 Commandes utiles récapitulatives

| Commande | Description |
|----------|-------------|
| `pwd` | Affiche le répertoire courant |
| `cd` | Change de répertoire |
| `ls` | Liste les fichiers |
| `mkdir` | Crée un répertoire |
| `rmdir` | Supprime un répertoire vide |
| `rm -r` | Supprime un répertoire et son contenu |
| `touch` | Crée un fichier vide |
| `cp` | Copie des fichiers |
| `mv` | Déplace ou renomme |
| `rm` | Supprime des fichiers |
| `cat` | Affiche le contenu d'un fichier |
| `man` | Affiche le manuel d'une commande |

---

[⬅️ Retour au TD1](../README.md)
