import 'package:flutter/material.dart';
import '../section_perso_screen.dart'; // Importe l'écran de détails

class PersoScreen extends StatelessWidget {
  // Liste des personnages
  final List<String> sections = [
    "Adam",
    "Eve",
    "Cain",
    "Abel",
    "Sett",
    "Henoch",
    "Mathusalem",
    "Noé",
    "Sem",
    "Cham",
    "Japhet",
    "Canaan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personnages",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionPersoScreen(persoName: sections[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
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
