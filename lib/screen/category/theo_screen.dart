import 'package:flutter/material.dart';
import '../section_theo_screen.dart'; // Importe l'écran de détails

class TheoScreen extends StatelessWidget {
  // Liste des livres de théologie avec leur résumé
  final Map<String, String> books = {
    "Lettres de Saint Ignace d'Antioche": "Saint Ignace d'Antioche, évêque et disciple des apôtres, écrit sept lettres en route vers son martyre à Rome (vers 107-110).\n\n Il exhorte les chrétiens à rester unis sous l'autorité des évêques, insiste sur la vraie nature du Christ et met en garde contre les hérésies.\n\n Il rappelle que l'unité de l’Église repose sur l’évêque (la soumission aux évêques permet de rester dans la vraie foi).\n\n Il affirme que le Christ est pleinement Dieu et pleinement homme, et que la foi doit être accompagnée d’amour et d’humilité.\n\n Il rejette le judaïsme, car le Christ apporte une nouvelle vie sous la grâce, et non plus sous la Loi.\n\n Il insiste sur le fait que Jésus est réellement né, a souffert et est ressuscité dans un vrai corps.\n\n Acceptant son martyre comme témoignage de foi, il demande que l’Église reste unie, sans division.\n\n Il souligne que l’Eucharistie est le remède d’immortalité, encourage les croyants à persévérer devant les épreuves et insiste sur l'importance de la fermeté face aux fausses doctrines.",
    "La Didachè – L’Enseignement des Douze Apôtres": "La Didachè (vers 70-150 apr. J.-C.) est l’un des premiers écrits chrétiens hors du Nouveau Testament.\n\n Elle explique que deux chemins s'opposent : la Voie de la Vie, caractérisée par l'amour, la justice et l'humilité, et la Voie de la Mort, marquée par le péché, l'idolâtrie et la violence.\n\n La Voie de la Vie suit le double commandement : aimer Dieu et son prochain. Elle interdit donc le meurtre, le mensonge, la colère, l'injustice, l'avortement, l'adultère et le vol.\n\n Elle évoque aussi le baptême, qui se fait par immersion au nom du Père, du Fils et du Saint-Esprit, ainsi que l'Eucharistie, qui est un repas sacré réservé aux baptisés.\n\n Sur la vie communautaire, la Didachè recommande d'éviter les faux prophètes et les hypocrites, de partager ses biens, de pratiquer le jeûne (le mercredi et le vendredi) et de prier le Notre Père trois fois par jour.\n\n Enfin, elle insiste sur le respect des évêques et des diacres, qui doivent être irréprochables et intègres.\n\n Elle met en garde contre la Parousie, expliquant que le retour du Christ sera précédé de tromperies et d'une grande épreuve.",
    "Contre les hérésies – Irénée de Lyon": "Irénée de Lyon réfute les doctrines gnostiques qui menacent l’unité et la vérité de la foi chrétienne.\n\n Il s’attaque notamment à Valentin et aux spéculations gnostiques sur des émanations divines (éons) prétendant expliquer l’origine du monde.\n\n Il affirme que Dieu est unique, créateur du ciel et de la terre, et rejette l’idée gnostique d’un Demiurge inférieur ayant formé le monde.\n\n Il insiste sur l’unité entre l’Ancien et le Nouveau Testament, affirmant que le Dieu de Moïse est aussi celui du Christ.\n\n Il défend l’Incarnation réelle du Verbe, expliquant que Jésus est vraiment Dieu et vraiment homme, et que sa Passion et sa Résurrection sont historiques et salvatrices.\n\n Irénée met en avant la transmission apostolique comme garantie de la vraie foi, soulignant l’importance de l’Église romaine et de la succession des évêques contre les interprétations ésotériques des hérétiques.\n\n Il insiste sur le rôle du Saint-Esprit, de l’Eucharistie (qu’il considère comme le véritable corps et sang du Christ), et sur la résurrection des corps contre la vision purement spirituelle des gnostiques.\n\n Il affirme que la vérité chrétienne est universelle et accessible à tous, contrairement aux prétentions élitistes des gnostiques.\n\n Pour Irénée, la foi se transmet par l’Église, qui conserve l’enseignement authentique du Christ, et c’est en restant fidèle à cette tradition apostolique que les chrétiens évitent l’erreur.\n\n Son œuvre est une défense majeure de l’orthodoxie chrétienne contre les déformations doctrinales, consolidant la doctrine de l’Église primitive face aux hérésies.",
    "La Prière du Seigneur – Cyprien de Carthage": "Cyprien de Carthage commente en détail le Notre Père, prière enseignée par Jésus à ses disciples.\n\n Il insiste sur son importance comme modèle parfait de prière chrétienne, résumant la foi et les devoirs des croyants.\n\n Il explique chaque demande, soulignant leur portée spirituelle et morale : l’adoration de Dieu, la venue de son règne, la nécessité du pardon et la lutte contre le mal.\n\n Cyprien met en avant l’unité des chrétiens dans cette prière commune, montrant qu’ils doivent s’adresser à Dieu non comme individus isolés, mais en tant que membres de l’Église.\n\n Il insiste sur l’humilité, la confiance et la persévérance dans la prière, rejetant toute récitation mécanique dénuée de sincérité.\n\n Enfin, il relie la prière au comportement du croyant : prier le Notre Père implique de vivre selon ses enseignements, en pratiquant la charité, le pardon et la fidélité à Dieu.\n\n Pour Cyprien, cette prière est une clé essentielle du salut et un moyen de fortifier la foi face aux épreuves.",
    "Vie d’Antoine – Athanase d’Alexandrie": "Cet ouvrage, écrit au IVᵉ siècle, raconte la vie de saint Antoine, considéré comme le père du monachisme chrétien.\n\n Né en Égypte, Antoine renonce à ses biens après avoir entendu l’appel évangélique à tout abandonner pour suivre le Christ.\n\n Il se retire alors dans le désert pour mener une vie d’ascèse, consacrée à la prière et à la lutte spirituelle.\n\n Athanase met en avant les épreuves d’Antoine, notamment les tentations du diable qui prend diverses formes pour le détourner de sa foi.\n\n Il décrit ses combats contre les démons, qui l’assaillent physiquement et mentalement, mais qu’il repousse par sa prière et sa confiance en Dieu.\n\n Son mode de vie austère et sa sagesse attirent de nombreux disciples, faisant de lui un modèle pour le mouvement monastique naissant.\n\n L’ouvrage présente Antoine comme un défenseur de l’orthodoxie chrétienne contre l’arianisme, renforçant ainsi son rôle non seulement comme ascète, mais aussi comme guide spirituel pour l’Église.\n\n Il illustre l’idéal du moine, détaché du monde matériel et totalement tourné vers Dieu.\n\n À travers cette biographie, Athanase cherche à édifier les chrétiens en montrant que la sainteté est accessible par la prière, la discipline et la foi, tout en valorisant le monachisme comme un chemin privilégié vers Dieu.",
  };

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Spacer(), // Ajoute de l'espace en haut pour centrer verticalement
          ListView.builder(
            shrinkWrap: true, // Garde la liste compacte
            itemCount: books.keys.length,
            itemBuilder: (context, index) {
              String bookTitle = books.keys.elementAt(index);
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
                          Icons.menu_book,
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
          Spacer(), // Ajoute de l'espace en bas pour équilibrer
        ],
      ),
    ),
  );
}


}
