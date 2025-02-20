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
        backgroundColor: Colors.brown, // Couleur biblique
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Christianisme Résumé",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Cette application propose un résumé de la Bible avec des explications théologiques, classées par sections :",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              _buildBulletPoint("Genèse, Exode, Juges, Rois, Exil, etc."),
              _buildBulletPoint("Résumé des personnages bibliques"),
              _buildBulletPoint("Vie des Saints et Saintes"),
              _buildBulletPoint("Résumé des livres bibliques avec une approche théologique"),
              SizedBox(height: 20),
              Text(
                "L'objectif est d'offrir un accès simple et structuré aux grandes lignes de la foi chrétienne.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check, color: Colors.brown),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
