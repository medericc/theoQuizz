import 'package:flutter/material.dart';
import '../section_saint_screen.dart'; // Importe l'écran de détails

class SaintScreen extends StatelessWidget {
  // Liste des saints
  final List<String> sections = [
    "Jeanne d'Arc",
    "Marie",
    
    
    "Etienne",
    "Bernadette Soubirous",

    "Geneviève",
    "Blandine",
    "Roch",
    "Véronique",
    "Vincent de Paul",
    "Louis IX",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saints",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown, // Couleur biblique
        elevation: 0, // Supprime l'ombre de l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Bords arrondis
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0), // Bords arrondis pour l'effet de clic
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionSaintScreen(saintName: sections[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.emoji_people, // Icône pour représenter un saint
                        size: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          sections[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
