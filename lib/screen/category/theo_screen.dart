import 'package:flutter/material.dart';
import '../section_theo_screen.dart'; // Importe l'écran de détails

class TheoScreen extends StatelessWidget {
  // Liste des livres de théologie avec leur résumé
  final Map<String, String> books = {
    "Rome Sweet Home": "Le témoignage puissant de Scott et Kimberly Hahn sur leur conversion au catholicisme.",
    "Introduction au Christianisme": "Une exploration approfondie de la foi chrétienne par le cardinal Ratzinger.",
    "La Cité de Dieu": "L'œuvre magistrale de Saint Augustin sur la philosophie chrétienne de l’histoire.",
    "L'Imitation de Jésus-Christ": "Un guide spirituel médiéval sur la piété et la relation avec Dieu.",
    "Summa Theologica": "L’ouvrage fondamental de Saint Thomas d’Aquin sur la théologie chrétienne.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Théologie",
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
          itemCount: books.keys.length,
          itemBuilder: (context, index) {
            String bookTitle = books.keys.elementAt(index);
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Bords arrondis
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0), // Effet de clic
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionTheoScreen(
                        sectionName: bookTitle,
                        bookSummary: books[bookTitle]!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu_book, // Icône de livre
                        size: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          bookTitle,
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
