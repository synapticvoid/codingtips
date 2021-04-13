# Morpion

## Description

L'objectif est de développer un [morpion](https://fr.wikipedia.org/wiki/Tic-tac-toe) en Python où 2 joueurs vont jouer au tour par tour.

Le programme doit :

1. Afficher une grille de jeu
2. Demander au joueur 1 de choisir une case pour jouer
3. Le jeu affiche la grille de jeu avec la case remplie
4. Demander au joueur 2 de choisir une case pour jouer

Cette boucle se répète jusqu'a ce que :

* Un des joueurs réussi un alignement de 3
* La grille est remplie sans que personne gagne

En fin de partie, le résultat du jeu est affiché. Pour simplifié la saisie, un utilisateur saisie la case par son numéro. Les cases sont numérotées comme ceci :

| 1    | 2    | 3    |
| ---- | ---- | ---- |
| 4    | 5    | 6    |
| 7    | 8    | 9    |

Le programme doit supporter les fonctionnalités additionnelles suivantes :

* Si on lance le programme avec l'argument -`-parties 3`, le programme va enchainer 3 parties. Le nombre de partie est change en fonction du nombre saisie en argument

* Le programme doit écrire chaque action dans un fichier de log. Exemple :

  ```json
  Joueur 1 joue O dans la case [1, 1]
  
  Joueur 2 joue X dans la case [1, 2]
  
  Le joueur 2 a gagné
  ```

