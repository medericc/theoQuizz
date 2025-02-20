import 'package:flutter/material.dart';
import 'home_screen.dart'; // Importe l'écran d'accueil

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Résumé Christianisme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), // Définit l'écran d'accueil
      debugShowCheckedModeBanner: false,
    );
  }
}