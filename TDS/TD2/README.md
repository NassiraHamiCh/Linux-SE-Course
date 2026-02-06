# TD 2 : Commandes Linux – Fichiers, Liens et Arborescence  

**Licence IIA – Système d’Exploitation 1 | TDM n°2 | A.U. 2025–2026**  
**Faculté Pluridisciplinaire de Nador – Université Mohamed Premier, Oujda**  
- 👨‍🏫 **Professeur :** Pr.Khalid El Makkaoui 


## 📋 Objectifs

- Maîtriser les commandes de manipulation des fichiers sous Linux  
- Comprendre les permissions (droits d’accès)  
- Manipuler les liens symboliques et physiques  
- Explorer une arborescence de répertoires  
- Utiliser les tubes (pipes) et la redirection  

---

## 📝 Exercice 1 : Manipulation de fichiers

1. **Donnez le rôle de la commande `cat` avec des exemples.**

2. Soit le fichier `fichier.txt` contenant 100 lignes de texte.

   a. Afficher le nombre de lignes de ce fichier.  
   b. Afficher le nombre de mots, de lignes et de caractères de `fichier.txt`.  
   c. Trier le contenu du fichier par ordre croissant et rediriger le résultat vers un autre fichier, en utilisant deux méthodes différentes.  
   d. Afficher, pour chaque ligne du fichier, les caractères situés aux positions 1 à 7 et aux positions 10 à 19.  
   e. Afficher les 7 premières lignes de ce fichier.  
   f. Afficher les 7 dernières lignes de ce fichier.  
   g. Rechercher dans le fichier la chaîne de caractères `"passwd"` et afficher les lignes correspondantes avec le numéro de ligne.

---

## 📝 Exercice 2 : Droits d’accès et liens

Soit l’arborescence suivante :

```

rep
└── fichier.txt

```

1. Donner les droits d’accès du fichier `fichier.txt` sous la forme `rwxr-x--x` :  
   - au propriétaire : droit d’exécution (x)  
   - aux autres utilisateurs : droit d’écriture (w)  
   En utilisant :  
   - la forme numérique  
   - la forme symbolique  

2. Utiliser les commandes adéquates pour obtenir exactement l’arborescence suivante :

```

rep
├── fichier.txt
├── lienPhysique.txt
└── lienSymbolique.txt -> fichier.txt

```

3. Rechercher tous les fichiers d’extension `.txt` à partir du répertoire `rep`.  

4. Rechercher les fichiers de type lien symbolique dans `rep`.  

5. Afficher le répertoire `rep` et ses fichiers sous forme d’arborescence.

---

## 📝 Exercice 3 : Pipes, redirection et comptage

1. Compter le nombre de fichiers ordinaires dans le répertoire `rep` à l’aide des commandes `ls` et `wc` :  
   - en utilisant les tubes (pipes)  
   - en utilisant la redirection vers des fichiers  

2. Compter le nombre de sous-répertoires du répertoire `rep` à l’aide des commandes `ls` et `wc`, de deux manières différentes, en redirigeant les messages d’erreur de chaque commande vers des fichiers distincts.

---

## 💡 Conseils

- `man ls`, `man cat`, `man grep` pour comprendre les commandes  
- `|` pour chaîner des commandes  
- `>` , `>>` pour la redirection  
- `2>` pour rediriger les erreurs  
- Travaille toujours dans un dossier de test  

---

## ✅ Solutions

Les solutions sont disponibles dans le dossier [`solutions/`](solutions/).

**Fichiers de solutions :**
- [`solutions_td2.md`](solutions/solutions_td2.md) - Solutions détaillées
- [`corrections_td2.sh`](solutions/corrections_td2.sh) - Script avec toutes les commandes

---

[⬅️ Retour au sommaire](../../README.md) | [➡️ TD suivant : TD3](../TD3/)
