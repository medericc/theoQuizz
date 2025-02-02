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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(saintName),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          saintDetails[saintName] ?? "Aucune information disponible.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
