import 'package:flutter/material.dart';
import '../models/country.dart';
import '../data/countries_data.dart';
import 'country_detail_page.dart';
import 'welcome_page.dart';
import 'about_page.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = getCountries();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Pays"),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              child: Center(
                child: Icon(Icons.public, color: Colors.white, size: 80),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Accueil"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const WelcomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("À propos"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: ListTile(
              leading: Image.network(country.flagUrl, width: 50, fit: BoxFit.cover),
              title: Text(country.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CountryDetailPage(country: country)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
