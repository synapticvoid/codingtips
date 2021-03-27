---
title: "Android Kotlin Pomodoro"
date: 2021-03-27T15:50:24+01:00
draft: false
---

# Android Pomodoro

## Objectif
Créer une application de [Pomodoro](https://fr.wikipedia.org/wiki/Technique_Pomodoro) afin d'organiser son temps de travail :
* Démarrer un timer d'une durée par défaut de 25 mins
* Voir un historiques des pomodoros effectués

Pour rendre l'application ludique, chaque pomodoro sera symbolisé par un organisme qui doit grandir (arbre, plante, animal / autre) :
* Si le pomodoro est interrompu, l'organisme meurt
* Si le pomodoro est terminé, l'organisme survi et est ajouté dans un jardin / parc

Pendant le pomodoro, l'organisme grandit. L'inspiration directe est l'application Android [Forest](https://play.google.com/store/apps/details?id=cc.forestapp).

## Stack technique
* Langage Kotlin
* Android
* Utilisation du MVVM
* BDD locale avec Room
* Requêtes HTTP avec Retrofit / Moshi

## Backlog
### 1. Pomodoro
Implémenter un écran permettant à l'utilisateur d'interagir avec un pomodoro :
* Démarrer
* Arrêter
* Mettre en pause

Un compte-à-rebours (ex: 25:00 pour 25 minutes et 00 secondes) s'affiche et est mis à jour à chaque seconde. Par défaut la durée est de 25 minutes, mais l'utilisateur peut régler la durée.

#### :compass: Points notables
* Un ViewModel est requis pour cet écran
* L'Activity s'occupe de l'affichage du compte-à-rebours (c'est elle qui maintient le compte-à-rebours). Le ViewModel ne fait que recevoir les évènement de start / stop / pause pour renvoyer le bon état d'écran

### 2. Enregistrement Pomodoro en BDD
Chaque Pomodoro est enregistré dans une BDD locale. Un nouvel écran permet d'afficher l'historique de tous les pomodoros. Les informations à stocker sont :
* Date du pomodoro
* Heure de début / fin
* Statut final (terminé / interrompu)
* Nom de l'organisme
* Catégorie de l'organisme
* Image de l'organisme résultant du pomodoro

#### :compass: Points notables
* Lorsqu'un pomodoro est interrompu / se termine, les information sont enregistrées dans la BDD (depuis l'écran principal)
* Un ViewModel + RecyclerView doivent être utilisés dans le nouvel écran
* Pour un affichage plus agréable, il est recommandé d'utiliser une [Card](https://material.io/components/cards/android)
* Quand on clique sur une carte une page affiche le détail
* Dans la vue de détail, il est possible de supprimer la carte

### 3. Requête HTTP des organismes
Le pomodoro affiche l'organisme qui va grandir avec le compte-à-rebours. Lorsque l'utilisateur clique sur cette image, il peut choisir un autre organisme dans une liste. La sélection met à jour l'organisme qui sera ensuite enregistré en BDD.

Chaque organisme a quelques images intermédiaires de "croissance" ainsi qu'une image de mort.

#### :compass: Points notables
* La liste des organismes disponibles est récupérée grâce à une requête HTTP vers un backend. Un JSON est renvoyé avec tous les organismes disponibles. Chaque organisme a :
    * Une image par défaut
    * Un nom
    * Une catégorie (fleur / arbuste / poisson / autre)
* Le ViewModel n'est pas obligatoire ici
* Pour simplifier le développement, les images seront stockées en dur dans l'application

### 4. Dashboard des organisme
Un écran affiche tous les organismes qui ont survécus. Chaque organisme représentant une pomodoro réussi, l'objectif pour l'utilisateur est d'avoir cet écran le plus rempli.

Afficher quelques statistiques :
* Durée totale réalisée
* Nombre d'organismes vivants. Afficher par exemple : sapins x 2, chênes x 3, etc


#### :compass: Points notables
* En plus de ces informations, il serait top pour l'utilisateur d'avoir une image dynamiquement généré qui regroupe tous les organisme. L'utilisateur pourrait enregistrer / partager cette image de réussite.
* Le point précédent est en bonus


