import 'package:flutter/material.dart';
import 'package:atlas_geo_eya/pages/countries_page.dart'; // Remplace atlas_geo_eya par le nom exact de ton projet

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atlas Géographique"),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      backgroundColor: Colors.black87, // Fond sombre

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Globe central
              Image.asset(
                "assets/globe.png", // L'image que tu as uploadée
                width: 200,
              ),

              const SizedBox(height: 40),

              // Texte de bienvenue
              const Text(
                "Découvrez les pays du monde",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // texte blanc
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 60),

              // Bouton Explorer
              SizedBox(
                width: double.infinity, // bouton pleine largeur
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CountriesPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // couleur bleu vif
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Explorer",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
