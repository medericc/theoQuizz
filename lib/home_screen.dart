import 'package:flutter/material.dart';
import './screen/app_scaffold.dart'; // ✅ Import AppScaffold
import './screen/category/rule_screen.dart'; // ✅ Import RulesScreen
import './screen/category/catechisme.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // ✅ Ajuste l'espace
    child: Text(
      'CHRISTIANISME',
      style: GoogleFonts.bebasNeue(
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold, 
          fontSize: 35, 
          letterSpacing: 2, 
          shadows: [
            Shadow(
              blurRadius: 6.0,
              color: Colors.black45, 
              offset: Offset(3, 3),
            ),
          ],
        ),
      ),
    ),
  ),
  centerTitle: true,
  backgroundColor: Colors.brown,
  elevation: 6,
  toolbarHeight: 80, // ✅ Augmente la hauteur de l'AppBar pour plus d'espace
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
              title: "Catéchisme", // ✅ Nouvelle section ajoutée
              icon: Icons.school, // Icône symbolisant l'enseignement
              index: 4,
            ),
            SizedBox(height: 20),
            _buildSectionCard(
              context,
              title: "Règle",
              icon: Icons.rule,
              index: -1, // ✅ Redirige vers RulesScreen
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
          if (title == "Règle") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RulesScreen())); // ✅ Correction de l'appel
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AppScaffold(selectedIndex: index), // ✅ Ouvre AppScaffold avec l'index
              ),
            );
          }
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
