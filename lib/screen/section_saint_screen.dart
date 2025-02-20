import 'package:flutter/material.dart';

class SectionSaintScreen extends StatelessWidget {
  final String saintName;

  SectionSaintScreen({required this.saintName});

  // Détails des saints
  final Map<String, String> saintDetails = {
    "Jeanne d'Arc": "Jeune paysanne française du XVe siècle qui affirme avoir reçu des voix divines lui ordonnant de libérer la France de l’occupation anglaise. Convaincue de sa mission, elle parvient à rencontrer le dauphin Charles VII et le persuade de lui confier une armée. Grâce à son courage et sa foi inébranlable, elle remporte des victoires décisives, notamment à Orléans, permettant le sacre du roi à Reims. Capturée par les Bourguignons, elle est livrée aux Anglais et jugée pour hérésie. Condamnée, elle est brûlée vive à Rouen en 1431. Réhabilitée plus tard, elle devient une figure de l’héroïsme et de la foi, canonisée en 1920.",
    "Marie": "Elle est la mère de Jésus, choisie par Dieu pour enfanter le Sauveur tout en restant vierge. À l’Annonciation, elle accepte avec foi la volonté divine en disant : << Je suis la servante du Seigneur >>. Présente tout au long du ministère de son Fils, elle souffre à la croix mais devient aussi témoin de la Résurrection. L’Église la vénère comme l’Immaculée Conception et Mère de Dieu. Modèle d’humilité et d’obéissance, elle est honorée pour son rôle unique dans le salut et son intercession auprès des croyants.",
    "Bernadette Soubirous": "Jeune paysanne de Lourdes qui, en 1858, affirme avoir vu plusieurs apparitions de la Vierge Marie dans la grotte de Massabielle. Malgré le scepticisme initial des autorités civiles et religieuses, son témoignage reste constant. La << Dame >> lui révèle son identité en disant : << Je suis l'Immaculée Conception >>. Fidèle à son humilité, Bernadette entre plus tard au couvent de Nevers, où elle mène une vie discrète de prière et de service jusqu'à sa mort. Sa sainteté est reconnue par l'Église, et Lourdes devient un important lieu de pèlerinage.",
    "Etienne": "Il est l'un des premiers diacres de l’Église primitive à Jérusalem. Homme plein de foi et de sagesse, il annonce avec courage l’Évangile, ce qui provoque l’hostilité des chefs religieux. Accusé de blasphème, il est jugé et condamné par le Sanhédrin. Avant d’être lapidé, il prononce un puissant discours retraçant l’histoire du salut et dénonçant l’endurcissement du peuple. Mourant, il prie pour ses bourreaux et voit le ciel ouvert avec Jésus à la droite de Dieu. Premier martyr chrétien, son témoignage marque profondément l’Église naissante.",
    "Geneviève": "Sainte Geneviève (vers 420-502) est une vierge consacrée et la patronne de Paris. Dès son enfance, elle se distingue par sa piété et sa détermination à servir Dieu. Lors des invasions des Huns en 451, elle exhorte les Parisiens à la prière et à la résistance, convainquant la population de ne pas fuir. Son intercession est considérée comme ayant sauvé la ville d’Attila et c'est grâce à elle que Clovis fera de Paris sa capitale. Elle consacre sa vie à la charité, organisant des distributions de vivres pour les pauvres et défendant les opprimés. Réputée pour ses miracles et son influence spirituelle, elle demeure une figure emblématique de la protection et du courage.",
    "Blandine": "esclave chrétienne de Lyon martyrisée sous le règne de Marc Aurèle. Arrêtée lors des persécutions de 177, elle subit d'atroces tortures mais demeure inébranlable dans sa foi. Jetée aux bêtes dans l’amphithéâtre, elle survit miraculeusement avant d’être finalement tuée par le glaive. Son courage impressionne même ses bourreaux, et elle devient un symbole de résistance et de fidélité au Christ. Vénérée comme l'une des premières martyres de l'Église en Gaule, elle incarne la force spirituelle face à l’oppression.",
    "Roch": "Pèlerin et thaumaturge français, célèbre pour son dévouement envers les malades lors des épidémies de peste. Originaire de Montpellier, il renonce à sa richesse pour voyager en Italie, où il soigne les victimes de la peste par la prière et l’imposition des mains. Atteint lui-même de la maladie, il se réfugie dans une forêt, où un chien lui apporte du pain chaque jour jusqu'à sa guérison. De retour en France, il est emprisonné par méprise et meurt dans l’anonymat. Vénéré comme protecteur contre les épidémies, il devient l’un des saints les plus invoqués en temps de peste et un symbole de charité et de résilience.",
    "Louis IX": "Roi de France de 1226 à 1270. Profondément pieux, il gouverne avec justice et se consacre au bien-être de son peuple. Il réforme le système judiciaire en interdisant les duels judiciaires et en rendant la justice sous un chêne à Vincennes. Protecteur des pauvres, il fonde des hôpitaux, dont l’Hôtel-Dieu à Paris. Défenseur de la foi chrétienne, il mène la septième et la huitième croisade, trouvant la mort en Tunisie. Canonisé en 1297, il reste un modèle de roi chrétien, incarnant la charité, la justice et la piété.",
    "Véronique": "Connue pour avoir essuyé le visage du Christ sur le chemin du Calvaire. Selon la légende, son voile aurait miraculeusement conservé l’empreinte du visage de Jésus, devenant une relique vénérée sous le nom de Sainte Face. Bien que son histoire ne figure pas dans les Évangiles, elle est honorée dans la tradition catholique, notamment lors de la sixième station du Chemin de Croix. Modèle de compassion et de dévotion, elle incarne l’amour et le réconfort apportés à ceux qui souffrent.",
    "Vincent de Paul": "Prêtre français connu pour son engagement envers les pauvres et les malades. Capturé par des pirates en 1605, il passe deux ans en esclavage avant de retrouver la liberté. Devenu aumônier et précepteur, il prend conscience des inégalités sociales et consacre sa vie au service des démunis. Il fonde la Congrégation de la Mission (Lazaristes) pour former les prêtres et prêcher aux campagnes, ainsi que les Filles de la Charité avec Louise de Marillac, dédiées aux soins des pauvres. Son action transforme l’assistance sociale en France et inspire de nombreuses œuvres caritatives. Canonisé en 1737, il est reconnu comme le patron des œuvres de charité et incarne l’idéal de la compassion et du service désintéressé.",
  };
final Map<String, IconData> persoIcons = {
  "Jeanne d'Arc": Icons.person_2, // Tête d'homme
  "Marie": Icons.person_2, // Tête de femme
  "Bernadette Soubirous": Icons.person_2,
  "Roch": Icons.person,
  "Etienne": Icons.person,
  
  "Louis IX": Icons.person,
  "Blandine": Icons.person_2,
  "Vincent de Paul": Icons.person,
  "Geneviève": Icons.person_2,
  
  "Véronique": Icons.person_2,
  
};

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(saintName),
      backgroundColor: Colors.brown,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Affichage de l'icône correspondant au saint
          Icon(
            persoIcons[saintName] ?? Icons.person, // Icône par défaut si non trouvée
            size: 50,
            color: Colors.brown,
          ),
          SizedBox(height: 16),

          // Affichage du texte des détails du saint
          Text(
            saintDetails[saintName] ?? "Aucune information disponible.",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

}
