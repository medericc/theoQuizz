import 'package:flutter/material.dart';
import '../section_detail_screen.dart'; // Importe l'écran de détails

class HistoireScreen extends StatelessWidget {
  // Liste des sous-sections de l'histoire
  final List<String> sections = [
    "Genèse",
    "Déluge",
    "Alliance",
    "Israël",
    "Exode",
    "Josué",
    "Juges",
    "Royaume",
    "Royaume d'Israël",
    "Royaume de Juda",
    "Captivité",
    "Retour",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
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
                  // Navigation vers SectionDetailScreen avec le nom de la section
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionDetailScreen(sectionName: sections[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.book, // Icône pour représenter une section
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
