import 'package:flutter/material.dart';
import '../section_perso_screen.dart'; // Importe l'écran de détails

class PersoScreen extends StatefulWidget {
  @override
  _PersoScreenState createState() => _PersoScreenState();
}

class _PersoScreenState extends State<PersoScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  // Liste des personnages
  final List<String> sections = [
    "Adam",
    "Eve",
    "Cain",
    "Abel",
    "Sett",
    "Henoch",
    "Mathusalem",
    "Noé",
    "Sem",
    "Cham",
    "Japhet",
    "Canaan","Eber", "Térah", "Abram", "Saraï", "Ketura", "Agar", "Lot", "Ben-Ammi",
"Madian", "Moab", "Amalek", "Ismael", "Isaac", "Rebecca", "Jacob", "Ésaü", "Laban", "Rachel", "Léa", "Ruben",
  "Simeon",
  "Levi",
  "Juda",
  "Dan",
  "Naphtali",
  "Gad",
  "Aser",
  "Issacar",
  "Zabulon",
  "Joseph",
  "Benjamin",
  "Manassé (Joseph)",
  "Ephraim",
  "Pharaon",
  "Moise",
  "Aaron","Séphora", "Myriam", "Jethro", "Josué", "Caleb", "Othniel", "Cushan-Rishataïm", "Églon", "Ehud", "Shamgar", "Débora", "Sisera", "Yaël", "Jabin", "Gédéon", "Abimélek", "Jotham", "Jephté", "Samson","Dalila", "Samuel", "Eli", "Anne (Samuel)", "Saül", "David", "Ishboshet", "Urie", "Nathan", "Gad (David)", "Abner", "Abishag", "Ahimélek", "Joab", "Asaël", "Absalom", "Ahitophel", "Abiathar", "Adonias", "Salomon", "Roboam","Jéroboam",
"Jéhu (prophète)",
"Ahiyya",
"Omri",
"Achab",
"Élie",
"Jézabel",
"Hazaël",
"Élisée",
"Ben-Hadad",
"Michée",
"Joram (Juda)",
"Josaphat",
"Géhazi",
"Jéhu (roi)",
"Joachaz",
"Joas",
"Manassé (roi)",
"Osée (roi)",
"Osée (prophète)",
"Shishak",
"Asa",
"Athalie",
"Joad",
"Amatsia",
"Ézéchias",
"Josias",
"Azarias",
"Joaquim (roi)",
"Daniel",
"Sédécias",
"Ézéchiel",
"Zorobabel",
"Josué (prêtre)",
"Aggée",
"Néhémie",
"Zacharie (prophète)",
"Ésaïe",
"Cyrus",
"Joël (prophète)",
"Esdras",
"Judas Maccabée",
"Habacuc",
"Nahum",
"Jonas",
"Amos",
"Abdias",
"Jérémie",
"Job",
"Esther",
"Tobie","Judith","Bath-Shéba","Ésaie"



  ];

 @override
  Widget build(BuildContext context) {
    // Filtrer la liste des personnages en fonction du texte de recherche
    List<String> filteredPersos = sections
        .where((perso) => perso.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Supprime la flèche de retour
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Rechercher un personnage...",
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
          itemCount: filteredPersos.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionPersoScreen(persoName: filteredPersos[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          filteredPersos[index],
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