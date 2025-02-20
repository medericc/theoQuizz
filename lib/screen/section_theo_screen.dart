import 'package:flutter/material.dart';

class SectionTheoScreen extends StatelessWidget {
  final String sectionName;
  final String bookSummary;

  const SectionTheoScreen({
    Key? key,
    required this.sectionName,
    required this.bookSummary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sectionName,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown, // Couleur biblique
        elevation: 0, // Supprime l'ombre de l'AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            bookSummary,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
