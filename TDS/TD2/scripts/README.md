## ▶️ Utilisation du script `corrections_td2.sh` (important)

Ce script permet d’exécuter automatiquement toutes les commandes du TD2 dans un environnement de test.

### 1️⃣ Rendre le script exécutable

```bash
chmod +x solutions/corrections_td2.sh
```

*(Si tu es déjà dans le dossier `solutions/`, fais simplement :)*

```bash
chmod +x corrections_td2.sh
```

### 2️⃣ Exécuter le script

```bash
./solutions/corrections_td2.sh
```

*(Ou depuis le dossier `solutions/` :)*

```bash
./corrections_td2.sh
```

### 3️⃣ Vérifier les résultats générés

```bash
ls
cat rep/fichier_trie1.txt
cat rep/erreurs_ls.txt
```

---

## 💡 Astuces et Bonus :

Avant de commencer un exercice, prends toujours 10 secondes pour te situer :

```bash
pwd        # afficher le répertoire courant
ls         # voir le contenu du dossier
ls -l      # voir les droits et types de fichiers
```
> ⚠️ Conseil : N’exécute jamais un script que tu ne comprends pas. Lis le fichier `corrections_td2.sh` avant de l’exécuter.

**Bon réflexe :** travaille dans un dossier de test pour éviter de supprimer des fichiers importants.

---

**Fichiers de solutions :**
- [`solutions_td2.md`](solutions/solutions_td2.md) - Solutions détaillées
- [`srcipt_td2.sh`](srcipts/srcipt_td2.sh) - Script avec toutes les commandes

---

[⬅️ Retour au sommaire](../../README.md) | [➡️ TD suivant : TD3](../TD3/)