import 'dart:math';
import 'package:flutter/material.dart';

class CatechismeQuizScreen extends StatefulWidget {
  @override
  _CatechismeQuizScreenState createState() => _CatechismeQuizScreenState();
}

class _CatechismeQuizScreenState extends State<CatechismeQuizScreen> {
  final Random _random = Random();
  String _selectedCategory = "Tous"; // Catégorie sélectionnée

  // Questions classées par catégorie
  final Map<String, List<Map<String, String>>> _questionsByCategory = {
    "Tous": [],
    "Formules": [
      
{"Les deux commandement de la charité" : "1. Tu aimeras le Seigneur ton Dieu de tout ton cœur, de toute ton âme et de tout ton esprit. 2. Tu aimeras ton prochain comme toi-même."},
{"La règle d’or" : "Tout ce que vous désirez que les autres fassent pour vous, faites-le vous-mêmes pour eux."},
{"Les Béatitudes" : "Heureux les pauvres de cœur : le Royaume des cieux est à eux! Heureux les doux : ils obtiendront la  terre promise! Heureux ceux qui pleurent : ils seront consolés! Heureux ceux qui ont faim et soif de la justice : ils seront rassasiés! Heureux les miséricordieux : ils obtiendront miséricorde! Heureux les cœurs purs : ils verront Dieu! Heureux les artisans de paix : ils seront appelés fils de Dieu! Heureux ceux qui sont persécutés pour la justice : le Royaume des cieux est à eux! Heureux serez- vous si l’on vous insulte, si l’on vous persécute et si l’on dit faussement toute sorte de mal contre vous, à cause de moi. Réjouissez-vous, soyez dans l’allégresse, car votre récompense sera grande  dans les cieux!"},
{"Les trois vertus théologales" : "1. Foi. 2. Espérance. 3. Charité."},
{"Les quatre vertus cardinales" : "1. Prudence. 2. Justice. 3. Force. 4. Tempérance."},
{"Le sept dons du Saint-Esprit" : "1. Sagesse. 2. Intelligence. 3. Conseil. 4. Force. 5. Science. 6. Piété. 7. Crainte de Dieu."},
{"Les douze fruits du Saint-Esprit" : "1. Charité. 2. Joie. 3. Paix. 4. Patience. 5. Longanimité. 7. Bonté. 8. Bénignité. 9. Mansuétude. 10. Modestie. 11. Continence. 12. Chasteté."},
{"Les cinq préceptes de l’Église" : "1. Participer à l’Eucharistie dominicale et aux autres fêtes d’obligation et s’abstenir des travaux et des activités qui pourraient empêcher la sanctification de tels jours. 2. Confesser ses péchés au moins une fois par an. 3. Recevoir le Sacrement de l’Eucharistie au moins à Pâques. 4. S’abstenir de manger de la viande et observer le jeûne durant les jours établis par l’Église. 5. Subvenir aux besoins matériels de l’Église, selon ses possibilités."},
{"Les sept œuvres de miséricorde corporelle" : "1. Donner à manger à ceux qui ont faim. 2. Donner à boire à ceux qui ont soif. 3. Vêtir ceux qui sont nus. 4. Loger les pèlerins. 5. Visiter les malades. 6. Visiter les prisonniers. 7. Ensevelir les morts."},
{"Les sept œuvres de miséricorde spirituelle" : "1. Conseiller ceux qui doutent. 2. Enseigner ceux qui sont ignorants. 3. Réprimander les pécheurs. 4. Consoler les affligés. 5. Pardonner les offenses. 6. Supporter patiemment les personnes importunes. 7. Prier Dieu pour les vivants et pour les morts."},
{"Le sept péchés capitaux" : "1. Orgueil. 2. Avarice. 3. Envie. 4. Colère. 5. Impureté. 6. Gourmandise. 7. Paresse ou acédie."},
{"Les quatre fins de l’homme" : "1. Mort. 2. Jugement. 3. Enfer. 4. Paradis."},



    ],
     "Prière": [
 {
    "Qu’est-ce que la prière?": "La prière est l’élévation de l’âme vers Dieu ou la demande faite à Dieu des biens conformes à sa volonté. Elle est toujours un don de Dieu qui vient à la rencontre de l’homme. La prière chrétienne est une relation personnelle et vivante des fils de Dieu avec leur Père infiniment bon, avec son Fils Jésus Christ, avec le Saint-Esprit qui habite en leur cœur."
  },
  {
    "Pourquoi y a-t-il un appel universel à la prière?": "Parce que Dieu, en tout premier lieu par la création, appelle tout être du néant. Et même après la chute, l’homme continue d’être capable de reconnaître son Créateur, gardant en lui le désir de celui qui l’a appelé à l’existence. Toutes les religions, et particulièrement toute l’histoire du salut, témoignent de ce désir de Dieu chez l’homme. Mais c’est Dieu le premier qui attire inlassablement chaque personne à la rencontre mystérieuse de la prière."
  },
  {
    "En quoi Abraham est-il un modèle de prière?": "Abraham est un modèle de prière parce qu’il marche en présence de Dieu, qu’il l’écoute et qu’il lui obéit. Sa prière est un combat de la foi parce que, même dans les moments d’épreuve, il continue de croire en la fidélité de Dieu. En outre, après avoir reçu sous sa tente la visite du Seigneur qui lui confie ses desseins, Abraham ose intercéder pour les pécheurs avec une confiance audacieuse."
  },
  {
    "Comment Moïse priait-il?": "La prière de Moïse est typique de la prière contemplative. Dieu, qui, du Buisson ardent, a appelé Moïse, s’entretient avec lui souvent et longuement, « face à face, comme un homme parle à son ami » (Ex 33,11). Dans cette intimité avec Dieu, Moïse puise la force d’intercéder avec insistance en faveur de son peuple : sa prière préfigure ainsi l’intercession de l’unique médiateur, Jésus Christ."
  },
  {
    "Dans l’Ancien Testament, quels sont les rapports du temple et du roi avec la prière?": "À l’ombre de la demeure de Dieu – l’Arche de l’Alliance, puis le temple –, s’épanouit la prière du peuple de Dieu, sous la conduite de ses pasteurs. Parmi eux, il y a David, le roi « selon le cœur de Dieu », le pasteur qui prie pour son peuple. Sa prière est un modèle pour la prière du peuple, parce qu’elle est adhésion à la promesse divine et confiance remplie d’amour pour Celui qui est le seul Roi et le seul Seigneur."
  },
  {
    "Quel est le rôle de la prière dans la mission des Prophètes?": "Les Prophètes puisent dans la prière lumière et force pour exhorter le peuple à la foi et à la conversion du cœur. Ils entrent dans une grande intimité avec Dieu et ils intercèdent pour leurs frères, auxquels ils annoncent ce qu’ils ont vu et entendu de la part du Seigneur. Élie est le père des Prophètes, c’est-à-dire de ceux qui cherchent le Visage de Dieu. Sur le Mont Carmel, il obtient le retour du peuple à la foi, grâce à l’intervention de Dieu qu’il supplie ainsi : « Réponds-moi, Seigneur, réponds-moi » (1 R 18,37)."
  },  {
    "Quelle est l’importance des Psaumes dans la prière?": "Les Psaumes sont le sommet de la prière dans l’Ancien Testament : la parole de Dieu y devient prière de l’homme. Tout à la fois personnelle et communautaire, cette prière, inspirée par l’Esprit Saint, chante les merveilles de Dieu dans la création et dans l’histoire du salut. Le Christ a prié les Psaumes et les a portés à leur accomplissement. C’est pourquoi ils demeurent un élément essentiel et permanent de la prière de l’Église, adapté aux hommes de toute condition et de tous les temps."
  },
  {
    "De qui Jésus a-t-il appris à prier?": "Selon son cœur d’homme, Jésus a appris à prier de sa mère et de la tradition juive. Mais sa prière jaillit d’une source plus secrète, parce qu’il est le Fils éternel de Dieu qui, dans sa sainte humanité, adresse à son Père la prière filiale parfaite."
  },
  {
    "Quand Jésus priait-il?": "L’Évangile montre souvent Jésus en prière. Nous le voyons retiré dans la solitude, même la nuit. Il prie avant les moments décisifs de sa mission ou de celle des Apôtres. De fait, toute sa vie est prière, parce qu’il est en constante communion d’amour avec son Père."
  },
  {
    "Comment Jésus a-t-il prié durant sa passion?": "Pendant l’agonie au Jardin de Gethsémani, ainsi que par les dernières paroles sur la Croix, la prière de Jésus révèle la profondeur de sa prière filiale. Jésus porte à son achèvement le dessein d’amour du Père et prend sur lui toutes les angoisses de l’humanité, toutes les demandes et les intercessions de l’histoire du salut. Il les présente au Père qui les accueille et les exauce au-delà de toute espérance, en le ressuscitant des morts."
  },
  {
    "Comment Jésus nous enseigne-t-il à prier?": "Jésus nous enseigne à prier non seulement avec la prière du Notre Père, mais aussi quand il est en prière. De cette manière, en plus du contenu de la prière, il nous enseigne les dispositions requises pour une prière vraie : la pureté du cœur qui cherche le Royaume et qui pardonne à ses ennemis, la confiance audacieuse et filiale qui va au-delà de ce que nous ressentons et comprenons, la vigilance qui protège le disciple de la tentation. C’est la prière au Nom de Jésus, notre Médiateur auprès du Père."
  },
  {
    "Pourquoi notre prière est-elle efficace?": "Notre prière est efficace parce qu’elle est unie dans la foi à celle de Jésus. En lui, la prière chrétienne devient communion d’amour avec le Père. Nous pouvons alors présenter nos demandes à Dieu et être exaucés : « Demandez et vous recevrez, et votre joie sera parfaite » (Jn 16,24)."
  },  {
    "Comment priait la Vierge Marie?": "La prière de Marie se caractérise par sa foi et par l’offrande généreuse de tout son être à Dieu. La Mère de Jésus est aussi la Nouvelle Ève, la «Mère des vivants ». Elle prie Jésus, son Fils, pour les besoins des hommes."
  },
  {
    "Y a-t-il une prière de Marie dans l’Évangile?": "Hormis l’intercession de Marie à Cana en Galilée, l’Évangile nous mentionne le Magnificat (Lc 1,46-55), qui est le cantique de la Mère de Dieu et celui de l’Église; c’est le remerciement joyeux qui jaillit du cœur des pauvres parce que leur espérance est réalisée par l’accomplissement des promesses divines."
  },
  {
    "Comment priait la première communauté chrétienne de Jérusalem?": "Au début des Actes des Apôtres, il est écrit que, dans la première communauté de Jérusalem, formée par l’Esprit Saint à la vie de prière, les croyants « étaient assidus à l’enseignement des Apôtres, à la communion fraternelle, à la fraction du pain et aux prières » (Ac 2,42)."
  },
  {
    "Comment l’Esprit Saint intervient-il dans la prière de l’Église?": "Le Saint-Esprit, Maître intérieur de la prière chrétienne, forme l’Église à la vie de prière et il la fait entrer toujours plus profondément dans la contemplation et dans l’union avec l’insondable mystère du Christ. Les formes de prière, telles que les révèlent les Écrits apostoliques et canoniques, resteront normatives pour la prière chrétienne."
  },
  {
    "Quelles sont les formes essentielles de la prière chrétienne?": "Ce sont la bénédiction et l’adoration, la prière de demande et d’intercession, l’action de grâce et la louange. L’Eucharistie contient et exprime toutes les formes de prière."
  },
  {
    "Qu’est-ce que la bénédiction?": "La bénédiction est la réponse de l’homme aux dons de Dieu. Nous bénissons le Tout-Puissant qui nous a bénis le premier et qui nous comble de ses dons."
  },
  {
    "Comment définir l’adoration?": "L’adoration est le prosternement de l’homme, qui se reconnaît créature devant son Créateur trois fois saint."
  },
  {
    "Quelles sont les diverses formes de la prière de demande?": "Il peut s’agir d’une demande de pardon ou encore d’une demande humble et confiante pour tous nos besoins, tant spirituels que matériels. Mais la première réalité à désirer, c’est la venue du Royaume."
  }, {
    "En quoi consiste l’intercession?": "L’intercession consiste à demander en faveur d’un autre. Elle nous conforme et nous unit à la prière de Jésus, qui intercède auprès du Père pour tous les hommes, en particulier pour les pécheurs. L’intercession doit s’étendre même à nos ennemis."
  },
  {
    "Quand rend-on à Dieu l’action de grâce?": "L’Église rend sans cesse grâce à Dieu, surtout en célébrant l’Eucharistie dans laquelle le Christ la fait participer à son action de grâce au Père. Pour le chrétien, tout événement devient matière à action de grâce."
  },
  {
    "Qu’est-ce que la prière de louange?": "La louange est la forme de prière qui reconnaît le plus immédiatement que Dieu est Dieu. Elle est totalement désintéressée : elle chante Dieu pour lui-même et lui rend gloire parce qu’il est."
  }, 
 {
    "Quelle est l’importance de la Tradition en relation avec la prière?": "Dans l’Église, c’est à travers la Tradition vivante que l’Esprit Saint apprend à prier aux enfants de Dieu. En effet, la prière ne se réduit pas au jaillissement spontané d’une impulsion intérieure, mais elle implique la contemplation, l’étude et la pénétration profonde des réalités spirituelles dont on fait l’expérience."
  },
  {
    "Quelles sont les sources de la prière chrétienne?": "Ce sont : la Parole de Dieu, qui nous donne la « sublime science » du Christ (Ph 3,8); la Liturgie de l’Église, qui annonce, actualise et communique le mystère du salut; les vertus théologales; les situations quotidiennes, parce qu’elles nous permettent de rencontrer Dieu."
  },
  {
    "Existe-t-il dans l’Église différents chemins de prière?": "Dans l’Église, il existe divers chemins de prière, liés aux différents contextes d’ordre historique, social et culturel. Il appartient au Magistère de discerner leur fidélité à la tradition de la foi apostolique, et aux pasteurs et aux catéchètes d’en expliquer le sens, qui est toujours en relation avec Jésus Christ."
  },
  {
    "Quel est le chemin de notre prière?": "Le chemin de notre prière est le Christ, car elle s’adresse à Dieu notre Père, mais ne parvient jusqu’à lui que si, au moins de façon implicite, nous prions au Nom de Jésus. Son humanité est en effet la seule voie par laquelle l’Esprit Saint nous enseigne à prier le Notre Père. C’est pourquoi les prières liturgiques s’achèvent par la formule « Par Jésus, le Christ, notre Seigneur »."
  },
  {
    "Quel est le rôle de l’Esprit Saint dans la prière?": "Parce que le Saint-Esprit est le Maître intérieur de la prière chrétienne et que « nous ne savons pas ce que nous devons demander » (Rm 8,26), l’Église nous exhorte à l’invoquer et à l’implorer en toute occasion : « Viens Esprit Saint! »"
  },
  {
    "En quoi la prière chrétienne est-elle mariale?": "En raison de la coopération singulière de Marie à l’action de l’Esprit Saint, l’Église aime la prier et prier avec elle, l’Orante parfaite, pour magnifier et invoquer le Seigneur avec elle. En effet, Marie nous « montre le chemin », qui est son Fils, l’unique Médiateur."
  },
  {
    "Comment l’Église prie-t-elle Marie?": "Avant tout avec l’Ave Maria (Je vous salue, Marie), prière par laquelle l’Église demande l’intercession de la Vierge. Parmi les autres prières mariales, il y a le Rosaire, l’hymne acathiste, la Paraclèse, les hymnes et les cantiques des diverses traditions chrétiennes."
  },
  {
    "Comment les saints sont-ils des guides pour la prière?": "Les saints sont nos modèles de prière et nous leur demandons aussi d’intercéder pour nous et pour le monde entier auprès de la Sainte Trinité. Leur intercession est leur plus haut service du dessein de Dieu. Tout au long de l’histoire de l’Église, se sont développés, dans la communion des saints, différents types de spiritualité, qui apprennent à vivre et à pratiquer la prière."
  },
  {
    "Qui peut éduquer à la prière?": "La famille chrétienne est le premier foyer de l’éducation à la prière. La prière quotidienne en famille est particulièrement recommandée, parce qu’elle est le premier témoignage de la vie de prière de l’Église. La catéchèse, les groupes de prière, la « direction spirituelle », constituent une école et une aide à la prière."
  },
  {
    "Quels sont les lieux favorables à la prière?": "On peut prier n’importe où, mais le choix d’un lieu approprié n’est pas indifférent pour la prière. L’église est le lieu propre de la prière liturgique et de l’adoration eucharistique. D’autres lieux peuvent aussi aider à prier, comme un « coin de prière » à la maison, un monastère, un sanctuaire."
  }, {
    "Quels sont les moments les plus indiqués pour la prière?": "Tous les moments sont favorables à la prière. Mais l’Église propose aux fidèles des rythmes destinés à nourrir la prière continuelle : prières du matin et du soir, avant et après les repas, liturgie des Heures, Eucharistie dominicale, chapelet, fêtes de l’année liturgique."
  },
  {
    "Quelles sont les expressions de la vie de prière?": "La tradition chrétienne a conservé trois expressions majeures pour exprimer et vivre la prière : la prière vocale, la méditation et la prière contemplative. Leur trait commun est le recueillement du cœur."
  },
  {
    "Comment se caractérise la prière vocale?": "La prière vocale associe le corps à la prière intérieure du cœur. Même la plus intérieure des prières ne saurait négliger la prière vocale. Dans tous les cas, elle doit toujours provenir d’une foi personnelle. Avec le Notre Père, Jésus nous a enseigné une formule parfaite de la prière vocale."
  },
  {
    "Qu’est-ce que la méditation?": "La méditation est une réflexion priante, qui part surtout de la Parole de Dieu dans la Bible. Elle met en œuvre l’intelligence, l’imagination, l’émotion, le désir, dans le but d’approfondir sa foi, de convertir son cœur et d’affermir sa volonté de suivre le Christ. Elle est une étape préliminaire vers l’union d’amour avec le Seigneur."
  },
  {
    "Qu’est-ce que la prière contemplative?": "La prière contemplative est un simple regard sur Dieu, dans le silence et dans l’amour. Elle est un don de Dieu, un moment de foi pure durant lequel celui qui prie cherche le Christ, s’en remet à la volonté d’amour du Père et se recueille sous l’action de l’Esprit Saint. Sainte Thérèse d’Avila la définit comme « un commerce intime d’amitié, où l’on s’entretient souvent seul à seul avec ce Dieu dont on se sait aimé »."
  },
  {
    "Pourquoi la prière est-elle un combat?": "La prière est un don de la grâce, mais elle suppose toujours une réponse décidée de notre part parce que celui qui prie combat contre lui-même, contre la mentalité environnante et surtout contre le Tentateur, qui fait tout pour détourner de la prière. Le combat de la prière est inséparable du progrès de la vie spirituelle. On prie comme on vit, parce que l’on vit comme on prie."
  },
  {
    "Y a-t-il des objections à la prière?": "En plus des conceptions erronées, beaucoup pensent qu’ils n’ont pas le temps de prier ou qu’il est inutile de prier. Ceux qui prient peuvent se décourager face aux difficultés et aux insuccès apparents. Pour vaincre ces obstacles, sont nécessaires l’humilité, la confiance et la persévérance."
  },
  {
    "Quelles sont les difficultés de la prière?": "La distraction est la difficulté habituelle de notre prière. Elle détache de l’attention à Dieu et elle peut aussi révéler ce à quoi nous sommes attachés. Notre cœur doit alors se tourner humblement vers le Seigneur. La prière est souvent envahie par la sécheresse, dont le dépassement permet, dans la foi, d’adhérer au Seigneur, même sans consolation sensible. L’acédie est une forme de paresse spirituelle due au relâchement de la vigilance et à la négligence du cœur."
  },
  {
    "Comment fortifier notre confiance filiale?": "La confiance filiale est éprouvée quand nous avons le sentiment de n’être pas toujours exaucés. Nous devons alors nous demander si Dieu est pour nous un Père dont nous cherchons à faire la volonté, ou s’il est un moyen pour obtenir ce que nous voulons. Si notre prière s’unit à celle de Jésus, nous savons qu’il nous accorde bien davantage que tel ou tel don : nous recevons l’Esprit Saint qui change notre cœur."
  },
  {
    "Est-il possible de prier à tout moment?": "Prier est toujours possible, parce que le temps du chrétien est le temps du Christ ressuscité, qui est « avec nous tous les jours » (Mt 28,20). Prière et vie chrétienne sont donc inséparables."
  },
  {
    "Qu’est la prière de l’Heure de Jésus?": "On désigne ainsi la prière sacerdotale de Jésus au cours de la dernière Cène. Jésus, Grand-Prêtre de la Nouvelle Alliance, se tourne vers son Père quand vient l’Heure de son « passage » à Lui, l’Heure de son sacrifice."
  }, 
{
    "Quelle est l’origine du Notre Père?": "Jésus nous a enseigné cette prière chrétienne irremplaçable, le Notre Père, un jour où un disciple, le voyant prier, lui demanda : « Apprends-nous à prier » (Lc 11,1). La tradition liturgique a toujours utilisé le texte de Matthieu (6,9-13)."
  },
  {
    "Quelle est la place du Notre Père dans les Écritures?": "Le Notre Père est le « résumé de tout l’Évangile » (Tertullien), « la plus parfaite des prières » (saint Thomas d’Aquin). Placé au centre du Sermon sur la Montagne (Mt 5-7), il reprend sous forme de prière le contenu essentiel de l’Évangile."
  },
  {
    "Pourquoi est-il appelé « la prière du Seigneur »?": "Le Notre Père est appelé « Oraison dominicale », c’est-à-dire « la prière du Seigneur », parce qu’il a été enseigné par le Seigneur lui-même."
  },
  {
    "Quelle place tient le Notre Père dans la prière de l’Église?": "Prière par excellence de l’Église, le Notre Père est « remis » au Baptême et à la Confirmation pour manifester la nouvelle naissance à la vie divine des fils de Dieu. L’Eucharistie en révèle le sens plénier, puisque ses demandes, s’appuyant sur le mystère du salut déjà réalisé, seront pleinement exaucées lors de la venue du Seigneur. Le Notre Père fait partie intégrante de la liturgie des Heures."
  },  {
    "Pourquoi pouvons-nous « oser nous approcher en toute confiance » de notre Père?": "Parce que Jésus, notre Rédempteur, nous introduit devant la Face du Père, et que son Esprit fait de nous des fils. Ainsi, nous pouvons prier le Notre Père avec une confiance simple et filiale, avec une joyeuse assurance et une humble audace, dans la certitude d’être aimés et exaucés."
  },
  {
    "Comment est-il possible d’invoquer Dieu comme « Père »?": "Nous pouvons invoquer le « Père » parce que le Fils de Dieu fait homme nous l’a révélé et que son Esprit nous le fait connaître. L’invocation du Père nous fait entrer dans son mystère, avec un émerveillement toujours nouveau, et elle suscite en nous le désir de nous conduire de manière filiale. Avec la prière du Seigneur, nous prenons donc conscience d’être nous-mêmes des fils du Père, dans le Fils."
  },
  {
    "Pourquoi disons-nous « Notre » Père?": "« Notre » exprime une relation complètement nouvelle avec Dieu. Quand nous prions le Père, nous l’adorons et nous le glorifions avec le Fils et l’Esprit. Dans le Christ, nous sommes « son » peuple, et lui, il est « notre » Dieu, dès maintenant et pour l’éternité. En effet, nous disons « notre » Père parce que l’Église du Christ est la communion d’une multitude de frères, qui ne font qu’« un seul cœur et une seule âme » (Ac 4,32)."
  },
  {
    "Avec quel esprit de communion et de mission prions-nous « notre » Père?": "Étant donné que prier « notre » Père est le bien commun des baptisés, ces derniers ressentent l’urgent appel à prendre part à la prière de Jésus pour l’unité de ses disciples. Prier le « Notre Père », c’est prier avec et pour tous les hommes, afin qu’ils connaissent le seul et vrai Dieu, et qu’ils soient rassemblés dans l’unité."
  },
  {
    "Que signifie l’expression « qui es aux cieux »?": "Cette expression biblique ne désigne pas un lieu, mais une manière d’être : Dieu est au-delà et au-dessus de tout. Elle désigne la majesté, la sainteté de Dieu, et aussi sa présence dans le cœur des justes. Le Ciel, ou la Maison du Père, constitue la vraie patrie vers laquelle nous tendons dans l’espérance, alors que nous sommes encore sur la terre. Nous vivons déjà en elle, « cachés en Dieu avec le Christ » (Col 3,3)."
  },  {
    "Comment se compose la prière du Seigneur?": "Elle contient sept demandes à Dieu le Père. Les trois premières, plus théologales, nous tournent vers lui, pour sa gloire : c’est le propre de l’amour de penser avant tout à celui qui nous aime. Elles indiquent ce que nous avons tout particulièrement à demander : la sanctification du Saint Nom, la venue du Royaume, l’accomplissement de Sa volonté. Les quatre dernières demandes présentent au Père de miséricorde nos misères et nos attentes. Elles lui demandent notre nourriture, le pardon, le secours dans les tentations et la délivrance du Malin."
  },
  {
    "Que signifie : « Que ton Nom soit sanctifié »?": "Sanctifier le Nom de Dieu, c’est avant tout une louange qui reconnaît Dieu comme Saint. Dieu a en effet révélé son Nom à Moïse et il a voulu que son peuple lui soit consacré comme une nation sainte chez qui il habite."
  },
  {
    "Comment le Nom de Dieu est-il sanctifié en nous et dans le monde?": "Sanctifier le Nom de Dieu qui nous appelle « à la sanctification » (1 Th 4,7), c’est désirer que la consécration baptismale vivifie toute notre vie. C’est aussi demander que, par notre vie et notre prière, le Nom de Dieu soit connu et béni par tout homme."
  },
  {
    "Que demande l’Église lorsqu’elle prie en disant : « Que ton Règne vienne »?": "L’Église implore la venue finale du Royaume de Dieu par le retour du Christ dans sa gloire. Mais l’Église prie aussi pour que le Règne de Dieu grandisse dès aujourd’hui par la sanctification des hommes dans l’Esprit et grâce à leurs efforts au service de la justice et de la paix, selon les Béatitudes. Cette demande est le cri de l’Esprit et de l’Épouse : « Viens Seigneur Jésus » (Ap 22,20)."
  },
  {
    "Pourquoi demander : « Que ta volonté soit faite sur la terre comme au ciel »?": "La volonté de notre Père est que « tous les hommes soient sauvés » (1 Tm 2,3). C’est pourquoi Jésus est venu pour accomplir parfaitement la volonté salvifique du Père. Nous prions Dieu le Père d’unir notre volonté à celle de son Fils, à l’exemple de la Vierge Très Sainte et des Saints. Nous demandons que son dessein d’amour bienveillant se réalise pleinement sur la terre comme c’est déjà le cas au ciel. C’est par la prière que nous pouvons « discerner la volonté de Dieu » (Rm 12,2) et obtenir la « constance pour l’accomplir » (He 10,36)."
  },  {
    "Quel est le sens de la demande : « Donne-nous aujourd’hui notre pain de ce jour »?": "En demandant à Dieu, avec l’abandon confiant des fils, la nourriture de tous les jours nécessaire à tous pour leur subsistance, nous reconnaissons combien Dieu notre Père est bon au-delà de toute bonté. Nous demandons aussi la grâce de savoir agir pour que la justice et le partage permettent à ceux qui possèdent en abondance de venir en aide aux besoins des autres."
  },
  {
    "Quel est le sens spécifique de cette demande pour le chrétien?": "Puisque « l’homme ne vit pas seulement de pain, mais de toute Parole qui sort de la bouche de Dieu » (Mt 4,4), cette demande concerne également la faim de la Parole de Dieu et du Corps du Christ reçu dans l’Eucharistie, ainsi que la faim de l’Esprit Saint. Nous demandons cela avec une confiance absolue, pour aujourd’hui, l’aujourd’hui de Dieu, et cela nous est donné surtout dans l’Eucharistie, avant-goût du banquet du Royaume qui vient."
  },
  {
    "Pourquoi disons-nous : « Pardonne-nous nos offenses comme nous pardonnons aussi à ceux qui nous ont offensés »?": "En demandant à Dieu notre Père de nous pardonner, nous nous reconnaissons pécheurs devant lui. Mais nous confessons en même temps sa miséricorde parce que, en son Fils et par les sacrements, « nous recevons la rédemption et la rémission de nos péchés » (Col 1,14). Notre demande ne sera cependant exaucée qu’à condition que, de notre côté, nous ayons d’abord pardonné."
  },  {
    "Comment le pardon est-il possible?": "La miséricorde ne pénètre notre cœur que si nous savons, nous aussi, pardonner, même à nos ennemis. Désormais, même si, pour l’homme, il semble impossible de satisfaire à cette exigence, le cœur qui s’offre à l’Esprit Saint peut, comme le Christ, aimer jusqu’à l’extrême de l’amour, transformer la blessure en compassion, et l’offense en intercession. Le pardon participe de la miséricorde de Dieu et est un des sommets de la prière chrétienne."
  },
  {
    "Que veut dire : « Ne nous soumets pas à la tentation »?": "Nous demandons à Dieu notre Père de ne pas nous laisser seuls au pouvoir de la tentation. Nous demandons à l’Esprit de savoir discerner d’une part entre l’épreuve qui nous fait grandir dans le bien et la tentation qui mène au péché et à la mort, et, d’autre part, entre être tenté et consentir à la tentation. Cette demande nous unit à Jésus qui a vaincu la tentation par sa prière. Elle sollicite la grâce de la vigilance et de la persévérance finale."
  },
  {
    "Pourquoi finissons-nous en demandant : « Délivre-nous du Mal »?": "Le Mal désigne la personne de Satan, qui s’oppose à Dieu et qui est « le séducteur de toute la terre » (Ap 12,9). La victoire sur le diable a déjà été acquise par le Christ. Mais nous prions afin que la famille humaine soit libérée de Satan et de ses œuvres. Nous demandons aussi le don précieux de la paix et la grâce d’attendre avec persévérance la venue du Christ, qui nous libérera définitivement du Malin."
  },
  {
    "Que signifie l’Amen de la fin?": "« Puis, la prière achevée, tu dis Amen, contresignant par cet Amen, qui signifie “Que cela se fasse”, ce que contient la prière que Dieu nous a enseignée » (saint Cyrille de Jérusalem)."
  }
     ],
    "La Morale": [
       {
    "Quelle est le fondement de la dignité de l’homme?": "La dignité de la personne humaine s’enracine dans sa création à l’image et à la ressemblance de Dieu. Dotée d’une âme spirituelle et immortelle, d’intelligence et de volonté libre, la personne humaine est ordonnée à Dieu et appelée, en son âme et en son corps, à la béatitude éternelle."
  },
  {
    "Comment l’homme parvient-il à la béatitude?": "L’homme parvient à la béatitude en raison de la grâce du Christ, qui le rend participant de sa vie divine. Dans l’Évangile, le Christ montre aux siens la route qui conduit au bonheur sans fin : les Béatitudes. La grâce du Christ agit aussi en tout homme qui, suivant sa conscience droite, recherche et aime le vrai et le bien, et évite le mal."
  },
  {
    "Les Béatitudes sont-elles importantes pour nous?": "Les Béatitudes sont au centre de la prédication de Jésus; elles reprennent et portent à leur perfection les promesses de Dieu, faites depuis Abraham. Elles expriment le visage même de Jésus, elles caractérisent l’authentique vie chrétienne et elles révèlent à l’homme la fin ultime de sa conduite : la béatitude éternelle."
  },
  {
    "Quel est, pour l’homme, le rapport entre les Béatitudes et le désir de bonheur?": "Les Béatitudes répondent au désir inné de bonheur que Dieu a déposé dans le cœur de l’homme pour l’attirer à lui et que lui seul peut combler."
  },
  {
    "Qu’est-ce que la béatitude éternelle?": "Elle est la vision de Dieu dans la vie éternelle, où nous serons pleinement « participants de la nature divine » (2 P 1,4), de la gloire du Christ et de la jouissance de la vie trinitaire. La béatitude dépasse les capacités humaines. Elle est un don surnaturel et gratuit de Dieu, comme la grâce qui y conduit. La béatitude promise nous place devant des choix moraux décisifs concernant les biens terrestres, nous incitant à aimer Dieu par-dessus tout."
  },
  {
    "Qu’est-ce que la liberté?": "C’est le pouvoir donné par Dieu à l’homme d’agir ou de ne pas agir, de faire ceci ou cela, de poser ainsi soi-même des actions délibérées. La liberté caractérise les actes proprement humains. Plus on fait le bien, et plus on devient libre. La liberté tend à sa perfection quand elle est ordonnée à Dieu, notre bien suprême et notre béatitude. La liberté implique aussi la possibilité de choisir entre le bien et le mal. Le choix du mal est un abus de notre liberté, qui conduit à l’esclavage du péché."
  },
  {
    "Quel rapport existe-t-il entre liberté et responsabilité?": "La liberté rend l’homme responsable de ses actes dans la mesure où ils sont volontaires, même si l’imputabilité et la responsabilité d’une action peuvent être diminuées et parfois supprimées, en raison de l’ignorance, de l’inadvertance, de la violence subie, de la crainte, des affections immodérées, des habitudes."
  },  {
    "Pourquoi tout homme a-t-il le droit d’exercer sa liberté?": "À tout homme appartient le droit d’exercer sa liberté, car celle-ci est inséparable de sa dignité de personne humaine. Un tel droit doit donc toujours être respecté, notamment en matière morale et religieuse. Il doit être civilement reconnu et protégé, dans les limites du bien commun et de l’ordre public juste."
  },
  {
    "Quelle place tient la liberté humaine dans l’ordre du salut?": "Notre liberté est fragile à cause du premier péché. Cette fragilité devient plus aiguë avec les péchés ultérieurs. Mais le Christ « nous a libérés, pour que nous soyons vraiment libres » (Ga 5,1). Par sa grâce, l’Esprit Saint nous conduit à la liberté spirituelle, pour faire de nous ses libres collaborateurs, dans l’Église et dans le monde."
  },
  {
    "Quelles sont les sources de la moralité des actes humains?": "La moralité des actes humains dépend de trois sources : l’objet choisi, c’est-à-dire un bien véritable ou apparent, l’intention du sujet qui agit, c’est-à-dire la fin qui motive l’acte, les circonstances de l’acte, y compris les conséquences."
  },
  {
    "Quand l’acte est-il moralement bon?": "L’acte est moralement bon quand il y a en même temps la bonté de l’objet, de la fin et des circonstances. L’objet du choix peut à lui seul vicier toute une action, même si l’intention est bonne. Il n’est pas permis de faire le mal pour qu’en résulte un bien. Une fin mauvaise peut corrompre l’acte, même si son objet en soi est bon. À l’inverse, une fin bonne ne rend pas bonne une conduite qui est mauvaise en raison de son objet, car la fin ne justifie pas les moyens. Les circonstances peuvent atténuer ou augmenter la responsabilité de l’auteur, mais elles ne peuvent modifier la qualité morale des actes eux-mêmes. Elles ne rendent jamais bonne une action mauvaise en soi."
  },
  {
    "Y a-t-il des actes toujours illicites?": "Il y a des actes dont le choix est toujours illicite en raison de leur objet (par exemple le blasphème, l’homicide, l’adultère). Leur choix comporte un désordre de la volonté, à savoir un mal moral qui ne peut être justifié par la considération des biens qui pourraient éventuellement en résulter."
  },  {
    "Que sont les passions?": "Les passions sont les affections, les émotions ou les mouvements de la sensibilité – composantes naturelles du psychisme humain –, qui poussent à agir ou à ne pas agir en vue de ce qui est ressenti comme bon ou comme mauvais. Les principales passions sont l’amour et la haine, le désir et la crainte, la joie, la tristesse, la colère. La passion primordiale est l’amour, provoqué par l’attirance du bien. On n’aime que le bien, réel ou apparent."
  },
  {
    "Les passions sont-elles moralement bonnes ou mauvaises?": "Parce qu’elles sont des mouvements de la sensibilité, les passions ne sont, en elles-mêmes, ni bonnes, ni mauvaises. Elles sont bonnes lorsqu’elles contribuent à une action bonne, et mauvaises dans le cas contraire. Elles peuvent être assumées dans les vertus ou perverties dans les vices."
  },
  {
    "Qu’est-ce que la conscience morale?": "Présente au plus intime de la personne, la conscience morale est un jugement de la raison qui, au moment opportun, enjoint à l’homme d’accomplir le bien et d’éviter le mal. Grâce à elle, la personne humaine perçoit la qualité morale d’un acte à accomplir ou déjà accompli, permettant d’en assumer la responsabilité. Quand il écoute sa conscience morale, l’homme prudent peut entendre la voix de Dieu qui lui parle."
  },
  {
    "Qu’implique la dignité de la personne en ce qui concerne la conscience morale?": "La dignité de la personne humaine implique la rectitude de la conscience morale, c’est-à-dire qu’elle soit en accord avec ce qui est juste et bon au regard de la raison et de la Loi divine. Au titre de cette dignité personnelle, l’homme ne doit pas être contraint d’agir contre sa conscience, et on ne doit même pas l’empêcher, dans les limites du bien commun, d’agir en conformité avec sa conscience, surtout en matière religieuse."
  },
  {
    "Comment se forme la conscience morale pour qu’elle soit droite et véridique?": "La conscience morale droite et véridique se forme par l’éducation, l’intégration de la Parole de Dieu et de l’enseignement de l’Église. Elle est soutenue par les dons du Saint-Esprit et aidée par les conseils de personnes sages. En outre, la prière et l’examen de conscience contribuent beaucoup à la formation morale."
  },
  {
    "Quelles normes la conscience doit-elle toujours suivre?": "Les trois règles principales sont : 1) Il n’est jamais permis de faire le mal pour qu’il en résulte un bien; 2) La Règle d’or : « Tout ce que vous voudriez que les autres fassent pour vous, faites-le vous-mêmes pour eux, vous aussi » (Mt 7,12); 3) La charité passe toujours par le respect du prochain et de sa conscience, même si cela ne signifie pas accepter comme un bien ce qui est objectivement un mal."
  },  {
    "La conscience morale peut-elle porter des jugements erronés?": "La personne doit toujours obéir au jugement certain de sa conscience; mais elle peut émettre aussi des jugements erronés, pour des raisons qui ne sont pas toujours exemptes de culpabilité personnelle. On ne peut cependant imputer à la personne le mal accompli par ignorance involontaire, même s’il reste objectivement un mal. C’est pourquoi il est nécessaire de tout mettre en œuvre pour corriger la conscience morale de ses erreurs."
  },
  {
    "Qu’est-ce que la vertu?": "La vertu est une disposition habituelle et ferme à faire le bien. « Le but d’une vie vertueuse consiste à devenir semblable à Dieu » (saint Grégoire de Nysse). Il existe des vertus humaines et des vertus théologales."
  },
  {
    "Qu’est-ce que les vertus humaines?": "Les vertus humaines sont des dispositions habituelles et stables de l’intelligence et de la volonté, qui règlent nos actes, ordonnent nos passions et guident notre conduite selon la raison et la foi. Acquises et renforcées par les actes moralement bons et répétés, elles sont purifiées et élevées par la grâce divine."
  },
  {
    "Quelles sont les principales vertus humaines?": "Ce sont les vertus appelées cardinales. Toutes les autres se regroupent autour d’elles et elles constituent les fondements de la vie vertueuse. Ce sont : la prudence, la justice, la force et la tempérance."
  },
  {
    "Qu’est-ce que la prudence?": "La prudence dispose la raison à discerner en toute circonstance notre véritable bien et à choisir les moyens appropriés pour l’atteindre. Elle guide les autres vertus, en leur indiquant leur règle et leur mesure."
  },
  {
    "Qu’est-ce que la justice?": "La justice consiste dans la volonté constante et ferme de donner à autrui ce qui lui est dû. La justice envers Dieu est appelée « vertu de religion »."
  },
  {
    "Qu’est-ce que la force?": "La force assure la fermeté dans les difficultés et la constance dans la recherche du bien; elle peut aller jusqu’à la capacité de faire éventuellement le sacrifice de sa vie pour défendre une juste cause."
  },  {
    "Qu’est-ce que la tempérance?": "La tempérance modère l’attrait des plaisirs, assure la maîtrise de la volonté sur les instincts et rend capable d’équilibre dans l’usage des biens créés."
  },
  {
    "Qu’est-ce que les vertus théologales?": "Ce sont les vertus qui ont Dieu lui-même pour origine, pour motif et pour objet immédiat. Infuses en l’homme avec la grâce sanctifiante, elles rendent capables de vivre en relation avec la Trinité; elles fondent et animent l’agir moral du chrétien, en vivifiant les vertus humaines. Elles sont le gage de la présence et de l’action de l’Esprit Saint dans les facultés humaines."
  },
  {
    "Quelles sont les vertus théologales?": "Ce sont la foi, l’espérance et la charité."
  },
  {
    "Qu’est-ce que la foi?": "La foi est la vertu théologale par laquelle nous croyons en Dieu et à tout ce qu’il nous a révélé, et que l’Église nous propose de croire, parce que Dieu est la vérité même. Par la foi, l’homme s’en remet librement à Dieu. C’est pourquoi le croyant cherche à connaître et à faire sa volonté, car la foi « agit par la charité » (Ga 5,6)."
  },
  {
    "Qu’est-ce que l’espérance?": "L’espérance est la vertu théologale par laquelle nous désirons et attendons de Dieu la vie éternelle comme notre bonheur, mettant notre confiance dans les promesses du Christ et comptant sur l’appui de la grâce du Saint-Esprit pour mériter la vie éternelle et pour persévérer jusqu’à la fin de notre vie sur la terre."
  },
  {
    "Qu’est-ce que la charité?": "La charité est la vertu théologale par laquelle nous aimons Dieu par-dessus tout et notre prochain comme nous-mêmes, par amour de Dieu. Jésus en a fait le commandement nouveau, la plénitude de la Loi. Elle est le « lien de la perfection » (Col 3,14), le fondement des autres vertus, qu’elle anime, inspire et ordonne. Sans elle, « je ne suis rien et… rien ne me sert » (1 Co 13,1-3)."
  }, {
    "Qu’est-ce que les dons du Saint-Esprit?": "Les dons du Saint-Esprit sont des dispositions permanentes qui rendent l’homme docile à suivre les inspirations divines. Ils sont au nombre de sept : la sagesse, l’intelligence, le conseil, la force, la science, la piété et la crainte de Dieu."
  },
  {
    "Qu’est-ce que les fruits de l’Esprit Saint?": "Les fruits de l’Esprit Saint sont des perfections formées en nous comme des prémices de la gloire éternelle. La tradition de l’Église en donne douze : « la charité, la joie, la paix, la patience, la longanimité, la bonté, la bénignité, la mansuétude, la fidélité, la modestie, la continence, la chasteté » (Ga 5,22-23 vulg.)."
  },
  {
    "Qu’implique pour nous l’accueil de la miséricorde de Dieu?": "Elle implique la reconnaissance de nos fautes et le repentir de nos péchés. Dieu lui-même, par sa Parole et son Esprit, éclaire nos péchés, nous assure la vérité de notre conscience et l’espérance du pardon."
  },
  {
    "Qu’est-ce que le péché?": "Le péché est « une parole, un acte ou un désir contraires à la Loi éternelle » (saint Augustin). Il est une offense à Dieu, par désobéissance à son amour. Il blesse la nature de l’homme et porte atteinte à la solidarité humaine. Le Christ, dans sa Passion, éclaire pleinement la gravité du péché et il le vainc par sa miséricorde."
  },
  {
    "Y a-t-il plusieurs sortes de péchés?": "La variété des péchés est grande. On peut les distinguer selon leur objet, ou selon les vertus ou les commandements auxquels ils s’opposent. On peut les ranger aussi selon qu’ils concernent directement Dieu, le prochain ou nous-mêmes. En outre, on peut distinguer les péchés en pensée, en paroles, par action ou par omission."
  },
  {
    "Comment se distinguent les péchés en fonction de leur gravité?": "On distingue le péché mortel et le péché véniel."
  } , {
    "Quand commet-on le péché mortel?": "On commet le péché mortel quand il y a à la fois matière grave, pleine conscience et propos délibéré. Le péché mortel détruit en nous la charité, nous prive de la grâce sanctifiante et conduit à la mort éternelle de l’enfer s’il n’y a pas de repentir. Il est pardonné ordinairement par les sacrements du Baptême, de la Pénitence ou Réconciliation."
  },
  {
    "Quand commet-on le péché véniel?": "Le péché véniel, qui est radicalement différent du péché mortel, est commis quand sa matière est légère, ou même si elle est grave mais sans qu’il y ait pleine conscience ou total consentement. Il ne rompt pas l’alliance avec Dieu, mais il affaiblit la charité. Il traduit un attrait désordonné pour les biens créés. Il empêche les progrès de l’âme dans l’exercice des vertus et dans la pratique du bien moral. Il mérite des peines temporelles purificatoires."
  },
  {
    "Comment le péché prolifère-t-il en nous?": "Le péché crée un entraînement au péché, et, par sa répétition, il engendre le vice."
  },
  {
    "Qu’est-ce que les vices?": "Étant contraires aux vertus, les vices sont des habitudes perverses qui obscurcissent la conscience et inclinent au mal. Ils peuvent être rattachés aux sept péchés que l’on appelle les péchés capitaux : l’orgueil, l’avarice, l’envie, la colère, la luxure, la gourmandise, la paresse ou acédie."
  },
  {
    "Avons-nous une responsabilité dans les péchés commis par autrui?": "Nous avons une responsabilité lorsqu’il y a de notre part une coopération coupable."
  },
  {
    "Qu’est-ce que les structures de péché?": "Ce sont des situations sociales ou des institutions contraires à la loi divine; elles sont la manifestation et le résultat de péchés personnels."
  },  {
    "En quoi consiste la dimension sociale de l’homme ?": "En même temps qu’il est appelé personnellement à la béatitude, l’homme a une dimension sociale, qui est une composante essentielle de sa nature et de sa vocation. Tous les hommes sont en effet appelés à la même fin, Dieu lui-même. Il existe une certaine ressemblance entre la communion des Personnes divines et la fraternité que les hommes doivent instaurer entre eux, dans la vérité et dans la charité. L’amour du prochain est inséparable de l’amour pour Dieu."
  },
  {
    "Quel est le rapport entre la personne et la société?": "Le principe, le sujet et la fin de toutes les institutions sociales sont et doivent être la personne. Certaines sociétés, telles que la famille et la cité, lui sont nécessaires. D’autres associations lui sont aussi utiles, tant à l’intérieur de la société politique que sur le plan international, dans le respect du principe de subsidiarité."
  },
  {
    "Que signifie le principe de subsidiarité?": "Ce principe signifie qu’une société d’ordre supérieur ne doit pas assumer des fonctions qui reviennent à une société d’ordre inférieur, la privant de ses compétences. Elle doit plutôt la soutenir en cas de nécessité."
  },
  {
    "Que requiert d’autre un authentique vivre ensemble humain?": "Il requiert le respect de la justice, une juste hiérarchie des valeurs, la subordination des dimensions physiques et instinctives aux dimensions intérieures et spirituelles. En particulier, là où le péché pervertit le climat social, il faut faire appel à la conversion des cœurs et à la grâce de Dieu, afin d’obtenir des changements sociaux qui soient réellement au service de toute personne et de toute la personne. La charité, qui exige la justice et rend capable de la pratiquer, est le plus grand commandement social."
  }, {
    "Quel est le fondement de l’autorité dans la société?": "Toute communauté humaine a besoin d’une autorité légitime qui assure l’ordre et contribue à la réalisation du bien commun. Cette autorité trouve son fondement dans la nature humaine, parce qu’elle correspond à l’ordre établi par Dieu."
  },
  {
    "Quand l’autorité s’exerce-t-elle de manière légitime?": "L’autorité s’exerce de manière légitime quand elle agit pour le bien commun et qu’elle utilise pour l’atteindre des moyens moralement licites. C’est pourquoi les régimes politiques doivent être déterminés par la libre décision des citoyens et ils doivent respecter le principe de l’« état de droit », dans lequel est souveraine la loi et non pas la volonté arbitraire des hommes. Les lois injustes et les mesures contraires à l’ordre moral n’obligent pas les consciences."
  },
  {
    "Qu’est-ce que le bien commun?": "Par bien commun, on entend l’ensemble des conditions de la vie sociale qui permettent aux groupes et aux personnes d’atteindre leur perfection."
  },
  {
    "Que comporte le bien commun?": "Le bien commun comporte le respect et la promotion des droits fondamentaux de la personne; le développement des biens spirituels et temporels des personnes et de la société; la paix et la sécurité de tous."
  },
  {
    "Où se réalise d’une façon plus complète le bien commun?": "La réalisation la plus complète du bien commun se trouve dans la communauté politique, qui défend et promeut le bien des citoyens et des corps intermédiaires, sans négliger le bien universel de la famille humaine."
  },
  {
    "Comment l’homme prend-il part à la réalisation du bien commun?": "Tout homme, selon la place qu’il occupe et le rôle qu’il joue, a sa part dans la promotion du bien commun : par le respect des lois justes et dans la prise en charge des domaines dont il assume la responsabilité personnelle, tels le soin de sa famille et l’engagement dans son travail. Les citoyens doivent aussi, dans la mesure du possible, prendre une part active à la vie publique."
  },  {
    "Comment la société assure-t-elle la justice sociale?": "La société assure la justice sociale quand elle respecte la dignité et les droits de la personne, qui constituent la fin propre de la société. D’autre part, la société recherche la justice sociale, qui est liée au bien commun et à l’exercice de l’autorité, quand elle accomplit les conditions qui permettent aux associations et aux individus d’obtenir ce à quoi ils ont droit."
  },
  {
    "Quel est le fondement de l’égalité entre les hommes?": "Tous les hommes jouissent d’une égale dignité et des mêmes droits fondamentaux, en tant qu’ils sont créés à l’image du Dieu unique et qu’ils sont dotés d’une âme raisonnable; ils ont même nature et même origine, et ils sont appelés, dans le Christ, unique Sauveur, à la même béatitude divine."
  },
  {
    "Comment évaluer les inégalités entre les hommes?": "Il y a des inégalités iniques sur les plans économique et social, qui frappent des millions d’êtres humains. Elles sont en contradiction ouverte avec l’Évangile et sont contraires à la justice, à la dignité des personnes, à la paix. Mais il y a aussi des différences entre les hommes, causées par divers facteurs, qui appartiennent au plan de Dieu. Il veut en effet que chacun reçoive d’autrui ce dont il a besoin et que ceux qui ont des « talents » particuliers les partagent avec les autres. Ces différences encouragent et souvent obligent les personnes à la magnanimité, à la bienveillance et au partage. Elles incitent les cultures à s’enrichir les unes les autres."
  },
  {
    "Comment s’exprime la solidarité humaine?": "La solidarité, qui découle de la fraternité humaine et chrétienne, se manifeste en premier lieu dans la juste répartition des biens, dans la rémunération équitable du travail et dans l’engagement pour un ordre social plus juste. La vertu de solidarité pratique aussi le partage des biens spirituels de la foi, encore plus importants que les biens matériels."
  },{
    "Qu’est-ce que la loi morale?": "La loi morale est l’œuvre de la Sagesse divine. Elle prescrit à l’homme les voies et les règles de conduite qui mènent à la béatitude promise et qui proscrivent les chemins qui éloignent de Dieu."
  },
  {
    "En quoi consiste la loi morale naturelle?": "La loi naturelle, inscrite par le Créateur dans le cœur de tout homme, consiste en une participation à la sagesse et à la bonté de Dieu. Elle exprime le sens moral originel, qui permet à l’homme de discerner, par la raison, le bien et le mal. Elle est universelle et immuable, et elle pose les bases des devoirs et des droits fondamentaux de la personne, ainsi que de la communauté humaine et de la loi civile elle-même."
  },
  {
    "Cette loi est-elle accessible à tous?": "À cause du péché, la loi naturelle n’est pas toujours perçue par tous avec une clarté égale et immédiate."
  },
  {
    "Quel est le rapport entre la loi naturelle et la Loi ancienne?": "La Loi ancienne est le premier état de la Loi révélée. Elle exprime de nombreuses vérités qui sont naturellement accessibles à la raison et qui se trouvent ainsi confirmées et authentifiées dans les Alliances du salut. Ses prescriptions morales, qui sont résumées dans les Dix Commandements du Décalogue, posent les fondements de la vocation de l’homme. Elles proscrivent ce qui est contraire à l’amour de Dieu et du prochain, et elles commandent ce qui leur est essentiel."
  },
  {
    "Comment se situe la Loi ancienne dans le plan du salut?": "La Loi ancienne permet de connaître bon nombre de vérités accessibles à la raison. Elle montre ce que l’on doit faire ou ne pas faire, et surtout, à la manière d’un sage pédagogue, elle prépare et dispose à la conversion et à l’accueil de l’Évangile. Cependant, tout en étant sainte, spirituelle et bonne, la Loi ancienne est encore imparfaite, car elle ne donne pas par elle-même la force et la grâce de l’Esprit pour être observée."
  },
  {
    "Qu’est-ce que la Loi nouvelle ou Loi évangélique?": "La Loi nouvelle ou Loi évangélique, proclamée et réalisée par le Christ, est la plénitude et l’accomplissement de la Loi divine, naturelle et révélée. Elle se résume dans le commandement de l’amour de Dieu et du prochain, et de l’amour des uns envers les autres comme le Christ nous a aimés. Elle est aussi une réalité intérieure à l’homme : la grâce du Saint-Esprit, qui rend possible un tel amour. Elle est « la loi de liberté » (Ga 1, 25), car elle incline à agir spontanément sous l’impulsion de la charité."
  },
  {
    "Où se trouve la Loi nouvelle?": "La Loi nouvelle se trouve dans toute la vie et la prédication du Christ, et dans la catéchèse morale des Apôtres. Le Discours sur la Montagne en est la principale expression."
  },  {
    "Qu’est-ce que la justification?": "La justification est l’œuvre la plus excellente de l’amour de Dieu. Elle est l’action miséricordieuse et gratuite de Dieu qui nous remet nos péchés et qui nous rend justes et saints dans tout notre être. Cela se réalise par la grâce de l’Esprit Saint, qui nous a été méritée par la passion du Christ et qui nous est donnée par le Baptême. La justification ouvre la voie à la libre réponse de l’homme, c’est-à-dire à la foi au Christ et à la collaboration avec la grâce de l’Esprit Saint."
  },
  {
    "Qu’est-ce que la grâce qui justifie?": "La grâce est le don gratuit que Dieu nous donne afin de nous rendre participants de sa vie trinitaire et capables d’agir par amour pour lui. Elle est appelée grâce habituelle, ou sanctifiante ou déifiante, parce qu’elle sanctifie et divinise. Elle est surnaturelle, parce qu’elle dépend entièrement de l’initiative gratuite de Dieu et qu’elle dépasse les capacités de l’intelligence et des forces humaines. Elle échappe donc à notre expérience."
  },
  {
    "Quelles sont les autres sortes de grâce?": "Hormis la grâce habituelle, il y a les grâces actuelles (dons circonstanciés), les grâces sacramentelles (dons propres à chaque sacrement), les grâces spéciales ou charismes (qui ont comme finalité le bien commun de l’Église), parmi lesquels il y a les grâces d’état, qui accompagnent l’exercice des ministères ecclésiaux et des responsabilités de l’existence."
  },
  {
    "Quel rapport y a-t-il entre la grâce et la liberté humaine?": "La grâce prévient, prépare et suscite la libre réponse de l’homme. Elle répond aux profondes aspirations de la liberté humaine, l’invite à coopérer et la mène à la perfection."
  },
  {
    "Qu’est-ce que le mérite?": "Le mérite est ce qui donne droit à la récompense pour une action bonne. Dans ses rapports avec Dieu, l’homme, de lui-même, ne peut rien mériter, ayant tout reçu gratuitement de Dieu. Néanmoins, Dieu lui donne la possibilité d’acquérir des mérites par son union à la charité du Christ, source de nos mérites devant Dieu. Les mérites des bonnes œuvres doivent donc être attribués avant tout à la grâce divine, et ensuite à la volonté libre de l’homme."
  } , {
    "Quels biens pouvons-nous mériter?": "Sous la motion de l’Esprit Saint, nous pouvons mériter, pour nous-mêmes et pour autrui, les grâces utiles pour nous sanctifier et pour parvenir à la vie éternelle, ainsi que les biens temporels qui nous sont nécessaires, selon le dessein de Dieu. Nul ne peut mériter la grâce première, qui est à l’origine de la conversion et de la justification."
  },
  {
    "Sommes-nous tous appelés à la sainteté chrétienne?": "Tous les fidèles sont appelés à la sainteté chrétienne. Elle est la plénitude de la vie chrétienne et la perfection de la charité; elle se réalise dans l’union intime avec le Christ et, en lui, avec la Sainte Trinité. Le chemin de sanctification du chrétien, après être passé par la croix, aura son achèvement dans la résurrection finale des justes, dans laquelle Dieu sera tout en tous."
  },
  {
    "Comment l’Église nourrit-elle la vie morale du chrétien?": "L’Église est la communauté où le chrétien accueille la Parole de Dieu et les enseignements de la « Loi du Christ » (Ga 6,2). Il y reçoit la grâce des sacrements. Il s’y unit à l’offrande eucharistique du Christ, en sorte que sa vie morale soit un culte spirituel. Il y apprend l’exemple de sainteté de la Vierge Marie et des saints."
  },
  {
    "Pourquoi le Magistère de l’Église intervient-il dans le domaine moral?": "Il revient au Magistère de l’Église d’annoncer la foi à croire et à appliquer dans la vie concrète. Cette tâche s’étend aussi aux préceptes spécifiques de la loi naturelle, parce que leur observance est nécessaire pour le salut."
  },
  {
    "Quelle est la finalité des préceptes de l’Église?": "Les cinq préceptes de l’Église ont pour but de garantir aux fidèles le minimum indispensable en ce qui concerne l’esprit de prière, la vie sacramentelle, l’engagement moral, et la croissance de l’amour de Dieu et du prochain."
  },
  {
    "Quels sont les préceptes de l’Église?": "Ce sont les suivants : 1) participer à la Messe le dimanche et les autres fêtes de précepte, et se libérer des travaux et des activités qui pourraient empêcher la sanctification de ces jours-là; 2) confesser ses fautes en recevant le sacrement de la Réconciliation au moins une fois par an; 3) recevoir le sacrement de l’Eucharistie au moins à Pâques; 4) s’abstenir de manger de la viande et jeûner aux jours fixés par l’Église; 5) subvenir aux besoins matériels de l’Église, chacun selon ses possibilités."
  },
  {
    "Pourquoi la vie morale des chrétiens est-elle indispensable pour l’annonce de l’Évangile?": "Par leur vie conforme au Seigneur Jésus, les chrétiens attirent les hommes à la foi au vrai Dieu; ils édifient l’Église; ils pénètrent le monde de l’esprit de l’Évangile et préparent la venue du Royaume de Dieu."
  },{
    "Comment l’Église nourrit-elle la vie morale du chrétien?": "L’Église est la communauté où le chrétien accueille la Parole de Dieu et les enseignements de la « Loi du Christ » (Ga 6,2). Il y reçoit la grâce des sacrements. Il s’y unit à l’offrande eucharistique du Christ, en sorte que sa vie morale soit un culte spirituel. Il y apprend l’exemple de sainteté de la Vierge Marie et des saints."
  },
  {
    "Pourquoi le Magistère de l’Église intervient-il dans le domaine moral?": "Il revient au Magistère de l’Église d’annoncer la foi à croire et à appliquer dans la vie concrète. Cette tâche s’étend aussi aux préceptes spécifiques de la loi naturelle, parce que leur observance est nécessaire pour le salut."
  },
  {
    "Quelle est la finalité des préceptes de l’Église?": "Les cinq préceptes de l’Église ont pour but de garantir aux fidèles le minimum indispensable en ce qui concerne l’esprit de prière, la vie sacramentelle, l’engagement moral, et la croissance de l’amour de Dieu et du prochain."
  },
  {
    "Quels sont les préceptes de l’Église?": "Ce sont les suivants : 1) participer à la Messe le dimanche et les autres fêtes de précepte, et se libérer des travaux et des activités qui pourraient empêcher la sanctification de ces jours-là; 2) confesser ses fautes en recevant le sacrement de la Réconciliation au moins une fois par an; 3) recevoir le sacrement de l’Eucharistie au moins à Pâques; 4) s’abstenir de manger de la viande et jeûner aux jours fixés par l’Église; 5) subvenir aux besoins matériels de l’Église, chacun selon ses possibilités."
  },
  {
    "Pourquoi la vie morale des chrétiens est-elle indispensable pour l’annonce de l’Évangile?": "Par leur vie conforme au Seigneur Jésus, les chrétiens attirent les hommes à la foi au vrai Dieu; ils édifient l’Église; ils pénètrent le monde de l’esprit de l’Évangile et préparent la venue du Royaume de Dieu."
  }, {
    "«Maître, que faut-il faire pour obtenir la vie éternelle?» (Mt 19,16)": "Au jeune homme qui l’interroge, Jésus répond : « Si tu veux entrer dans la vie, observe les commandements», puis il ajoute : « Viens et suis moi » (Mt 19,16-21). Suivre Jésus implique d’observer les commandements. La Loi n’est pas abolie; mais l’homme est invité à la retrouver dans la personne du Divin Maître, qui la réalise parfaitement en lui-même, qui en révèle la pleine signification et qui en atteste la pérennité."
  },
  {
    "Comment Jésus interprète-t-il la Loi?": "Jésus l’interprète à la lumière du double et unique commandement de la charité, qui est la plénitude de la Loi : « Tu aimeras le Seigneur ton Dieu de tout ton cœur, de toute ton âme et de tout ton esprit. C’est le plus grand et le premier des commandements. Et le second lui est semblable : tu aimeras ton prochain comme toi-même. Ces deux commandements contiennent toute la Loi et les Prophètes » (Mt 22,37-40)."
  },
  {
    "Que signifie «Décalogue»?": "Décalogue signifie « Dix paroles » (Ex 34,28). Ces paroles résument la Loi donnée par Dieu au peuple d’Israël dans le contexte de l’Alliance avec Moïse. Présentant les commandements de l’amour de Dieu (dans les trois premiers commandements) et de l’amour du prochain (dans les sept autres), elles tracent pour le peuple élu et pour toute personne le chemin d’une vie libérée de l’esclavage du péché."
  },
  {
    "Quel est le lien du Décalogue avec l’Alliance?": "Le Décalogue se comprend à la lumière de l’Alliance, dans laquelle Dieu se révèle, faisant connaître sa volonté. En observant les commandements, le peuple exprime son appartenance à Dieu et répond avec gratitude à son initiative d’amour."
  },
  {
    "Quelle importance l’Église donne-t-elle au Décalogue?": "Fidèle à l’Écriture et à l’exemple du Christ, l’Église reconnaît au Décalogue une importance et une signification primordiales. Les chrétiens sont tenus de l’observer."
  },
  {
    "Pourquoi le Décalogue constitue-t-il une unité organique?": "Les Dix Commandements constituent un ensemble organique et indissociable, parce que chaque commandement renvoie aux autres et à tout le Décalogue. Transgresser un commandement, c’est donc enfreindre toute la Loi."
  }, {
    "Pourquoi le Décalogue oblige-t-il gravement?": "Parce que le Décalogue énonce les devoirs fondamentaux de l’homme envers Dieu et envers le prochain."
  },
  {
    "Est-il possible d’observer le Décalogue?": "Oui, parce que le Christ, sans lequel nous ne pouvons rien faire, nous rend capables de l’observer par le don de son Esprit et de sa grâce."
  },  {
    "Qu’implique la déclaration divine : « Je suis le Seigneur ton Dieu » (Ex 20,2)?": "Pour le fidèle, elle implique de garder et d’exercer les trois vertus théologales, et d’éviter les péchés qui s’y opposent. La foi croit en Dieu et repousse ce qui lui est contraire, comme par exemple le doute volontaire, l’incrédulité, l’hérésie, l’apostasie, le schisme. L’espérance attend avec confiance la vision bienheureuse de Dieu et son aide, évitant le désespoir et la présomption. La charité aime Dieu par-dessus tout: il faut donc repousser l’indifférence, l’ingratitude, la tiédeur, l’acédie ou indolence spirituelle, et la haine de Dieu, qui naît de l’orgueil."
  },
  {
    "Qu’implique la Parole du Seigneur : « Adore le Seigneur ton Dieu, à lui seul tu rendras un culte » (Mt 4,10)?": "Elle implique d’adorer Dieu comme le Seigneur de tout ce qui existe; de lui rendre le culte qui lui est dû de façon individuelle et communautaire; de le prier par la louange, l’action de grâces et la supplication; de lui offrir des sacrifices, avant tout le sacrifice spirituel de notre vie, uni au sacrifice parfait du Christ; de garder les promesses et les vœux faits à Dieu."
  },
  {
    "De quelle manière la personne met-elle en œuvre son droit de rendre à Dieu un culte en vérité et en liberté?": "Tout homme a le droit et le devoir moral de chercher la vérité, surtout en ce qui concerne Dieu et son Église, et quand il l’a connue, de l’embrasser et de lui être fidèle, en rendant à Dieu un culte authentique. En même temps, la dignité de la personne humaine requiert qu’en matière religieuse nul ne soit forcé d’agir contre sa conscience, ni, dans les limites de l’ordre public, empêché d’agir selon sa conscience, en privé comme en public, seul ou associé à d’autres."
  },
  {
    "Qu’est-ce que Dieu interdit quand il commande : « Tu n’auras pas d’autres dieux devant Moi » (Ex 20,2)?": "Ce commandement proscrit : le polythéisme et l’idolâtrie, qui divinise une créature, le pouvoir, l’argent, même le démon; la superstition, qui est une déviance du culte dû au vrai Dieu et qui s’exprime encore sous diverses formes de divination, de magie, de sorcellerie et de spiritisme; l’irréligion qui s’exprime par l’action de tenter Dieu, en paroles ou en actes, par le sacrilège, qui profane des personnes ou des choses sacrées, surtout l’Eucharistie, par la simonie, par laquelle on entend acheter ou vendre des réalités spirituelles; l’athéisme, qui rejette l’existence de Dieu, se fondant souvent sur une fausse conception de l’autonomie humaine; l’agnosticisme, pour lequel on ne peut rien savoir de Dieu et qui comprend aussi l’indifférentisme et l’athéisme pratique."
  },
  {
    "Le commandement de Dieu : « Tu ne te feras aucune image sculptée » (Ex 20,3) interdit-il le culte des images?": "Dans l’Ancien Testament, ce commandement interdisait de représenter Dieu absolument transcendant. À partir de l’incarnation du Fils de Dieu, le culte chrétien des images saintes est justifié (comme l’affirme le deuxième concile de Nicée en 787), parce qu’il se fonde sur le mystère du Fils de Dieu fait homme, en qui le Dieu transcendant se rend visible. Il ne s’agit pas d’une adoration de l’image, mais d’une vénération de celui qui est représenté en elle: le Christ, la Vierge, les Anges et les Saints."
  },  {
    "Comment respecte-t-on la sainteté du Nom de Dieu?": "On respecte le Saint Nom de Dieu en l’invoquant, en le bénissant, en le louant et en le glorifiant. Il faut donc éviter l’abus d’en appeler au Nom de Dieu pour justifier un délit et tout usage inconvenant de son Nom, tels le blasphème, qui par nature est un péché grave, les jurons et l’infidélité aux promesses faites au Nom de Dieu."
  },
  {
    "Pourquoi le faux serment est-il interdit?": "Parce qu’il met en cause Dieu, qui est la vérité même, pris à témoin d’un mensonge. « Ne jurer ni par le Créateur, ni par la créature, si ce n’est avec vérité, nécessité et révérence » (saint Ignace de Loyola)."
  },
  {
    "Qu’est-ce que le parjure?": "Le parjure consiste à faire, sous serment, une promesse avec l’intention de ne pas la tenir, ou de violer la promesse faite sous serment. C’est un péché grave contre Dieu, qui est toujours fidèle à ses promesses."
  },  {
    "Pourquoi Dieu a-t-il « béni le jour du sabbat et déclaré saint » (Ex 20,11)?": "Le jour du sabbat, on fait mémoire du repos de Dieu le septième jour de la création, comme aussi de la libération d’Israël de l’esclavage de l’Égypte et de l’Alliance établie par Dieu avec son peuple."
  },
  {
    "Comment se comporte Jésus par rapport au sabbat?": "Jésus reconnaît la sainteté du sabbat et, avec son autorité divine, il en donne l’interprétation authentique : « Le sabbat est fait pour l’homme et non l’homme pour le sabbat » (Mc 2, 27)."
  },
  {
    "Pour quel motif, pour les chrétiens, le dimanche a-t-il été substitué au sabbat?": "Le dimanche est le jour de la résurrection du Christ. Comme « premier jour de la semaine » (Mc 16,2), il rappelle la première création; comme « huitième jour », jour qui suit le sabbat, il signifie la nouvelle création inaugurée par la résurrection du Christ. Ainsi, il est devenu pour les chrétiens le premier de tous les jours et de toutes les fêtes : le jour du Seigneur, qui, dans sa Pâque, porte à son achèvement le sabbat juif et annonce le repos éternel de l’homme en Dieu."
  },
  {
    "Comment sanctifie-t-on le dimanche?": "Les chrétiens sanctifient le dimanche et les autres fêtes de précepte en participant à l’Eucharistie du Seigneur et en s’abstenant aussi des activités qui empêchent de rendre le culte à Dieu, qui troublent la joie propre au jour du Seigneur et la nécessaire détente de l’esprit et du corps. Peuvent être accomplies ce jour-là les activités liées aux nécessités familiales ou aux services de grande utilité sociale, à condition qu’elles ne constituent pas des habitudes préjudiciables à la sanctification du dimanche, ni à la vie de famille ou à la santé."
  },
  {
    "Pourquoi la reconnaissance civile du dimanche comme jour festif est-elle importante?": "Pour que soit donnée à tous la possibilité effective de jouir d’un repos suffisant et d’un temps libre permettant de cultiver la vie religieuse, familiale, culturelle et sociale; de disposer d’un temps propice à la méditation, à la réflexion, au silence et à l’étude; de se consacrer aux bonnes œuvres, en particulier au profit des malades et des personnes âgées."
  },  {
    "Que commande le quatrième commandement?": "Il commande d’honorer et de respecter nos parents et ceux que Dieu, pour notre bien, a revêtus de son autorité."
  },
  {
    "Quelle est la nature de la famille dans le plan de Dieu?": "Un homme et une femme unis par le mariage forment ensemble, avec leurs enfants, une famille. Dieu a institué la famille et l’a dotée de sa constitution fondamentale. Le mariage et la famille sont ordonnés au bien des époux, à la procréation et à l’éducation des enfants. Entre les membres d’une famille s’établissent des relations personnelles et des responsabilités primordiales. Dans le Christ, la famille devient une église domestique, parce qu’elle est communauté de foi, d’espérance et d’amour."
  },
  {
    "Quelle place tient la famille dans la société?": "La famille est la cellule originelle de la société humaine et précède toute reconnaissance de la part de l’autorité publique. Les principes et les valeurs de la famille constituent le fondement de la vie sociale. La vie de famille est une initiation à la vie en société."
  },
  {
    "Quels sont les devoirs de la société dans ses rapports à la famille?": "La société a le devoir de soutenir et d’affermir le mariage et la famille, en respectant aussi le principe de subsidiarité. Les pouvoirs publics doivent respecter, protéger et favoriser la vraie nature du mariage et de la famille, la morale publique, les droits des parents et la prospérité des foyers."
  },
  {
    "Quels sont les devoirs des enfants envers leurs parents?": "Les enfants doivent respect (piété filiale), reconnaissance, docilité et obéissance envers leurs parents, contribuant ainsi, par les bonnes relations entre frères et sœurs, au progrès de l’harmonie et de la sainteté de toute la vie familiale. Si les parents se trouvent dans une situation d’indigence, de maladie, d’isolement ou de vieillesse, les enfants adultes doivent leur fournir un soutien moral et matériel."
  },
  {
    "Quels sont les devoirs des parents envers leurs enfants?": "Participants de la paternité divine, les parents sont les premiers responsables de l’éducation de leurs enfants et les premiers à leur annoncer la foi. Ils ont le devoir d’aimer et de respecter leurs enfants comme personnes et comme fils de Dieu. Ils ont à pourvoir, autant que faire se peut, à leurs besoins matériels et spirituels, choisissant pour eux une école appropriée et leur prodiguant de prudents conseils pour choisir leur profession et leur état de vie. En particulier, ils ont pour mission de les éduquer à la foi chrétienne."
  },  {
    "Comment les parents éduquent-ils leurs enfants à la foi chrétienne?": "Principalement par l’exemple, la prière, la catéchèse familiale et la participation à la vie ecclésiale."
  },
  {
    "Les liens de famille sont-ils un bien absolu?": "Les liens de famille, bien qu’ils soient importants, ne sont pas absolus, parce que la première vocation du chrétien est de suivre Jésus en l’aimant : « Qui aime son père et sa mère plus que moi, n’est pas digne de moi. Qui aime sa fille ou son fils plus que moi n’est pas digne de moi » (Mt 10, 37). Les parents doivent aider avec joie leurs enfants à suivre Jésus, dans tous les états de vie, même dans la vie consacrée ou dans le ministère sacerdotal."
  },
  {
    "Comment doit s’exercer l’autorité dans les différents domaines de la société civile?": "Elle doit toujours s’exercer comme un service, en respectant les droits fondamentaux de l’homme, une juste hiérarchie des valeurs, les lois, la justice distributive et le principe de subsidiarité. Dans l’exercice de l’autorité, chacun doit rechercher l’intérêt de la communauté au lieu du sien propre. Ses décisions doivent s’inspirer de la vérité sur Dieu, sur l’homme et sur le monde."
  },
  {
    "Quels sont les devoirs des citoyens dans leurs rapports avec les autorités civiles?": "Ceux qui sont soumis à l’autorité doivent considérer leurs supérieurs comme des représentants de Dieu, offrant leur collaboration loyale pour le bon fonctionnement de la vie publique et sociale. Cela comporte l’amour et le service de la patrie, le droit et le devoir de voter, le paiement des impôts, la défense du pays et le droit à une critique constructive."
  },
  {
    "Quand le citoyen doit-il ne pas obéir aux autorités civiles?": "Le citoyen ne doit pas, en conscience, obéir quand les prescriptions des autorités civiles s’opposent aux exigences de l’ordre moral : « Il faut obéir à Dieu plutôt qu’aux hommes » (Ac 5,29)."
  },  {
    "Pourquoi faut-il respecter la vie humaine?": "Parce que la vie humaine est sacrée. Dès son origine, elle comporte l’action créatrice de Dieu et demeure pour toujours dans une relation spéciale avec le Créateur, son unique fin. Il n’est permis à personne de détruire directement un être humain innocent, car cela est gravement contraire à la dignité de la personne et à la sainteté du Créateur. « Vous ne ferez pas mourir l’innocent et le juste » (Ex 23,7)."
  },
  {
    "Pourquoi la légitime défense des personnes et des sociétés n’est-elle pas contraire à cette règle absolue?": "Par la légitime défense, on fait le choix de se défendre et de mettre en valeur le droit à la vie, la sienne propre ou celle d’autrui, et non le choix de tuer. Pour qui a la responsabilité de la vie d’autrui, la légitime défense peut être aussi un devoir grave. Toutefois, elle ne doit pas comporter un usage de la violence plus grande que ce qui est nécessaire."
  },
  {
    "À quoi sert une peine?": "Une peine infligée par l’autorité publique légitime a pour but de réparer le désordre introduit par la faute, de défendre l’ordre public et la sécurité des personnes, et de contribuer à l’amendement du coupable."
  },
  {
    "Quelle peine peut-on infliger?": "La peine infligée doit être proportionnée à la gravité du délit. Aujourd’hui, étant donné les possibilités dont l’État dispose pour réprimer le crime en rendant inoffensif le coupable, les cas d’absolue nécessité de la peine de mort « sont désormais très rares, sinon même pratiquement inexistants » (Evangelium vitæ). Quand les moyens non sanglants sont suffisants, l’autorité se limitera à ces moyens, parce qu’ils correspondent mieux aux conditions concrètes du bien commun, ils sont plus conformes à la dignité de la personne et n’enlèvent pas définitivement, pour le coupable, la possibilité de se racheter."
  },  {
    "Qu’interdit le cinquième commandement?": "Le cinquième commandement interdit comme gravement contraires à la loi morale : l’homicide direct et volontaire, ainsi que la coopération à celui-ci; l’avortement direct, recherché comme fin et comme moyen, ainsi que la coopération à cet acte, avec la peine d’excommunication, parce que l’être humain, dès sa conception, doit être défendu et protégé de manière absolue dans son intégrité; l’euthanasie directe, qui consiste à mettre fin, par un acte ou par l’omission d’une action requise, à la vie de personnes handicapées, malades ou proches de la mort; le suicide et la coopération volontaire à celui-ci, parce qu’il est une offense grave au juste amour de Dieu, de soi-même et du prochain; quant à la responsabilité, elle peut être aggravée en raison du scandale ou diminuée par des troubles psychiques particuliers ou par de graves craintes."
  },
  {
    "Quelles procédures médicales sont autorisées quand la mort est considérée comme imminente?": "Les soins habituellement dus à une personne malade ne peuvent être légitimement interrompus. Par contre, sont légitimes le recours à des analgésiques n’ayant pas comme finalités la mort, ainsi que le renoncement à « l’acharnement thérapeutique », c’est-à-dire, à l’usage de procédés médicaux disproportionnés et sans espoir raisonnable d’une issue favorable."
  },
  {
    "Pourquoi la société doit-elle protéger tout embryon?": "Le droit inaliénable à la vie de tout individu humain, dès sa conception, est un élément constitutif de la société civile et de sa législation. Quand l’État ne met pas sa force au service des droits de tous, et en particulier des plus faibles, parmi lesquels les enfants conçus non encore nés, ce sont les fondements mêmes de l’état de droit qui sont minés."
  },
  {
    "Comment éviter le scandale?": "Le scandale, qui consiste à porter autrui à faire le mal, est à éviter en respectant l’âme et le corps de la personne. Si l’on porte délibérément autrui au péché grave, on commet une faute grave."
  },
  {
    "Quels devoirs avons-nous envers le corps?": "Nous devons porter une attention raisonnable à la santé physique, la nôtre et celle d’autrui, en évitant le culte du corps et toutes sortes d’excès. Doivent aussi être évités l’usage de stupéfiants, qui causent de graves dommages à la santé et à la vie humaine, et aussi l’abus de nourriture, d’alcool, de tabac et de médicaments."
  },   {
    "Quand les expérimentations scientifiques, médicales et psychologiques sont-elles moralement légitimes sur les individus ou sur des groupes humains?": "Elles sont moralement légitimes si elles sont au service du bien intégral de la personne et de la société, sans risques disproportionnés pour la vie et l’intégrité physique ou psychique des individus, qui doivent être, au préalable, informés et consentants."
  },
  {
    "Avant et après la mort, le prélèvement et le don d’organes sont-ils autorisés?": "Le prélèvement d’organes est moralement acceptable avec le consentement du donneur et sans risques excessifs pour lui. Pour que soit réalisé l’acte noble du don d’organes après la mort, on doit être pleinement certain de la mort réelle du donneur."
  },
  {
    "Quelles sont les pratiques contraires au respect de l’intégrité corporelle de la personne humaine?": "Ce sont : les enlèvements et les prises d’otages de personnes, le terrorisme, la torture, les violences, la stérilisation directe. Les amputations et les mutilations d’une personne ne sont moralement acceptables qu’à des fins thérapeutiques pour la personne elle-même."
  },
  {
    "Comment doit-on prendre soin des mourants?": "Les mourants ont le droit de vivre dans la dignité les derniers moments de leur vie terrestre, et surtout avec le soutien de la prière et des sacrements, qui les préparent à rencontrer le Dieu vivant."
  },
  {
    "Comment doivent être traités les corps des défunts?": "Les corps des défunts doivent être traités avec respect et charité. L’incinération est permise à condition qu’elle soit réalisée sans mettre en cause la foi en la résurrection des corps."
  },
  {
    "Que demande le Seigneur à toute personne en ce qui concerne la paix?": "Le Seigneur, qui a proclamé « bienheureux les artisans de paix » (Mt 5,9), demande la paix du cœur et dénonce l’immoralité de la colère, qui est un désir de vengeance pour le mal subi, et la haine, qui porte à désirer le mal pour le prochain. Ces comportements, s’ils sont volontaires et consentis dans des matières de grande importance, sont des péchés graves contre la charité."
  },
  {
    "Qu’est-ce que la paix dans le monde?": "La paix dans le monde, qui est requise pour le respect et le développement de la vie humaine, n’est pas simplement l’absence de la guerre ou l’équilibre de forces opposées; elle est « tranquillité de l’ordre » (saint Augustin), « fruit de la justice » (Is 32,17) et effet de la charité. La paix terrestre est image et fruit de la paix du Christ."
  },  {
    "Que réclame la paix dans le monde?": "La paix dans le monde réclame une distribution équitable et la protection des biens des personnes, la libre communication entre les êtres humains, le respect de la dignité des personnes et des peuples, la pratique assidue de la justice et de la fraternité."
  },
  {
    "Quand peut-on moralement consentir à l’usage de la force militaire?": "Le recours à la force militaire est moralement justifié par la présence simultanée des conditions suivantes : la certitude d’un dommage subi grave et durable; l’inefficacité de toute solution pacifique; les conditions sérieuses d’un succès; l’absence de maux plus grands, étant bien considérée la puissance actuelle des moyens de destruction."
  },
  {
    "En cas de menace de guerre, à qui appartient-il d’apprécier de manière rigoureuse de telles conditions?": "Cela appartient au jugement prudent des Gouvernants, auxquels revient aussi le droit d’imposer aux citoyens l’obligation de la défense nationale, étant sauf le droit personnel à l’objection de conscience, obligation qui peut être réalisée par d’autres formes de service de la communauté humaine."
  },
  {
    "En cas de guerre, que demande la loi morale?": "La loi morale demeure toujours valide, même en cas de guerre. Elle demande que soient traités avec humanité les non-combattants, les soldats blessés et les prisonniers. Les actes délibérément contraires au droit des gens et les ordres qui les commandent sont des crimes que l’obéissance aveugle ne suffit pas à excuser. Il faut condamner les destructions massives, ainsi que l’extermination d’un peuple ou d’une minorité ethnique. Ce sont des péchés très graves et on est moralement tenu de résister aux ordres de ceux qui les commandent."
  },
  {
    "Que faut-il faire pour éviter la guerre?": "On doit faire ce qui est raisonnablement possible pour éviter à tout prix la guerre, étant donné les maux et les injustices qu’elle provoque. En particulier, il faut éviter l’accumulation et le commerce des armes non dûment réglementées par les pouvoirs légitimes; les injustices, surtout économiques et sociales; les discriminations ethniques et religieuses; l’envie, la défiance, l’orgueil et l’esprit de vengeance. Tout ce qui est fait pour vaincre ces désordres et d’autres encore contribue à édifier la paix et à éviter la guerre."
  },   {
    "Quel est le devoir de la personne humaine en ce qui concerne son identité sexuelle?": "Dieu a créé l’homme, homme et femme, avec la même dignité personnelle. Il a inscrit en chacun la vocation à l’amour et à la communion. Il revient à chacun d’accepter sa propre identité sexuelle, en en reconnaissant l’importance pour toute la personne, la spécificité et la complémentarité."
  },
  {
    "Qu’est-ce que la chasteté?": "La chasteté est l’intégration réussie de la sexualité dans la personne. La sexualité devient vraiment humaine quand elle est intégrée de manière juste dans la relation de personne à personne. La chasteté est une vertu morale, un don de Dieu, une grâce, un fruit de l’Esprit."
  },
  {
    "Que comporte la vertu de chasteté?": "Elle comporte l’apprentissage de la maîtrise de soi, en tant qu’expression de la liberté humaine orientée au don de soi. Dans ce but, une éducation intégrale et permanente est nécessaire; elle se réalise par étapes graduelles de croissance."
  },
  {
    "De quels moyens dispose-t-on pour aider à vivre la chasteté?": "Les moyens à disposition sont nombreux : la grâce de Dieu, le secours des sacrements, la prière, la connaissance de soi, la pratique d’une ascèse adaptée aux diverses situations, l’exercice des vertus morales, en particulier de la vertu de tempérance, qui vise à faire en sorte que les passions soient guidées par la raison."
  },
  {
    "De quelle manière tous les baptisés sont-ils appelés à vivre la chasteté?": "Tous les baptisés, suivant le Christ modèle de chasteté, sont appelés à mener une vie chaste, selon leur état de vie : les uns, en vivant dans la virginité ou dans le célibat consacré, manière éminente de se consacrer plus facilement à Dieu d’un cœur sans partage; les autres, s’ils sont mariés, en pratiquant la chasteté conjugale; s’ils ne sont pas mariés, en vivant la chasteté dans la continence."
  },
  {
    "Quels sont les principaux péchés contre la chasteté?": "Sont des péchés gravement contraires à la chasteté, chacun selon la nature de son objet : l’adultère, la masturbation, la fornication, la pornographie, la prostitution, le viol, les actes homosexuels. Ces péchés sont l’expression du vice de la luxure. Commis sur des mineurs, de tels actes sont un attentat encore plus grave contre leur intégrité physique et morale."
  },  {
    "Pourquoi le sixième commandement, bien qu’il dise « Tu ne commettras pas d’adultère », interdit-il tous les péchés contre la chasteté?": "Bien que dans le texte biblique du Décalogue on lise « Tu ne commettras pas d’adultère » (Ex, 20,14), la Tradition de l’Église suit intégralement les enseignements moraux de l’Ancien et du Nouveau Testament, et considère le sixième commandement comme englobant tous les péchés contre la chasteté."
  },
  {
    "Quel est le devoir des autorités civiles en ce qui concerne la chasteté?": "Parce qu’elles sont tenues de promouvoir le respect de la dignité de la personne, les autorités civiles doivent contribuer à créer un climat favorable à la chasteté, même en empêchant, par des lois appropriées, la diffusion de certaines des graves offenses à la chasteté précédemment évoquées, surtout en vue de protéger les mineurs et les personnes les plus fragiles."
  },
  {
    "Quels sont les biens de l’amour conjugal auquel est ordonnée la sexualité?": "Les biens de l’amour conjugal qui, pour les baptisés, est sanctifié par le sacrement de mariage sont : l’unité, la fidélité, l’indissolubilité et l’ouverture à la fécondité."
  },
  {
    "Quelle signification a l’acte conjugal?": "L’acte conjugal a une double signification : unitive (la donation réciproque des époux), et procréatrice (l’ouverture à la transmission de la vie). Nul ne doit briser le lien indissociable que Dieu a voulu entre les deux significations de l’acte conjugal, en excluant l’une ou l’autre d’entre elles."
  },
  {
    "Quand la régulation des naissances est-elle morale?": "La régulation des naissances, qui représente un des aspects de la paternité et de la maternité responsables, est objectivement conforme à la morale quand elle se vit entre les époux sans contrainte extérieure, ni par égoïsme, mais pour des motifs sérieux et par des méthodes conformes aux critères objectifs de moralité, à savoir par la continence périodique et le recours aux périodes infécondes."
  },
  {
    "Quels sont les moyens de régulation des naissances qui sont immoraux?": "Est intrinsèquement immorale toute action – comme, par exemple, la stérilisation directe ou la contraception – qui, en prévision de l’acte conjugal ou dans sa réalisation ou encore dans ses conséquences naturelles, se propose, comme but et comme moyen, d’empêcher la procréation."
  },  {
    "Pourquoi l’insémination et la fécondation artificielles sont-elles immorales?": "Elles sont immorales parce qu’elles dissocient la procréation de l’acte par lequel les époux se donnent l’un à l’autre, instaurant de ce fait une domination de la technique sur l’origine et la destinée de la personne humaine. En outre, l’insémination et la fécondation hétérologues, par le recours à des techniques qui font intervenir une personne étrangère au couple, lèsent le droit de l’enfant à naître d’un père et d’une mère connus de lui et liés entre eux par le mariage et ayant le droit exclusif de ne devenir parents que l’un par l’autre."
  },
  {
    "Comment doit-on considérer un enfant?": "L’enfant est un don de Dieu, le don le plus excellent du mariage. Il n’existe pas un droit d’avoir des enfants (l’enfant dû à tout prix). Il existe au contraire le droit pour l’enfant d’être le fruit de l’acte conjugal de ses parents ainsi que le droit d’être respecté comme personne dès le moment de sa conception."
  },
  {
    "Que peuvent faire les époux, lorsqu’ils n’ont pas d’enfants?": "Si le don de l’enfant ne leur a pas été fait, les époux, après avoir épuisé les recours légitimes de la médecine, peuvent marquer leur générosité par l’accueil ou par l’adoption, ou encore par l’accomplissement de services exigeants à l’égard d’autrui. Ils réalisent ainsi une précieuse fécondité spirituelle."
  },
  {
    "Quelles sont les offenses à la dignité du mariage?": "Ce sont : l’adultère, le divorce, la polygamie, l’inceste, l’union libre (cohabitation, concubinage), l’acte sexuel avant le mariage ou en dehors du mariage."
  },  {
    "Que déclare le septième commandement?": "Il déclare la destination et la distribution universelles des biens, la propriété privée, le respect des personnes et de leurs biens, et le respect de l’intégrité de la création. Dans ce commandement, l’Église trouve aussi le fondement de sa doctrine sociale, qui comprend la rectitude dans l’action, que ce soit dans le domaine économique, dans la vie sociale et politique, dans le droit et le devoir du travail humain, dans la justice et la solidarité entre les nations, ou dans l’amour pour les pauvres."
  },
  {
    "Quelles sont les conditions du droit à la propriété privée?": "Le droit à la propriété privée existe à condition que la propriété soit acquise ou reçue de manière juste et que demeure primordiale la destination universelle des biens afin de satisfaire les besoins fondamentaux de tous les hommes."
  },
  {
    "Quelle est la finalité de la propriété privée?": "La propriété privée a pour finalité de garantir la liberté et la dignité des individus, les aidant à satisfaire les besoins fondamentaux de ceux dont ils ont la responsabilité et aussi de ceux qui vivent dans la nécessité."
  },
  {
    "Que prescrit le septième commandement?": "Le septième commandement prescrit le respect des biens d’autrui, par la pratique de la justice et de la charité, de la tempérance et de la solidarité. Il exige en particulier : le respect des promesses et des contrats stipulés, la réparation de toute injustice commise et la restitution des biens volés; le respect de l’intégrité de la création, grâce à un usage prudent et modéré des ressources minérales, végétales et animales qui existent dans l’univers, avec une attention spéciale aux espèces menacées d’extinction."
  },
  {
    "Quel comportement doit avoir l’homme envers les animaux?": "L’homme doit traiter avec bienveillance les animaux, qui sont des créatures de Dieu, en évitant à leur égard soit un amour excessif, soit un usage aveugle, surtout pour des expérimentations scientifiques effectuées au-delà des limites raisonnables et avec d’inutiles souffrances pour les animaux eux-mêmes."
  }, {
    "Qu’interdit le septième commandement?": "Le septième commandement interdit avant tout le vol, qui consiste en l’usurpation du bien d’autrui contre la volonté raisonnable du propriétaire. Il en va de même dans le fait de payer des salaires injustes, de spéculer sur la valeur des biens pour en tirer des avantages au détriment d’autrui, de contrefaire des chèques ou des factures. Il est interdit en outre de commettre des fraudes fiscales ou commerciales, d’infliger volontairement un dommage aux propriétés privées ou publiques, de pratiquer aussi l’usure, la corruption, l’abus privé des biens sociaux, les travaux mal exécutés de manière consciente, le gaspillage."
  },
  {
    "Quel est le contenu de la doctrine sociale de l’Église?": "La doctrine sociale de l’Église, en tant que développement organique de la vérité de l’Évangile sur la dignité de la personne humaine et sa dimension sociale, contient des principes de réflexion, formule des critères de jugement, et présente des normes et des orientations pour l’action."
  },
  {
    "Quand l’Église intervient-elle en matière sociale?": "L’Église intervient en portant un jugement moral en matière économique et sociale, quand cela est exigé par les droits primordiaux de la personne, par le bien commun ou par le salut des âmes."
  },
  {
    "Comment doit s’exercer la vie sociale et économique?": "La vie sociale et économique doit s’exercer selon ses méthodes propres, dans le cadre de l’ordre moral, pour le service de l’homme dans son intégralité et pour le service de toute la communauté humaine, dans le respect de la justice sociale. Elle doit avoir l’homme comme auteur, centre et fin."
  },
  {
    "Qu’est-ce qui s’oppose à la doctrine sociale de l’Église?": "S’opposent à la doctrine sociale de l’Église les systèmes économiques et sociaux qui sacrifient les droits primordiaux des personnes ou qui font du profit leur règle exclusive et leur fin ultime. C’est pourquoi l’Église réfute les idéologies associées au cours de la période moderne au « communisme » ou aux autres formes athées et totalitaires de « socialisme ». En outre, dans la pratique du « capitalisme », elle réfute l’individualisme et le primat absolu de la loi du marché sur le travail humain."
  },  {
    "Quel est le sens du travail pour l’homme?": "Pour l’homme, le travail est un devoir et un droit, grâce auquel il coopère avec Dieu créateur. En effet, en travaillant avec soin et compétence, la personne met en œuvre des capacités inscrites dans sa nature, manifeste les dons du Créateur et les talents qu’il a reçus; elle subvient à ses besoins et à ceux de ses proches; et elle sert la communauté humaine. En outre, avec la grâce de Dieu, le travail peut être un moyen de sanctification et de collaboration avec le Christ pour le salut d’autrui."
  },
  {
    "À quel type de travail toute personne a-t-elle droit?": "L’accès à un travail sûr et honnête doit être ouvert à tous, sans discrimination injuste, dans le respect de la libre initiative économique et d’une rétribution équitable."
  },
  {
    "Quelle est la responsabilité de l’État en ce qui concerne le travail?": "Il revient à l’État d’assurer la sécurité concernant la garantie des libertés des individus et de la propriété, ainsi qu’une monnaie stable et des services publics efficaces; de surveiller et de conduire l’application des droits humains dans le secteur économique. En fonction des circonstances, la société doit aider les citoyens à trouver du travail."
  },
  {
    "Quelle est la tâche des dirigeants des entreprises?": "Les dirigeants des entreprises ont la responsabilité économique et écologique de leurs opérations. Ils sont tenus de considérer le bien des personnes et pas seulement l’augmentation des profits; ceux-ci sont cependant nécessaires pour réaliser les investissements, l’avenir des entreprises, l’emploi et la bonne marche de la vie économique."
  },
  {
    "Quels sont les devoirs des travailleurs?": "Ils doivent s’acquitter de leur travail avec conscience, compétence et dévouement, cherchant à résoudre les conflits éventuels par le dialogue. Le recours à la grève non violente est moralement légitime quand il se présente comme un élément nécessaire en vue d’un bénéfice proportionné, tout en tenant compte du bien commun."
  },  {
    "Comment s’exercent la justice et la solidarité entre les nations?": "Au niveau international, toutes les nations et toutes les institutions doivent agir dans la solidarité et la subsidiarité, dans le but d’éliminer ou au moins de réduire la misère, l’inégalité des ressources et des moyens économiques, les injustices économiques et sociales, l’exploitation des hommes, l’accroissement de la dette des pays pauvres, les mécanismes pervers qui font obstacle au développement des pays les moins avancés."
  },
  {
    "Comment les chrétiens participent-ils à la vie politique et sociale?": "Les fidèles laïcs interviennent directement dans la vie politique et sociale en animant avec un esprit chrétien les réalités temporelles et en collaborant avec tous, comme authentiques témoins de l’Évangile et artisans de paix et de justice."
  },
  {
    "De quoi s’inspire l’amour pour les pauvres?": "L’amour envers les pauvres s’inspire de l’Évangile des béatitudes et de l’exemple de Jésus dans son attention constante envers les pauvres. Jésus a dit : « Ce que vous avez fait au plus petit de mes frères, c’est à moi que vous l’avez fait » (Mt 25,40). L’amour envers les pauvres passe par l’engagement contre la pauvreté matérielle et contre les multiples formes de pauvreté culturelle, morale et religieuse. Les œuvres de miséricorde, spirituelles et corporelles, et les nombreuses institutions de bienfaisance nées au long des siècles sont un témoignage concret de l’amour préférentiel pour les pauvres qui caractérise les disciples de Jésus."
  },
  {
    "Quel est le devoir de l’homme à l’égard de la vérité?": "Toute personne est appelée à la sincérité et à la véracité dans sa conduite et dans ses paroles. Chacun a l’obligation de chercher la vérité et d’y adhérer, ordonnant toute sa vie selon les exigences de la vérité. En Jésus Christ la vérité de Dieu s’est manifestée tout entière. Il est la Vérité. Qui le suit vit dans l’Esprit de vérité et fuit la duplicité, la simulation et l’hypocrisie."
  },
  {
    "Comment rend-on témoignage à la vérité?": "Le chrétien doit témoigner de la vérité évangélique dans tous les domaines de son activité publique et privée, même au prix du sacrifice de sa vie, si cela est nécessaire. Le martyre est le témoignage suprême rendu à la vérité de la foi."
  },  {
    "Qu’interdit le huitième commandement?": "Le huitième commandement interdit : le faux témoignage et le parjure, le mensonge, dont la gravité se mesure à la déformation de la vérité réalisée, aux circonstances, aux intentions du menteur et aux dommages subis par ses victimes; le jugement téméraire, la médisance, la diffamation, la calomnie, qui diminuent ou détruisent la bonne réputation et l’honneur auxquels toute personne a droit; la flatterie, l’adulation et la complaisance, surtout si elles ont pour but des péchés graves ou le consentement à des avantages illicites. Toute faute commise contre la vérité oblige à réparation si elle a causé du tort à autrui."
  },
  {
    "Que demande le huitième commandement?": "Le huitième commandement demande le respect de la vérité, accompagné de la discrétion de la charité : dans la communication et l’information, qui doivent évaluer le bien individuel et commun, la défense de la vie privée, le risque de scandale. Le respect des secrets professionnels doit toujours être sauvegardé, sauf cas exceptionnels, et pour des motifs graves et proportionnés. Est aussi requis le respect des confidences faites sous le sceau du secret."
  },
  {
    "Comment doivent être utilisés les moyens de communication sociale?": "L’information dans les médias doit être au service du bien commun; dans son contenu, elle doit toujours être vraie et, en sauvegardant la justice et la charité, intégrale. D’autre part, elle doit s’exprimer d’une manière honnête et opportune, respectant scrupuleusement les lois morales, les droits légitimes et la dignité de la personne."
  },
  {
    "Quelle relation y a-t-il entre vérité, beauté et art sacré?": "La vérité est belle en elle-même. Elle comporte la splendeur de la beauté spirituelle. Outre la parole, il existe de nombreuses formes d’expression de la vérité, en particulier les œuvres d’art. Elles sont le fruit d’un talent donné par Dieu et de l’effort de l’homme. L’Art sacré, pour être vrai et beau, doit évoquer et glorifier le mystère du Dieu révélé dans le Christ et conduire à l’adoration et à l’amour du Dieu créateur et sauveur, Beauté suréminente de Vérité et d’Amour."
  }, {
    "Que demande le neuvième commandement?": "Le neuvième commandement requiert de vaincre la concupiscence charnelle dans les pensées et les désirs. Le combat contre la concupiscence passe par la purification du cœur et par la pratique de la vertu de tempérance."
  },
  {
    "Qu’interdit le neuvième commandement?": "Le neuvième commandement interdit de cultiver des pensées et des désirs concernant les actes défendus par le sixième commandement."
  },
  {
    "Comment parvient-on à la pureté du cœur?": "Avec la grâce de Dieu et en luttant contre les désirs désordonnés, le baptisé parvient à la pureté du cœur par la vertu et le don de chasteté, la pureté d’intention, la transparence du regard, extérieur et intérieur, la discipline des sentiments et de l’imagination, la prière."
  },
  {
    "Quelles sont les autres exigences de la pureté?": "La pureté exige la pudeur; elle protège l’intimité de la personne, exprime la délicatesse de la chasteté, règle les regards et les gestes pour qu’ils soient conformes à la dignité des personnes et de leur union. Elle libère de l’érotisme ambiant et tient à l’écart de tout ce qui favorise la curiosité malsaine. Elle requiert encore une purification du climat social, par un combat soutenu contre la permissivité des mœurs, qui repose sur une conception erronée de la liberté humaine."
  }, {
    "Que commande et que défend le dixième commandement?": "Ce commandement complète le précédent. Il demande une attitude intérieure de respect dans les rapports avec la propriété d’autrui. Il interdit l’avidité, la convoitise effrénée des biens d’autrui, l’envie, qui traduit la tristesse éprouvée devant les biens d’autrui et le désir immodéré de se les approprier."
  },
  {
    "Que demande Jésus par la pauvreté du cœur?": "Jésus demande à ses disciples de le préférer, Lui, à tout et à tous. Le détachement des richesses dans un esprit de pauvreté évangélique et l’abandon à la providence de Dieu, qui nous libère de l’inquiétude du lendemain, disposent à la béatitude des « pauvres en esprit, parce que le Royaume des cieux est à eux » (Mt 5,3)."
  },
  {
    "Quel est le plus grand désir de l’homme?": "Le plus grand désir de l’homme, c’est de voir Dieu. C’est le cri de tout son être : « Je veux voir Dieu ». En effet, l’homme réalise son bonheur vrai et total dans la vision et la béatitude de celui qui l’a créé par amour et qui l’attire à lui dans son amour infini."
  }
   ],
    "Dieu et l'homme": [
      {"Quel est le dessein de Dieu sur l’homme?": "Infiniment parfait et bienheureux en Lui-même, Dieu, dans un dessein de pure bonté, a librement créé l’homme pour le rendre participant de sa vie bienheureuse. Lorsque les temps furent accomplis, Dieu le Père a envoyé son Fils comme Rédempteur et Sauveur des hommes tombés dans le péché, pour les appeler dans son Église et pour leur donner d’être ses fils adoptifs par l’action de l’Esprit Saint et les héritiers de son éternité bienheureuse."},
      {"Pourquoi y a-t-il en l’homme le désir de Dieu?": "En créant l’homme à son image, Dieu lui-même a inscrit dans son cœur le désir de le voir. Même si un tel désir est ignoré de l’homme, Dieu ne cesse d’attirer l’homme à lui pour qu’il vive et trouve en Lui la plénitude de vérité et de bonheur qu’il ne cesse de chercher. Par nature et par vocation, l’homme est donc un être religieux, capable d’entrer en communion avec Dieu. Ce lien intime et vital avec Dieu confère à l’homme sa dignité fondamentale."},
   {"Suffit-il de la lumière de la raison pour connaître le mystère de Dieu?": "Dans sa connaissance de Dieu par la seule lumière de sa raison, l’homme rencontre beaucoup de difficultés. De plus, il ne peut entrer par lui-même dans l’intimité du mystère divin. C’est pourquoi Dieu a voulu l’éclairer par sa Révélation, non seulement sur les vérités qui dépassent la compréhension humaine, mais aussi sur les vérités religieuses et morales, qui, tout en étant en elles-mêmes accessibles à la raison, peuvent ainsi être connues de tous, sans difficulté, avec une ferme certitude et sans risque d’erreur."},
   {"Comment parler de Dieu?": "On peut parler de Dieu à tous les hommes et avec tous les hommes, à partir des perfections de l’homme et des autres créatures, qui sont un reflet, bien que limité, de la perfection infinie de Dieu. Il faut donc sans cesse purifier notre langage en ce qu’il a d’imagé et d’imparfait, en sachant que l’on ne pourra jamais exprimer pleinement l’infini mystère de Dieu."},
     
{
  "Qu’est-ce que Dieu révèle à l’homme?": "Dans sa bonté et dans sa sagesse, Dieu se révèle à l’homme. Par les événements et par ses paroles, il se révèle lui-même ainsi que son dessein de bienveillance, qu’il a établi de toute éternité dans le Christ, en faveur des hommes. Ce dessein consiste à faire participer, par la grâce de l’Esprit Saint, tous les hommes à la vie divine, pour qu’ils soient fils adoptifs en son Fils unique."
},
{
  "Quelles sont les premières étapes de la révélation de Dieu?": "Dès l’origine, Dieu s’est manifesté à nos premiers parents, Adam et Ève, et il les a invités à une communion intime avec Lui. Après leur chute, il n’a pas interrompu sa révélation et il a promis le salut pour toute leur descendance. Après le déluge, il a conclu avec Noé une alliance entre Lui et tous les êtres vivants."
},
{
  "Quelles sont les étapes successives de la révélation de Dieu?": "Dieu a choisi Abraham, l’appelant à sortir de son pays pour faire de lui « le père d’un grand nombre de peuples » (Gn 17,5) et lui promettant de bénir en lui « toutes les nations de la terre » (Gn 12,3). Les descendants d’Abraham seront les dépositaires des promesses divines faites aux patriarches. Dieu a formé Israël comme son peuple d’élection, le sauvant de l’esclavage de l’Égypte. Il a conclu avec lui l’Alliance du Sinaï et, par Moïse, lui a donné sa Loi. Les prophètes ont annoncé une rédemption radicale du peuple et un salut qui inclura toutes les nations dans une Alliance nouvelle et éternelle. Du peuple d’Israël, de la race du roi David, naîtra Jésus, le Messie."
},
{
  "Quelle est l’étape dernière et définitive de la révélation de Dieu?": "Cette étape s’est accomplie par le Verbe incarné, Jésus Christ, médiateur, et plénitude de la révélation. Parce qu’il est le Fils unique de Dieu fait homme, il est la Parole parfaite et définitive du Père. Avec l’envoi du Fils et le don de l’Esprit Saint, la Révélation est désormais pleinement accomplie, même si la foi de l’Église devra en saisir graduellement toute la portée au cours des siècles.\n\n« Dès lors qu’Il nous a donné son Fils, qui est sa Parole unique et définitive, Dieu nous a tout dit en une seule fois dans cette Parole et il n’a plus rien à dire » (saint Jean de la Croix)."
},
{
  "Quelle valeur possèdent les révélations privées?": "Tout en n’appartenant pas au dépôt de la foi, elles peuvent aider à vivre la foi elle-même, à condition qu’elles gardent un étroit rapport au Christ. Le Magistère de l’Église, auquel il revient d’effectuer un discernement sur ces révélations privées, ne peut cependant accepter celles qui prétendent dépasser ou corriger la révélation définitive qui est le Christ."
},
{
  "Qu’est-ce que Dieu révèle à l’homme?": "Dans sa bonté et dans sa sagesse, Dieu se révèle à l’homme. Par les événements et par ses paroles, il se révèle lui-même ainsi que son dessein de bienveillance, qu’il a établi de toute éternité dans le Christ, en faveur des hommes. Ce dessein consiste à faire participer, par la grâce de l’Esprit Saint, tous les hommes à la vie divine, pour qu’ils soient fils adoptifs en son Fils unique."
},
{
  "Quelles sont les premières étapes de la révélation de Dieu?": "Dès l’origine, Dieu s’est manifesté à nos premiers parents, Adam et Ève, et il les a invités à une communion intime avec Lui. Après leur chute, il n’a pas interrompu sa révélation et il a promis le salut pour toute leur descendance. Après le déluge, il a conclu avec Noé une alliance entre Lui et tous les êtres vivants."
},
{
  "Quelles sont les étapes successives de la révélation de Dieu?": "Dieu a choisi Abraham, l’appelant à sortir de son pays pour faire de lui « le père d’un grand nombre de peuples » (Gn 17,5) et lui promettant de bénir en lui « toutes les nations de la terre » (Gn 12,3). Les descendants d’Abraham seront les dépositaires des promesses divines faites aux patriarches. Dieu a formé Israël comme son peuple d’élection, le sauvant de l’esclavage de l’Égypte. Il a conclu avec lui l’Alliance du Sinaï et, par Moïse, lui a donné sa Loi. Les prophètes ont annoncé une rédemption radicale du peuple et un salut qui inclura toutes les nations dans une Alliance nouvelle et éternelle. Du peuple d’Israël, de la race du roi David, naîtra Jésus, le Messie."
},
{
  "Quelle est l’étape dernière et définitive de la révélation de Dieu?": "Cette étape s’est accomplie par le Verbe incarné, Jésus Christ, médiateur, et plénitude de la révélation. Parce qu’il est le Fils unique de Dieu fait homme, il est la Parole parfaite et définitive du Père. Avec l’envoi du Fils et le don de l’Esprit Saint, la Révélation est désormais pleinement accomplie, même si la foi de l’Église devra en saisir graduellement toute la portée au cours des siècles.\n\n« Dès lors qu’Il nous a donné son Fils, qui est sa Parole unique et définitive, Dieu nous a tout dit en une seule fois dans cette Parole et il n’a plus rien à dire » (saint Jean de la Croix)."
},
{
  "Quelle valeur possèdent les révélations privées?": "Tout en n’appartenant pas au dépôt de la foi, elles peuvent aider à vivre la foi elle-même, à condition qu’elles gardent un étroit rapport au Christ. Le Magistère de l’Église, auquel il revient d’effectuer un discernement sur ces révélations privées, ne peut cependant accepter celles qui prétendent dépasser ou corriger la révélation définitive qui est le Christ."
},
{
  "Pourquoi et comment doit se transmettre la révélation divine?": "Dieu « veut que tous les hommes soient sauvés et parviennent à la connaissance de la vérité » (1 Tm 2,4), c’est-à-dire de Jésus Christ. C’est pourquoi il est nécessaire que le Christ soit annoncé à tous les hommes, selon son propre commandement : « Allez et enseignez toutes les nations » (Mt 28,19). Cela se réalise par la Tradition apostolique."
},
{
  "En quoi consiste la Tradition apostolique?": "La Tradition apostolique est la transmission du message du Christ, qui s’accomplit, depuis les origines du christianisme, par la prédication, le témoignage, les institutions, le culte, les écrits inspirés. Les Apôtres ont transmis à leurs successeurs, les Évêques, et, à travers eux, à toutes les générations, jusqu’à la fin des temps, ce qu’ils ont reçu du Christ et ce qu’ils ont appris de l’Esprit Saint."
},
{
  "Comment se réalise la Tradition apostolique?": "La Tradition apostolique se réalise de deux manières : par la transmission vivante de la Parole de Dieu (appelée plus simplement la Tradition) et par la Sainte Écriture, qui est la même annonce du salut, consignée par écrit."
},
{
  "Quel rapport existe-t-il entre la Tradition et la Sainte Écriture?": "La Tradition et la Sainte Écriture sont reliées et communiquent étroitement entre elles. En effet, l’une et l’autre rendent le mystère du Christ présent et fécond dans l’Église, et elles jaillissent d’une source divine identique. Elles constituent un seul dépôt sacré de la foi, où l’Église puise sa certitude concernant tout ce qui est révélé."
},
{
  "À qui est confié le dépôt de la foi?": "Depuis les Apôtres, le dépôt de la foi est confié à l’ensemble de l’Église. Avec le sens surnaturel de la foi, le peuple de Dieu tout entier, assisté de l’Esprit Saint et guidé par le Magistère de l’Église, accueille la Révélation divine, la comprend toujours plus profondément et s’attache à la vivre."
},
{
  "À qui revient-il d’interpréter de façon authentique le dépôt de la foi?": "L’interprétation authentique du dépôt de la foi appartient au seul Magistère vivant de l’Église, c’est-à-dire au Successeur de Pierre, l’Évêque de Rome, et aux Évêques en communion avec lui. Au Magistère, qui, dans le service de la Parole de Dieu, jouit du charisme certain de la vérité, il revient aussi de définir les dogmes, qui sont des formulations des vérités contenues dans la Révélation divine; ce pouvoir s’étend également aux vérités qui ont un lien nécessaire avec la Révélation."
},
{
  "Quelles sont les relations entre l’Écriture, la Tradition et le Magistère?": "Écriture, Tradition et Magistère sont si étroitement unis entre eux qu’aucun n’existe sans les autres. Ensemble, sous l’action de l’Esprit Saint, ils contribuent efficacement au salut des hommes, chacun selon son mode propre."
},
{
    "Pourquoi la Sainte Écriture enseigne-t-elle la vérité?": "Parce que Dieu lui-même est l’auteur de la Sainte Écriture. Elle est donc dite inspirée et elle enseigne sans erreur les vérités qui sont nécessaires à notre salut. En effet, l’Esprit Saint a inspiré les auteurs humains, qui ont écrit ce que Dieu veut nous enseigner. Cependant, la foi chrétienne n’est pas une « religion du Livre », mais de la Parole de Dieu, « non d’un verbe écrit et muet, mais du Verbe incarné et vivant » (saint Bernard de Clairvaux)."
  },
  {
    "Comment lire l’Écriture Sainte?": "La Sainte Écriture doit être lue et interprétée avec l’aide de l’Esprit Saint et sous la conduite du Magistère de l’Église, selon trois critères : 1) attention au contenu et à l’unité de toute l’Écriture, 2) lecture de l’Écriture dans la Tradition vivante de l’Église, 3) respect de l’analogie de la foi, c’est-à-dire de la cohésion harmonieuse des vérités de la foi entre elles."
  },
  {
    "Qu’est-ce que le canon des Écritures?": "Le canon des Écritures est la liste complète des écrits sacrés, que la Tradition apostolique a fait discerner à l’Église. Ce canon comprend quarante-six écrits de l’Ancien Testament et vingt-sept du Nouveau Testament."
  },
  {
    "Quelle est l’importance de l’Ancien Testament pour les chrétiens?": "Les chrétiens vénèrent l’Ancien Testament comme vraie Parole de Dieu. Tous ses écrits sont divinement inspirés et conservent une valeur permanente. Ils rendent témoignage de la pédagogie de l’amour sauveur de Dieu. Ils ont surtout été écrits pour préparer l’avènement du Christ, le Sauveur de l’univers."
  },
  {
    "Quelle est l’importance du Nouveau Testament pour les chrétiens?": "Le Nouveau Testament, dont l’objet central est Jésus Christ, nous enseigne la vérité définitive de la Révélation divine. Dans le Nouveau Testament, les quatre évangiles – Matthieu, Marc, Luc et Jean – sont les principaux témoignages sur la vie et sur l’enseignement de Jésus ; ils constituent le cœur de toutes les Écritures et ils occupent une place unique dans l’Église."
  },
  {
    "Quelle est l’unité entre l’Ancien et le Nouveau Testament?": "L’Écriture est une, car unique est la Parole de Dieu, unique le dessein de salut de Dieu, unique l’inspiration divine de l’un et l’autre Testaments. L’Ancien Testament prépare le Nouveau et le Nouveau accomplit l’Ancien. Les deux s’éclairent mutuellement."
  },
  {
    "Quelle est la fonction de la Sainte Écriture dans la vie de l’Église?": "La Sainte Écriture donne soutien et vigueur à la vie de l’Église. Pour les fils de l’Église, elle est solidité de la foi, nourriture et source de vie spirituelle. Elle est l’âme de la théologie et de la prédication pastorale. Le Psalmiste dit qu’elle est « la lumière de mes pas et la lampe de ma route » (Ps 118 [119],105). C’est pourquoi l’Église exhorte à la lecture fréquente de la Sainte Écriture, car « ignorer les Écritures, c’est ignorer le Christ » (saint Jérôme)."
  },
   {
    "Pourquoi la foi est-elle un acte personnel et en même temps ecclésial?": "La foi est un acte personnel, parce qu’elle est la libre réponse de l’homme à Dieu qui se révèle. Mais elle est en même temps un acte ecclésial qui s’exprime dans la confession de foi : « Nous croyons ». En effet, c’est l’Église qui croit. De cette manière, avec la grâce de l’Esprit Saint, elle précède, elle engendre et elle nourrit la foi de chacun. C’est pourquoi l’Église est Mère et Maîtresse.\n\n« Nul ne peut avoir Dieu pour Père qui n’a pas l’Église pour Mère » (saint Cyprien)."
  },
  {
    "Pourquoi les énoncés de la foi sont-ils importants?": "Les énoncés de la foi sont importants parce qu’ils permettent d’exprimer, d’assimiler, de célébrer et de vivre ensemble avec autrui les vérités de la foi, en utilisant un langage commun."
  },
  {
    "De quelle manière la foi de l’Église est-elle unique?": "Bien que formée de personnes différentes par la langue, la culture et les coutumes, l’Église professe d’une voix unanime l’unique foi, reçue d’un seul Seigneur et transmise par l’unique Tradition apostolique. Elle professe un seul Dieu – Père, Fils et Esprit Saint – et elle enseigne une seule voie de salut. Aussi, croyons-nous, d’un seul cœur et d’une seule âme, ce qui est contenu dans la Parole de Dieu, transmise ou écrite, et ce que l’Église présente comme divinement révélé."
  },
  
  {
    "Qu’est-ce que les Symboles de la foi?": "Ce sont des énoncés organiques, appelés encore « professions de foi » ou « Credo », par lesquels l’Église, depuis ses origines, a exprimé de manière synthétique et transmis sa foi dans un langage normatif et commun à tous les fidèles."
  },
  {
    "Quels sont les plus anciens Symboles de la foi?": "Ce sont les Symboles baptismaux. Parce que le baptême est donné « au nom du Père, et du Fils, et du Saint-Esprit » (Mt 28,19), les vérités de la foi qui y sont professées sont articulées selon leur référence aux trois Personnes de la Sainte Trinité."
  },
  {
    "Quels sont les plus importants Symboles de la foi?": "Ce sont le Symbole des Apôtres, qui est l’antique Symbole baptismal de l’Église de Rome, et le Symbole de Nicée-Constantinople, fruit des deux premiers Conciles œcuméniques, Nicée (325) et Constantinople (381). Ils demeurent communs, aujourd’hui encore, à toutes les grandes Églises d’Orient et d’Occident."
  },
  {
    "Pourquoi la profession de foi commence-t-elle par « Je crois en Dieu »?": "Parce que l’affirmation « Je crois en Dieu » est la plus importante. Elle est la source de toutes les autres vérités sur l’homme et sur le monde, et de toute la vie de ceux qui croient en Dieu."
  },
  {
    "Pourquoi professons-nous un seul Dieu?": "Parce que Dieu s’est révélé au peuple d’Israël comme l’Unique, lorsqu’il dit : « Écoute, Israël, le Seigneur notre Dieu est l’Unique » (Dt 6, 4), « Il n’y en a pas d’autre » (Is 45,22). Jésus lui-même l’a confirmé : Dieu est « l’unique Seigneur » (Mc 12,29). Professer que Jésus et l’Esprit Saint sont, eux aussi, Dieu et Seigneur, n’introduit aucune division dans le Dieu unique."
  },
  {
    "Par quel nom Dieu se révèle-t-il?": "À Moïse, Dieu s’est révélé comme le Dieu vivant, « Dieu d’Abraham, Dieu d’Isaac, Dieu de Jacob » (Ex 3,6). Il lui a révélé son nom mystérieux : « Je suis Celui qui Est » (YHWH). Déjà, à l’époque de l’Ancien Testament, le nom ineffable de Dieu fut remplacé par celui de Seigneur. Ainsi, dans le Nouveau Testament, Jésus, appelé Seigneur, apparaît comme vrai Dieu."
  },
  {
    "Seul Dieu « est »-il?": "Tandis que les créatures ont reçu de Lui ce qu’elles sont et ce qu’elles ont, seul Dieu est en lui-même la plénitude de l’être et de toutes les perfections. Il est « celui qui est », sans commencement ni fin. Jésus révèle qu’il porte lui aussi le Nom divin : « Je suis » (Jn 8,28)."
  },
  {
    "Pourquoi la révélation du nom de Dieu est-elle importante?": "Par la révélation de son Nom, Dieu fait connaître les richesses contenues dans son mystère ineffable : Lui seul existe depuis toujours et pour toujours, Lui qui transcende le monde et l’histoire. C’est Lui qui a fait le ciel et la terre. Il est le Dieu fidèle; toujours proche de son peuple pour le sauver. Il est le Saint par excellence, « riche en miséricorde » (Ep 2,4), toujours prêt à pardonner. Il est l’Être spirituel, transcendant, tout-puissant, éternel, personnel, parfait. Il est vérité et amour."
  },
  {
    "En quel sens Dieu est-il la vérité?": "Dieu est la Vérité même et, comme tel, il ne se trompe ni ne peut tromper. Il « est lumière, il n’y a pas de ténèbres en lui » (1 Jn 1,5). Le Fils éternel de Dieu, Sagesse incarnée, a été envoyé dans le monde « pour rendre témoignage à la Vérité » (Jn 18,37)."
  },
  {
    "Comment Dieu révèle-t-il qu’il est amour?": "Dieu s’est révélé à Israël comme celui dont l’amour est plus fort que l’amour d’un père ou d’une mère pour ses enfants, d’un époux pour son épouse. En lui-même, il « est amour » (1 Jn 4,8.16), qui se donne totalement et gratuitement : Il « a tant aimé le monde qu’il lui a donné son Fils unique, [...] pour que, par lui, le monde soit sauvé » (Jn 3,16-17). En envoyant son Fils et l’Esprit Saint, Dieu révèle qu’il est lui-même éternel échange d’amour."
  },
  {
    "Que comporte la foi en un seul Dieu?": "Croire en un seul Dieu comporte de connaître sa grandeur et sa majesté, de vivre en lui rendant grâce, d’avoir toujours confiance en lui, même dans l’adversité, de reconnaître l’unité et la vraie dignité de tous les hommes, créés à son image, d’user avec rectitude de sa création."
  },
  {
    "Quel est le mystère central de la foi et de la vie chrétienne?": "Le mystère central de la foi et de la vie chrétienne est le mystère de la Sainte Trinité. Les chrétiens sont baptisés au nom du Père et du Fils et du Saint-Esprit."
  },
  {
    "Le mystère de la Sainte Trinité peut-il être connu par la seule raison humaine?": "Dieu a laissé des traces de son être trinitaire dans la création et dans l’Ancien Testament; mais la profondeur de son Être comme Trinité sainte constitue un mystère inaccessible à la seule raison humaine, et même à la foi d’Israël, avant l’Incarnation du Fils de Dieu et l’envoi de l’Esprit Saint. Ce mystère a été révélé par Jésus Christ et il est à la source de tous les autres mystères."
  },
  {
    "Que Jésus Christ nous révèle-t-il du mystère du Père?": "Jésus Christ nous révèle que Dieu est « Père », non seulement parce qu’il est le Créateur de l’univers et de l’homme, mais surtout parce qu’il engendre éternellement en son sein le Fils, qui est son Verbe, « reflet resplendissant de la gloire du Père, expression parfaite de sa substance » (He 1,3)."
  },
  {
    "Qui est l’Esprit Saint, que Jésus Christ nous a révélé?": "Il est la troisième Personne de la Sainte Trinité. Il est Dieu, uni au Père et au Fils, et égal à eux. Il « procède du Père » (Jn 15,26), qui, en tant que principe sans commencement, est l’origine de toute la vie trinitaire. Il procède aussi du Fils (Filioque), par le don éternel que le Père fait de lui au Fils. Envoyé par le Père et le Fils incarné, l’Esprit Saint conduit l’Église à la connaissance de « la Vérité tout entière » (Jn 16,13)."
  },
  {
    "Comment l’Église exprime-t-elle sa foi trinitaire?": "L’Église exprime sa foi trinitaire en confessant un seul Dieu en trois Personnes : Père, Fils et Esprit Saint. Les trois Personnes divines sont un seul Dieu, parce que chacune d’elles est identique à la plénitude de l’unique et indivisible nature divine. Elles sont réellement distinctes entre elles par les relations qui les mettent en rapport les unes avec les autres. Le Père engendre le Fils, le Fils est engendré par le Père, le Saint-Esprit procède du Père et du Fils."
  },
   {
    "Comment agissent les trois Personnes divines?": "Inséparables dans leur unique nature, les Personnes divines sont aussi inséparables dans leur action. La Trinité a une seule et même opération. Mais dans l’unique action divine, chaque Personne est présente selon le mode qui lui est propre dans la Trinité."
  },
  {
    "Que signifie que Dieu est tout-puissant?": "Dieu s’est révélé comme « le fort, le vaillant » (Ps 23 [24],8), celui auquel « rien n’est impossible » (Lc 1,37). Sa toute-puissance est universelle et mystérieuse. Elle se manifeste dans la création du monde à partir de rien, dans l’Incarnation et la Résurrection de son Fils, ainsi que dans le don de l’adoption filiale et le pardon des péchés."
  },
  {
    "Pourquoi est-il important d’affirmer : «Au commencement, Dieu créa le ciel et la terre » (Gn 1,1)?": "Parce que la création est le fondement de tous les projets divins de salut. Elle manifeste l’amour tout-puissant et sage de Dieu, marque le début de l’Alliance avec son peuple et constitue la première réponse aux interrogations de l’homme sur son origine et sa fin."
  },
  {
    "Qui a créé le monde?": "Le Père, le Fils et l’Esprit Saint sont le principe unique et indivisible du monde, bien que l’œuvre de la création soit particulièrement attribuée à Dieu le Père."
  },
  {
    "Pourquoi Dieu a-t-il créé le monde?": "Le monde a été créé pour la gloire de Dieu, afin de manifester et de communiquer sa bonté, sa vérité et sa beauté. La finalité de la création est que Dieu soit « tout en tous » (1 Co 15,28), pour sa gloire et notre bonheur."
  },
  {
    "Comment Dieu a-t-il créé l’univers?": "Dieu a créé l’univers librement, avec sagesse et amour. Il l’a fait « de rien » (ex nihilo) en un monde ordonné et bon. Il le soutient continuellement, lui donne la capacité d’agir et le conduit vers son achèvement par son Fils et l’Esprit Saint."
  },
  {
    "En quoi consiste la Providence divine?": "La divine Providence est l’ensemble des dispositions par lesquelles Dieu conduit ses créatures vers l’ultime perfection à laquelle il les appelle. Il est l’auteur souverain de son dessein, mais il agit aussi par la coopération de ses créatures."
  },
  {
    "Comment l’homme collabore-t-il avec la divine Providence?": "Tout en respectant sa liberté, Dieu donne à l’homme la possibilité de collaborer avec lui par ses actions, ses prières et ses souffrances, en suscitant en lui « le vouloir et le faire selon la bonté de son dessein » (Ph 2,13)."
  },
  {
    "Si Dieu est tout-puissant et providence, pourquoi alors le mal existe-t-il?": "Seul l’ensemble de la foi chrétienne peut répondre à cette question mystérieuse et douloureuse. Dieu n’est en aucune manière la cause du mal. Il éclaire ce mystère par Jésus Christ, mort et ressuscité pour vaincre le péché, qui est la racine des autres maux."
  },
  {
    "Pourquoi Dieu permet-il le mal?": "Dieu permet le mal parce qu’il sait en tirer un bien supérieur. La preuve en est dans la mort et la résurrection du Christ : du plus grand mal moral, la crucifixion de son Fils, Dieu a fait naître les plus grands biens, la glorification du Christ et notre rédemption."
  },

  {
    "Que Dieu a-t-il créé?": "La Sainte Écriture dit : « Au commencement Dieu créa le ciel et la terre » (Gn 1,1). Dans sa profession de foi, l’Église proclame que Dieu est le créateur de toutes les choses visibles et invisibles, de tous les êtres spirituels et matériels, c’est-à-dire les anges et le monde visible, et tout particulièrement l’homme."
  },
  {
    "Qui sont les anges?": "Les anges sont des créatures purement spirituelles, incorporelles, invisibles et immortelles; ce sont des êtres personnels, doués d’intelligence et de volonté. Contemplant sans cesse Dieu face à face, ils le glorifient; ils le servent et sont ses messagers pour l’accomplissement de la mission de salut de tous les hommes."
  },
  {
    "Comment les anges sont-ils présents à la vie de l’Église?": "L’Église s’unit aux anges pour adorer Dieu; elle invoque leur assistance et, dans sa liturgie, elle célèbre la mémoire de certains d’entre eux. « Chaque fidèle a à ses côtés un ange comme protecteur et pasteur pour le conduire à la vie » (saint Basile le Grand)."
  },
  {
    "Qu’enseigne la Sainte Écriture au sujet de la création du monde visible?": "À travers le récit des « sept jours » de la création, la Sainte Écriture nous fait connaître la valeur de la création et sa finalité qui est la louange de Dieu et le service de l’homme. Toute chose doit son existence à Dieu, de qui elle reçoit sa bonté et sa perfection, ses lois et sa place dans l’univers."
  },
  {
    "Quelle est la place de l’homme dans la création?": "L’homme est le sommet de la création visible, car il est créé à l’image et à la ressemblance de Dieu."
  },
  {
    "Quel type de liens existe-t-il entre les réalités créées?": "Entre les créatures, il existe une interdépendance et une hiérarchie voulues par Dieu. En même temps, il existe une unité et une solidarité entre les créatures, car toutes ont le même créateur, toutes sont aimées de lui et sont ordonnées à sa gloire. Respecter les lois inscrites dans la création et les rapports découlant de la nature des choses constitue donc un principe de sagesse et un fondement de la morale."
  },
  {
    "Quelle relation y a-t-il entre l’œuvre de la création et celle de la rédemption?": "L’œuvre de la création culmine dans l’œuvre, plus grande encore, de la rédemption. En effet, cette dernière est le point de départ de la nouvelle création, dans laquelle tout retrouvera son sens plénier et son achèvement."
  },
 {
    "En quel sens l’homme est-il créé à « l’image de Dieu »?": "L’homme est créé à l’image de Dieu en ce sens qu’il est capable de connaître et d’aimer librement son créateur. Sur la terre, il est la seule créature que Dieu a voulue pour elle-même et qu’il a appelée à participer à sa vie divine, par la connaissance et par l’amour. Parce qu’il est créé à l’image de Dieu, l’homme a la dignité d’une personne; il n’est pas quelque chose, mais quelqu’un, capable de se connaître, de se donner librement et d’entrer en communion avec Dieu et avec autrui."
  },
  {
    "Dans quel but Dieu a-t-il créé l’homme?": "Dieu a tout créé pour l’homme, mais l’homme a été créé pour connaître, servir et aimer Dieu, pour lui offrir, dans ce monde, la création en action de grâce et pour être, dans le ciel, élevé à la vie avec Dieu. C’est seulement dans le mystère du Verbe incarné que le mystère de l’homme trouve sa vraie lumière. L’homme est prédestiné à reproduire l’image du Fils de Dieu fait homme, qui est lui-même la parfaite « image du Dieu invisible » (Col 1,15)."
  },
  {
    "Pourquoi les hommes forment-ils une unité?": "Tous les hommes forment l’unité du genre humain, en raison de leur commune origine, qu’ils tiennent de Dieu. De plus, Dieu, « à partir d’un seul homme, a créé tous les peuples » (Ac 17,26). Tous ont un unique Sauveur. Tous sont appelés à partager l’éternité bienheureuse de Dieu."
  },
  {
    "Dans l’homme, comment l’âme et le corps ne forment-ils qu’un?": "La personne humaine est un être à la fois corporel et spirituel. En l’homme, l’esprit et la matière forment une seule nature. Cette unité est si profonde que, grâce au principe spirituel qu’est l’âme, le corps, qui est matière, devient un corps humain et vivant, et prend part à la dignité d’image de Dieu."
  },
  {
    "Qui donne l’âme à l’homme?": "L’âme spirituelle ne vient pas des parents, mais elle est créée directement par Dieu, et elle est immortelle. Se séparant du corps au moment de la mort, elle ne meurt pas; elle s’unira à nouveau au corps au moment de la résurrection finale."
  },
  {
    "Quel rapport entre l’homme et la femme Dieu a-t-il établi?": "L’homme et la femme ont été créés par Dieu dans une égale dignité en tant que personnes humaines et, en même temps, dans une complémentarité réciproque en tant qu’homme et femme. Dieu les a voulus l’un pour l’autre, pour une communion de personnes. Ensemble, ils sont aussi appelés à transmettre la vie humaine, formant dans le mariage « une seule chair » (Gn 2,24) et à dominer la terre comme « intendants » de Dieu."
  },
  {
    "Quelle était la condition originelle de l’homme selon le projet de Dieu?": "En créant l’homme et la femme, Dieu leur avait donné une participation spéciale à sa vie divine, dans la sainteté et la justice. Dans le projet de Dieu, l’homme n’aurait dû ni souffrir ni mourir. En outre, il régnait une harmonie parfaite de l’homme en lui-même, entre la créature et le créateur, entre l’homme et la femme, comme aussi entre le premier couple humain et toute la création."
  },
    {
    "Comment comprendre la réalité du péché?": "Dans l’histoire de l’homme, le péché est présent. Une telle réalité ne s’éclaire pleinement qu’à la lumière de la Révélation divine, et surtout à la lumière du Christ Sauveur de tous, qui a fait surabonder la grâce là où le péché a abondé."
  },
  {
    "Qu’est-ce que la chute des anges?": "Par cette expression, on veut signifier que Satan et les autres démons, dont parlent la Sainte Écriture et la Tradition de l’Église, alors qu’ils étaient des anges créés bons par Dieu, se sont transformés en méchants, car, par leur choix libre et irrévocable, ils ont refusé Dieu et son Règne, donnant ainsi naissance à l’enfer. Ils tentent d’associer l’homme à leur rébellion contre Dieu; mais Dieu affirme dans le Christ sa victoire assurée sur le Malin."
  },
  {
    "En quoi consiste le premier péché de l’homme?": "L’homme, tenté par le démon, a laissé s’éteindre en son cœur la confiance dans ses rapports avec son Créateur. En lui désobéissant, il a voulu devenir « comme Dieu », sans Dieu et non selon Dieu (Gn 3,5). Ainsi, Adam et Ève ont perdu immédiatement, pour eux et pour toute leur descendance, la grâce de la sainteté et de la justice originelles."
  },
  {
    "Qu’est ce que le péché originel?": "Le péché originel, avec lequel naissent tous les hommes, est l’état de privation de sainteté et de justice originelles dans lequel naissent tous les hommes. C’est un péché que nous avons « contracté » et non un péché que l’on « commet »; c’est une condition de naissance et non un acte personnel. En raison de l’unité originelle de tout le genre humain, ce péché se transmet aux descendants d’Adam avec la nature humaine, « non par imitation, mais par propagation ». Cette transmission reste un mystère que nous ne pouvons saisir pleinement."
  },
  {
    "Quelles sont les autres conséquences provoquées par le péché originel?": "Par la suite du péché originel, la nature humaine, sans être entièrement corrompue, est blessée dans ses forces naturelles, soumise à l’ignorance, à la souffrance, au pouvoir de la mort; elle est inclinée au péché. Cette inclination s’appelle concupiscence."
  },
  {
    "Après le premier péché, qu’a fait Dieu?": "Après le premier péché, le monde a été envahi par les péchés, mais Dieu n’a pas abandonné l’homme au pouvoir de la mort. Au contraire, il a annoncé d’une façon mystérieuse – dans le « Protévangile » (cf. Gn 3,15) – que le mal serait vaincu et que l’homme serait relevé de la chute. C’est la première annonce du Messie rédempteur. C’est pourquoi on ira jusqu’à qualifier la chute d’heureuse faute (felix culpa), car « elle a mérité un si grand Rédempteur » (Liturgie de la Veillée pascale)."
  },
  {
    "Quelle est la Bonne Nouvelle pour l’homme?": "C’est l’annonce de Jésus Christ, « le Fils du Dieu vivant » (Mt 16,16) mort et ressuscité. Au temps du roi Hérode et de l’empereur César Auguste, Dieu a accompli la promesse faite à Abraham et à sa descendance en envoyant « son Fils, né d’une femme, né sujet de la loi, afin de racheter ceux qui sont nés sous la loi, afin de faire de nous des fils » (Ga 4,4-5)."
  },
  {
    "Comment s’est répandue la Bonne Nouvelle?": "Dès le début, les premiers disciples ont eu l’ardent désir d’annoncer Jésus Christ dans le but de conduire tous les hommes à la foi en lui. Aujourd’hui encore, de la connaissance aimante du Christ naît le désir d’évangéliser et de catéchiser, c’est-à-dire de révéler en sa personne tout le dessein de Dieu et de mettre l’humanité en communion avec lui."
  },
  {
    "Que signifie le nom de « Jésus »?": "Donné par l’Ange à l’Annonciation, le nom de « Jésus » signifie « Dieu sauve ». Il exprime son identité et sa mission, car « c’est Lui qui sauvera son peuple de ses péchés » (Mt 1,21). Pierre affirme qu’« il n’y a pas sous le ciel d’autre nom par lequel nous puissions être sauvés » (Ac 4,12)."
  },
  {
    "Pourquoi Jésus est-il appelé « Christ »?": "« Christ » en grec, « Messie » en hébreu, signifie « oint ». Jésus est le Christ parce qu’il a été consacré par Dieu, oint par l’Esprit Saint pour sa mission rédemptrice. Il est le Messie attendu par Israël, envoyé dans le monde par le Père. Jésus a accepté le titre de Messie en en précisant toutefois le sens : « Descendu du Ciel » (Jn 3,13), crucifié puis ressuscité, il est le Serviteur souffrant, qui « donne sa vie pour racheter la multitude » (Mt 20,28). Du nom Christ dérive notre nom de chrétiens."
  },
  {
    "En quel sens Jésus est-il le « Fils unique de Dieu »?": "Il l’est dans un sens unique et parfait. À son Baptême et à la Transfiguration, la voix du Père désigne Jésus comme son « Fils bien-aimé ». Se présentant lui-même comme le Fils qui « connaît le Père » (Mt 11,27), Jésus affirme sa relation unique et éternelle avec Dieu son Père. « Il est le Fils unique de Dieu » (1 Jn 4,9), la deuxième Personne de la Trinité. Il est le centre de la prédication apostolique : les Apôtres ont vu « sa gloire, la gloire qu’il tient de son Père comme Fils unique » (Jn 1,14)."
  },
  {
    "Que signifie le titre de « Seigneur »?": "Dans la Bible, ce titre désigne d’ordinaire le Dieu souverain. Jésus se l’attribue et révèle sa souveraineté divine par son pouvoir sur la nature, sur les démons, sur le péché et sur la mort, et surtout par sa résurrection. Les premières confessions chrétiennes proclament que la puissance, l’honneur et la gloire rendus à Dieu le Père le sont aussi à Jésus, à qui Dieu « a donné un nom au-dessus de tout autre nom » (Ph 2,9). Il est le Seigneur du monde et de l’histoire, le seul auquel l’homme doit soumettre totalement sa liberté personnelle."
  },
  {
    "Pourquoi le Fils de Dieu s’est-il fait homme?": "Le Fils de Dieu s’est incarné dans le sein de la Vierge Marie par l’opération du Saint-Esprit, pour nous les hommes et pour notre salut, c’est-à-dire pour nous réconcilier, nous pécheurs, avec Dieu, pour nous faire connaître son amour infini, pour être notre modèle de sainteté et pour nous rendre « participants de la nature divine » (2 P 1,4)."
  },
  {
    "Que signifie le mot « Incarnation »?": "L’Église appelle « Incarnation » le mystère de l’admirable union de la nature divine et de la nature humaine en l’unique Personne divine du Verbe. Pour accomplir notre salut, le Fils de Dieu s’est fait « chair » (Jn 1,14), devenant vraiment homme. La foi en l’Incarnation est le signe distinctif de la foi chrétienne."
  },
  {
    "Comment Jésus Christ est-il vrai Dieu et vrai homme?": "Jésus Christ est de manière indissociable vrai Dieu et vrai homme dans l’unité de sa Personne divine. Lui, le Fils de Dieu, qui est « engendré, non pas créé, de même substance que le Père », il s’est vraiment fait homme, notre frère, sans pour autant cesser d’être Dieu, notre Seigneur."
  },
  {
    "Qu’enseigne à ce sujet le Concile de Chalcédoine (en 451)?": "Le Concile de Chalcédoine enseigne à confesser « un seul et même Fils, Notre Seigneur Jésus Christ, parfait en divinité et parfait en humanité, le même vraiment Dieu et vraiment homme, composé d’une âme rationnelle et d’un corps, consubstantiel au Père selon la divinité, consubstantiel à nous selon l’humanité, ‘semblable à nous en tout, à l’exception du péché’ (He 4,15); engendré du Père avant tous les siècles selon la divinité et, en ces derniers jours, pour nous et notre salut, né de la Vierge Marie, Mère de Dieu, selon l’humanité »."
  },
  {
    "Comment l’Église exprime-t-elle le mystère de l’Incarnation?": "Elle l’exprime en affirmant que Jésus Christ est vrai Dieu et vrai homme, avec deux natures, divine et humaine, non pas confondues, mais unies dans la Personne du Verbe. Néanmoins, dans l’humanité de Jésus, tout – les miracles, la souffrance et la mort – doit être attribué à sa Personne divine, qui agit par la nature humaine qu’elle assume."
  },
  {
    "Le Fils de Dieu fait homme avait-il une âme avec une connaissance humaine?": "Le Fils de Dieu a assumé un corps animé par une âme humaine raisonnable. Avec son intelligence humaine, Jésus a appris beaucoup par l’expérience. Mais aussi comme homme, le Fils de Dieu avait une connaissance intime et immédiate de Dieu son Père. Il pénétrait également les pensées secrètes des hommes et connaissait pleinement les desseins éternels qu’il est venu révéler."
  },
  {
    "Comment s’accordent les deux volontés du Verbe incarné?": "Jésus a une volonté divine et une volonté humaine. Dans sa vie terrestre, le Fils de Dieu a humainement voulu ce qu’il avait divinement décidé pour notre salut avec le Père et l’Esprit Saint. Sans résistance ni opposition, la volonté humaine du Christ suit la volonté divine; mieux encore, elle lui est soumise."
  },
  {
    "Le Christ avait-il un vrai corps humain?": "Le Christ a assumé un vrai corps humain, par lequel Dieu invisible s’est rendu visible. Pour cette raison, le Christ peut être représenté et vénéré au moyen d’images saintes."
  },
  {
    "Que représente le cœur de Jésus?": "Jésus nous a connus et aimés avec un cœur d’homme. Son cœur transpercé pour notre salut est le symbole de l’amour infini avec lequel il aime son Père et tous les hommes."
  },
  {
    "« Conçu par l’opération du Saint-Esprit… ». Que signifie cette expression?": "Elle signifie que la Vierge Marie a conçu dans son sein le Fils éternel par l’action de l’Esprit Saint et sans le concours d’un homme : « L’Esprit Saint viendra sur toi » (Lc 1,35), lui a dit l’ange à l’Annonciation."
  },
  {
    "« Né de la Vierge Marie ». Pourquoi Marie est-elle vraiment la Mère de Dieu?": "Marie est vraiment Mère de Dieu parce qu’elle est la Mère de Jésus (cf. Jn 2,1; 19,25). En effet, celui qui a été conçu par l’opération du Saint-Esprit et qui est devenu vraiment son Fils est le Fils éternel du Père. Il est lui-même Dieu."
  },
  {
    "Que signifie l’« Immaculée Conception »?": "De toute éternité et de façon toute gratuite, Dieu a choisi Marie pour être la Mère de son Fils. Pour accomplir cette mission, elle a été immaculée dès sa conception. Cela signifie que, par la grâce de Dieu et en vue des mérites de Jésus Christ, Marie a été préservée du péché originel dès sa conception."
  },
  {
    "Comment Marie collabore-t-elle au dessein divin du salut?": "Par la grâce de Dieu, Marie est restée préservée de tout péché personnel durant toute son existence. Elle est « pleine de grâce » (Lc 1,28), la « Toute Sainte ». Quand l’ange lui annonça qu’elle mettrait au monde « le Fils du Très-Haut » (Lc 1,32), elle donna librement son consentement dans « l’obéissance de la foi » (Rm 1,5). Marie s’est livrée totalement à la Personne et à l’œuvre de son Fils Jésus, acceptant de toute son âme la volonté divine du salut."
  },
  {
    "Que signifie la conception virginale de Jésus?": "Elle signifie que Jésus a été conçu dans le sein de la Vierge par la seule puissance de l’Esprit Saint, sans intervention de l’homme. Il est Fils du Père céleste selon sa nature divine, Fils de Marie selon sa nature humaine, mais vraiment Fils de Dieu dans ses deux natures, étant en lui-même une seule Personne, qui est divine."
  },
  {
    "En quel sens Marie est-elle « toujours vierge »?": "Dans le sens qu’elle est « restée vierge en concevant son Fils, vierge en l’enfantant, vierge en le portant, vierge en le nourrissant de son sein, vierge mère, vierge toujours » (saint Augustin). Cependant, quand les Évangiles parlent de « frères et sœurs de Jésus », il s’agit de parents proches de Jésus, selon une expression utilisée dans la Sainte Écriture."
  },
   {
    "De quelle manière la maternité spirituelle de Marie est-elle universelle?": "Marie a un Fils unique, Jésus, mais, en lui, sa maternité spirituelle s’étend à tous les hommes, qu’il est venu sauver. Obéissant au côté du nouvel Adam, qui est Jésus Christ, la Vierge est la nouvelle Ève, la véritable mère des vivants, qui coopère avec son amour maternel à leur naissance et à leur croissance dans l’ordre de la grâce. Vierge et Mère, Marie est la figure de l’Église, sa plus parfaite réalisation."
  },
  {
    "En quel sens toute la vie du Christ est-elle Mystère?": "Toute la vie du Christ est un événement de révélation. Ce qui est visible dans la vie terrestre du Christ conduit à son Mystère invisible, surtout au Mystère de sa filiation divine : « Qui me voit, voit le Père » (Jn 14,9). D’autre part, bien que le salut soit pleinement accompli par la croix et la résurrection, la vie entière du Christ est Mystère de salut, car tout ce que Jésus a fait, a dit et a souffert avait pour but de sauver l’homme déchu et de le rétablir dans sa vocation de fils de Dieu."
  },
  {
    "Quelles ont été les préparations des Mystères de Jésus?": "Avant tout, il y eut durant de nombreux siècles une longue espérance, que nous revivons pendant la célébration liturgique du temps de l’Avent. Outre l’attente obscure qu’il a établie dans le cœur des païens, Dieu a préparé la venue de son Fils à travers l’Ancienne Alliance, jusqu’à Jean-Baptiste, qui est le dernier et le plus grand des prophètes."
  },
  {
    "Qu’enseigne l’Évangile sur les mystères de la naissance et de l’enfance de Jésus?": "À Noël, la gloire du Ciel se manifeste dans la faiblesse d’un nouveau-né. La circoncision de Jésus est le signe de son appartenance au peuple juif et la préfiguration de notre Baptême. L’Épiphanie est la manifestation du Roi-Messie d’Israël à toutes les nations. Dans la Présentation au Temple, en Syméon et Anne, c’est toute l’attente d’Israël qui vient à la rencontre de son Sauveur. La fuite en Égypte et le massacre des innocents annoncent que la vie entière du Christ sera sous le signe de la persécution. Son retour d’Égypte rappelle l’exode et présente Jésus comme le nouveau Moïse : il est le libérateur véritable et définitif."
  },
  {
    "Quel enseignement nous offre la vie cachée de Jésus à Nazareth?": "Durant la vie cachée à Nazareth, Jésus reste dans le silence d’une existence ordinaire. Il nous permet ainsi d’être en communion avec lui dans la sainteté d’une vie quotidienne faite de prière, de simplicité, de labeur, d’amour familial. Sa soumission à Marie et à Joseph, son père putatif, est une image de son obéissance filiale à son Père. Avec leur foi, Marie et Joseph accueillent le mystère de Jésus, bien qu’ils ne le comprennent pas toujours."
  },
  {
    "Pourquoi Jésus reçoit-il de Jean le « baptême de conversion pour le pardon des péchés »?": "Pour commencer sa vie publique et pour anticiper le Baptême de sa mort, il accepte ainsi, bien que sans péché, d’être compté parmi les pécheurs, lui, « l’Agneau de Dieu, qui enlève le péché du monde » (Jn 1,29). Le Père le déclare « son Fils bien-aimé » (Mt 3,17), et l’Esprit descend sur lui. Le baptême de Jésus est la préfiguration de notre Baptême."
  },
  {
    "Que nous révèlent les tentations de Jésus au désert?": "Les tentations de Jésus au désert récapitulent celles d’Adam au paradis et celles d’Israël dans le désert. Satan tente Jésus dans son obéissance à la mission confiée par son Père. Le Christ, nouvel Adam, résiste et sa victoire annonce celle de la Passion, obéissance suprême de son amour filial. L’Église s’unit à ce Mystère tout particulièrement dans le temps liturgique du Carême."
  },
  {
    "Qui est invité à faire partie du Royaume de Dieu, annoncé et accompli par Jésus?": "Jésus invite tous les hommes à faire partie du Royaume de Dieu. Même le pire des pécheurs est appelé à se convertir et à accepter l’infinie miséricorde du Père. Déjà, sur la terre, le Royaume appartient à ceux qui l’accueillent d’un cœur humble. C’est à eux que sont révélés ses mystères."
  },
  {
    "Pourquoi le Christ manifeste-t-il le Royaume par des signes et des miracles?": "Jésus accompagne sa parole de signes et de miracles pour attester que le Royaume est présent en lui, le Messie. Bien qu’il guérisse certaines personnes, il n’est pas venu pour éliminer ici-bas tous les maux, mais avant tout pour libérer les hommes de l’esclavage du péché. La lutte contre les démons annonce que sa croix l’emportera sur « le prince de ce monde » (Jn 12,31)."
  },
  {
    "Dans le Royaume, quelle autorité confère le Christ à ses Apôtres?": "Jésus choisit les Douze, futurs témoins de sa Résurrection. Il les fait participer à sa mission et à son autorité pour enseigner, pour pardonner les péchés, pour édifier et pour gouverner l’Église. Dans ce collège, Pierre reçoit « les clefs du Royaume » (Mt 16,19) et occupe la première place, avec la mission de garder la foi dans son intégrité et de confirmer ses frères."
  },
{
    "Quelle est l’importance du mystère pascal de Jésus?": "Le mystère pascal de Jésus, qui comprend sa passion, sa mort, sa résurrection et sa glorification, est au centre de la foi chrétienne. Car le dessein sauveur de Dieu s’est accompli une fois pour toutes par la mort rédemptrice de son Fils Jésus Christ."
  },
  {
    "Pour quelles accusations Jésus a-t-il été condamné?": "Certains chefs d’Israël ont accusé Jésus d’agir contre la Loi, contre le temple de Jérusalem et en particulier contre la foi au Dieu unique, parce qu’il se proclamait Fils de Dieu. C’est pourquoi ils le livrèrent à Pilate afin qu’il fût condamné à mort."
  },
  {
    "Quelle a été l’attitude de Jésus envers la Loi d’Israël?": "Jésus n’a pas aboli la Loi donnée par Dieu à Moïse sur le mont Sinaï, mais il l’a portée à son achèvement en lui donnant son interprétation définitive. Il est le Législateur divin qui exécute intégralement cette Loi. D’autre part, par sa mort expiatrice, en Serviteur fidèle, il offre le seul sacrifice capable de racheter toutes « les fautes commises par les hommes sous la première Alliance » (He 9,15)."
  },
  {
    "Quelle a été l’attitude de Jésus à l’égard du temple de Jérusalem?": "Jésus a été accusé d’hostilité envers le Temple. Pourtant, il l’a vénéré comme « la maison de son Père » (Jn 2,16). Il lui a consacré une part importante de son enseignement. Mais il a aussi prédit sa destruction en relation avec sa propre mort. Il s’est présenté lui-même comme la demeure définitive de Dieu parmi les hommes."
  },
  {
    "Jésus a-t-il contredit la foi d’Israël au Dieu unique et sauveur?": "Jésus n’a jamais contredit la foi au Dieu unique, pas même quand il accomplissait l’œuvre divine par excellence qui achevait les promesses messianiques et qui le révélait égal à Dieu : le pardon des péchés. La demande de Jésus de croire en lui et de se convertir permet de saisir la tragique incompréhension du Sanhédrin, qui a jugé qu’il méritait la mort pour cause de blasphème."
  },
  {
    "Qui est responsable de la mort de Jésus?": "La passion et la mort de Jésus ne peuvent être imputées indistinctement ni à tous les Juifs alors vivants, ni aux Juifs venus ensuite dans le temps et dans l’espace. Tout pécheur individuel, c’est-à-dire tout homme, est réellement la cause et l’instrument des souffrances du Rédempteur. Sont plus gravement coupables ceux qui, surtout s’ils sont chrétiens, retombent souvent dans le péché et se complaisent dans les vices."
  },
  {
    "Pourquoi la mort du Christ fait-elle partie du dessein de Dieu?": "Pour réconcilier en lui tous les hommes, voués à la mort à cause du péché, Dieu a pris l’initiative pleine d’amour d’envoyer son Fils afin qu’il se soumette à la mort pour les pécheurs. Annoncée dans l’Ancien Testament, en particulier comme sacrifice du Serviteur souffrant, la mort du Christ est arrivée « selon les Écritures »."
  },
  {
    "Comment le Christ s’est-il offert lui-même au Père?": "Toute la vie du Christ est offerte librement au Père pour accomplir son dessein de salut. Il a donné sa vie « en rançon pour la multitude » (Mc 10, 45). Par là, il réconcilie toute l’humanité avec Dieu. Sa souffrance et sa mort manifestent que sa propre humanité a été l’instrument libre et parfait de l’Amour divin qui veut le salut de tous les hommes."
  },
  {
    "Comment s’exprime l’offrande de Jésus lors de la dernière Cène?": "Au cours de la dernière Cène avec ses Apôtres, la veille de sa passion, Jésus anticipe, c’est-à-dire signifie et réalise par avance, l’offrande volontaire de lui-même : « Ceci est mon corps livré pour vous » (Lc 22,19), « Ceci est mon sang répandu… » (Mt 26,28). Ainsi, il a institué en même temps l’Eucharistie comme « mémorial » (cf. 1 Co 11,25) de son sacrifice et ses Apôtres comme prêtres de la nouvelle Alliance."
  },{
    "Que s’est-il produit lors de l’agonie au jardin de Gethsémani?": "Malgré l’horreur que cause la mort dans l’humanité toute sainte de celui qui est l’« Auteur de la Vie » (Ac 3,15), la volonté humaine du Fils de Dieu adhère à la volonté du Père : pour nous sauver, Jésus accepte de porter nos péchés dans son corps, « en devenant obéissant jusqu’à la mort » (Ph 2,8)."
  },
  {
    "Quels sont les effets du sacrifice du Christ sur la croix?": "Jésus a librement offert sa vie en sacrifice d’expiation, c’est-à-dire qu’il a réparé nos fautes par la pleine obéissance de son amour jusqu’à la mort. Cet « amour jusqu’au bout » (Jn 13,1) du Fils de Dieu réconcilie toute l’humanité avec le Père. Le sacrifice pascal du Christ rachète donc tous les hommes d’une façon unique, parfaite et définitive, et leur ouvre la communion avec Dieu."
  },
  {
    "Pourquoi Jésus appelle-t-il ses disciples à prendre leur croix?": "En demandant à ses disciples de prendre leur croix et de le suivre, Jésus veut associer à son sacrifice rédempteur ceux-là même qui en sont les premiers bénéficiaires."
  },
  {
    "En quelles conditions était le corps de Jésus lorsqu’il se trouvait au tombeau?": "Le Christ a connu une vraie mort et une vraie sépulture. Mais la vertu divine a préservé son corps de la corruption."
  }, {
    "Que sont « les enfers », où Jésus est descendu?": "Les « enfers » – qui sont différents de l’enfer de la damnation – constituaient la situation de tous ceux qui, justes ou méchants, étaient morts avant le Christ. Avec son âme unie à sa Personne divine, Jésus a rejoint dans les enfers les justes, qui attendaient leur Rédempteur pour pouvoir enfin accéder à la vision de Dieu. Après avoir vaincu, par sa mort, la mort et le diable qui a « le pouvoir de la mort » (He 2,14), il a libéré les justes en attente du Rédempteur et il leur a ouvert les portes du Ciel."
  },
  {
    "Quelle est la place de la résurrection du Christ dans notre foi?": "La résurrection est la vérité la plus haute de notre foi dans le Christ. Avec la croix, elle représente une part essentielle du Mystère pascal."
  },
  {
    "Quels « signes » attestent la Résurrection de Jésus?": "Hormis le signe essentiel que constitue le tombeau vide, la Résurrection de Jésus est attestée par les femmes qui, les premières, l’ont rencontré et l’ont annoncé aux Apôtres. Jésus est « apparu ensuite à Céphas (Pierre), puis aux Douze. Ensuite, il est apparu à plus de cinq cents frères à la fois» (1 Co 15,5-6) et à d’autres encore. Les Apôtres n’ont pu inventer la résurrection, car elle leur apparaissait impossible. En effet, Jésus leur a aussi reproché leur incrédulité."
  },
  {
    "Pourquoi la Résurrection est-elle en même temps un événement transcendant?": "Tout en étant un événement historique, que l’on peut constater et qui est attesté par des signes et des témoignages, la Résurrection, parce qu’elle est l’entrée de l’humanité du Christ dans la gloire de Dieu, transcende et dépasse l’histoire, comme mystère de la foi. C’est pour cette raison que le Christ ressuscité ne se manifeste pas au monde, mais à ses disciples, faisant d’eux ses témoins devant le peuple."
  },
  {
    "Quel est l’état du corps ressuscité de Jésus?": "La Résurrection du Christ n’est pas un retour à la vie terrestre. Son corps ressuscité est celui qui a été crucifié et qui porte les signes de sa Passion, mais il participe désormais de la vie divine avec les propriétés d’un corps glorieux. C’est la raison pour laquelle Jésus ressuscité est souverainement libre d’apparaître à ses disciples comme il veut, où il veut et sous des aspects variés."
  },
  {
    "De quelle manière la Résurrection est-elle l’œuvre de la Sainte Trinité?": "La Résurrection du Christ est une action transcendante de Dieu. Les trois Personnes agissent ensemble selon le mode qui leur est propre. Le Père manifeste sa puissance, le Fils « reprend » la vie qu’il a librement offerte (Jn 10,17), réunissant son âme et son corps que l’Esprit Saint vivifie et glorifie."
  },
  {
    "Quels sont le sens et la portée de la Résurrection pour le salut?": "La Résurrection est le point culminant de l’Incarnation. Elle confirme la divinité du Christ, ainsi que tout ce qu’il a fait et enseigné. Elle réalise toutes les promesses divines en notre faveur. De plus, le Ressuscité, vainqueur du péché et de la mort, est le principe de notre justification et de notre résurrection. Dès à présent, elle nous procure la grâce de l’adoption filiale qui est une participation réelle à la vie du Fils unique, lequel, à la fin des temps, ressuscitera notre corps."
  },{
    "Que représente l’Ascension?": "Après quarante jours pendant lesquels il s’est manifesté à ses Apôtres sous les traits d’une humanité ordinaire qui voilaient sa gloire de Ressuscité, le Christ est monté au ciel et s’est assis à la droite du Père. Il est le Seigneur qui règne désormais avec son humanité dans la gloire éternelle de Fils de Dieu et qui sans cesse intercède en notre faveur auprès du Père. Il envoie son Esprit et nous donne l’espérance de le rejoindre un jour, là où il nous a préparé une place."
  },
  {
    "Comment le Seigneur Jésus règne-t-il aujourd’hui?": "Seigneur du monde et de l’histoire, Chef de son Église, le Christ glorieux demeure mystérieusement sur la terre, où son Royaume est déjà présent en germe et en commencement dans l’Église. Un jour, il reviendra dans la gloire, mais nous n’en connaissons pas l’heure. C’est pourquoi nous vivons en veillant dans la prière : « Viens, Seigneur » (Ap 22,20)."
  },
  {
    "Comment s’accomplira la venue du Seigneur dans la gloire?": "Après le dernier bouleversement cosmique de ce monde qui passe, la venue glorieuse du Christ arrivera avec le triomphe définitif de Dieu dans la Parousie du Christ et avec le jugement dernier. Ainsi s’accomplira le Royaume de Dieu."
  },
  {
    "Comment le Christ jugera-t-il les vivants et les morts?": "Le Christ jugera avec la puissance qu’il s’est acquise comme Rédempteur du monde, venu pour sauver les hommes. Les secrets des cœurs seront dévoilés, ainsi que la conduite de chacun envers Dieu et envers son prochain. Tout homme recevra la vie ou sera condamné pour l’éternité selon ses œuvres. Ainsi s’accomplira « la plénitude du Christ » (Ep 4,13), dans laquelle « Dieu sera tout en tous » (1 Co 15,28)."
  },  {
    "Que veut dire l’Église quand elle professe : « Je crois au Saint-Esprit »?": "Croire en l’Esprit Saint, c’est professer la troisième Personne de la Sainte Trinité, qui procède du Père et du Fils, et qui est « adoré et glorifié avec le Père et le Fils ». L’Esprit « est envoyé [...] dans nos cœurs » (Ga 4,6) pour que nous recevions la vie nouvelle des enfants de Dieu."
  },
  {
    "Pourquoi les missions du Fils et de l’Esprit sont-elles inséparables?": "Dans la Trinité indivisible, le Fils et l’Esprit sont distincts, mais inséparables. En effet, du commencement à la fin des temps, quand le Père envoie son Fils, il envoie aussi son Esprit, qui nous unit au Christ par la foi, afin que nous puissions, comme fils adoptifs, appeler Dieu « Père » (Rm 8,15). L’Esprit est invisible, mais nous le connaissons par son action, lorsqu’il nous révèle le Verbe et qu’il agit dans l’Église."
  },
  {
    "Quels sont les vocables de l’Esprit Saint?": "« Esprit Saint » est le nom propre de la troisième Personne de la Sainte Trinité. Le Christ l’appelle aussi Esprit Paraclet (Consolateur, Avocat) et Esprit de Vérité. Le Nouveau Testament l’appelle encore Esprit du Christ, du Seigneur, de Dieu, Esprit de gloire, de la promesse."
  },
  {
    "Quels sont les symboles qui représentent le Saint-Esprit?": "Ils sont nombreux. L’eau vive qui jaillit du cœur transpercé du Christ et abreuve les baptisés; l’onction avec l’huile, qui est le signe sacramentel de la Confirmation ; le feu qui transforme ce qu’il touche; la nuée, obscure ou lumineuse, où se révèle la gloire divine; l’imposition des mains par laquelle l’Esprit est donné; la colombe qui descend sur le Christ et demeure sur lui au moment de son baptême."
  },
  {
    "Que signifie « l’Esprit a parlé par les prophètes »?": "Le terme de prophètes s’entend ici de ceux qui furent inspirés de l’Esprit Saint pour parler au nom de Dieu. L’Esprit porte les prophéties de l’Ancien Testament à leur plein accomplissement dans Christ, dont le mystère se dévoile dans le Nouveau Testament."
  }, {
    "Quelle est l’action de l’Esprit en Jean-Baptiste?": "L’Esprit remplit Jean-Baptiste, le dernier prophète de l’Ancien Testament, qui, sous son action, est envoyé pour « préparer un peuple au Seigneur » (Lc 1,17), et pour annoncer la venue du Christ, le Fils de Dieu, celui sur lequel il a vu descendre et demeurer l’Esprit, celui qui « baptise dans l’Esprit » (Jn 1,33)."
  },
  {
    "Quelle est l’œuvre de l’Esprit en Marie?": "En Marie, le Saint-Esprit porte à son achèvement toutes les attentes de la venue du Christ et sa préparation dans l’Ancien Testament. D’une manière unique, il la remplit de grâce et rend féconde sa virginité, pour donner naissance dans la chair au Fils de Dieu. Il fait d’elle la Mère du « Christ total », c’est-à-dire du Christ Tête et de l’Église son corps. Marie est présente au milieu des Douze le jour de la Pentecôte, quand l’Esprit inaugure les « derniers temps » avec la manifestation de l’Église."
  },
  {
    "Quel rapport y a-t-il entre l’Esprit et le Christ Jésus dans sa mission terrestre?": "Depuis son Incarnation, le Fils de Dieu est consacré Messie dans son humanité, par l’onction de l’Esprit. Il révèle l’Esprit dans son enseignement, accomplissant la promesse faite aux Pères, et il le communique à l’Église naissante en soufflant sur les Apôtres après la Résurrection."
  },
  {
    "Qu’est-il arrivé à la Pentecôte?": "Cinquante jours après sa Résurrection, à la Pentecôte, Jésus Christ glorifié a répandu l’Esprit à profusion et il l’a manifesté comme Personne divine, de sorte que la Trinité Sainte est pleinement révélée. La mission du Christ et de l’Esprit devient la mission de l’Église, envoyée pour annoncer et pour répandre le mystère de la communion trinitaire."
  },  {
    "Quelle est l’action de l’Esprit dans l’Église?": "L’Esprit édifie, anime et sanctifie l’Église. Esprit d’amour, il restaure chez les baptisés la ressemblance divine perdue à cause du péché et il les fait vivre dans le Christ de la Vie même de la Sainte Trinité. Il les envoie témoigner de la Vérité du Christ et il les établit dans leurs fonctions réciproques, afin que tous portent « le fruit de l’Esprit » (Ga 5,22)."
  },
  {
    "Comment agissent le Christ et son Esprit dans le cœur des fidèles?": "Par l’intermédiaire des sacrements, le Christ communique son Esprit aux membres de son Corps, ainsi que la grâce de Dieu qui porte les fruits de la vie nouvelle selon l’Esprit. Enfin, le Saint-Esprit est le Maître de la prière."
  },
  {
    "Que signifie le mot Église?": "Il désigne le peuple que Dieu convoque et rassemble de tous les confins de la terre, pour constituer l’assemblée de ceux qui, par la foi et par le Baptême, deviennent fils de Dieu, membres du Christ et temple de l’Esprit Saint."
  },
  {
    "Dans la Bible, quels sont les autres noms et images qui désignent l’Église?": "Dans la Sainte Écriture, nous trouvons de nombreuses images qui mettent en évidence les différents aspects du mystère de l’Église. L’Ancien Testament privilégie les images liées au peuple de Dieu; le Nouveau Testament celles se rattachant au Christ comme Tête de ce peuple, qui est son Corps; elles sont tirées de la vie pastorale (bergerie, troupeau, brebis), de la vie rurale (champ, olivier, vigne), de l’habitat (demeure, pierre, temple), de la famille (épouse, mère, famille)."
  },
  {
    "Quel est le commencement et l’achèvement de l’Église?": "L’Église a son commencement et son achèvement dans le dessein éternel de Dieu. Elle a été préparée dans l’Ancienne Alliance par l’élection d’Israël, signe du rassemblement futur de toutes les nations. Fondée sur la parole et sur l’action de Jésus Christ, elle s’est accomplie surtout par sa mort rédemptrice et sa résurrection. Elle s’est manifestée ensuite comme mystère de salut par l’effusion de l’Esprit Saint à la Pentecôte. Elle aura son achèvement à la fin des temps comme assemblée céleste de tous les rachetés."
  },
  {
    "Quelle est la mission de l’Église?": "La mission de l’Église est d’annoncer et d’instaurer au milieu de toutes les nations le Royaume de Dieu inauguré par Jésus Christ. Elle constitue sur la terre le germe et le commencement de ce Royaume du salut."
  },
  {
    "En quel sens l’Église est-elle Mystère?": "L’Église est mystère parce que, dans sa réalité visible, elle représente et accomplit une réalité spirituelle, divine, qui se perçoit uniquement avec les yeux de la foi."
  },
  {
    "Que signifie pour l’Église être sacrement universel du salut?": "Cela signifie qu’elle est le signe et l’instrument de l’union intime avec Dieu et de l’unité du genre humain, manifestant ainsi le dessein divin de salut pour tous les hommes."
  }, {
  "Pourquoi l’Église est-elle le peuple de Dieu?": "L’Église est le peuple de Dieu parce qu’il a plu à Dieu de sanctifier et de sauver les hommes non pas séparément, mais en les constituant en un seul peuple, rassemblé dans l’unité du Père, du Fils et de l’Esprit Saint."
},
{
  "Quelles sont les caractéristiques du peuple de Dieu?": "Ce peuple, dont on devient membre par la foi au Christ et par le Baptême, a pour origine Dieu le Père, pour Chef Jésus Christ, pour condition la dignité et la liberté des fils de Dieu, pour loi, le commandement nouveau de l’amour, pour mission d’être le sel de la terre et la lumière du monde, pour fin le Royaume de Dieu, déjà commencé sur la terre."
},
{
  "En quel sens le peuple de Dieu prend-il part aux trois fonctions du Christ, sacerdotale, prophétique et royale?": "Le peuple de Dieu prend part à la fonction sacerdotale du Christ parce que les baptisés sont consacrés par l’Esprit Saint pour offrir des sacrifices spirituels. Il participe à sa fonction prophétique parce que, grâce au sens surnaturel de la foi, il s’attache de manière indéfectible à la foi, il en approfondit l’intelligence et il en devient témoin. Il participe à sa fonction royale par le service, imitant le Christ Jésus, roi de l’univers, qui s’est fait serviteur de tous, surtout des pauvres et de ceux qui souffrent."
},
{
  "De quelle manière l’Église est-elle Corps du Christ?": "Par l’Esprit Saint, le Christ, mort et ressuscité, unit intimement à lui-même ses fidèles. Ainsi, ceux qui croient au Christ, parce qu’ils sont étroitement unis à lui, surtout dans l’Eucharistie, sont unis entre eux par la charité, formant un seul corps, l’Église, dont l’unité se réalise dans la diversité des membres et des fonctions."
},
{
  "Qui est la tête de ce corps?": "Le Christ « est la Tête du corps, c’est-à-dire de l’Église » (Col 1,18). L’Église vit de lui, en lui et par lui. Le Christ et l’Église forment le « Christ total » (saint Augustin). « Tête et membres, une seule et même personne mystique pour ainsi dire » (saint Thomas d’Aquin)."
},
{
  "Pourquoi dit-on de l’Église qu’elle est l’épouse du Christ?": "Parce que le Seigneur lui-même s’est défini comme l’« Époux » (Mc 2,19) qui a aimé l’Église, qui s’est lié à elle par une Alliance éternelle. Il s’est livré pour elle, afin de la purifier par son sang, de la « rendre sainte » (Ep 5,26) et d’en faire la mère féconde de tous les fils de Dieu. Si le terme de « corps » fait apparaître l’unité de la « tête » et des membres, le terme « épouse » met en relief la distinction des deux dans une relation personnelle."
},
{
  "Pourquoi dit-on de l’Église qu’elle est le temple de l’Esprit Saint?": "Parce que le Saint-Esprit réside dans le corps qui est l’Église, dans sa Tête et dans ses membres; en outre, il édifie l’Église dans la charité, par la Parole de Dieu, les sacrements, les vertus et les charismes. « Ce que notre esprit, je veux dire notre âme, est à nos membres, l’Esprit Saint l’est aux membres du Christ, au Corps du Christ, je veux dire l’Église » (saint Augustin)."
},
{
  "Les charismes, que sont-ils?": "Les charismes sont des dons particuliers de l’Esprit Saint impartis aux personnes pour le bien des hommes, pour les nécessités du monde et spécialement pour l’édification de l’Église. C’est au Magistère de l’Église qu’il revient de les discerner."
}, {
  "Pourquoi l’Église est-elle une?": "L’Église est une, parce qu’elle a comme origine et comme modèle l’unité d’un seul Dieu, dans la Trinité des Personnes; comme fondateur et comme tête, Jésus Christ, qui rassemble tous les peuples dans l’unité d’un seul corps; comme âme, l’Esprit Saint, qui unit tous les fidèles dans la communion dans le Christ. Elle a une seule foi, une seule vie sacramentelle, une seule succession apostolique, une espérance commune et la même charité."
},
{
  "Où subsiste l’unique Église du Christ?": "Comme société constituée et organisée dans le monde, l’unique Église du Christ subsiste (subsistit in) dans l’Église catholique, gouvernée par le successeur de Pierre et par les Évêques en communion avec lui. C’est seulement par elle que l’on peut atteindre la plénitude des moyens de salut, car le Seigneur a confié tous les biens de la Nouvelle Alliance au seul collège apostolique, dont la tête est Pierre."
},
{
  "Comment considérer les chrétiens non catholiques?": "Dans les Églises et Communautés ecclésiales, qui se sont séparées de la pleine communion de l’Église catholique, se rencontrent de nombreux éléments de sanctification et de vérité. Tous ces éléments de bien proviennent du Christ et tendent vers l’unité catholique. Les membres de ces Églises et Communautés sont incorporés au Christ par le Baptême; nous les reconnaissons donc comme des frères."
},
{
  "Comment s’engager en faveur de l’unité des chrétiens?": "Le désir de rétablir l’union entre tous les chrétiens est un don du Christ et un appel de l’Esprit Saint. Il concerne toute l’Église et il s’accomplit par la conversion du cœur, la prière, la connaissance fraternelle réciproque, le dialogue théologique."
},
{
  "En quel sens l’Église est-elle sainte?": "L’Église est sainte parce que le Dieu très saint en est l’auteur. Le Christ s’est livré lui-même pour elle, afin de la sanctifier et de la rendre sanctifiante. L’Esprit Saint la vivifie par la charité. En elle réside la plénitude des moyens du salut. La sainteté est la vocation de chacun de ses membres et le but de toute son action. L’Église compte en son sein la Vierge Marie et d’innombrables saints, qui sont ses modèles et ses intercesseurs. La sainteté de l’Église est la source de la sanctification pour ses fils, qui, sur la terre, se reconnaissent tous pécheurs et qui ont toujours besoin de se convertir et de se purifier."
}, {
  "Pourquoi l’Église est-elle appelée catholique?": "L’Église est catholique, c’est-à-dire universelle, parce que le Christ est présent en elle. « Là où est le Christ Jésus, là est l’Église catholique » (saint Ignace d’Antioche). Elle annonce la totalité et l’intégralité de la foi. Elle contient et elle administre la plénitude des moyens du salut. Elle est envoyée en mission à toutes les nations, à toutes les époques et à quelque culture qu’elles appartiennent."
},
{
  "Une Église particulière est-elle catholique?": "Est catholique toute Église particulière (c’est-à-dire un diocèse ou une éparchie) formée par la communauté des chrétiens qui sont en communion dans la foi et dans les sacrements avec leur Évêque ordonné dans la succession apostolique et avec l’Église de Rome, qui « préside à la charité » (saint Ignace d’Antioche)."
},
{
  "Qui fait partie de l’Église catholique?": "Tous les hommes, sous diverses formes, appartiennent ou sont ordonnés à l’unité catholique du peuple de Dieu. Est pleinement incorporé à l’Église catholique celui qui, ayant l’Esprit du Christ, est uni à elle par les liens de la profession de foi, des sacrements, du gouvernement ecclésiastique et de la communion. Les baptisés qui ne réalisent pas pleinement cette unité catholique sont dans une certaine communion, bien qu’imparfaite, avec l’Église catholique."
},
{
  "Quel est le rapport de l’Église catholique avec le peuple juif?": "L’Église catholique reconnaît son rapport avec le peuple juif dans le fait que Dieu a élu ce dernier, avant tous les autres, pour accueillir sa Parole. C’est au peuple juif qu’appartiennent « l’adoption des fils, la gloire, les alliances, la loi, le culte, les promesses de Dieu; ils ont les patriarches, et c’est de leur race que le Christ est né selon la chair » (Rm 9,4.5). À la différence des autres religions non chrétiennes, la foi juive est déjà réponse à la Révélation du Dieu de l’Ancienne Alliance."
},
{
  "Quel lien existe-t-il entre l’Église catholique et les religions non chrétiennes?": "C’est un lien issu avant tout de l’origine et de la fin communes de tout le genre humain. L’Église catholique reconnaît que ce qu’il y a de bon et de vrai dans les autres religions vient de Dieu. C’est un rayon de sa vérité. Cela peut disposer à l’accueil de l’Évangile et pousser à l’unité de l’humanité dans l’Église du Christ."
},
{
  "Que signifie l’affirmation « Hors de l’Église pas de salut »?": "Cela signifie que tout salut vient du Christ-Tête par l’intermédiaire de l’Église, qui est son Corps. Ne peuvent donc pas être sauvés ceux qui, sachant l’Église fondée par le Christ et nécessaire au salut, ne veulent pas y entrer, ni y persévérer. D’autre part, grâce au Christ et à son Église, peuvent parvenir au salut éternel ceux qui, sans faute de leur part, ignorent l’Évangile du Christ et son Église, mais recherchent Dieu sincèrement et, sous l’influence de la grâce, s’efforcent de faire sa volonté, reconnue à travers ce que leur dicte leur conscience."
},
{
  "Pourquoi l’Église doit-elle annoncer l’Évangile au monde entier?": "Parce que le Christ l’a commandé : « Allez et enseignez toutes les nations, baptisant au nom du Père, et du Fils, et du Saint-Esprit » (Mt 28,19). Ce commandement missionnaire du Seigneur a sa source dans l’amour éternel de Dieu, qui a envoyé son Fils et son Esprit parce qu’« il veut que tous les hommes soient sauvés et parviennent à la connaissance de la vérité » (1 Tm 2,4)."
},{
  "Comment l’Église est-elle missionnaire?": "Guidée par l’Esprit Saint, l’Église poursuit tout au long de l’histoire la mission du Christ lui-même. Les chrétiens doivent donc annoncer à tous la Bonne Nouvelle apportée par le Christ, en suivant le même chemin que lui, en étant prêts également au sacrifice jusqu’au martyre."
},
{
  "Pourquoi l’Église est-elle apostolique?": "L’Église est apostolique par son origine, parce qu’elle a « pour fondations les Apôtres » (Ep 2,20); par son enseignement, qui est celui des Apôtres; par sa structure, parce qu’elle est édifiée, sanctifiée et gouvernée, jusqu’au retour du Christ, par les Apôtres, grâce à leurs successeurs, les Évêques en communion avec le successeur de Pierre."
},
{
  "En quoi consiste la mission des Apôtres?": "Le mot Apôtre signifie envoyé. Jésus, l’Envoyé du Père, appela à lui les Douze, choisis parmi ses disciples, et il les institua ses Apôtres, faisant d’eux les témoins de sa résurrection et les fondements de son Église. Il leur donna mandat de poursuivre sa mission, leur disant : « Comme mon Père m’a envoyé, moi aussi je vous envoie » (Jn 20,21), et il leur promit d’être avec eux jusqu’à la fin du monde."
},
{
  "Qu’est-ce que la succession apostolique?": "La succession apostolique est la transmission, par le sacrement de l’Ordre, de la mission et de l’autorité des Apôtres à leurs successeurs, les Évêques. Par cette transmission, l’Église demeure en communion de foi et de vie avec son origine, tandis qu’au long des siècles, elle exerce son apostolat par la diffusion du Royaume du Christ sur la terre."
},{
  "Qui sont les fidèles?": "Les fidèles sont ceux qui, incorporés au Christ par le Baptême, sont établis membres du peuple de Dieu. Rendus participants, selon leur condition propre, aux fonctions sacerdotale, prophétique et royale du Christ, ils sont appelés à exercer la mission confiée par Dieu à l’Église. Entre eux, demeure une véritable égalité en raison de leur dignité de fils de Dieu."
},
{
  "Comment le peuple de Dieu est-il composé?": "Dans l’Église, par institution divine, il y a les ministres sacrés, qui ont reçu le sacrement de l’Ordre et qui forment la hiérarchie de l’Église. Les autres sont appelés laïcs. Des uns et des autres sont issus des fidèles qui se consacrent à Dieu de façon particulière par la profession des conseils évangéliques : la chasteté dans le célibat, la pauvreté et l’obéissance."
},
{
  "Pourquoi le Christ a-t-il institué la hiérarchie ecclésiastique?": "Le Christ a institué la hiérarchie ecclésiastique en vue de la mission de paître le peuple de Dieu en son nom; et c’est pourquoi il lui a donné l’autorité. La hiérarchie est composée des ministres sacrés : Évêques, prêtres, diacres. Par le sacrement de l’Ordre, les Évêques et les prêtres agissent, dans l’exercice de leur ministère, au nom et dans la personne du Christ-Tête. Les diacres servent le peuple de Dieu dans la diaconie (service) de la parole, de la liturgie et de la charité."
},
{
  "Comment se réalise la dimension collégiale du ministère ecclésial?": "À l’exemple des douze Apôtres, choisis et envoyés ensemble par le Christ, l’union des membres de la hiérarchie ecclésiastique est au service de la communion de tous les fidèles. Tout Évêque exerce son ministère comme membre du collège épiscopal, en communion avec le Pape, ayant avec lui à prendre part à la sollicitude de l’Église universelle. Les prêtres exercent leur ministère au sein du presbytérium de l’Église particulière en communion avec l’Évêque et sous son autorité."
},
{
  "Pourquoi le ministère ecclésial a-t-il aussi un caractère personnel?": "Le ministère ecclésial a aussi un caractère personnel, parce que, en vertu du sacrement de l’Ordre, chacun est responsable devant le Christ, qui l’a personnellement appelé en lui confiant une mission."
},
{
  "Quelle est la mission du Pape?": "Le Pape, Évêque de Rome et successeur de saint Pierre, est principe perpétuel et visible, et fondement de l’unité de l’Église. Il est le vicaire du Christ, la Tête du collège des Évêques et le pasteur de toute l’Église, sur laquelle il a, par institution divine, un pouvoir plénier, suprême, immédiat et universel."
},{
  "Quelle est la charge du Collège des Évêques?": "Le Collège des Évêques, en communion avec le Pape et jamais sans lui, exerce aussi sur l’Église un pouvoir suprême et plénier."
},
{
  "Comment les Évêques exercent-ils leur mission d’enseigner?": "En communion avec le Pape, les Évêques ont le devoir d’annoncer l’Évangile à tous, fidèlement et avec autorité. Ils sont les témoins authentiques de la foi apostolique, revêtus de l’autorité du Christ. Grâce au sens surnaturel de la foi, le Peuple de Dieu, guidé par le Magistère vivant de l’Église, adhère indéfectiblement à la foi."
},
{
  "Quand s’exerce l’infaillibilité du Magistère?": "L’infaillibilité s’exerce quand le Souverain Pontife, en vertu de son autorité de suprême Pasteur de l’Église, ou le Collège des Évêques en communion avec le Pape, surtout lorsqu’ils sont rassemblés en Concile œcuménique, déclarent par un acte définitif une doctrine relative à la foi ou à la morale, ou encore quand le Pape et les Évêques, dans leur magistère ordinaire, sont unanimes à déclarer une doctrine comme définitive. À cet enseignement, tout fidèle doit adhérer dans l’obéissance de la foi."
},
{
  "Comment les Évêques exercent-ils leur ministère de sanctification?": "Les Évêques sanctifient l’Église en dispensant la grâce du Christ par le ministère de la Parole et des sacrements, en particulier l’Eucharistie, et aussi par la prière, tout comme par leur exemple et leur travail."
},
{
  "Comment les Évêques exercent-ils leur fonction de gouvernement?": "En tant que membre du collège épiscopal, tout Évêque porte de manière collégiale la sollicitude de toutes les Églises particulières et de l’Église entière, en union avec les autres Évêques unis au pape. L’Évêque à qui est confiée une Église particulière la gouverne avec l’autorité du pouvoir sacré qui lui est propre, ordinaire et immédiat, pouvoir exercé au nom du Christ, le Bon Pasteur, en communion avec toute l’Église et sous la conduite du successeur de Pierre."
},
{
  "Quelle est la vocation des fidèles laïcs?": "Les fidèles laïcs ont pour vocation propre de rechercher le Royaume de Dieu, en éclairant et en gérant les réalités temporelles selon Dieu. Ils réalisent ainsi l’appel à la sainteté et à l’apostolat, adressé à tous les baptisés."
}
,{
  "Comment les fidèles laïcs participent-ils à la fonction sacerdotale du Christ?": "Ils y participent en offrant – comme sacrifice spirituel « offert à Dieu par Jésus Christ » (1 P 2,5), par-dessus tout dans l’Eucharistie – leur propre vie, avec leurs actions, leurs prières et leurs engagements apostoliques, leur vie de famille et leur travail quotidien, les difficultés de la vie supportées en patience et les moments de détente corporelle et spirituelle. De cette manière, les laïcs qui s’engagent pour le Christ et qui sont consacrés par l’Esprit Saint offrent eux aussi à Dieu le monde lui-même."
},
{
  "Comment prennent-ils part à sa fonction prophétique?": "Ils y participent en accueillant toujours plus dans la foi la Parole du Christ et en l’annonçant au monde par le témoignage de leur vie, ainsi que par la parole, l’action évangélisatrice et la catéchèse. Une telle action évangélisatrice acquiert une efficacité particulière du fait qu’elle s’accomplit dans les conditions ordinaires de la vie dans le monde."
},
{
  "Comment participent-ils à sa fonction royale?": "Les laïcs participent à la fonction royale du Christ en ayant reçu de lui le pouvoir de vaincre le péché, en eux-mêmes et dans le monde, par le renoncement personnel et par la sainteté de leur vie. Ils exercent divers ministères au service de la communauté et ils imprègnent de valeur morale les activités temporelles de l’homme et les institutions de la société."
},
{"Que signifie le terme chair? Quelle est son importance?": "Le terme chair désigne l’homme dans sa condition de faiblesse et de mortalité. « La chair est le pivot du salut » (Tertullien). En effet, nous croyons en Dieu, créateur de la chair; nous croyons au Verbe fait chair pour racheter la chair, nous croyons en la résurrection de la chair, achèvement de la création et de la rédemption de la chair.",
  "Que signifie la « résurrection de la chair »?": "Cela signifie que l’état définitif de l’homme ne sera pas seulement l’âme spirituelle séparée du corps, mais que nos corps mortels sont aussi appelés à reprendre vie un jour.",
  "Qu’est-ce que la vie consacrée?": "C’est un état de vie reconnu par l’Église. Il est une réponse libre à un appel particulier du Christ, dans lequel les personnes consacrées se donnent totalement à Dieu et tendent à la perfection de la charité sous la motion de l’Esprit Saint. Cette consécration se caractérise par la pratique des conseils évangéliques."
},
{
  "Que procure la vie consacrée à la mission de l’Église?": "La vie consacrée participe à la mission de l’Église par un don total de soi au Christ et à ses frères, témoignant de l’espérance du Royaume des cieux."
}
, {
  "Que signifie l’expression communion des saints?": "Cette expression signifie avant tout la participation commune de tous les membres de l’Église aux réalités saintes (sancta) : la foi, les sacrements, en particulier l’Eucharistie, les charismes et les autres dons spirituels. À la source de la communion, il y a la charité, qui « ne cherche pas son intérêt » (1 Co 13,5), mais qui pousse les fidèles à « mettre tout en commun » (Ac 4,32), même leurs biens matériels, pour le service des plus pauvres."
},
{
  "Que signifie encore la communion des saints?": "Elle désigne également la communion entre les personnes saintes (sancti), à savoir entre ceux qui, par la grâce, sont unis au Christ mort et ressuscité. Les uns sont en pèlerinage sur la terre, d’autres, ayant quitté cette vie, achèvent leur purification, soutenus aussi par nos prières, d’autres enfin jouissent déjà de la gloire de Dieu et intercèdent pour nous. Tous ensemble, ils forment dans le Christ une unique famille, l’Église, à la louange et à la gloire de la Trinité."
},
{
  "En quel sens la Bienheureuse Vierge Marie est-elle Mère de l’Église?": "La bienheureuse Vierge Marie est Mère de l’Église dans l’ordre de la grâce parce qu’elle a donné naissance à Jésus, le Fils de Dieu, Tête de son Corps qui est l’Église. En mourant sur la croix, Jésus l’a donnée comme mère à son disciple, par ces mots : « Voici ta mère » (Jn 19,27)."
},
{
  "Comment la Vierge Marie aide-t-elle l’Église?": "Après l’ascension de son Fils, la Vierge Marie a aidé, par ses prières, les débuts de l’Église et, même après son assomption au ciel, elle continue d’intercéder pour ses enfants, d’être pour tous un modèle de foi et de charité, et d’exercer sur eux une influence salutaire, qui vient de la surabondance des mérites du Christ. Les fidèles voient en elle une icône et une anticipation de la résurrection qui les attend, et ils l’invoquent sous les titres d’avocate, d’auxiliatrice, de secours, de médiatrice."
},
{
  "Quel type de culte convient-il à la Sainte Vierge?": "C’est un culte particulier, mais qui diffère essentiellement du culte d’adoration, réservé uniquement à la Sainte Trinité. Ce culte de vénération spéciale trouve une expression particulière dans les fêtes liturgiques dédiées à la Mère de Dieu ainsi que dans les prières mariales, comme le Rosaire, résumé de tout l’Évangile."
},
{
  "Comment la bienheureuse Vierge Marie est-elle l’icône eschatologique de l’Église?": "En regardant Marie, toute sainte et déjà glorifiée en son corps et en son âme, l’Église contemple en elle ce qu’elle-même est appelée à être sur la terre et ce qu’elle sera dans la patrie céleste."
}
,{"Comment les péchés sont-ils remis?": "Le premier et le principal sacrement pour le pardon des péchés est le Baptême. Pour les péchés commis après le Baptême, le Christ a institué le sacrement de la Réconciliation ou de la Pénitence, par lequel le baptisé est réconcilié avec Dieu et avec l’Église.",},{"Pourquoi l’Église a-t-elle le pouvoir de pardonner les péchés?": "L’Église a la mission et le pouvoir de pardonner les péchés, parce que c’est le Christ lui-même qui les lui a conférés : « Recevez l’Esprit Saint. Tout homme à qui vous remettrez ses péchés, ils lui seront remis; tout homme à qui vous maintiendrez ses péchés, ils lui seront maintenus » (Jn 20,22-23).",},{"Que signifie le terme chair? Quelle est son importance?": "Le terme chair désigne l’homme dans sa condition de faiblesse et de mortalité. « La chair est le pivot du salut » (Tertullien). En effet, nous croyons en Dieu, créateur de la chair; nous croyons au Verbe fait chair pour racheter la chair, nous croyons en la résurrection de la chair, achèvement de la création et de la rédemption de la chair.",
  "Que signifie la « résurrection de la chair »?": "Cela signifie que l’état définitif de l’homme ne sera pas seulement l’âme spirituelle séparée du corps, mais que nos corps mortels sont aussi appelés à reprendre vie un jour.",},{ "Que signifie la « résurrection de la chair »?": "Cela signifie que l’état définitif de l’homme ne sera pas seulement l’âme spirituelle séparée du corps, mais que nos corps mortels sont aussi appelés à reprendre vie un jour.",},{"Quel rapport y a-t-il entre la résurrection du Christ et la nôtre?": "De même que le Christ est vraiment ressuscité des morts et vit pour toujours, de même, il nous ressuscitera tous, au dernier jour, avec un corps incorruptible, « ceux qui ont fait le bien ressuscitant pour entrer dans la vie, et ceux qui ont fait le mal ressuscitant pour être jugés » (Jn 5,29).",},{"À la mort, qu’arrivera-t-il à notre corps et à notre âme?": "À la mort, l’âme et le corps sont séparés, le corps tombe en corruption, tandis que l’âme, qui est immortelle, va vers le jugement de Dieu et attend d’être réunie au corps quand il sera transformé, lors du retour du Seigneur. Comprendre comment se produira la résurrection dépasse les capacités de notre imagination et de notre entendement."},{"Que signifie mourir dans le Christ Jésus?": "Cela signifie mourir dans la grâce de Dieu, sans péché mortel. Celui qui croit au Christ et qui suit son exemple peut ainsi transformer sa mort en acte d’obéissance et d’amour envers le Père. « Cette parole est sûre : si nous mourons avec lui, avec lui nous vivrons » (2 Tm 2,11)."},{
  "Qu’est-ce que la vie éternelle?": "La vie éternelle est la vie qui commence aussitôt après la mort. Elle n’aura pas de fin. Elle sera précédée pour chacun par un jugement particulier prononcé par le Christ, juge des vivants et des morts, et elle sera scellée au jugement final."
},
{
  "Qu’est-ce que le jugement particulier?": "C’est le jugement de rétribution immédiate que chacun, à partir de sa mort, reçoit de Dieu en son âme immortelle, en relation avec sa foi et ses œuvres. Cette rétribution consiste dans l’accession à la béatitude du ciel, aussitôt ou après une purification proportionnée, ou au contraire à la condamnation éternelle de l’enfer."
},
{
  "Qu’entend-on par « ciel »?": "On entend par « ciel » l’état de bonheur suprême et définitif. Ceux qui meurent dans la grâce de Dieu et qui n’ont besoin d’aucune purification ultérieure sont réunis autour de Jésus et de Marie, des anges et des saints. Ils forment ainsi l’Église du ciel, où ils voient Dieu « face à face » (1 Co 13,12); ils vivent en communion d’amour avec la Sainte Trinité et ils intercèdent pour nous."
},
{
  "Qu’est-ce que le purgatoire?": "Le purgatoire est l’état de ceux qui meurent dans l’amitié divine, mais qui, tout en étant assurés de leur salut éternel, ont encore besoin de purification pour entrer dans la béatitude du ciel."
},
{
  "Comment pouvons-nous contribuer à la purification des âmes du purgatoire?": "En vertu de la communion des saints, les fidèles qui sont encore en pèlerinage sur la terre peuvent aider les âmes du purgatoire, en offrant pour elles des prières de suffrage, en particulier le Sacrifice eucharistique, mais aussi des aumônes, des indulgences et des œuvres de pénitence."
},
{
  "En quoi consiste l’enfer?": "Il consiste dans la damnation éternelle de ceux qui, par libre choix, meurent en état de péché mortel. La peine principale de l’enfer est la séparation éternelle de Dieu. C’est en Dieu seul que l’homme possède la vie et le bonheur pour lesquels il a été créé et auxquels il aspire. Le Christ exprime cette réalité par ces mots : « Allez-vous-en loin de moi, maudits, dans le feu éternel » (Mt 25,41)."
},
{
  "Comment concilier l’existence de l’enfer et l’infinie bonté de Dieu?": "S’il veut que « tous parviennent au repentir » (2 P 3,9), Dieu a toutefois créé l’homme libre et responsable, et il respecte ses décisions. C’est donc l’homme lui-même qui, en pleine autonomie, s’exclut volontairement de la communion avec Dieu, si, jusqu’au moment de sa mort, il persiste dans le péché mortel, refusant l’amour miséricordieux de Dieu."
},
{
  "En quoi consistera le jugement dernier?": "Le jugement dernier (universel) consistera dans la sentence de vie bienheureuse ou de condamnation éternelle, que le Seigneur Jésus, lors de son retour comme juge des vivants et des morts, prononcera pour « les justes et les pécheurs » (Ac 24,15), rassemblés tous ensemble devant lui. À la suite de ce jugement dernier, le corps ressuscité participera à la rétribution que l’âme a reçue dans le jugement particulier."
},
{
  "Quand ce jugement arrivera-t-il?": "Ce jugement se produira à la fin du monde, dont seul Dieu connaît le jour et l’heure."
},{
  "Que signifie l’espérance des cieux nouveaux et de la nouvelle terre?": "Après le jugement dernier, l’univers lui-même, délivré de l’esclavage de la corruption, participera à la gloire du Christ avec l’inauguration des « cieux nouveaux » et de la « nouvelle terre » (2 P 3,13). Ainsi, sera atteinte la plénitude du Royaume de Dieu, c’est-à-dire l’accomplissement définitif du dessein sauveur de Dieu : « Récapituler toutes choses dans le Christ, dans le ciel et sur la terre » (Ep 1,10). Dieu sera alors « tout en tous » (1 Co 15,28), pour la vie éternelle."
},
{
  "Que signifie le mot amen, qui conclut notre profession de foi?": "Le mot juif amen qui conclut aussi le dernier livre de l’Écriture Sainte, ainsi que certaines prières du Nouveau Testament et les prières liturgiques de l’Église, signifie notre « oui » confiant et total à ce que nous avons professé de croire, nous confiant entièrement à celui qui est l’« Amen » définitif (Ap 3,14), le Christ Seigneur."
}


    ],
     "Liturgie": [{
  "Qu’est-ce que la Liturgie?": "La Liturgie est la célébration du Mystère du Christ, en particulier de son Mystère pascal. Dans la liturgie, par l’intermédiaire de l’exercice de la fonction sacerdotale de Jésus Christ, est signifiée et réalisée, par des signes, la sanctification des hommes. Le Corps mystique du Christ, à savoir la tête et les membres, exerce le culte public qui est dû à Dieu."
},
{
  "Quelle est la place de la Liturgie dans la vie de l’Église?": "Action sacrée par excellence, la liturgie constitue le sommet vers lequel tend l’action de l’Église et en même temps la source d’où provient sa force de vie. Par la liturgie, le Christ continue dans son Église, avec elle et par elle l’œuvre de notre rédemption."
},
{
  "En quoi consiste l’économie sacramentelle?": "L’économie sacramentelle consiste dans le fait de communiquer les fruits de la rédemption du Christ par la célébration des sacrements de l’Église, en tout premier lieu de l’Eucharistie, « jusqu’à ce qu’il revienne » (1 Co 11,26)."
},
{
  "Comment le Père est-il la source et la fin de la liturgie?": "Dans la liturgie, le Père nous comble de ses bénédictions en son Fils incarné, mort et ressuscité pour nous, et il répand dans nos cœurs l’Esprit Saint. En même temps, l’Église bénit le Père par l’adoration, la louange, l’action de grâces, et elle implore le don de son Fils et de l’Esprit Saint."
},
{
  "Quelle est l’œuvre du Christ dans la liturgie?": "Dans la liturgie, le Christ signifie et accomplit principalement son Mystère pascal. En donnant l’Esprit Saint aux Apôtres, il leur a donné, ainsi qu’à leurs successeurs, le pouvoir de réaliser l’œuvre du salut par le Sacrifice eucharistique et par les sacrements, où il agit lui-même pour communiquer sa grâce aux fidèles de tous les temps et dans le monde entier."
},
{
  "Dans la liturgie, comment le Saint-Esprit agit-il par rapport à l’Église?": "Dans la liturgie s’opère la coopération la plus étroite de l’Esprit Saint et de l’Église. L’Esprit Saint prépare l’Église à rencontrer son Seigneur. Il rappelle le Christ à la foi de l’assemblée et le lui manifeste. Il rend présent et actualise le mystère du Christ; il unit l’Église à la vie et à la mission du Christ, et il fait fructifier en elle le don de la communion."
}
,
  {
  "Qui agit dans la liturgie?": "Dans la liturgie, c’est le Christ total (« Christus Totus »), Tête et Corps, qui agit. En tant que Souverain Prêtre, il célèbre avec son Corps, qui est l’Église du ciel et de la terre."
},
{
  "Qui célèbre la liturgie céleste?": "La liturgie céleste est célébrée par les anges, les saints de l’Ancienne et de la Nouvelle Alliance, en particulier par la Mère de Dieu, les Apôtres, les martyrs et une « multitude immense » que nul ne peut dénombrer, « de toutes nations, races, peuples et langues » (Ap 7,9). Quand nous célébrons dans les sacrements le mystère du salut, nous prenons part à cette liturgie éternelle."
},
{
  "Comment l’Église de la terre célèbre-t-elle la liturgie?": "L’Église sur la terre célèbre la liturgie en tant que peuple sacerdotal, au sein duquel chacun agit selon sa fonction propre, dans l’unité de l’Esprit Saint. Les baptisés s’offrent en sacrifice spirituel, les ministres ordonnés célèbrent selon l’Ordre qu’ils ont reçu pour le service de tous les membres de l’Église; Évêques et prêtres agissent dans la personne du Christ Tête."
},
{
  "Comment est célébrée la liturgie?": "La célébration liturgique est composée de signes et de symboles, dont la signification, enracinée dans la création et dans les cultures humaines, se précise dans les événements de l’Ancienne Alliance et s’accomplit pleinement dans la Personne et dans les œuvres du Christ."
}, {
  "Pourquoi l’unique Mystère du Christ est-il célébré au sein de l’Église selon différentes traditions liturgiques?": "Parce que l’insondable richesse du Mystère du Christ ne peut être épuisée par une seule tradition liturgique. Depuis l’origine, cette richesse a donc trouvé, dans les différents peuples et les différentes cultures, des expressions qui se caractérisent par une variété et une complémentarité admirables."
},
{
  "Quel est le critère qui garantit l’unité dans cette pluralité?": "C’est la fidélité à la Tradition apostolique, à savoir la communion dans la foi et dans les sacrements reçus des Apôtres, communion signifiée et garantie par la succession apostolique. L’Église est catholique : elle peut donc intégrer dans son unité toutes les véritables richesses des différentes cultures."
},
{
  "Tout est-il immuable dans la liturgie?": "Dans la liturgie, surtout dans la liturgie des sacrements, il y a des éléments immuables, parce qu’ils sont d’institution divine, dont l’Église est la fidèle gardienne. Il y a aussi des éléments susceptibles de changement, qu’elle a le pouvoir et parfois le devoir d’adapter aux cultures des différents peuples."
}
,{
  "Selon quels critères le chant et la musique ont-ils leur rôle dans la célébration liturgique?": "Le chant et la musique sont en connexion étroite avec l’action liturgique; ils doivent donc respecter les critères suivants : conformité à la doctrine catholique des textes, tirés de préférence de l’Écriture et des sources liturgiques, beauté expressive de la prière, qualité de la musique, participation de l’assemblée, richesse culturelle du peuple de Dieu, caractère sacré et solennel de la célébration. « Qui chante prie deux fois » (saint Augustin)."
},
{
  "Quelle est le but des images saintes?": "L’image du Christ est l’icône liturgique par excellence; les autres images représentant la Vierge et les saints signifient le Christ qui est glorifié en eux. Elles proclament le message évangélique lui-même que la Sainte Écriture transmet par la parole. Elles contribuent à réveiller et à nourrir la foi des croyants."
},
{
  "Quel est le centre du temps liturgique?": "Le centre du temps liturgique est le dimanche, fondement et cœur de toute l’année liturgique, qui, chaque année, a son sommet à Pâques, la fête des fêtes."
},
{
  "Quel est le rôle de l’année liturgique?": "Au cours de l’année liturgique, l’Église célèbre la totalité du Mystère du Christ, de son Incarnation jusqu’à son retour dans la gloire. Certains jours, l’Église vénère avec une affection spéciale la bienheureuse Vierge Marie, Mère de Dieu, et elle fait aussi mémoire des saints, qui ont vécu pour le Christ, qui ont souffert avec lui et qui sont avec lui dans la gloire."
},
{
  "Qu’est-ce que la liturgie des Heures?": "La liturgie des Heures, prière publique et habituelle de l’Église, est la prière du Christ avec son Corps. Par elle, le Mystère du Christ, que nous célébrons dans l’Eucharistie, sanctifie et transfigure le temps de chaque jour. Elle se compose principalement de Psaumes et d’autres textes bibliques, ainsi que de lectures des Pères et des maîtres spirituels."
},
{
  "L’Église a-t-elle besoin de lieux pour célébrer la liturgie?": "Le culte « en esprit et en vérité » (Jn 4,24) de la Nouvelle Alliance n’est lié à aucun lieu en particulier, car le Christ est le véritable temple de Dieu, grâce auquel les chrétiens et l’Église entière deviennent, sous l’action de l’Esprit Saint, temples du Dieu vivant. Toutefois, le Peuple de Dieu, dans sa condition terrestre, a besoin de lieux où la communauté peut se rassembler pour célébrer la liturgie."
},
{
  "Que sont les édifices sacrés?": "Ils sont les maisons de Dieu, symbole de l’Église qui vit en tel lieu précis et symbole de la demeure céleste. Ce sont des lieux de prière dans lesquels l’Église célèbre surtout l’Eucharistie et adore le Christ, réellement présent dans le tabernacle."
},
{
  "Quels sont les endroits privilégiés à l’intérieur des édifices sacrés?": "Ce sont : l’autel, le tabernacle, le lieu où sont conservés le saint-chrême et les autres huiles saintes, le siège de l’Évêque (cathèdre) ou du curé, l’ambon, la cuve baptismale, le confessionnal."
}

 ],
    "Sacrements": [
  {
  "Pourquoi les sacrements? Quels sont-ils?": "Les sacrements sont des signes sensibles et efficaces de la grâce, institués par le Christ et confiés à l’Église, par lesquels nous est donnée la vie divine. Ils sont au nombre de sept : le Baptême, la Confirmation, l’Eucharistie, la Pénitence, l’Onction des malades, l’Ordre et le Mariage."
},
{
  "Quel est le rapport des sacrements avec le Christ?": "Les mystères de la vie du Christ constituent le fondement de ce que maintenant, par les ministres de l’Église, le Christ dispense dans les sacrements."
},
{
  "Quel est le lien des sacrements avec l’Église?": "Le Christ a confié les sacrements à son Église. Ils sont « de l’Église » en un double sens : ils sont « par l’Église », parce qu’ils sont action de l’Église, qui est le sacrement de l’action du Christ; ils sont « pour l’Église », en ce sens qu’ils édifient l’Église."
},
{
  "Qu’est-ce que le caractère sacramentel?": "C’est un sceau spirituel conféré par les sacrements du Baptême, de la Confirmation et de l’Ordre. Il est promesse et garantie de la protection divine. En vertu de ce sceau, le chrétien est configuré au Christ; il participe de diverses manières à son sacerdoce. Il fait partie de l’Église selon des états et des fonctions différents. Il a ainsi pour vocation le culte divin et le service de l’Église. Puisque leur caractère est indélébile, les sacrements qui l’impriment ne sont reçus qu’une seule fois dans la vie."
},
{
  "Quel est le rapport des sacrements avec la foi?": "Non seulement les sacrements supposent la foi, mais encore, par les paroles et les éléments rituels, ils la nourrissent, la fortifient et l’expriment. En célébrant les sacrements, l’Église confesse la foi apostolique. De là vient l’ancien adage « lex orandi, lex credendi », ce qui veut dire : l’Église croit comme elle prie."
},
{
  "Pourquoi les sacrements sont-ils efficaces?": "Les sacrements sont efficaces ex opere operato (« par le fait même que l’action sacramentelle est accomplie »). C’est en effet le Christ qui agit en eux et qui communique la grâce qu’ils signifient, indépendamment de la sainteté personnelle du ministre; toutefois les fruits du sacrement dépendent aussi des dispositions de ceux qui les reçoivent."
},
{
  "Pourquoi les sacrements sont-ils nécessaires au salut?": "Même s’ils ne sont pas tous donnés à chaque croyant, les sacrements sont nécessaires à ceux qui croient au Christ, parce qu’ils confèrent les grâces sacramentelles, le pardon des péchés, l’adoption comme fils de Dieu, la conformation au Christ Seigneur et l’appartenance à l’Église. L’Esprit Saint guérit et transforme ceux qui les reçoivent."
},
{
  "Qu’est-ce que la grâce sacramentelle?": "La grâce sacramentelle est la grâce de l’Esprit Saint, donnée par le Christ et propre à chaque sacrement. Cette grâce aide le fidèle sur le chemin de la sainteté; elle aide aussi l’Église à croître dans la charité et dans son témoignage."
},
{
  "Quel est le rapport des sacrements avec la vie éternelle?": "Dans les sacrements, l’Église reçoit déjà une anticipation de la vie éternelle, tout en demeurant « dans l’attente de la bienheureuse espérance et de la manifestation de la gloire de notre Dieu et Seigneur Jésus Christ » (Tt 2,13)."
},
{
  "D’où proviennent les signes sacramentels?": "Certains proviennent de la création (la lumière, l’eau, le feu, le pain, le vin, l’huile); d’autres proviennent de la vie sociale (laver, oindre, rompre le pain); d’autres encore, de l’histoire du salut dans l’Ancienne Alliance (les rites de la Pâque, les sacrifices, l’imposition des mains, les consécrations). De tels signes, dont certains sont prescrits et immuables, assumés par le Christ, sont porteurs de l’action du salut et de la sanctification."
},
{
  "Quel lien existe-t-il entre les gestes et les paroles dans la célébration sacramentelle?": "Dans la célébration sacramentelle, gestes et paroles sont étroitement liés. En effet, même si les gestes symboliques sont déjà en eux-mêmes un langage, il est pourtant nécessaire que les paroles rituelles les accompagnent et les vivifient. Inséparables à la fois comme signes et enseignement, les paroles et les gestes liturgiques le sont aussi parce qu’ils réalisent ce qu’ils signifient."
},{ "Comment se distinguent les sacrements?": "On distingue : les sacrements de l’initiation chrétienne (Baptême, Confirmation et Eucharistie), les sacrements de la guérison (Pénitence et Onction des malades), les sacrements au service de la communion et de la mission (Ordre et Mariage). Ils concernent les moments importants de la vie chrétienne. Tous sont ordonnés à l’Eucharistie « comme à leur fin spécifique » (saint Thomas d’Aquin)." },

{ "Comment se réalise l’initiation chrétienne?": "Elle se réalise par les sacrements qui posent les fondements de la vie chrétienne. Renés par le Baptême, les fidèles sont fortifiés par la Confirmation et se nourrissent de l’Eucharistie." },

{ "Quels sont les noms du premier sacrement de l’initiation?": "Il prend d’abord le nom de Baptême en raison du rite central de la célébration. Baptiser veut dire « plonger » dans l’eau. Celui qui est baptisé est plongé dans la mort du Christ et il ressuscite avec lui comme « créature nouvelle » (2 Co 5,17). On l’appelle encore « bain de la régénération et de la rénovation dans l’Esprit Saint » (Tt 3,5) et « illumination », parce que le baptisé devient « fils de la lumière » (Ep 5,8)." },

{ "Comment le baptême est-il préfiguré dans l’Ancienne Alliance?": "Dans l’Ancienne Alliance, on trouve diverses préfigurations du Baptême : l’eau, source de vie et de mort, l’arche de Noé, qui sauve par l’eau, le passage de la Mer Rouge, qui a délivré Israël de la servitude en Égypte, la traversée du Jourdain, qui fait entrer Israël dans la terre promise, image de la vie éternelle." },

{ "Qui porte ces préfigurations à leur accomplissement?": "C’est Jésus Christ qui, au début de sa vie publique, se fait baptiser dans le Jourdain par Jean-Baptiste. Sur la croix, de son côté transpercé, jaillissent le sang et l’eau, signes du Baptême et de l’Eucharistie. Après sa Résurrection, il a confié aux Apôtres la mission suivante : « Allez, enseignez toutes les nations, baptisez-les au nom du Père, et du Fils, et du Saint-Esprit » (Mt 28,19)." },

{ "Depuis quand et à qui l’Église administre-t-elle le Baptême?": "Depuis le jour de la Pentecôte, l’Église administre le Baptême à ceux qui croient en Jésus Christ." },

{ "Quel est le rite essentiel du Baptême?": "Le rite essentiel de ce sacrement consiste à plonger dans l’eau le candidat ou à verser de l’eau sur sa tête, en prononçant l’invocation : au nom du Père, et du Fils, et du Saint Esprit." },

{ "Qui peut recevoir le Baptême?": "Toute personne non encore baptisée peut recevoir ce sacrement." },

{ "Pourquoi l’Église baptise-t-elle les petits enfants?": "Parce que, étant nés avec le péché originel, les petits enfants ont besoin d’être délivrés du pouvoir du Malin et d’être introduits dans le royaume de la liberté des fils de Dieu." },

{ "Que demande-t-on à un baptisé?": "À tout baptisé, on demande de faire la profession de foi, qui est exprimée personnellement dans le cas d’un adulte, ou par les parents et par l’Église dans le cas d’un petit enfant. Le parrain ou la marraine, et la communauté ecclésiale entière ont, eux aussi, une part de responsabilité dans la préparation au Baptême (catéchuménat), de même que dans le développement de la foi et de la grâce baptismale." }
, { "Qui peut baptiser?" : "Les ministres ordinaires du Baptême sont l’Évêque et les prêtres; dans l’Église latine, il y a également le diacre. En cas de nécessité, toute personne peut baptiser, pourvu qu’elle ait l’intention de faire ce que fait l’Église. Celui qui baptise verse de l’eau sur la tête du candidat et prononce la formule baptismale trinitaire : « Je te baptise au nom du Père, et du Fils, et du Saint-Esprit »." },  
{ "Le Baptême est-il nécessaire pour être sauvé?" : "Le Baptême est nécessaire pour ceux auxquels l’Évangile a été annoncé et qui ont la possibilité de demander ce sacrement." },  
{ "Peut-on être sauvé sans le Baptême?" : "Parce que le Christ est mort pour le salut de tous les hommes, peuvent aussi être sauvés sans le Baptême ceux qui sont morts à cause de la foi (Baptême du sang), les catéchumènes et de même ceux qui, sous la motion de la grâce, sans avoir la connaissance du Christ ni de l’Église, recherchent sincèrement Dieu et s’efforcent d’accomplir sa volonté (Baptême de désir). Quant aux petits enfants morts sans Baptême, l’Église dans sa liturgie les confie à la miséricorde de Dieu." },  
{ "Quels sont les effets du Baptême?" : "Le Baptême remet le péché originel, tous les péchés personnels et les peines dues au péché. Il fait participer à la vie divine trinitaire par la grâce sanctifiante, par la grâce de la justification qui incorpore au Christ et à son Église. Il donne part au sacerdoce du Christ et il constitue le fondement de la communion avec tous les chrétiens. Il dispense les vertus théologales et les dons de l’Esprit Saint. Le baptisé appartient pour toujours au Christ : il est marqué du sceau indélébile du Christ (caractère)." },  
{ "Quel sens revêt le nom chrétien donné au Baptême?" : "Tout nom est important puisque que Dieu connaît chacun par son nom, c’est-à-dire par son caractère unique. Au Baptême, le chrétien reçoit dans l’Église un nom particulier, de préférence celui d’un saint, qui offre au baptisé un modèle de sainteté et qui l’assure de son intercession auprès de Dieu." }  
,{ "Quelle est la place de la Confirmation dans le dessein divin du salut?" : "Dans l’Ancienne Alliance, les prophètes ont annoncé le don de l’Esprit du Seigneur au Messie attendu et à tout le peuple messianique. Toute la vie et la mission du Christ se déroulent dans une totale communion avec l’Esprit Saint. Les Apôtres le reçoivent à la Pentecôte et annoncent les « merveilles de Dieu » (Ac 2,11). Par l’imposition des mains, ils transmettent aux nouveaux baptisés le don de l’Esprit lui-même. Tout au long des siècles, l’Église a continuellement vécu de l’Esprit et l’a transmis à ses fils." }, 

{ "Pourquoi parle-t-on de la Chrismation ou de la Confirmation?" : "On dit Chrismation (dans les Églises orientales on parle de Chrismation avec le saint-myron, qui veut dire saint-chrême), parce que le rite essentiel en est l’onction. On l’appelle Confirmation, parce qu’elle confirme et renforce la grâce baptismale." }, 

{ "Quel est le rite essentiel de la Confirmation?" : "Le rite essentiel de la Confirmation est l’onction avec le saint-chrême (huile parfumée, consacrée par l’Évêque). Il s’effectue par l’imposition des mains par le ministre, qui prononce les paroles sacramentelles propres au sacrement. En Occident, cette onction est faite sur le front des baptisés avec ces paroles : « Sois marqué de l’Esprit Saint, le don de Dieu ». Dans les Églises orientales de rite byzantin, l’onction est faite aussi sur d’autres parties du corps, avec la formule : « Je te marque du don de l’Esprit Saint »." }, 

{ "Quel est l’effet de la Confirmation?" : "L’effet de la Confirmation est l’effusion particulière de l’Esprit Saint, comme à la Pentecôte. Cette effusion imprime dans l’âme un caractère indélébile et elle augmente la grâce baptismale. Elle enracine plus profondément la filiation divine. Elle unit plus fermement au Christ et à son Église. Elle renforce dans l’âme les dons de l’Esprit Saint et elle confère une force particulière pour témoigner de la foi chrétienne." }, 

{ "Qui peut recevoir ce sacrement?" : "Toute personne qui a déjà été baptisée peut et doit le recevoir, et cela une seule fois. Pour le recevoir efficacement, le baptisé doit être en état de grâce." }, 

{ "Qui est le ministre de la Confirmation?" : "À l’origine, le ministre en est l’Évêque. Ainsi est manifesté le lien du confirmé avec l’Église dans sa dimension apostolique. Quand c’est le prêtre qui confère ce sacrement – comme cela est habituellement le cas en Orient et dans des circonstances particulières en Occident –, le lien avec l’Évêque et avec l’Église est manifesté par le prêtre, collaborateur de l’Évêque et par le saint-chrême consacré par l’Évêque lui-même." }
,  { "Qu’est-ce que l’Eucharistie?": "L’Eucharistie est le sacrifice même du Corps et du Sang du Seigneur Jésus, qu’il a instituée pour perpétuer au long des siècles jusqu’à son retour le sacrifice de la croix, confiant ainsi à son Église le mémorial de sa Mort et de sa Résurrection. L’Eucharistie est le signe de l’unité, le lien de la charité, le repas pascal, où l’on reçoit le Christ, où l’âme est comblée de grâce et où est donné le gage de la vie éternelle." },
  
  { "Quand le Christ a-t-il institué l’Eucharistie?": "Il l’a instituée le Jeudi saint, « la nuit même où il était livré » (1 Co 11,23), alors qu’il célébrait la dernière Cène avec ses Apôtres." },
  
  { "Comment l’a-t-il instituée?": "Après avoir réuni ses Apôtres au Cénacle, Jésus prit le pain dans ses mains, le rompit et le leur donna, en disant : « Prenez, et mangez-en tous : ceci est mon corps livré pour vous ». Puis il prit dans ses mains la coupe remplie de vin et leur dit : « Prenez, et buvez-en tous, car ceci est la coupe de mon sang, le sang de l’Alliance nouvelle et éternelle, qui sera versé pour vous et pour la multitude en rémission des péchés. Vous ferez cela, en mémoire de moi »." },
  
  { "Que représente l’Eucharistie dans la vie de l’Église?": "Elle est la source et le sommet de toute la vie chrétienne. Dans l’Eucharistie culminent l’action sanctifiante de Dieu envers nous et le culte que nous lui rendons. L’Eucharistie renferme tout le bien spirituel de l’Église : le Christ lui-même, notre Pâque. La communion de la vie divine et l’unité du Peuple de Dieu sont exprimées et réalisées par l’Eucharistie. À travers la célébration eucharistique, nous nous unissons déjà à la liturgie du Ciel et nous anticipons la vie éternelle." },
  
  { "Comment désigne-t-on ce sacrement?": "La richesse insondable de ce sacrement se manifeste par différents noms, qui en traduisent les aspects particuliers. Les plus communs sont : Eucharistie, Sainte Messe, Cène du Seigneur, Fraction du pain, Célébration eucharistique, Mémorial de la passion, de la mort et de la résurrection du Seigneur, Saint Sacrifice, Sainte et Divine Liturgie, Saints Mystères, Saint-Sacrement de l’autel, Communion." }
,  { "Qu’est-ce que l’Eucharistie?": "L’Eucharistie est le sacrifice même du Corps et du Sang du Seigneur Jésus, qu’il a instituée pour perpétuer au long des siècles jusqu’à son retour le sacrifice de la croix, confiant ainsi à son Église le mémorial de sa Mort et de sa Résurrection. L’Eucharistie est le signe de l’unité, le lien de la charité, le repas pascal, où l’on reçoit le Christ, où l’âme est comblée de grâce et où est donné le gage de la vie éternelle." },
  
  { "Quand le Christ a-t-il institué l’Eucharistie?": "Il l’a instituée le Jeudi saint, « la nuit même où il était livré » (1 Co 11,23), alors qu’il célébrait la dernière Cène avec ses Apôtres." },
  
  { "Comment l’a-t-il instituée?": "Après avoir réuni ses Apôtres au Cénacle, Jésus prit le pain dans ses mains, le rompit et le leur donna, en disant : « Prenez, et mangez-en tous : ceci est mon corps livré pour vous ». Puis il prit dans ses mains la coupe remplie de vin et leur dit : « Prenez, et buvez-en tous, car ceci est la coupe de mon sang, le sang de l’Alliance nouvelle et éternelle, qui sera versé pour vous et pour la multitude en rémission des péchés. Vous ferez cela, en mémoire de moi »." },
  
  { "Que représente l’Eucharistie dans la vie de l’Église?": "Elle est la source et le sommet de toute la vie chrétienne. Dans l’Eucharistie culminent l’action sanctifiante de Dieu envers nous et le culte que nous lui rendons. L’Eucharistie renferme tout le bien spirituel de l’Église : le Christ lui-même, notre Pâque. La communion de la vie divine et l’unité du Peuple de Dieu sont exprimées et réalisées par l’Eucharistie. À travers la célébration eucharistique, nous nous unissons déjà à la liturgie du Ciel et nous anticipons la vie éternelle." },
  
  { "Comment désigne-t-on ce sacrement?": "La richesse insondable de ce sacrement se manifeste par différents noms, qui en traduisent les aspects particuliers. Les plus communs sont : Eucharistie, Sainte Messe, Cène du Seigneur, Fraction du pain, Célébration eucharistique, Mémorial de la passion, de la mort et de la résurrection du Seigneur, Saint Sacrifice, Sainte et Divine Liturgie, Saints Mystères, Saint-Sacrement de l’autel, Communion." },

  { "Quelle est la place de l’Eucharistie dans le plan divin du salut?": "Dans l’Ancienne Alliance, l’Eucharistie est préfigurée surtout par le repas pascal célébré chaque année par les Hébreux avec les pains azymes, en souvenir du départ précipité et libérateur de l’Égypte. Jésus l’a annoncée dans son enseignement et il l’a instituée en célébrant la dernière Cène avec ses Apôtres, au cours du repas pascal. Fidèle au commandement du Seigneur : « Vous ferez cela, en mémoire de moi » (1 Co 11,24), l’Église a toujours célébré l’Eucharistie, surtout le dimanche, jour de la Résurrection de Jésus." },

  { "Comment se déroule la célébration de l’Eucharistie?": "Elle se déroule en deux grandes parties, qui forment un seul acte cultuel : la liturgie de la Parole, qui comprend la proclamation et l’écoute de la Parole de Dieu, et la liturgie eucharistique, qui comprend la présentation du pain et du vin, la prière ou anaphore comportant les paroles de la consécration, et la communion." },

  { "Qui est le ministre du sacrement de l’Eucharistie?": "C’est le prêtre (Évêque ou prêtre) validement ordonné, qui agit dans la Personne du Christ Tête et au nom de l’Église." },

  { "Quels sont les éléments essentiels et nécessaires pour l’Eucharistie?": "Ce sont le pain de blé et le vin de la vigne." },

  { "En quel sens l’Eucharistie est-elle mémorial du sacrifice du Christ?": "L’Eucharistie est mémorial en ce sens qu’elle rend présent et actualise le sacrifice que le Christ a offert à son Père, une fois pour toutes, sur la croix, en faveur de l’humanité. Le caractère sacrificiel de l’Eucharistie se manifeste dans les paroles mêmes de l’institution : « Ceci est mon corps livré pour vous » et « Cette coupe est la nouvelle Alliance en mon sang répandu pour vous » (Lc 22,19-20). Le sacrifice de la croix et le sacrifice de l’Eucharistie sont un unique sacrifice. La victime et celui qui l’offre sont identiques. Seule la manière de l’offrir diffère. Le sacrifice est sanglant sur la croix, non sanglant dans l’Eucharistie." },

  { "De quelle manière l’Église participe-t-elle au sacrifice eucharistique?": "Dans l’Eucharistie, le sacrifice du Christ devient aussi le sacrifice des membres de son Corps. La vie des fidèles, leur louange, leur action, leur prière, leur travail, sont unis à ceux du Christ. En tant que sacrifice, l’Eucharistie est aussi offerte pour tous les fidèles, pour les vivants et les défunts, en réparation des péchés de tous les hommes, et pour obtenir de Dieu des bienfaits spirituels et temporels. De plus, l’Église du ciel est présente dans l’offrande du Christ." }
, {
    "Comment Jésus est-il présent dans l’Eucharistie?": "Jésus Christ est présent dans l’Eucharistie d’une façon unique et incomparable. Il est présent en effet de manière vraie, réelle, substantielle : avec son Corps et son Sang, avec son Âme et sa divinité. Dans l’Eucharistie, est donc présent de manière sacramentelle, c’est-à-dire sous les espèces du pain et du vin, le Christ tout entier, Dieu et homme."
  },
  {
    "Que signifie la transsubstantiation?": "La transsubstantiation signifie la conversion de toute la substance du pain en la substance du Corps du Christ et de toute la substance du vin en la substance de son Sang. Cette conversion se réalise au cours de la prière eucharistique, par l’efficacité de la parole du Christ et de l’action de l’Esprit Saint. Toutefois, les apparences sensibles du pain et du vin, c’est-à-dire les « espèces eucharistiques », demeurent inchangées."
  },
  {
    "La fraction du pain divise-t-elle le Christ?": "La fraction du pain ne divise pas le Christ. Il est tout entier et intégralement présent en chacune des espèces eucharistiques et en chacune de leurs parties."
  },
  {
    "Jusqu’à quand demeure la présence eucharistique du Christ?": "Elle demeure tant que subsistent les espèces eucharistiques."
  },
  {
    "Quelle sorte de culte est-il dû au sacrement de l’Eucharistie?": "C’est le culte de latrie, c’est-à-dire l’adoration réservée à Dieu seul, soit durant la célébration eucharistique, soit en dehors d’elle. L’Église conserve en effet avec le plus grand soin les hosties consacrées; elle les porte aux malades et aux personnes qui sont dans l’impossibilité de participer à la Messe. Elle présente l’hostie à l’adoration solennelle des fidèles, la porte en procession, et elle invite à la visite fréquente et à l’adoration du Saint-Sacrement, conservé dans le tabernacle."
  },
  {
    "Pourquoi l’Eucharistie est-elle le banquet pascal?": "L’Eucharistie est le banquet pascal parce que le Christ, accomplissant sacramentellement sa pâque, nous donne son Corps et son Sang offerts en nourriture et en boisson. Il nous unit à lui et entre nous dans son sacrifice."
  },  {
    "Comment Jésus est-il présent dans l’Eucharistie?": "Jésus Christ est présent dans l’Eucharistie d’une façon unique et incomparable. Il est présent en effet de manière vraie, réelle, substantielle : avec son Corps et son Sang, avec son Âme et sa divinité. Dans l’Eucharistie, est donc présent de manière sacramentelle, c’est-à-dire sous les espèces du pain et du vin, le Christ tout entier, Dieu et homme."
  },
  {
    "Que signifie la transsubstantiation?": "La transsubstantiation signifie la conversion de toute la substance du pain en la substance du Corps du Christ et de toute la substance du vin en la substance de son Sang. Cette conversion se réalise au cours de la prière eucharistique, par l’efficacité de la parole du Christ et de l’action de l’Esprit Saint. Toutefois, les apparences sensibles du pain et du vin, c’est-à-dire les « espèces eucharistiques », demeurent inchangées."
  },
  {
    "La fraction du pain divise-t-elle le Christ?": "La fraction du pain ne divise pas le Christ. Il est tout entier et intégralement présent en chacune des espèces eucharistiques et en chacune de leurs parties."
  },
  {
    "Jusqu’à quand demeure la présence eucharistique du Christ?": "Elle demeure tant que subsistent les espèces eucharistiques."
  },
  {
    "Quelle sorte de culte est-il dû au sacrement de l’Eucharistie?": "C’est le culte de latrie, c’est-à-dire l’adoration réservée à Dieu seul, soit durant la célébration eucharistique, soit en dehors d’elle. L’Église conserve en effet avec le plus grand soin les hosties consacrées; elle les porte aux malades et aux personnes qui sont dans l’impossibilité de participer à la Messe. Elle présente l’hostie à l’adoration solennelle des fidèles, la porte en procession, et elle invite à la visite fréquente et à l’adoration du Saint-Sacrement, conservé dans le tabernacle."
  },
  {
    "Pourquoi l’Eucharistie est-elle le banquet pascal?": "L’Eucharistie est le banquet pascal parce que le Christ, accomplissant sacramentellement sa pâque, nous donne son Corps et son Sang offerts en nourriture et en boisson. Il nous unit à lui et entre nous dans son sacrifice."
  },
  {
    "Que signifie l’autel?": "L’autel est le symbole du Christ lui-même, présent comme victime sacrificielle (autel–sacrifice de la croix) et comme nourriture céleste qui se donne à nous (autel–table eucharistique)."
  },
  {
    "Quand l’Église fait-elle obligation de participer à la Messe?": "L’Église fait obligation aux fidèles de participer à la Messe tous les dimanches et aux fêtes de précepte, et elle recommande d’y participer aussi les autres jours."
  },
  {
    "Quand doit-on communier?": "L’Église recommande aux fidèles qui prennent part à la Messe de recevoir aussi, avec les dispositions voulues, la Communion, en en prescrivant l’obligation au moins à Pâques."
  },
  {
    "Qu’est-il exigé pour recevoir la Communion?": "Pour recevoir la Communion, il faut être pleinement incorporé à l’Église catholique et être en état de grâce, c’est-à-dire sans conscience d’avoir commis de péché mortel. Celui qui est conscient d’avoir commis un péché grave doit recevoir le sacrement de la Réconciliation avant d’accéder à la Communion. Il importe aussi d’avoir un esprit de recueillement et de prière, d’observer le jeûne prescrit par l’Église et d’avoir des attitudes corporelles dignes (gestes, vêtements), comme marques de respect envers le Christ."
  },
  {
    "Quels sont les fruits de la Communion?": "La Communion fait grandir notre union au Christ et avec son Église. Elle maintient et renouvelle la vie de grâce reçue au Baptême et à la Confirmation, et elle accroît l’amour envers le prochain. En nous fortifiant dans la charité, elle efface les péchés véniels et nous préserve, pour l’avenir, des péchés mortels."
  }, {
    "Quand est-il possible d’administrer la Communion à d’autres chrétiens?": "Les ministres catholiques administrent licitement la Communion aux membres des Églises orientales qui ne sont pas en pleine communion avec l’Église catholique, mais qui la demandent de leur plein gré, avec les dispositions requises. Quant aux membres des autres Communautés ecclésiales, les ministres catholiques administrent licitement la Communion aux fidèles qui, en raison d’une nécessité grave, la demandent de leur plein gré, qui sont bien disposés et qui manifestent la foi catholique à l’égard du sacrement."
  },
  {
    "Pourquoi l’Eucharistie est-elle « gage de la gloire à venir »?": "Parce que l’Eucharistie comble de toutes les grâces et bénédictions du Ciel, elle nous rend forts pour notre pèlerinage en cette vie et elle fait désirer la vie éternelle, nous unissant déjà au Christ assis à la droite du Père, à l’Église du ciel, à la bienheureuse Vierge Marie et à tous les saints."
  },
  {
    "Pourquoi le Christ a-t-il institué les sacrements de la Pénitence et de l’Onction des malades?": "Le Christ, médecin de l’âme et du corps, les a institués parce que la vie nouvelle qu’il nous a donnée par les sacrements de l’initiation chrétienne peut être affaiblie et même perdue à cause du péché. C’est pourquoi le Christ a voulu que l’Église continue son œuvre de guérison et de salut, grâce aux deux sacrements de guérison."
  },
  {
    "Comment est appelé ce sacrement?": "Il est appelé sacrement de Pénitence, de Réconciliation, du Pardon, de la Confession, de la Conversion."
  },
  {
    "Pourquoi y a-t-il un sacrement de la Réconciliation après le Baptême?": "Parce que la vie nouvelle de la grâce, reçue au Baptême, n’a pas supprimé la faiblesse de la nature humaine, ni l’inclination au péché (c’est-à-dire la concupiscence), le Christ a institué ce sacrement pour la conversion des baptisés qui se sont éloignés de lui par le péché."
  },
  {
    "Quand ce sacrement fut-il institué?": "Le Christ ressuscité a institué ce sacrement quand il est apparu à ses Apôtres, le soir de Pâques, et qu’il leur a dit: « Recevez l’Esprit Saint; tout homme à qui vous remettrez ses péchés, ils lui seront remis; tout homme à qui vous maintiendrez ses péchés, ils lui seront maintenus » (Jn 20,22-23)."
  },
  {
    "Les baptisés ont-ils besoin de se convertir?": "L’appel du Christ à la conversion retentit en permanence dans la vie des baptisés. La conversion est un combat continuel de toute l’Église, qui est sainte, mais qui, en son sein, comprend des pécheurs."
  },
  {
    "Qu’est-ce que la pénitence intérieure?": "C’est l’élan du « cœur brisé » (Ps 50[51],19), poussé par la grâce divine à répondre à l’amour miséricordieux de Dieu. La pénitence implique douleur et aversion vis-à-vis des péchés commis, ferme propos de ne plus pécher à l’avenir et confiance dans le secours de Dieu. Elle se nourrit de l’espérance en la miséricorde divine."
  }, {
    "Sous quelles formes s’exprime la pénitence dans la vie chrétienne?": "La pénitence s’exprime sous des formes très variées, en particulier par le jeûne, la prière, l’aumône. Ces formes de pénitence, et d’autres encore, peuvent être pratiquées par le chrétien dans sa vie quotidienne, notamment pendant le temps du Carême et le vendredi, qui est jour de pénitence."
  },
  {
    "Quels sont les éléments essentiels du sacrement de la Réconciliation?": "Ils sont au nombre de deux : les actes accomplis par l’homme qui se convertit sous l’action de l’Esprit Saint et l’absolution du prêtre qui, au nom de Christ, accorde le pardon et précise les modalités de la satisfaction."
  },
  {
    "Quels sont les actes du pénitent?": "Il faut : un sérieux examen de conscience; la contrition (ou repentir), qui est parfaite quand elle est motivée par l’amour envers Dieu, et imparfaite quand elle est fondée sur d’autres motifs et qu’elle inclut le propos de ne plus pécher; la confession, qui consiste dans l’aveu des péchés devant le prêtre; la satisfaction, à savoir l’accomplissement de certains actes de pénitence que le confesseur impose au pénitent, afin de réparer le dommage causé par le péché."
  },
  {
    "Quels péchés faut-il confesser?": "On doit confesser tous les péchés graves qui n’ont pas encore été confessés et dont on se souvient après un sérieux examen de conscience. La confession des péchés graves est l’unique moyen ordinaire pour obtenir le pardon."
  },
  {
    "Quand faut-il confesser les péchés graves?": "Tout fidèle ayant atteint l’âge de raison est tenu à l’obligation de confesser ses péchés graves au moins une fois dans l’année et, de toute façon, avant de recevoir la Communion."
  },
  {
    "Pourquoi les péchés véniels sont-ils aussi objet de la confession sacramentelle?": "Bien que la confession des péchés véniels ne soit pas nécessaire au sens strict, elle est vivement recommandée par l’Église, parce qu’elle contribue à former la conscience droite et à lutter contre les inclinations mauvaises, pour se laisser guérir par le Christ et progresser dans la vie de l’Esprit."
  },
  {
    "Qui est le ministre du sacrement?": "Le Christ a confié le ministère de la Réconciliation à ses Apôtres, aux Évêques, leurs successeurs, et aux prêtres, leurs collaborateurs, qui deviennent ainsi les instruments de la miséricorde et de la justice de Dieu. Ils exercent le pouvoir de pardonner les péchés au nom du Père et du Fils et du Saint-Esprit."
  }, {
    "À qui est réservée l’absolution de certains péchés?": "L’absolution de certains péchés particulièrement graves (comme ceux qui sont punis d’excommunication) est réservée au Siège apostolique ou à l’Évêque du lieu ou aux prêtres autorisés par eux, bien que tout prêtre puisse absoudre de tout péché et de toute excommunication quiconque est en danger de mort."
  },
  {
    "Le confesseur est-il tenu au secret?": "Étant donné la délicatesse et la grandeur de ce ministère et le respect dû aux personnes, tout confesseur est tenu, sans exception aucune et sous peine de sanctions très sévères, de garder le sceau sacramentel, c’est-à-dire l’absolu secret au sujet des péchés dont il a connaissance par la confession."
  },
  {
    "Quels sont les effets de ce sacrement?": "Les effets du sacrement de la Pénitence sont : la réconciliation avec Dieu, et donc le pardon des péchés; la réconciliation avec l’Église; le retour dans l’état de grâce s’il avait été perdu; la rémission de la peine éternelle méritée à cause des péchés mortels et celle, au moins en partie, des peines temporelles qui sont les conséquences du péché; la paix et la sérénité de la conscience, ainsi que la consolation spirituelle; l’accroissement des forces spirituelles pour le combat chrétien."
  },
  {
    "En certaines circonstances, peut-on célébrer ce sacrement par une confession générale et l’absolution collective?": "Dans les cas de grave nécessité (comme le danger imminent de mort), on peut recourir à la célébration communautaire de la Réconciliation avec confession générale et absolution collective, dans le respect des normes de l’Église et avec le propos de confesser individuellement les péchés graves, en temps voulu."
  },
  {
    "Qu’est-ce que les indulgences?": "Les indulgences sont la rémission devant Dieu de la peine temporelle due pour les péchés dont la faute est déjà pardonnée. À certaines conditions, le fidèle acquiert cette rémission, pour lui-même ou pour les défunts, par le ministère de l’Église qui, en tant que dispensatrice de la rédemption, distribue le trésor des mérites du Christ et des saints."
  }, {
    "Comment est vécue la maladie dans l’Ancien Testament?": "Dans l’Ancien Testament, l’homme a fait l’expérience, durant les périodes de maladie, de ses limites, percevant en même temps que la maladie est liée de façon mystérieuse au péché. Les prophètes ont entrevu qu’elle pouvait avoir aussi une valeur rédemptrice pour ses péchés personnels et pour ceux des autres. C’est ainsi que la maladie était vécue devant Dieu, auquel l’homme demandait sa guérison."
  },
  {
    "Quel sens a la compassion de Jésus pour les malades?": "La compassion de Jésus pour les malades et les nombreuses guérisons qu’il opérait sont un signe évident qu’avec lui est arrivé le Royaume de Dieu, et donc la victoire sur le péché, sur la souffrance et sur la mort. Par sa passion et sa mort, il donne un sens nouveau à la souffrance, qui, si elle est unie à la sienne, peut devenir un moyen de purification et de salut pour nous et pour les autres."
  },
  {
    "Quel est le comportement de l’Église envers les malades?": "Ayant reçu du Seigneur le commandement de guérir les malades, l’Église s’emploie à le réaliser par les soins qu’elle leur apporte, ainsi que par la prière d’intercession avec laquelle elle les accompagne. Elle dispose surtout d’un sacrement spécifique en leur faveur, institué par le Christ lui-même et attesté par saint Jacques : « Si l’un de vous est malade, qu’il appelle ceux qui dans l’Église exercent la fonction d’Anciens : ils prieront sur lui après lui avoir fait une onction d’huile au nom du Seigneur » (Jc 5,14-15)."
  },
  {
    "Qui peut recevoir le sacrement de l’Onction des malades?": "Tout fidèle peut le recevoir lorsqu’il commence à se trouver en danger de mort en raison de la maladie ou de son âge. Le même fidèle peut le recevoir de nouveau plusieurs fois, si l’on constate une aggravation de la maladie ou dans le cas d’une autre maladie grave. La célébration du sacrement doit être précédée, si possible, de la confession individuelle du malade."
  },
  {
    "Qui administre le sacrement de l’Onction des malades?": "Il ne peut être administré que par les prêtres (Évêques ou prêtres)."
  },  {
    "Comment est-il célébré?": "La célébration de ce sacrement consiste essentiellement dans l’onction d’huile, si possible bénie par l’Évêque, onction faite sur le front et sur les mains du malade (dans le rite romain), ou encore sur d’autres parties du corps (dans d’autres rites). Elle s’accompagne de la prière du prêtre, qui implore la grâce spéciale du sacrement."
  },
  {
    "Quels sont les effets du sacrement?": "Le sacrement confère une grâce spéciale, qui unit plus intimement le malade à la Passion du Christ, pour son bien et pour le bien de toute l’Église. Elle lui apporte le réconfort, la paix, le courage et le pardon des péchés si le malade n’a pu se confesser. Le sacrement procure aussi parfois, si Dieu le veut, le rétablissement de la santé physique. De toute manière, l’onction des malades prépare au passage vers la Maison du Père."
  },
  {
    "Qu’est-ce que le Viatique?": "Le Viatique est l’Eucharistie reçue par ceux qui vont quitter cette vie terrestre et qui préparent leur passage vers la vie éternelle. Reçue au moment de passer de ce monde au Père, la Communion au Corps et au Sang du Christ mort et ressuscité est semence de vie éternelle et puissance de résurrection."
  }, {
    "Quels sont les sacrements au service de la communion et de la mission?": "Deux sacrements, l’Ordre et le Mariage, confèrent une grâce spéciale pour une mission particulière dans l’Église, au service de l’édification du peuple de Dieu. Ils contribuent en particulier à la communion ecclésiale et au salut d’autrui."
  },
  {
    "Qu’est-ce que le sacrement de l’Ordre?": "C’est le sacrement par lequel la mission confiée par le Christ à ses Apôtres continue à être exercée dans l’Église, jusqu’à la fin des temps."
  },
  {
    "Pourquoi l’appelle-t-on sacrement de l’Ordre?": "Ordre indique un corps d’Église, dans lequel on est intégré au moyen d’une consécration spéciale (Ordination). Par un don particulier du Saint-Esprit, cette consécration permet d’exercer un pouvoir sacré au nom et par l’autorité du Christ pour le service du Peuple de Dieu."
  },
  {
    "Quelle est la place du sacrement de l’Ordre dans le dessein divin du salut?": "Dans l’Ancien Testament, il y a des préfigurations de ce sacrement : le service des Lévites, de même que le sacerdoce d’Aaron et l’institution des soixante-dix Anciens (cf. Nb 11,25). Ces préfigurations ont leur accomplissement dans le Christ Jésus qui, par le sacrifice de la croix, est le « seul médiateur entre Dieu et les hommes » (1 Tm 2,5), « grand-prêtre selon le sacerdoce de Melchisédech » (He 5,10). L’unique sacerdoce du Christ se rend présent par le sacerdoce ministériel."
  },
  {
    "Quels sont les différents degrés du sacrement de l’Ordre?": "Il se compose de trois degrés, qui sont irremplaçables pour la structure organique de l’Église : l’épiscopat, le presbytérat et le diaconat."
  },
  {
    "Quel est l’effet de l’Ordination épiscopale?": "L’ordination épiscopale confère la plénitude du sacrement de l’Ordre. Elle fait de l’Évêque le successeur légitime des Apôtres et l’intègre au collège épiscopal, lui faisant partager avec le Pape et les autres Évêques la sollicitude pour toutes les Églises. Elle donne mission d’enseigner, de sanctifier et de gouverner."
  },
  {
    "Quelle est la fonction de l’Évêque dans l’Église particulière qui lui est confiée?": "L’Évêque, auquel est confiée une Église particulière, est le principe visible et le fondement de l’unité de cette Église, envers laquelle, comme vicaire du Christ, il remplit la charge pastorale, aidé par ses prêtres et ses diacres."
  },
  {
    "Quel est l’effet de l’Ordination presbytérale?": "L’onction de l’Esprit Saint marque le prêtre d’un caractère spirituel indélébile; elle le configure au Christ prêtre et le rend capable d’agir au nom du Christ Tête. Coopérateur de l’Ordre épiscopal, il est consacré pour annoncer l’Évangile, célébrer le culte divin, surtout l’Eucharistie, dont il tire la force pour son ministère, et pour être le pasteur des fidèles."
  },
  {
    "Comment le prêtre exerce-t-il son ministère?": "Bien qu’ordonné pour une mission universelle, il l’exerce dans une Église particulière, lié par une fraternité sacerdotale avec les autres prêtres, formant ensemble le « presbytérium » qui, en communion avec l’Évêque et sous sa dépendance, porte la responsabilité de l’Église particulière."
  },
  {
    "Quel est l’effet de l’Ordination diaconale?": "Le diacre, configuré au Christ serviteur de tous, est ordonné pour le service de l’Église. Sous l’autorité de son Évêque, il exerce ce service dans le cadre du ministère de la parole, du culte divin, de la charge pastorale et de la charité."
  },{
    "Comment se célèbre le sacrement de l’Ordre?": "Pour chacun des trois degrés, le sacrement de l’Ordre est conféré par l’imposition des mains sur la tête de l’ordinand par l’Évêque, qui prononce la prière consécratoire solennelle. Par cette prière, l’Évêque prie Dieu d’envoyer sur l’ordinand une effusion spéciale de l’Esprit Saint et de ses dons, en vue du ministère."
  },
  {
    "Qui peut conférer le sacrement?": "Il appartient aux Évêques validement ordonnés, en tant que successeurs des Apôtres, de conférer les trois degrés du sacrement de l’Ordre."
  },
  {
    "Qui peut recevoir le sacrement de l’Ordre?": "Ne peut recevoir validement le sacrement de l’Ordre qu’un baptisé de sexe masculin. L’Église se reconnaît liée par ce choix fait par le Seigneur lui-même. Personne ne peut exiger de recevoir le sacrement de l’Ordre. Mais il revient à l’autorité de l’Église de considérer l’aptitude des candidats."
  },
  {
    "Le célibat est-il requis de celui qui reçoit le sacrement?": "Le célibat est toujours requis pour l’épiscopat. Pour le presbytérat, dans l’Église latine sont choisis de manière ordinaire des hommes croyants qui vivent dans le célibat et qui veulent le garder « à cause du Royaume des cieux » (Mt 19,12). Dans les Églises orientales, on n’accepte pas le mariage après l’ordination. Des hommes déjà mariés peuvent eux aussi accéder au diaconat permanent."
  },
  {
    "Quels sont les effets du sacrement de l’Ordre?": "Ce sacrement donne une effusion particulière de l’Esprit Saint, qui configure l’ordinand au Christ dans sa triple fonction de Prêtre, Prophète et Roi, selon les degrés respectifs du sacrement. L’ordination confère un caractère spirituel indélébile, c’est pourquoi il ne peut être répété ni conféré pour un temps limité."
  },
  {
    "Avec quelle autorité est exercé le sacerdoce ministériel?": "Dans l’exercice de leur ministère sacré, les prêtres ordonnés parlent et agissent, non pas en vertu d’une autorité propre, ni même par mandat ou délégation de la communauté, mais dans la Personne du Christ Tête et au nom de l’Église. De ce fait, le sacerdoce ministériel se différencie radicalement, et pas seulement par une différence de degré, du sacerdoce commun des fidèles, au service duquel le Christ l’a institué."
  }, {
    "Quel est le dessein de Dieu sur l’homme et sur la femme?": "Dieu, qui est amour et qui a créé l’homme par amour, l’a appelé à aimer. En créant l’homme et la femme, il les a appelés, dans le Mariage, à une intime communion de vie et d’amour entre eux, « à cause de cela, ils ne sont plus deux, mais un seul » (Mt 19,6). En les bénissant, Dieu leur a dit : « Soyez féconds et multipliez-vous » (Gn 1,28)."
  },
  {
    "Pour quelles fins Dieu a-t-il institué le Mariage?": "L’union matrimoniale de l’homme et de la femme, fondée et structurée par les lois du Créateur, est ordonnée par nature à la communion et au bien des conjoints, à la génération et à l’éducation des enfants. Selon le plan originel de Dieu, l’union matrimoniale est indissoluble, comme Jésus Christ l’a affirmé : « Ce que Dieu a uni, que l’homme ne le sépare pas » (Mc 10,9)."
  },
  {
    "Comment le péché menace-t-il le Mariage?": "À cause du premier péché, qui a causé aussi la rupture de la communion, donnée par le Créateur, entre l’homme et la femme, l’union matrimoniale est très souvent menacée par la discorde et l’infidélité. Cependant, dans son infinie miséricorde, Dieu donne à l’homme et à la femme la grâce de réaliser leur union de vie selon son dessein divin originaire."
  },
  {
    "Qu’enseigne l’Ancien Testament sur le Mariage?": "Tout particulièrement à travers la pédagogie de la Loi et des prophètes, Dieu aide son peuple à faire mûrir progressivement en lui la conscience de l’unicité et de l’indissolubilité du Mariage. L’alliance nuptiale de Dieu avec Israël prépare et préfigure l’Alliance nouvelle, accomplie par le Fils de Dieu, Jésus Christ, avec l’Église, son épouse."
  },
  {
    "Quelle est la nouveauté apportée au Mariage par le Christ?": "Jésus Christ a non seulement restauré l’ordre initial voulu par Dieu, mais il donne la grâce pour vivre le Mariage dans sa dignité nouvelle de sacrement, qui est le signe de son amour sponsal pour l’Église : « Vous, les hommes, aimez votre femme à l’exemple du Christ : il a aimé l’Église » (Ep 5,25)."
  },
  {
    "Le mariage est-il une obligation pour tous?": "Le mariage n’est pas une obligation pour tous. En particulier, Dieu appelle certains hommes et certaines femmes à suivre le Seigneur Jésus dans la voie de la virginité et du célibat pour le Royaume des cieux, les faisant renoncer au grand bien du mariage pour se soucier des choses du Seigneur et chercher à lui plaire. Ainsi ils deviennent le signe de la primauté absolue de l’amour du Christ et de l’ardente attente de sa venue glorieuse."
  }, {
    "Comment se célèbre le sacrement de Mariage?": "Puisque le mariage établit les conjoints dans un état public de vie dans l’Église, sa célébration liturgique est publique, en présence du prêtre (ou du témoin qualifié de l’Église) et des autres témoins."
  },
  {
    "Qu’est-ce que le consentement matrimonial?": "Le consentement matrimonial est la volonté expresse d’un homme et d’une femme de se donner mutuellement et définitivement l’un à l’autre, dans le but de vivre une alliance d’amour fidèle et fécond. Étant donné que le consentement fait le Mariage, il est indispensable et irremplaçable. Pour rendre valide le Mariage, le consentement doit avoir comme objet le véritable Mariage; et il doit être un acte humain, conscient et libre, hors de toute violence et de toute contrainte."
  },
  {
    "Qu’est-il exigé quand l’un des époux n’est pas catholique?": "Pour être licites, les mariages mixtes (entre un catholique et un baptisé non catholique) requièrent la permission de l’autorité ecclésiastique. Les mariages avec disparité de culte (entre un catholique et un non-baptisé) ont besoin d’une dispense pour être valides. Dans tous les cas, il est indispensable que les conjoints n’excluent pas la reconnaissance des fins et des propriétés essentielles du mariage, et que la partie catholique accepte les engagements, connus aussi de l’autre conjoint, de garder sa foi et d’assurer le Baptême et l’éducation catholique des enfants."
  },
  {
    "Quels sont les effets du sacrement de Mariage?": "Le sacrement de Mariage crée entre les époux un lien perpétuel et exclusif. Dieu lui-même ratifie le consentement des époux. Ainsi, le mariage conclu et consommé entre baptisés ne peut jamais être dissout. D’autre part, le sacrement donne aux époux la grâce nécessaire pour parvenir à la sainteté dans la vie conjugale, et dans l’accueil responsable et l’éducation des enfants."
  },
  {
    "Quels sont les péchés qui sont gravement contre le sacrement de mariage?": "Ce sont : l’adultère; la polygamie parce qu’elle s’oppose à l’égale dignité de l’homme et de la femme, à l’unité et l’exclusivité de l’amour conjugal; le refus de la fécondité, qui prive la vie conjugale du don des enfants; et le divorce, qui va contre l’indissolubilité."
  }, {
    "Comment se célèbre le sacrement de Mariage?": "Puisque le mariage établit les conjoints dans un état public de vie dans l’Église, sa célébration liturgique est publique, en présence du prêtre (ou du témoin qualifié de l’Église) et des autres témoins."
  },
  {
    "Qu’est-ce que le consentement matrimonial?": "Le consentement matrimonial est la volonté expresse d’un homme et d’une femme de se donner mutuellement et définitivement l’un à l’autre, dans le but de vivre une alliance d’amour fidèle et fécond. Étant donné que le consentement fait le Mariage, il est indispensable et irremplaçable. Pour rendre valide le Mariage, le consentement doit avoir comme objet le véritable Mariage; et il doit être un acte humain, conscient et libre, hors de toute violence et de toute contrainte."
  },
  {
    "Qu’est-il exigé quand l’un des époux n’est pas catholique?": "Pour être licites, les mariages mixtes (entre un catholique et un baptisé non catholique) requièrent la permission de l’autorité ecclésiastique. Les mariages avec disparité de culte (entre un catholique et un non-baptisé) ont besoin d’une dispense pour être valides. Dans tous les cas, il est indispensable que les conjoints n’excluent pas la reconnaissance des fins et des propriétés essentielles du mariage, et que la partie catholique accepte les engagements, connus aussi de l’autre conjoint, de garder sa foi et d’assurer le Baptême et l’éducation catholique des enfants."
  },
  {
    "Quels sont les effets du sacrement de Mariage?": "Le sacrement de Mariage crée entre les époux un lien perpétuel et exclusif. Dieu lui-même ratifie le consentement des époux. Ainsi, le mariage conclu et consommé entre baptisés ne peut jamais être dissout. D’autre part, le sacrement donne aux époux la grâce nécessaire pour parvenir à la sainteté dans la vie conjugale, et dans l’accueil responsable et l’éducation des enfants."
  },
  {
    "Quels sont les péchés qui sont gravement contre le sacrement de mariage?": "Ce sont : l’adultère; la polygamie parce qu’elle s’oppose à l’égale dignité de l’homme et de la femme, à l’unité et l’exclusivité de l’amour conjugal; le refus de la fécondité, qui prive la vie conjugale du don des enfants; et le divorce, qui va contre l’indissolubilité."
  },  {
    "Quand l’Église admet-elle la séparation physique des époux?": "L’Église admet la séparation physique des époux lorsque leur cohabitation est devenue, pour des motifs graves, pratiquement impossible, même si elle souhaite leur réconciliation. Mais aussi longtemps que vit son conjoint, aucun des époux n’est libre de contracter une nouvelle union, à moins que leur mariage ne soit nul et déclaré tel par l’autorité ecclésiastique."
  },
  {
    "Quelle est la position de l’Église à l’égard des divorcés remariés?": "Fidèle au Seigneur, l’Église ne peut reconnaître comme mariage l’union des divorcés remariés civilement. « Celui qui renvoie sa femme pour en épouser une autre est coupable d’adultère envers elle. Si une femme a renvoyé son mari pour en épouser un autre, elle est coupable d’adultère » (Mc 10,11-12). À leur égard, l’Église fait preuve d’une sollicitude attentive, les invitant à une vie de foi, à la prière, aux œuvres de charité et à l’éducation chrétienne de leurs enfants. Mais aussi longtemps que dure leur situation, qui est objectivement contraire à la loi de Dieu, ils ne peuvent recevoir l’absolution sacramentelle, ni accéder à la communion eucharistique, ni exercer certaines responsabilités dans l’Église."
  },
  {
    "Pourquoi la famille chrétienne est-elle aussi appelée Église domestique?": "Parce que la famille manifeste et révèle la nature de l’Église comme famille de Dieu, qui est d’être communion et famille. Chacun de ses membres, selon son rôle propre, exerce le sacerdoce baptismal, contribuant à faire de la famille une communauté de grâce et de prière, une école de vertus humaines et chrétiennes, le lieu de la première annonce de la foi aux enfants."
  },
  {
    "Que sont les sacramentaux?": "Ce sont des signes sacrés institués par l’Église dans le but de sanctifier certaines circonstances de la vie. Ils comportent une prière accompagnée du signe de la croix et d’autres signes. Parmi les sacramentaux, les bénédictions occupent une place importante. Elles sont une louange à Dieu et une prière pour obtenir ses dons; de même, il y a les consécrations de personnes et la consécration d’objets dont l’usage est réservé au culte divin."
  },
  {
    "Qu’est-ce qu’un exorcisme?": "On a affaire à un exorcisme lorsque l’Église demande, avec son autorité, au nom de Jésus, qu’une personne ou un objet soit protégé contre l’emprise du Malin et soustrait à son empire. Sous sa forme simple, il est pratiqué lors de la célébration du Baptême. L’exorcisme solennel, appelé grand exorcisme, ne peut être pratiqué que par un prêtre et avec la permission de l’Évêque."
  },
  {
    "Quelles sont les formes de piété populaire qui accompagnent la vie sacramentelle de l’Église?": "Le sens religieux du peuple chrétien a, de tout temps, trouvé son expression dans des formes variées de piété qui entourent la vie sacramentelle de l’Église, telles que la vénération des reliques, les visites aux sanctuaires, les pèlerinages, les processions, le chemin de Croix, le Rosaire. À la lumière de la foi, l’Église éclaire et favorise les formes authentiques de piété populaire."
  },
  {
    "Quel rapport y a-t-il entre les sacrements et la mort du chrétien?": "Le chrétien qui meurt dans le Christ parvient, au terme de son existence terrestre, à la plénitude de la vie nouvelle commencée au Baptême, renforcée par la Confirmation et nourrie de l’Eucharistie, anticipation du banquet céleste. Le sens de la mort chrétienne se manifeste à la lumière de la Mort et de la Résurrection du Christ, notre unique espérance. Le chrétien qui meurt dans le Christ Jésus part « pour habiter chez le Seigneur » (2 Co 5,8)."
  },
  {
    "Qu’expriment les funérailles?": "Tout en étant célébrées selon différents rites qui correspondent aux situations et aux traditions locales, les funérailles expriment le caractère pascal de la mort chrétienne dans l’espérance de la résurrection, ainsi que le sens de la communion avec le défunt, surtout par la prière pour la purification de son âme."
  },
  {
    "Quels sont les moments principaux des funérailles?": "Habituellement, les obsèques comprennent quatre moments principaux : l’accueil de la dépouille mortelle par la communauté, accompagné de paroles de réconfort et d’espérance, la liturgie de la Parole, le sacrifice eucharistique et l’adieu par lequel l’âme du défunt est confiée à Dieu, source de vie éternelle, tandis que le corps est enseveli dans l’attente de la résurrection."
  }

   ],
  };

  late List<Map<String, String>> _currentQuestions;
  late Map<String, String> _currentQuestion;

  @override
  void initState() {
    super.initState();
    _updateQuestions(); // Initialiser avec des questions
  }

  void _updateQuestions() {
    setState(() {
      _currentQuestions = _selectedCategory == "Tous"
          ? _questionsByCategory.entries.expand((entry) => entry.value).toList()
          : _questionsByCategory[_selectedCategory] ?? [];

      _currentQuestion = _currentQuestions.isNotEmpty
          ? _currentQuestions[_random.nextInt(_currentQuestions.length)]
          : {"Pas de questions dans cette catégorie": "Essayez une autre !"};
    });
  }

  void _changeQuestion() {
    setState(() {
      if (_currentQuestions.isNotEmpty) {
        _currentQuestion = _currentQuestions[_random.nextInt(_currentQuestions.length)];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz Catéchisme",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropdownButton<String>(
              value: _selectedCategory,
              dropdownColor: Colors.brown[200],
              style: TextStyle(color: Colors.white),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedCategory = newValue;
                    _updateQuestions();
                  });
                }
              },
              items: _questionsByCategory.keys.map<DropdownMenuItem<String>>((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeQuestion,
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _currentQuestion.keys.first,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  SizedBox(height: 10),
                  Text(
                    _currentQuestion.values.first,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _changeQuestion,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text("Nouvelle Question", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
