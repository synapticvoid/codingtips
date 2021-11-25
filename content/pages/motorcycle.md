---
title: "Motorcycle"
date: 2021-11-25T13:26:48+01:00
draft: false
---

# BlockStock
## Objectif
Créer un site de sortie et de road-trips en moto :
* Compte utilisateur + moto(s)
* Gérer des roadtrips avec différentes étapes
* Créer une checklist de préparation de roadtrip



## Progression
### 1. Compte utilisateur + moto
Avoir un système de gestion utilisateur permettant de se connecter et gérer ses informations (pseudonyme, mdp, email, avatar). Le système doit permettre d'avoir une ou plusieurs moto.

Une moto a les caractéristiques suivantes :
* Marque
* Modèle
* Une ou plusieurs photos
* Année de mise en circulation
* Commentaires

#### :compass: Points notables
* Les photos doivent être stockés sur le serveur. La BDD contient un chemin vers un fichier
* Ne pas faire de système d'inscription, uniquement le login

### 2. CRUD Roadtrip
Depuis son dashboard, l'utilisateur peut faire un CRUD de roadtrip.

Un roadtrip a les caractéristiques suivantes :
* Nom
* Date de début
* Date de fin
* Nombre de kms prévus
* 1 ou plusieurs participants

#### :compass: Points notables
* Se limiter à faire les pages permettant de créer / voir / éditer / supprimer un roadtrip

### 2. CRUD étapes roadtrip
Ajouter la possibilité de définir des étapes dans un roadtrip. Sur la page du roadtrip, on verra la liste des étapes.

Une étape a les caractéristiques suivantes :
* Nom
* Roadtrip associé
* Position (ordre des étapes)
* Latitude
* Longitude
* Durée (optionnel)
* Description (optionnel)
* Photo (optionnel)

#### :compass: Points notables
* Une carte Google Maps affiche des POIs avec chaque étape
* Quand l'utilisateur clique sur une étape, elle se "déplie" pour voir son contenu
* Quand l'utilisateur clique sur une étape, sur la partie droite de l'écran, une carte Google Maps centre la carte sur la latitude / longitude de l'étape


### 3. CRUD todo list préparation roadtrip
L'utilisateur doit pouvoir définir une TODO liste de préparation pour son roadtrip.

#### :compass: Points notables
* La TODO list est affichée dans la page du roadtrip
* Chaque élémént a une checkbox permettant de valider ou non l'action
* Chaque élément peut-être associé à un utilisateur (afficher l'avatar + nom en petit à côté)

### 4. Faire une API REST pour des sorties
Ajouter la notion de sortie moto. Une sortie moto a les caractéristiques suivantes :
* Date + heure de début
* Date + heure de fin
* Vitesse moyenne
* Vitesse max
* Altitude minimum
* Altitude maximum
* Angle de la moto maximum

#### :compass: Points notables
* Ces informations ne peuvent pas être mise à jour via l'interface web
* Ces informations doivent être misent à jour via une API REST

### 4. Faire une app mobile
Réaliser une application mobile permettant de créer une sortie.

L'app doit permettre de se logger puis :
* Créer une nouvelle sortie en sélectionnant une moto (si une seule moto enregistrée, la sélectionner automatiquement)
* Démarrer une sortie
* Terminer une sortie

#### :compass: Points notables
* L'application doit prendre les infos GPS / accéléromètre pour la vitesse / altitude / angle
* Ces infos sont stockées *en local*
* Ces infos sont envoyées uniquement lorsque l'utilisateur termine la sortie
* L'application utilise l'API REST précédemment réalisée
