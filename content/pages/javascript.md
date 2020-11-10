---
title: "Javascript"
date: 2020-11-10T16:10:38+01:00
draft: false
---

# JavaScript intro

Robin Penea | v1.1.0

## Organisation

Pour faire ces exos, je vous recommande :

* 1 repo GitHub en publique qui contient tout
* Dans ce repo, un dossier par exercice

## Exercice #01 - Horloge

Votre objectif est d'afficher une horloge qui affiche le temps courant au format suivant : HH:MM:ss. Par exemple : 23:45:12 (23h45 et 12 secondes). Cette horloge doit faire avancer les secondes de manière autonomes.

Pour réaliser cet exercice, vous aurez besoin des fonctions suivantes :

* [setTimeout()](https://www.w3schools.com/jsref/met_win_settimeout.asp) : exécuter une fonction périodiquement. Par exemple pour mettre à jour votre affichage toutes les secondes
* [Date()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) : formatter la date en récupérant les différents composants (heure, minute, seconde) et produire une String avec le résultat

## Exercice #02 - Chronomètre

Créer un chronomètre avec 3 boutons permettant de :

* Démarrer un chronomètre
* Arrêter un chronomètre
* Remettre le chronomètre à 0

Le chronomètre affiche le temps écoulé depuis le démarrage avec le format suivant MM:ss:mm (minutes, secondes, centièmes de secondes.

Pour réaliser cet exercices, vous aurez besoin :

* [clearTimeout()](https://www.w3schools.com/jsref/met_win_cleartimeout.asp) : arrêter une fonction appelée périodiquement (pour un stop / reset)

## Exercice #03 - Calculateur de dépense

Faire une page permettant de calculer ce que doit payer chaque personne d'un groupe pour une dépense commune. Vous aurez :

* Un champ pour indiquer le nombre de personnes
* Un champ pour indiquer le montant de la dépense
* Un bouton permettant de lancer le calcul
* Un résultat affichant le montant a payer par personne

## Exercice #04A - TODO List

Faire une page permettant de créer une TODO list :

* Un champ texte pour saisir une tâche à faire
* Un bouton pour créer la tâche
* Une liste de tâches enregistrées

Chaque fois que l'utilisateur clique sur le bouton de création, le texte du champ de saisie est récupéré, une tâche est créé et elle est affichée dans la liste de tâche.

A côté de chaque tâche de la liste, une croix permet de supprimer la tâche de la liste (avec une fenêtre demandant confirmation à l'utilisateur). Quand la tâche est supprimée, une fenêtre de confirmation est affichée

Pour réaliser cet exercices, vous aurez besoin :

* [confirm()](https://www.w3schools.com/jsref/met_win_confirm.asp) : pour demander une confirmation à l'utilisateur
* [alert()](https://www.w3schools.com/jsref/met_win_alert.asp) : pour afficher un message à l'utilisateur

## Exercice #04B - TODO List++

Reprendre le projet de la TODO list et apporter les améliorations suivants :

* Une tâche comporte un titre + une description qu'il faut saisir
* Une tâche ne peut être ajoutée que si qqch est écrit dans le titre et dans la description (il faut filtrer les espaces)
* La liste des tâches au centre affiche le titre + description
* Une liste sur le côté affiche la liste des tâches avec uniquement le titre de chacune

L'objectif ici est de séparer les données (les tâches) de l'UI (le HTML). Vous aurez donc votre liste de tâches et elle alimentera la liste centrale et la liste sur le côté.

Autre point d'amélioration : utiliser la bibliothèque [JQuery](https://jquery.com/). Voici un [tuto relativement complet](https://www.tutorialrepublic.com/jquery-tutorial/jquery-get-started.php).

Vous devrez ici remplacer pratiquement toutes vos interactions avec le DOM (`getElementById`, etc) avec une fonction JQuery. Une fois que c'est fait, proposer les fonctionnalités suivantes :

* Un bouton sur chaque tâche (dans la liste centrale) permettant d'agrandir la note ou de la réduire (pour voir le titre ou le titre + description)
* Lorsqu'une tâche est supprimée, faire une animation de fade out (disparition progressive)
* Lorsqu'une tâche est ajoutée, faire une animation de fade in (apparition progressive)
* Ajouter une icône dans une tâche permettant de changer l'ordre (par un glissé / déposé)

## Exercice #04C - TODO List+++ CRAZY WOW OMG

Reprendre le projet de la TODO list précédemment développé et enregistrer les tâches de manière persistent. L'objectif est de pouvoir revenir sur la page et retrouver ses anciennes notes.

Pour cela, vous aurez besoin de :

* [localStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage) pour enregistrer vos données. Voici [quelques examples](https://www.w3schools.com/html/html5_webstorage.asp) d'utilisation
* Formatter vos données en JSON pour les enregistrer / charger avec les fonctions [stringify()](https://www.w3schools.com/js/js_json_stringify.asp) et [parse()](https://www.w3schools.com/js/js_json_parse.asp)

## Exercice #05 - Calculatrice

Programmer une calculatrice permettant à l'utilisateur de :

* Cliquer sur les chiffres et mettre à jour un afficheur
* Cliquer sur des opérations (addition / soustraction / multiplication / division)
* Cliquer sur un bouton = pour calculer et afficher le résultat
* Cliquer sur une bouton CE pour remettre à 0 la calculatrice

Allez-y par étape et faites d'abord les opérations simples : une opération c'est :

1. Un chiffre
2. Un opérateur
3. Un chiffre
4. égal

A partir de là, vous pourrez complexifier et supporter des opérations plus complexes. 

En bonus :

* Supporter la saisie clavier : plutot que de cliquer, l'utilisateur tape sur son clavier les opérations. Pour cela, vous devez les évenements clavier avec [un keyevent.](https://o7planning.org/fr/12319/tutoriel-javascript-keyboardevent)
* Précédence des opérateurs : dans le calcul `1 + 2 * 4`, la multiplication doit s'appliquer avant l'addition. L'algorithme pour gérer cela est la [notation polonaise inversée](https://dev.to/subinedge/evaluate-reverse-polish-notation-expressions-using-javascript-algorithms-jmb).