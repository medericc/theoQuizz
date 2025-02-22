import '../screen/category/catechisme.dart';
import '../screen/category/rule_screen.dart';
import 'package:flutter/material.dart';
import 'category/histoire_screen.dart';
import 'category/perso_screen.dart';
import 'category/saint_screen.dart';
import 'category/theo_screen.dart';

class AppScaffold extends StatefulWidget {
  final int selectedIndex;

  AppScaffold({required this.selectedIndex});

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HistoireScreen(),
    PersoScreen(),
    SaintScreen(),
    TheoScreen(),
    
    CatechismeQuizScreen()
  ];

 @override
void initState() {
  super.initState();
  _currentIndex = (widget.selectedIndex >= 0 && widget.selectedIndex < _screens.length) 
      ? widget.selectedIndex 
      : 0; // Par défaut, afficher le premier écran si l'index est invalide
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
    title: Text(
      'Histoire de la Bible',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.brown, // Même couleur que l'autre AppBar
    elevation: 0, // Supprime l'ombre
  ),
      body: _screens[_currentIndex], // ✅ Affiche l'écran correspondant
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _currentIndex,
  selectedItemColor: Colors.brown,

  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: "Histoire",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: "Personnages",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.emoji_people),
      label: "Saints",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu_book),
      label: "Théologie",
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.school),  // Ajout de Catéchisme ici
      label: "Catéchisme",
    ),
   
   
  ],
),

    );
  }
}
