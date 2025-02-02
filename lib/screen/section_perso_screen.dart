import 'package:flutter/material.dart';

class SectionPersoScreen extends StatelessWidget {
  final String persoName;

  SectionPersoScreen({required this.persoName});

  final Map<String, String> persoContent = {
    "Adam": "Premier homme créé par Dieu, compagnon d'Eve.",
    "Eve": "Première femme, formée à partir d'Adam.",
    "Cain": "Fils aîné d'Adam et Eve, premier meurtrier.",
    "Abel": "Fils d'Adam et Eve, tué par son frère Caïn.",
    "Sett": "Troisième fils d'Adam et Eve, ancêtre de Noé.",
    "Henoch": "Marcha avec Dieu et fut enlevé sans voir la mort.",
    "Mathusalem": "L'homme le plus âgé mentionné dans la Bible.",
    "Noé": "Construit l'arche et survécut au Déluge.",
    "Sem": "Fils de Noé, ancêtre des Sémites.",
    "Cham": "Fils de Noé, père des peuples africains.",
    "Japhet": "Fils de Noé, ancêtre des peuples européens.",
    "Canaan": "Fils de Cham, ancêtre des Cananéens.",
  };

  final Map<String, String> persoImages = {
    "Adam": "assets/adam.jpg",
    "Eve": "assets/eve.jpg",
    "Cain": "assets/cain.jpg",
    "Abel": "assets/abel.jpg",
    "Sett": "assets/sett.jpg",
    "Henoch": "assets/henoch.jpg",
    "Mathusalem": "assets/mathusalem.jpg",
    "Noé": "assets/noe.jpg",
    "Sem": "assets/sem.jpg",
    "Cham": "assets/cham.jpg",
    "Japhet": "assets/japhet.jpg",
    "Canaan": "assets/canaan.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          persoName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Affichage de l'image (optionnel)
            if (persoImages.containsKey(persoName))
              Image.asset(
                persoImages[persoName]!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        persoName,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Text(
                        persoContent[persoName] ?? "Aucune information disponible.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
