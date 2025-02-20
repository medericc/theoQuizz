import 'package:flutter/material.dart';
import '../section_theo_screen.dart'; // Importe l'écran de détails

class TheoScreen extends StatelessWidget {
  // Liste des livres de théologie avec leur résumé
  final Map<String, String> books = {
    "Lettres de Saint Ignace d'Antioche": "Saint Ignace d'Antioche, évêque et disciple des apôtres, écrit sept lettres en route vers son martyre à Rome (vers 107-110). Il exhorte les chrétiens à rester unis sous l'autorité des évêques, insiste sur la vraie nature du Christ et met en garde contre les hérésies. Il rappelle que l'unité de l’Église repose sur l’évêque (la soumission aux évêques permet de rester dans la vraie foi). Il affirme que le Christ est pleinement Dieu et pleinement homme, et que la foi doit être accompagnée d’amour et d’humilité. Il rejette le judaïsme, car le Christ apporte une nouvelle vie sous la grâce, et non plus sous la Loi. Il insiste sur le fait que Jésus est réellement né, a souffert et est ressuscité dans un vrai corps. Acceptant son martyre comme témoignage de foi, il demande que l’Église reste unie, sans division. Il souligne que l’Eucharistie est le remède d’immortalité, encourage les croyants à persévérer devant les épreuves et insiste sur l'importance de la fermeté face aux fausses doctrines.",
    "La Didachè – L’Enseignement des Douze Apôtres": "La Didachè (vers 70-150 apr. J.-C.) est l’un des premiers écrits chrétiens hors du Nouveau Testament. Elle explique que deux chemins s'opposent : la Voie de la Vie, caractérisée par l'amour, la justice et l'humilité, et la Voie de la Mort, marquée par le péché, l'idolâtrie et la violence. La Voie de la Vie suit le double commandement : aimer Dieu et son prochain. Elle interdit donc le meurtre, le mensonge, la colère, l'injustice, l'avortement, l'adultère et le vol. Elle évoque aussi le baptême, qui se fait par immersion au nom du Père, du Fils et du Saint-Esprit, ainsi que l'Eucharistie, qui est un repas sacré réservé aux baptisés. Sur la vie communautaire, la Didachè recommande d'éviter les faux prophètes et les hypocrites, de partager ses biens, de pratiquer le jeûne (le mercredi et le vendredi) et de prier le Notre Père trois fois par jour. Enfin, elle insiste sur le respect des évêques et des diacres, qui doivent être irréprochables et intègres. Elle met en garde contre la Parousie, expliquant que le retour du Christ sera précédé de tromperies et d'une grande épreuve.",
    "Contre les hérésies – Irénée de Lyon": "Irénée de Lyon réfute les doctrines gnostiques qui menacent l’unité et la vérité de la foi chrétienne. Il s’attaque notamment à Valentin et aux spéculations gnostiques sur des émanations divines (éons) prétendant expliquer l’origine du monde. Il affirme que Dieu est unique, créateur du ciel et de la terre, et rejette l’idée gnostique d’un Demiurge inférieur ayant formé le monde. Il insiste sur l’unité entre l’Ancien et le Nouveau Testament, affirmant que le Dieu de Moïse est aussi celui du Christ. Il défend l’Incarnation réelle du Verbe, expliquant que Jésus est vraiment Dieu et vraiment homme, et que sa Passion et sa Résurrection sont historiques et salvatrices. Irénée met en avant la transmission apostolique comme garantie de la vraie foi, soulignant l’importance de l’Église romaine et de la succession des évêques contre les interprétations ésotériques des hérétiques. Il insiste sur le rôle du Saint-Esprit, de l’Eucharistie (qu’il considère comme le véritable corps et sang du Christ), et sur la résurrection des corps contre la vision purement spirituelle des gnostiques. Il affirme que la vérité chrétienne est universelle et accessible à tous, contrairement aux prétentions élitistes des gnostiques. Pour Irénée, la foi se transmet par l’Église, qui conserve l’enseignement authentique du Christ, et c’est en restant fidèle à cette tradition apostolique que les chrétiens évitent l’erreur. Son œuvre est une défense majeure de l’orthodoxie chrétienne contre les déformations doctrinales, consolidant la doctrine de l’Église primitive face aux hérésies.",
    "La Prière du Seigneur – Cyprien de Carthage": "Cyprien de Carthage commente en détail le Notre Père, prière enseignée par Jésus à ses disciples. Il insiste sur son importance comme modèle parfait de prière chrétienne, résumant la foi et les devoirs des croyants. Il explique chaque demande, soulignant leur portée spirituelle et morale : l’adoration de Dieu, la venue de son règne, la nécessité du pardon et la lutte contre le mal. Cyprien met en avant l’unité des chrétiens dans cette prière commune, montrant qu’ils doivent s’adresser à Dieu non comme individus isolés, mais en tant que membres de l’Église. Il insiste sur l’humilité, la confiance et la persévérance dans la prière, rejetant toute récitation mécanique dénuée de sincérité. Enfin, il relie la prière au comportement du croyant : prier le Notre Père implique de vivre selon ses enseignements, en pratiquant la charité, le pardon et la fidélité à Dieu. Pour Cyprien, cette prière est une clé essentielle du salut et un moyen de fortifier la foi face aux épreuves.",
    "Vie d’Antoine – Athanase d’Alexandrie": "Cet ouvrage, écrit au IVᵉ siècle, raconte la vie de saint Antoine, considéré comme le père du monachisme chrétien. Né en Égypte, Antoine renonce à ses biens après avoir entendu l’appel évangélique à tout abandonner pour suivre le Christ. Il se retire alors dans le désert pour mener une vie d’ascèse, consacrée à la prière et à la lutte spirituelle. Athanase met en avant les épreuves d’Antoine, notamment les tentations du diable qui prend diverses formes pour le détourner de sa foi. Il décrit ses combats contre les démons, qui l’assaillent physiquement et mentalement, mais qu’il repousse par sa prière et sa confiance en Dieu. Son mode de vie austère et sa sagesse attirent de nombreux disciples, faisant de lui un modèle pour le mouvement monastique naissant. L’ouvrage présente Antoine comme un défenseur de l’orthodoxie chrétienne contre l’arianisme, renforçant ainsi son rôle non seulement comme ascète, mais aussi comme guide spirituel pour l’Église. Il illustre l’idéal du moine, détaché du monde matériel et totalement tourné vers Dieu. À travers cette biographie, Athanase cherche à édifier les chrétiens en montrant que la sainteté est accessible par la prière, la discipline et la foi, tout en valorisant le monachisme comme un chemin privilégié vers Dieu.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Théologie",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: books.keys.length,
          itemBuilder: (context, index) {
            String bookTitle = books.keys.elementAt(index);
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Bords arrondis
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0), // Effet de clic
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SectionTheoScreen(
                        sectionName: bookTitle,
                        bookSummary: books[bookTitle]!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu_book, // Icône de livre
                        size: 30,
                        color: Colors.brown,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          bookTitle,
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
