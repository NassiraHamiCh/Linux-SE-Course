# Solutions – TD2 : Commandes Linux

## ✅ Exercice 1

### 1. Commande `cat`
Afficher le contenu d’un fichier :
```bash
cat fichier.txt
````

Afficher avec numéros de lignes :

```bash
cat -n fichier.txt
```

Concaténer deux fichiers :

```bash
cat f1.txt f2.txt > total.txt
```

---

### 2.a Nombre de lignes

```bash
wc -l fichier.txt
```

### 2.b Nombre de lignes, mots, caractères

```bash
wc fichier.txt
```

### 2.c Trier et rediriger (2 méthodes)

```bash
sort fichier.txt > fichier_trie.txt
```

```bash
cat fichier.txt | sort > fichier_trie2.txt
```

### 2.d Afficher caractères positions 1–7 et 10–19

```bash
cut -c1-7,10-19 fichier.txt
```

### 2.e 7 premières lignes

```bash
head -n 7 fichier.txt
```

### 2.f 7 dernières lignes

```bash
tail -n 7 fichier.txt
```

### 2.g Rechercher "passwd" avec numéro de ligne

```bash
grep -n "passwd" fichier.txt
```

---

## ✅ Exercice 2

### 1. Droits d’accès

Forme symbolique :

```bash
chmod u+x,o+w fichier.txt
```

Forme numérique (exemple : rwxr-x-wx = 753) :

```bash
chmod 753 fichier.txt
```

---

### 2. Arborescence avec liens

```bash
mkdir rep
cd rep
touch fichier.txt
ln fichier.txt lienPhysique.txt
ln -s fichier.txt lienSymbolique.txt
```

---

### 3. Rechercher tous les fichiers `.txt`

```bash
find rep -name "*.txt"
```

### 4. Rechercher les liens symboliques

```bash
find rep -type l
```

### 5. Affichage en arborescence

```bash
tree rep
```

ou :

```bash
ls -R rep
```

---

## ✅ Exercice 3

### 1. Compter fichiers ordinaires

Avec pipe :

```bash
ls -l rep | grep "^-" | wc -l
```

Avec redirection :

```bash
ls -l rep | grep "^-" > files.txt
wc -l files.txt
```

---

### 2. Compter sous-répertoires + redirection erreurs

Méthode 1 :

```bash
ls -l rep 2> erreurs1.txt | grep "^d" | wc -l
```

Méthode 2 :

```bash
find rep -maxdepth 1 -type d 2> erreurs2.txt | wc -l
```

---

## 🎯 Remarque

Avant de tester les commandes :

```bash
mkdir -p rep/test1 rep/test2
touch rep/a.txt rep/b.txt
```

---
**Fichiers de solutions :**
- [`solutions_td2.md`](solutions/solutions_td2.md) - Solutions détaillées
- [`srcipt_td2.sh`](srcipts/srcipt_td2.sh) - Script avec toutes les commandes

---

[⬅️ Retour au sommaire](../../README.md) | [➡️ TD suivant : TD3](../TD3/)