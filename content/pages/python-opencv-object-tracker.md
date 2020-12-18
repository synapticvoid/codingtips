---
title: "Python Opencv Object Tracker"
date: 2020-12-18T19:33:41+01:00
---

# TMIYC (Track Me If You Can)

## Objectif

Être capable de suivre un objet dans une vidéo. L'objet doit être identifié (par un rectangle) et un rectangle doit être affiché pendant la lecture de la vidéo pour indiqué que la vidéo est suivi.

## Stack technique

* Imagerie avec [OpenCV](https://pypi.org/project/opencv-python/)
* Interface graphique avec [Kivy](https://kivy.org/#home). :warning:Kivy est compatible avec Python 3.7 maximum (ils n'ont pas encore migré) ​

Kivy peut être mis de côté dans un 1er temps, il est utile qu'après avoir implémenté et fiabilisé l'algorithme de recherche.

## Progression

### 1. Retrouver un objet dans une image

A partir d'une image de référence (rond rouge sur fond transparent), le programme doit être capable de retrouver le rond rouge dans une 2ème image avec un fond blanc. 

Ici on simplifie le problème :

* Fond uni
* Objet suivi strictement pareil (pas de variation d'angle / couleur / luminosité)
* Pas de vidéo

:hatching_chick: ​DoD : Un rectangle dessiné sur la 2ème image indique la position du rond.

### 2. Pourcentage de confiance

Le rond rouge de l'image de référence doit être retrouver dans la 2ème image avec un pourcentage de confiance (100% l'objet est strictement le même, 0% l'objet n'a pas du tout pareil). L'objectif est de supporter des déformations de l'objet (langle / luminosité / taille).

Le pourcentage de confiance doit être paramétrable. Si on détermine un pourcentage de confiance a 0.75, l'objet sera retrouvé si il correspond a 75% ou plus à l'image original.

:hatching_chick: ​DoD : Le rond rouge est retrouvé alors qu'il est légèrement différent dans l'image (taille / quelques pixels qui changent). Le pourcentage de confiance est affiché

### 3. Recherche dans une vidéo

L'objet recherché doit maintenant être dans une vidéo. OpenCV permet d'extraire les images d'une vidéo. et la recherche doit être faite dans toutes les images de la vidéo.

:warning: Attention, le codec de la vidéo doit être supporté par OpenCV. Il est possible qu'il faille OpenCV avec ffmpeg pour décoder la vidéo.

:hatching_chick: ​DoD : chaque images de la vidéo analysée est extraite et enregistrer dans un dossier de sortie (par simplicité, les images sont nommées image_001.jpg, image_002.jpg). Chaque image contient un rectangle indiquant la position de l'objet suivi ainsi que le pourcentage de confiance associé.

### 4. Zone de recherche

Afin d'accélerer la recherche de l'objet, des zones de recherche sont définies. Une fois que l'objet a été trouvé dans une frame N, l'objet est cherché dans une zone de proximité dans la frame N + 1. Il s'agit donc d'enregistrer la position de l'objet trouvé pour se baser dessus lors de la recherche dans la frame suivante. Si l'objet n'est pas trouvé, la zone est étendu jusqu'à inclure l'intégralité de l'image.

:hatching_chick: ​DoD : 2 zones de recherche de taille croissante puis une recherche dans toute l'image. Le temps moyen de recherche est affiché en console pour chaque frame ainsi que le temps de recherche sur toute la vidéo. A comparer avec le temps de traitement avant l'implémentation de la zone de recherche pour comparaison.

### 5. Webcam

Au lieu d'une source de vidéo prédéfinie, la recherche de l'objet est faite dans le flux de la webcam. On considère que l'objet a recherché a été au préalable sélectionné dans une image séparé (rond rouge sur fond transparent).

Pour tester, on peut imprimer le rond rouge et le passer devant la caméra.

:hatching_chick: ​DoD : le flux vidéo de la webcam est affiché avec le l'objet suivi encadré par un rectangle + pourcentage de confiance

### 6. Intégration dans une UI

Intégrer le flux de la webcam dans une fenêtre Kivy. Le fonctionnement reste le même que précédemment. Cette étape permet de valider l'interaction entre OpenCV et Kivy.

DoD : Une fenêtre Kivy avec 3 boutons :

* Démarrer Webcam
* Arrêter Webcam
* Démarrer suivi d'objet

:hatching_chick: ​DoD : Les boutons s'activent / désactivent en fonction de l'état courant (Bouton arrêter webcam n'est activé que si la webcam a été démarré, etc)

### 7. Choix de l'objet suivi

Proposer une UI permettant de choisir dans le flux webcam l'objet qui sera suivi. Un clic aux coordonnées haut-gauche + clic bas droit définisse le rectangle contenant l'objet à suivre

:hatching_chick: ​DoD : Un bouton "Définir objet" qui active la possibilité de cliquer dans l'image pour définir les coordonnées de l'objet suivi. On peut à tout moment changer l'objet suivi

