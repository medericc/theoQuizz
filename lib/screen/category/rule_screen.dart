import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "À propos de l'application",
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
      body: Center(  // Ajout d'un Center pour centrer verticalement
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centre le contenu verticalement
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cette application propose un résumé de la Bible avec des explications théologiques, classées par sections :",
                  style: TextStyle(fontSize: 18, color: Colors.brown),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                _buildBulletPoint("Genèse, Exode, Juges, Rois, Exil, etc."),
                _buildBulletPoint("Résumé des personnages bibliques"),
                _buildBulletPoint("Vie des Saints et Saintes"),
                _buildBulletPoint("Résumé des livres bibliques avec une approche théologique"),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "L'objectif est d'offrir un accès simple et structuré aux grandes lignes de la foi chrétienne.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: Colors.brown, size: 26),
          SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}
