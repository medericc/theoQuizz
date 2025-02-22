import 'package:flutter/material.dart';
import 'home_screen.dart'; // Importe l'écran d'accueil
import 'package:google_fonts/google_fonts.dart';
void main() {
 GoogleFonts.config.allowRuntimeFetching = false; // Désactive le chargement dynamique des polices
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mémo Chrétien',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), // Définit l'écran d'accueil
      debugShowCheckedModeBanner: false,
    );
  }
}