import 'package:flutter/material.dart';

class SectionSaintScreen extends StatelessWidget {
  final String saintName;

  SectionSaintScreen({required this.saintName});

  // Détails des saints
  final Map<String, String> saintDetails = {
    "Jeanne": "Sainte Jeanne d'Arc, héroïne nationale de la France et sainte de l'Église catholique.",
    "Marie": "La Vierge Marie, mère de Jésus-Christ.",
    "Bernadette": "Sainte Bernadette Soubirous, voyante de Lourdes.",
    "Charles": "Saint Charles Borromée, archevêque et réformateur de l'Église.",
    "Etienne": "Saint Étienne, premier martyr chrétien.",
    "Paul": "Saint Paul, apôtre des nations et écrivain de nombreuses épîtres.",
    "Pierre": "Saint Pierre, premier pape et apôtre de Jésus.",
    "Blandine": "Sainte Blandine, martyre de Lyon.",
    "Valentin": "Saint Valentin, patron des amoureux.",
    "Judith": "Judith, héroïne biblique ayant sauvé son peuple.",
    "Véronique": "Sainte Véronique, connue pour avoir essuyé le visage du Christ sur le chemin du Calvaire.",
    "Vincent": "Saint Vincent de Paul, fondateur de la Congrégation de la Mission et protecteur des pauvres.",
  };
final Map<String, IconData> persoIcons = {
  "Jeanne": Icons.person_2, // Tête d'homme
  "Marie": Icons.person_2, // Tête de femme
  "Bernadette": Icons.person_2,
  "Charles": Icons.person,
  "Etienne": Icons.person,
  "Paul": Icons.person,
  "Pierre": Icons.person,
  "Blandine": Icons.person_2,
  "Vincent": Icons.person,
  "Valentin": Icons.person,
  "Véronique": Icons.person_2,
  "Judith": Icons.person_2,
};

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(saintName),
      backgroundColor: Colors.brown,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Affichage de l'icône correspondant au saint
          Icon(
            persoIcons[saintName] ?? Icons.person, // Icône par défaut si non trouvée
            size: 50,
            color: Colors.brown,
          ),
          SizedBox(height: 16),

          // Affichage du texte des détails du saint
          Text(
            saintDetails[saintName] ?? "Aucune information disponible.",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

}
