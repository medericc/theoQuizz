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
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex; // ✅ Récupère l'index sélectionné
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histoire de la Bible'),
        centerTitle: true,
      ),
      body: _screens[_currentIndex], // ✅ Affiche l'écran correspondant
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
        ],
      ),
    );
  }
}
