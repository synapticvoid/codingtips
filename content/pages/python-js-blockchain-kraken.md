---
title: "Python Js Blockchain Kraken"
date: 2021-01-27T19:26:48+01:00
draft: false
---

# BlockStock
## Objectif
Créer un site miroir de [Kraken](https://www.kraken.com/) afin de gérer sa cryptomonnaie :
* Voir le cours de la monnaie sur une durée
* Acheter / Vendre
* Programmer des alertes (ex : monnaie < seuil)

## Stack Technique
### Backend
* Langage Python
* Framework [Django](https://www.djangoproject.com/)
* BDD MySQL

### Frontend
* [VueJS](https://vuejs.org/)

## Progression
### 1. Récupérer les données de Kraken
Créer une route Django permettant d'afficher quelques données obtenue depuis l'API de Kraken. Aucun formatage visuel attendu (pas de template). Les informations a afficher :
* La liste des monnaies
* Le cours actuel de chaque monnaie

Points notables :
* La clé d'API Kraken peut être saisie en dur dans le code
* Dans la vue Django, il faudra faire une requête HTTP vers l'API Kraken pour récupérer les données. Le package [requests](https://requests.readthedocs.io/en/master/) est recommandé.


#### :hatching_chick: DoD :hatching_chick: 
En se connectant sur une route `/dashboard`, on voit les taux de chaque monnaie

### 2. Saisir le token API de Kraken
Créer un formulaire où l'utilisateur peut saisir sa clé d'API Kraken pour ensuite accéder à ses informations de cryptomonnaie.

Points notables :
* Ce formulaire doit rediriger l'utilisateur vers `/dashboard` age en incluant l'argument de la clé d'API
* `/dashboard` ne doit plus contenir de clé d'API en dur et doit gérer les cas d'erreur suivants
    * Clé non valide
    * Impossible de se connecter à Kraken
    * Les données récupérées ne sont pas lisibles (problème de parsing)
* Les templates Django doivent être utilisés
* VueJS doit être utilisé pour l'affichage du formulaire

#### :hatching_chick: DoD :hatching_chick: 
Créer une page `/api-token` où l'utilisateur saisi son Token d'API, valide le formulaire et est redirigé vers `/dashboard`.
Le bouton d'envoi du formulaire n'est activé que si l'utilisateur a saisi au moins 3 caractères (validation à faire en JS).

### 3. Formater les données en présentation
Afficher des informations plus détaillées par monnaie dans `/dashboard`. Plusieurs blocs :
* Un bloc de résumé de toutes les monnaies, avec le cours actuel
* Pour chaque monnaie, afficher un graphique avec un historique de la monnaie sur une durée arbitraire (24h / 1 semaine / 1 mois)
* Pour chaque monnaie, afficher le taux min et max

Points notables :
* La vue `/dashboard` utilise maintenant les templates Django
* Une bibliothèque JS pour le formatage de l'historique doit être utilisé pour simplifier le travail
* Le composant affichage de l'historique doit être réutilisable (on pourrait en afficher autant que l'on veut)

#### :hatching_chick: DoD :hatching_chick: 
La page `dashboard` affiche les infos pertinentes de toutes les monnaies du compte utilisateur.

### 4. Sauvegarder les données en BDD
Les données ne doivent plus être affichée depuis Kraken, mais depuis une BDD. Il faut doit créer un ensemble de tables correspondant à ce qui est reçu depuis Kraken. Les données sont toujours en provenance de Kraken. Il faut donc prévoir un mécanisme de synchronisation.

Points notables :
* Un bouton dans le `/dashboard` permet de déclencher une synchronisation
* [Une commande CLI Django](https://docs.djangoproject.com/en/3.1/howto/custom-management-commands/) permet de déclencher la synchronisation directement en ligne de commande
* Lors du 1er affichage du dashboard, si les tables sont vide, la synchronisation doit être faites automatiquement
* Afficher la date de la dernière synchro dans le dashboard (il faut donc stocker cette information en BDD)

#### :hatching_chick: DoD :hatching_chick: 
La requête HTTP pour récupérer les infos de Kraken est utilisé uniquement dans le cadre d'une synchro. Toutes les informations affichées sur le site proviennent de la BDD.

### 5. Acheter / vendre des actions
#### :toolbox: TODO :wrench:

### 6. Login utilisateur et token Kraken
#### :toolbox: TODO :wrench:

### 7. Programmer des alertes
#### :toolbox: TODO :wrench:

### 8. Créer une API REST
#### :toolbox: TODO :wrench:

### 9. Séparer la webapp VueJS
#### :toolbox: TODO :wrench:

