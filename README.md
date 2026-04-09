# Todo Liste - Galaxy Elegance

Application mobile de gestion de tâches développée avec Flutter, alliant un design féminin inspiré de la galaxie à une expérience utilisateur fluide et professionnelle.

## Fonctionnalités

- Ajout de nouvelles tâches avec champ texte
- Suppression d'une tâche par glissement (swipe) ou bouton dédié
- Marquage d'une tâche comme terminée via case à cocher
- Sauvegarde locale des données avec SharedPreferences
- Compteur dynamique des tâches restantes
- Interface Material Design 3 personnalisée
- Thème galaxy : dégradés violets, roses et bleus nuit avec étoiles subtiles
- Iconographie professionnelle Material Icons (pas d'émojis)

## Aperçu technique

- State Management : Provider
- Stockage local : SharedPreferences
- Interface : Material 3 avec personnalisation avancée
- Typographie : Poppins / Montserrat
- Architecture : modulaire (séparation modèle, vue, état)

## Structure du projet

lib/
├── main.dart # Point d'entrée et configuration du thème
├── models/
│ └── todo_model.dart # Modèle de données d'une tâche
├── providers/
│ └── todo_provider.dart # Gestion d'état et logique métier
└── screens/
└── home_screen.dart # Interface principale


## Prérequis

- Flutter SDK (version 3.0 ou supérieure)
- Dart (version 2.18 ou supérieure)
- Android Studio / VS Code avec extensions Flutter

## Personnalisation du thème

Le thème galaxy est configurable dans `main.dart` via l'objet `ThemeData` :
- Dégradé d'arrière-plan personnalisé
- Couleurs primaires et secondaires (violets, roses, bleus nuit)
- Styles de texte raffinés
- Icônes Material Design en variante outlined

## Contribution

Les contributions sont les bienvenues. Merci de respecter les conventions de code Flutter et l'intégrité du design galaxy.


---


Developpe avec Flutter et dedie aux utilisateurs recherchant une application de todo liste a la fois elegante, fonctionnelle et visuellement inspirante.
