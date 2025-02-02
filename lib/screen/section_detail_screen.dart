import 'package:flutter/material.dart';

class SectionDetailScreen extends StatelessWidget {
  final String sectionName;

  SectionDetailScreen({required this.sectionName});

  final Map<String, String> sectionContent = {
    "Genèse": "Le début de l'humanité et l'histoire de la création.",
    "Noé": "Noé et le déluge, l'arche et l'alliance avec Dieu.",
    "Abraham": "Abraham, père des croyants, et la promesse divine.",
    "Israël": "L'histoire du peuple choisi et son voyage en terre promise.",
    "Moïse": "Moïse a conduit les Israélites hors d'Égypte.",
    "Josué": "Josué a mené le peuple à la conquête de Canaan.",
    "Juges": "Les Juges ont gouverné Israël avant l'époque des rois.",
    "Samuel": "Samuel a oint les premiers rois d'Israël.",
    "David": "David a vaincu Goliath et est devenu roi.",
    "Roi": "L'histoire des rois d'Israël et de Juda.",
    "Captivité": "L'exil du peuple juif à Babylone.",
    "Retour": "Le retour à Jérusalem et la reconstruction du temple.",
  };

  // Images pour chaque section (optionnel)
  final Map<String, String> sectionImages = {
    "Genèse": "assets/genese.jpg",
    "Noé": "assets/noe.jpg",
    "Abraham": "assets/abraham.jpg",
    "Israël": "assets/israel.jpg",
    "Moïse": "assets/moise.jpg",
    "Josué": "assets/josue.jpg",
    "Juges": "assets/juges.jpg",
    "Samuel": "assets/samuel.jpg",
    "David": "assets/david.jpg",
    "Roi": "assets/roi.jpg",
    "Captivité": "assets/captivite.jpg",
    "Retour": "assets/retour.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sectionName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image en haut (optionnelle)
            if (sectionImages.containsKey(sectionName))
              Image.asset(
                sectionImages[sectionName]!,
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
                        sectionName,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Text(
                        sectionContent[sectionName] ?? "Aucune information disponible.",
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
