import 'package:flutter/material.dart';
import './screen/app_scaffold.dart'; // ✅ Import AppScaffold

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
      'Christianisme Résumé',
      style: TextStyle(
        color: Colors.white, // Texte en blanc
        fontWeight: FontWeight.bold, // Texte en gras
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.brown, // Couleur biblique
    elevation: 0, // Supprime l'ombre de l'AppBar
  ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSectionCard(
              context,
              title: "Histoire",
              icon: Icons.history,
              index: 0, // ✅ Redirige vers HistoireScreen
            ),
            SizedBox(height: 20),

            _buildSectionCard(
              context,
              title: "Personnages",
              icon: Icons.people,
              index: 1, // ✅ Redirige vers PersoScreen
            ),
            SizedBox(height: 20),

            _buildSectionCard(
              context,
              title: "Saints/Saintes",
              icon: Icons.emoji_people,
              index: 2, // ✅ Redirige vers SaintScreen
            ),
            SizedBox(height: 20),

            _buildSectionCard(
              context,
              title: "Théologie",
              icon: Icons.menu_book,
              index: 3, // ✅ Redirige vers TheoScreen
            ),
  SizedBox(height: 20),

            _buildSectionCard(
              context,
              title: "Règle",
              icon: Icons.rule,
              index: 4, // ✅ Redirige vers RegleScreen
            ),
SizedBox(height: 20),
            _buildSectionCard(
              context,
              title: "Catéchisme", // ✅ Nouvelle section ajoutée
              icon: Icons.school, // Icône symbolisant l'enseignement
              index: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required int index}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Bords arrondis
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0), // Bords arrondis pour l'effet de clic
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppScaffold(selectedIndex: index), // ✅ Ouvre AppScaffold avec l'index
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Plus de padding
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.brown), // Couleur biblique
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown, // Couleur biblique
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.brown), // Couleur biblique
            ],
          ),
        ),
      ),
    );
  }
}