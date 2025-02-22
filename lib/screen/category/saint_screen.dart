import 'package:flutter/material.dart';
import '../section_saint_screen.dart'; // Importe l'écran de détails

class SaintScreen extends StatefulWidget {
  @override
  _SaintScreenState createState() => _SaintScreenState();
}

class _SaintScreenState extends State<SaintScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = "";

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
    "Augustin",
    "Thérèse de Lisieux"
  ];

  @override
  Widget build(BuildContext context) {
    // Filtrer la liste des saints en fonction du texte de recherche
    List<String> filteredSaints = sections
        .where((saint) => saint.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
  automaticallyImplyLeading: false, // Supprime la flèche de retour
  title: TextField(
    controller: _searchController,
    decoration: InputDecoration(
      hintText: "Rechercher un saint...",
      border: InputBorder.none,
      hintStyle: TextStyle(color: Colors.white70),
    ),
    style: TextStyle(color: Colors.white),
    onChanged: (value) {
      setState(() {
        _searchText = value;
      });
    },
  ),
  backgroundColor: Colors.brown,
),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: filteredSaints.length,
          itemBuilder: (context, index) {
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
                      builder: (context) =>
                          SectionSaintScreen(saintName: filteredSaints[index]),
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
                          filteredSaints[index],
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
