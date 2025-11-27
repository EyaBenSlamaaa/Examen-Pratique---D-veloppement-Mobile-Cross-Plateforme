Atlas Géographique - Flutter
📌 Description du Projet

Atlas Géographique est une application mobile interactive développée en Flutter qui permet de consulter des informations détaillées sur différents pays du monde. L’application propose une interface intuitive avec navigation entre plusieurs écrans : accueil, liste des pays et détails d’un pays.

Cette application a été développée dans le cadre de l’examen pratique de Développement Mobile Cross-Plateforme.

🎯 Objectifs

Créer une application mobile cross-plateforme (Flutter)

Afficher une liste de pays avec leurs drapeaux

Fournir une page détaillée pour chaque pays contenant :

Drapeau en grand format

Capitale

Population

Superficie

Langue officielle

Implémenter une navigation fluide entre les écrans

Utiliser un Drawer pour accéder aux sections "Accueil", "À propos" et "Quitter"

📂 Structure du Projet
atlas_geo_$PRENOM$/

    ├── lib/
    │   ├── main.dart                  # Point d'entrée de l'application
    │   ├── models/
    │   │   └── country.dart           # Modèle de données pour un pays
    │   ├── data/
    │   │   └── countries_data.dart    # Données des pays
    │   ├── pages/
    │   │   ├── welcome_page.dart      # Page d'accueil
    │   │   ├── countries_page.dart    # Liste des pays
    │   │   └── country_detail_page.dart # Détails du pays
    │   └── widgets/
    │       └── (widgets réutilisables)
    │
    ├── assets/
    │   ├── images/
    │   │   ├── globe.png              # Image de bienvenue
    │   │   └── drapeaux/              # Drapeaux si téléchargés localement
    │
    ├── pubspec.yaml                   # Dépendances et assets
    └── README.md                      # Ce fichier

🖥️ Fonctionnalités
1️⃣ WelcomePage

     AppBar avec titre "Atlas Géographique"

    Image de bienvenue (globe terrestre ou carte du monde)

    Texte : "Découvrez les pays du monde"

    Bouton "Explorer" pour naviguer vers la page principale

2️⃣ CountriesPage

AppBar avec titre "Liste des Pays"

    Drawer avec :

    Accueil → retour à WelcomePage

    À propos → navigation vers AboutPage

    Quitter → fermeture ou message de confirmation

    ListView affichant la liste des pays :

    Nom du pays

    Drapeau miniature

    Clique sur un pays → navigation vers CountryDetailPage

3️⃣ CountryDetailPage

    AppBar avec bouton retour

    Affichage du drapeau en grand format

    Informations du pays :

    Capitale

    Population

    Superficie

    Langue officielle

📊 Données des Pays

Les informations des pays sont stockées dans un fichier JSON ou dans countries_data.dart.
Exemple :

    Country(
     name: "Tunisie",
     capital: "Tunis",
     population: "12 millions",
     area: "163 610 km²",
     officialLanguage: "Arabe",
     flagUrl: "https://flagcdn.com/w320/tn.png",
    )


Tous les pays inclus : France, Tunisie, Brésil, Italie, Canada, Australie, Allemagne, Espagne, Afrique du Sud.

⚙️ Installation et Exécution
Prérequis

    Flutter SDK installé (>=3.0)

    Émulateur Android/iOS ou appareil physique

    IDE recommandé : Visual Studio Code ou Android Studio

Étapes

    Cloner le dépôt :

    git clone https://github.com/votre-utilisateur/atlas_geo_$PRENOM$.git


Se placer dans le dossier du projet :

    cd atlas_geo_$PRENOM$


    Installer les dépendances :

    flutter pub get


Lancer l'application sur un émulateur ou appareil :

    flutter run

🛠️ Technologies Utilisées

    Flutter (Dart)

    Widgets Flutter standard : AppBar, Drawer, ListView, Card, ListTile, Image.network

    Gestion de la navigation avec Navigator.push

📷 Assets

    assets/images/globe.png : Image de bienvenue

    Drapeaux téléchargés depuis CountryFlags.com
     ou via URL (flagcdn.com)

📄 Remarques

    L’application est responsive et fonctionne sur Android et iOS

    Les informations sont affichées depuis le modèle Country

    Le Drawer permet de naviguer facilement entre les pages

    La page de détails a un design moderne avec des cards colorées





    

