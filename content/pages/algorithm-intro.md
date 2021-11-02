---
title: "Algorithmes - Intro"
date: 2021-11-02T13:50:24+01:00
draft: false
---

# Algorithmes - Intro

## 🎯 Objectif 🎯
Prendre du level sur l'algorithmie :
* Analyser un sujet
* Ecrire un algorithme qui résout le problème
* Recommencer ! *Chaque algo est une pompe mentale* 😄

Quelques explications supplémentaires :
* **Vous pouvez réaliser les exercices proposés dans le langage de votre choix (Java / Python / C# / Autre)**. Les algos vont souvent interagir avec l'OS, *évitez donc le JavaScript pour faire ces exercices*
* Par souci de lisibilité, les exemples de code seront donnés en Python
* Si une bibliothèque est nécessaire pour réaliser un exercice, elle sera précisée dans la description
* Les exercices sont classés par difficulté croissante
* Utilisez git pour stocker tous les exercices dans un repo (un dossier = un exercice)

## :books: Ressources 📚
Je vous recommande ce livre d'introduction à l'algorithmie [Grokking Algorithms - Aditya Y Bhargava](https://www.amazon.fr/Grokking-Algorithms-Aditya-Y-Bhargava/dp/1617292230/) qui vous donnera tous les fondamentaux (complexité, recherches dichotomique, hashmap, etc).

## Recherche dichotomique itérative ⭐
On considère une liste de nombre trié par ordre croissant : 
```python
numbers = [1, 2, 3, 4, 5, 6]
```

Pour retrouver un nombre dans cette liste, si on regarde le contenu de chaque case, on risque de parcourir l'intégralité de la liste. 

Exemple : on cherche le nombre 6, on va regarder le contenu de 5 cases avant de retrouver le 6. Si la liste fait 100 000 cases, on risque de faire 100 000 comparaisons.

#### :hatching_chick: DoD :hatching_chick: 
Implémentez l'algorithme de [recherche dichotomique](https://fr.wikipedia.org/wiki/Recherche_dichotomique) et comptez le nombre de comparaisons moyennes que vous faites pour retrouver une valeur.


## Recherche dichotomique récursive ⭐
Même exercice que le précédent, mais la recherche doit être faite de manière récursive (une fonction qui se rappelle elle même).

#### :hatching_chick: DoD :hatching_chick: 
Implémentez l'algorithme de [recherche dichotomique](https://fr.wikipedia.org/wiki/Recherche_dichotomique) et comptez le nombre de comparaisons moyennes que vous faites pour retrouver une valeur.

## ls-tree ⭐:star: 
On voudrait connaitre le poids en KB (Kilo-Bytes) d'un dossier. Le problème est que ce poids est calculé à partir de :
* La somme des poids de tous les fichiers du dossier
* La somme des poids des tous les fichiers de chaque sous-dossier
* etc. pour chaque dossier enfant

**Cet algorithme doit être implémenté en utilisant la récursivité.**

#### :hatching_chick: DoD :hatching_chick: 
Ecrire un programme qui puisse être appelé ainsi :
```bash
python ls-tree mondossier
Taille totale : 26 455KB
```
Où l'argument `mondossier` est le chemin absolu ou relatif vers un dossier dans votre système.

En bonus, ajouter un argument `--human-readable` pour convertir les unités de la manière la plus lisible possible (en convertissant à l'unité la plus proche en MB, GB). Exemple :
```bash
python ls-tree --human-readle mondossier
Taille totale : 26,5 MB
```

## Traitement image grayscale :star::star:
On voudrait écrire l'algorithme de conversion d'une image en couleur RGB (Red Green Blue) en NB (Noir et Blanc). **Il est recommandé d'utiliser OpenCV pour cet exercice.**

Pour démarrer, voici quelques tips.
```python
import cv2
image = cv2.imread("file.jpg")
# On récupère les valeurs Blue, Green, Red de l'origine de l'image
# L'origine de l'image est en top-left (en haut a gauche de l'écran)
(b, g, r) = image[0, 0]
print(f"Pixel at [0,0], r={r}, g={g}, b={b}")

# On affecte du rouge pur au pixel en position [10, 20]
# les valeurs de chaque composante de couleur sont dans l'intervalle [0, 255]
image[10, 20] = (255, 0, 0)

cv.imwrite("file2.jpg", image)
```

Afin de convertir en NB, vous devrez faire une [conversion colorimétrique](https://www.dynamsoft.com/blog/insights/image-processing/image-processing-101-color-space-conversion/). La plus simple étant :
```
valeur pixel = (R + G + B) / 3
```

#### :hatching_chick: DoD :hatching_chick: 
Un programme prenant en argument une image et qui enregistre l'image en NB à coté :
```bash
python my-grayscale.py file.jpg
# Le fichier file_grayscale.jpg est généré à coté
```

En bonus, vous pouvez ajouter un argument `--algorithm` pour voir le résultat de différent algorithmes de conversion (par exemple la version pondérée). Exemple :
```bash
python my-grayscale.py --algorithm=weighted file.jpg
```

## Traitement image Box Blur :star::star::star:
On voudrait écrire l'algorithm d'un [flou linéaire (box blur)](https://en.wikipedia.org/wiki/Box_blur) sur une image.

Pour y parvenir, chaque valeur de pixel sera la moyenne de 9 pixels qui l'entourent (une matrice).

⚠️ Attention aux pixels qui sont sur les bords (gauche, haut, droite, bas)

#### :hatching_chick: DoD :hatching_chick: 
Un programme prenant en argument une image et qui enregistre la version floutée à coté :
```bash
python my-blur.py file.jpg
# Le fichier file_blur.jpg est généré à coté
```

En bonus, vous pouvez ajouter un argument `--size` pour augmenter la taille de la boite et donc l'inténsité du blur.

## HashMap custom :star::star::star::star::star: 💀:skull:
#### :toolbox: TODO :wrench: