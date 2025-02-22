import 'package:flutter/material.dart';

class SectionPersoScreen extends StatelessWidget {
  final String persoName;

  SectionPersoScreen({required this.persoName});

  final Map<String, String> persoContent = {
    "Adam": "Adam, premier homme créé par Dieu, fut façonné à partir de la poussière du sol et reçu le souffle de vie.\n\n Placé dans le jardin d’Éden, il vivait en parfaite harmonie avec la nature et son Créateur.\n\n Pour qu’il ne soit pas seul, Dieu lui donna pour compagne Ève.\n\n Ensemble, ils reçurent la mission de veiller sur le jardin et de se multiplier.\n\n Toutefois, une seule interdiction leur fut imposée : ne pas manger du fruit de l’arbre de la connaissance du bien et du mal.\n\nSéduits par le serpent, incarnation du mal, Adam et Ève cédèrent à la tentation et goûtèrent au fruit défendu.\n\n Leur innocence s’évanouit aussitôt, et prenant conscience de leur nudité, ils se cachèrent de Dieu.\n\n Pour cette désobéissance, ils furent bannis du paradis et condamnés à une existence de labeur et de souffrance : Adam devrait cultiver la terre à la sueur de son front, tandis qu’Ève enfanterait dans la douleur.\n\n L’accès à l’arbre de vie leur fut interdit, les vouant à la mortalité.\n\nChassés d’Éden, Adam et Ève eurent plusieurs enfants, parmi lesquels Caïn, Abel et Seth.\n\n Caïn, jaloux de son frère, commit le premier meurtre en tuant Abel.\n\n Adam vécut encore de nombreuses années, engendrant d’autres fils et filles.\n\n Il s’éteignit à l’âge de 930 ans, témoin du destin d’une humanité désormais marquée par le péché et la séparation d’avec Dieu.",
    "Eve": "Ève, première femme créée par Dieu, fut façonnée à partir d'une côte d'Adam pour être sa compagne, afin qu'il ne demeure pas seul.\n\n Ensemble, ils vivaient dans le jardin d’Éden, un lieu de beauté et d'harmonie où ils partageaient une intimité parfaite avec la nature et leur Créateur.\n\n Dieu leur confia la responsabilité de prendre soin du jardin et de se multiplier, mais leur imposa une unique interdiction : ne pas manger du fruit de l’arbre de la connaissance du bien et du mal.\n\nSéduite par les paroles du serpent, incarnation du mal, Ève céda à la tentation et mangea le fruit défendu, offrant ensuite à Adam d'en faire de même.\n\n Leur innocence disparut aussitôt, et, prenant conscience de leur nudité, ils se cachèrent de Dieu.\n\n En punition de cette désobéissance, Ève et Adam furent expulsés du jardin d’Éden.\n\n Ève fut condamnée à enfanter dans la douleur et à vivre sous l'autorité de son mari, tandis que l'accès à l'arbre de vie leur fut interdit, les destinant à la mortalité.\n\nEn dehors d’Éden, Ève donna naissance à de nombreux enfants, dont Caïn, Abel et Seth.\n\n Elle devint témoin du premier meurtre, lorsque Caïn tua Abel par jalousie.\n\n Ève vécut de longues années, voyant l’humanité se développer et souffrir des conséquences du péché originel.\n\n Par son acte, elle est à l'origine d'une humanité marquée par la séparation d’avec Dieu, mais aussi porteuse de la promesse d’une rédemption future.",
    "Cain": "Caïn, premier fils d’Adam et Ève, fut le premier homme né de l’humanité après la chute du jardin d’Éden.\n\n Cultivateur de la terre, il offrit à Dieu le fruit de son labeur, tandis que son frère Abel, berger, présenta les premiers-nés de son troupeau.\n\n Mais Dieu agréa l’offrande d’Abel et non celle de Caïn, provoquant en lui une grande colère et une profonde jalousie.\n\n Consumé par l’envie, Caïn attira Abel dans les champs et le tua, commettant ainsi le premier meurtre de l’histoire.\n\n Lorsqu’il fut interrogé par Dieu, il répondit avec défiance : « Suis-je le gardien de mon frère ? ».\n\n Pour cet acte, Dieu le maudit : la terre refuserait désormais de lui donner ses fruits, et il serait condamné à errer sans repos.\n\n Mais, dans sa justice mêlée de miséricorde, Dieu plaça un signe sur lui afin que personne ne le tue.\n\nBanni, Caïn s’exila au pays de Nod, à l’est d’Éden.\n\n Il bâtit une ville et donna naissance à une descendance, parmi laquelle se trouvaient des artisans, des musiciens et des forgerons.\n\n Mais son lignage fut marqué par la violence et la corruption.\n\n Ainsi, Caïn demeure un symbole de la jalousie et des ravages du péché, un homme maudit errant loin de la face de Dieu.",
    "Abel": "Abel, deuxième fils d’Adam et Ève, fut un homme juste et un berger dévoué.\n\n Il offrit à Dieu les premiers-nés de son troupeau avec foi et sincérité, et son offrande fut agréée.\n\n Son frère aîné, Caïn, jaloux de cette faveur divine, conçut contre lui une haine grandissante.\n\nUn jour, Caïn attira Abel dans les champs et, consumé par l’envie, le tua sauvagement, commettant ainsi le premier meurtre de l’humanité.\n\n Le sang d’Abel cria vers Dieu depuis la terre, et Dieu demanda à Caïn des comptes pour ce crime.\n\n En punition, Caïn fut maudit et condamné à errer loin de la terre qui avait bu le sang innocent de son frère.\n\nAbel demeure dans la mémoire biblique comme le premier martyr, symbole de l’innocence et de la fidélité à Dieu.\n\n Son sacrifice préfigure celui des justes persécutés à travers l’histoire, et son sang versé est mentionné dans les Écritures comme un témoignage éternel de justice.",
    "Sett": "Seth fut le troisième fils d’Adam et Ève mentionné dans la Bible, né après la mort d’Abel.\n\n Il fut donné par Dieu à ses parents comme une consolation après la tragédie du meurtre d’Abel par Caïn.\n\n Son nom signifie 'compensation' ou 'remplacement', car Ève déclara : « Dieu m’a donné un autre fils à la place d’Abel, que Caïn a tué.\n\n »Contrairement à Caïn, dont la descendance fut marquée par la violence et l’éloignement de Dieu, Seth devint l’ancêtre d’une lignée fidèle au Seigneur.\n\n De sa descendance naquit Énoch, puis Noé, à travers qui Dieu perpétua l’humanité après le Déluge.\n\nSeth représente ainsi la continuité du dessein divin et la lignée des justes.\n\n C’est par lui que se transmettra la foi et l’espérance d’un retour à Dieu, préfigurant la venue du salut pour l’humanité.",
    "Henoch": "Hénoc, descendant de Seth et arrière-arrière-petit-fils d’Adam, se distingue dans la Bible par sa vie de droiture et son intimité avec Dieu.\n\n Contrairement aux hommes de son temps, il marcha fidèlement avec le Seigneur, vivant selon Sa volonté.\n\nLa Bible rapporte une chose unique à son sujet : « Hénoc marcha avec Dieu, puis il ne fut plus, car Dieu le prit.\n\n » (Genèse 5:24).\n\n Cette phrase mystérieuse est interprétée comme une élévation directe auprès de Dieu, faisant de lui l’un des rares hommes de l’Ancien Testament à ne pas connaître la mort, aux côtés d’Élie.\n\nHénoc est ainsi un symbole de la foi et de la communion parfaite avec Dieu.\n\n Dans la tradition biblique, il est aussi mentionné dans le Livre des Hébreux et le Livre de l’Ecclésiastique comme un modèle de justice.\n\n Certaines traditions apocryphes lui attribuent des visions célestes et des révélations sur le jugement de l’humanité.",
    "Mathusalem": "Mathusalem, fils d’Hénoc et grand-père de Noé, est connu pour être l’homme ayant vécu le plus longtemps selon la Bible.\n\n Il atteignit l’âge extraordinaire de 969 ans, ce qui fait de lui un symbole de longévité et de la patience divine avant le Déluge.\n\nIl appartient à la lignée des justes descendants de Seth, ceux qui restèrent fidèles à Dieu contrairement à la descendance de Caïn, marquée par la corruption et la violence.\n\n Son fils Lamech et son petit-fils Noé furent choisis par Dieu pour perpétuer l’humanité après la grande purification du Déluge.\n\nBien que la Bible ne détaille pas sa vie, la longévité de Mathusalem est souvent interprétée comme un signe de la grâce divine, retardant le jugement de Dieu jusqu’à la génération de Noé.\n\n Selon certains calculs, il serait mort l’année même du Déluge, marquant ainsi la fin d’une époque avant que Dieu ne renouvelle l’humanité.",
    "Noé": "Noé, fils de Lémec et descendant de Seth, est l’une des figures les plus marquantes de la Bible.\n\n Il est décrit comme un homme juste et intègre au milieu d’une humanité corrompue, vivant dans la crainte de Dieu et marchant fidèlement avec Lui.\n\nFace à la violence et à la perversion généralisées de son époque, Dieu décide de purifier la terre par un Déluge universel.\n\n Noé reçoit alors l’ordre divin de construire une arche selon des dimensions précises, afin de sauver sa famille et un couple de chaque espèce animale.\n\n Par son obéissance, il devient l’instrument du salut de l’humanité et du monde vivant.\n\nAprès le Déluge, Noé offre un sacrifice d’actions de grâces à Dieu, qui établit avec lui une alliance éternelle, symbolisée par l’arc-en-ciel.\n\n Il reçoit aussi la mission de repeupler la terre avec ses fils Sem, Cham et Japhet, devenant ainsi l’ancêtre des nations.\n\nToutefois, la Bible mentionne aussi un épisode troublant de sa vie : son ivresse et la faute de son fils Cham, qui entraîne une malédiction sur la descendance de ce dernier.\n\nNoé vécut 950 ans, témoin du renouveau de l’humanité après la grande purification divine.\n\n Il demeure dans la tradition biblique un modèle de foi, d’obéissance et de justice, préfigurant le salut que Dieu offre à ceux qui lui restent fidèles.",
    "Sem": "Sem, fils de Noé, est l’ancêtre des peuples sémites, parmi lesquels les Hébreux, les Assyriens et les Araméens.\n\n Son nom signifie 'Nom' ou 'Renommée', ce qui peut symboliser sa place particulière dans le dessein divin.\n\nAprès le Déluge, c’est à travers sa descendance que se poursuivra la lignée des justes et que naîtra Abraham, puis Israël.\n\n Noé, après avoir maudit Cham, bénit Sem en disant que Dieu habitera dans ses tentes (Genèse 9:26), ce qui est interprété comme une prophétie sur l’élection du peuple hébreu.\n\nIl vécut 600 ans et eut plusieurs fils, dont Éber, considéré comme l’ancêtre des Hébreux.\n\n Son lignage est au centre du plan divin de salut, qui mènera jusqu’au Christ selon la tradition chrétienne.",
    "Cham": "Cham, deuxième fils de Noé, est connu pour un acte de mépris envers son père après le Déluge.\n\n Selon Genèse 9:20-25, Noé, ayant planté une vigne, s’enivra et se retrouva nu dans sa tente.\n\n Cham vit la nudité de son père et alla en parler à ses frères, au lieu de le couvrir avec respect.\n\n En raison de cette faute, Noé maudit Canaan, fils de Cham, en déclarant qu’il serait esclave de ses frères.\n\nCham est l’ancêtre des peuples de Canaan, de l’Égypte (Misraïm), de la Nubie (Cush) et de la Libye (Puth), des nations souvent en opposition avec Israël dans la Bible.\n\n Certains peuples issus de Cham, notamment les Cananéens, sont décrits comme corrompus et idolâtres, ce qui explique en partie leur condamnation dans les récits bibliques.",
    "Japhet": "Japhet, le troisième fils de Noé, est moins mis en avant que ses frères, mais il reçoit une bénédiction importante de son père.\n\n Noé déclare que Japhet s’étendra et habitera dans les tentes de Sem (Genèse 9:27), ce qui symbolise une grande prospérité et une alliance future entre les descendants de Japhet et ceux de Sem.\n\nJaphet est considéré comme l’ancêtre des peuples indo-européens, notamment les Grecs, les Mèdes et d’autres nations du Nord et de l’Ouest.\n\n Ses descendants sont souvent liés aux grandes civilisations antiques.\n\nIl est vu comme le père des nations qui se répandront largement sur la terre, jouant un rôle dans l’expansion et le développement de nombreuses cultures.",
    "Canaan": "Canaan est l’un des fils de Cham et le petit-fils de Noé.\n\n Il est particulièrement connu pour avoir été maudit par Noé après l’épisode de l’ivresse (Genèse 9:20-25).\n\n Noé déclara que Canaan serait 'l’esclave des esclaves' de ses frères, une malédiction qui marquera l’histoire de ses descendants.\n\nCanaan est l’ancêtre des Cananéens, un ensemble de peuples établis dans la région qui porte son nom, la terre de Canaan (l’actuelle Palestine, Israël, Liban et une partie de la Syrie et de la Jordanie).\n\n Parmi ses descendants, on retrouve plusieurs nations mentionnées dans la Bible, comme les Hittites, Jébusiens, Amoréens, Héviens et Phéniciens.",
  "Eber": "Éber est un descendant de Sem, cité dans Genèse 10:21-25 et Genèse 11:14-17.\n\n Il est particulièrement important car son nom est à l’origine du terme 'Hébreu' (Ivri, עִבְרִי), qui désignera plus tard Abraham et ses descendants.\n\nSelon la Bible, Éber eut deux fils : Péleg et Joktan.\n\n Il est dit que sous Péleg, 'la terre fut divisée', ce qui est parfois interprété comme une référence à la dispersion des peuples après la tour de Babel.\n\nÉber vécut 464 ans, et sa lignée aboutira à Abraham, marquant ainsi la continuité des justes à travers l’histoire biblique.",
  "Térah": "Térah est le père d'Abraham, Nahor et Haran (Genèse 11:26).\n\n Il est originaire d’Ur en Chaldée, une grande cité mésopotamienne.\n\n La Bible nous apprend qu’il adorait d’autres dieux (Josué 24:2), mais qu’il entreprit un voyage vers Canaan avec Abraham et Lot.\n\n Cependant, il s’arrêta en chemin et s’établit à Haran, où il mourut à 205 ans (Genèse 11:31-32).",
  "Abram": "Abram, fils de Térah et frère de Nahor et Harân, est une figure centrale de la Bible.\n\n Originaire d'Our en Chaldée, il reçoit l'appel de Dieu pour quitter son pays et sa famille afin de partir vers une terre inconnue que Dieu lui promet : le pays de Canaan.\n\n Abram est le modèle du croyant qui répond avec foi à l'appel divin.\n\nDieu lui fait une promesse triple : une descendance innombrable, une terre pour ses descendants, et une bénédiction universelle pour toutes les nations par son intermédiaire.\n\n Abram devient alors Abraham, ‘père d’une multitude’, lorsque Dieu établit avec lui une alliance scellée par la circoncision.\n\nMalgré son âge avancé et celui de son épouse Sarai (renommée Sara), il croit à la promesse d’un fils.\n\n Isaac, l’enfant de la promesse, naît miraculeusement de Sara.\n\n Dieu éprouve la foi d’Abraham en lui demandant de sacrifier son fils, mais l’ange de Yahvé l’arrête à temps, confirmant ainsi sa fidélité absolue à Dieu.\n\n Abraham est le père des croyants et l’ancêtre du peuple d’Israël.",
  "Saraï": "Sarai, femme d’Abram, est présentée comme stérile dans les premiers récits bibliques, ce qui met en péril la promesse divine d’une descendance.\n\n Elle est renommée Sara (‘princesse’) lorsque Dieu confirme son alliance avec Abraham.\n\n Malgré son doute initial face à l’annonce de la naissance d’un fils, elle donne miraculeusement naissance à Isaac à l’âge avancé de 90 ans.\n\nAvant cela, Sarai avait donné Agar, sa servante égyptienne, à Abram pour avoir un enfant par son intermédiaire, ce qui conduit à la naissance d’Ismaël.\n\n Cependant, la tension entre Sara et Agar finit par provoquer l’expulsion de cette dernière.\n\n Sara demeure dans la tradition biblique comme la mère du peuple élu et un modèle de foi malgré ses hésitations humaines.", 
  "Ketura": "Ketura, mentionnée après la mort de Sara, devient une épouse d’Abraham.\n\n Elle lui donne plusieurs enfants, dont Zimrân, Jokshân, Medân, Madian, Jishbak et Shouah.\n\n Ses descendants sont parfois associés aux tribus arabes.\n\n Bien que la Bible parle peu de Ketura, elle illustre la continuité de la descendance d’Abraham au-delà d’Isaac, tout en mettant en évidence le caractère particulier de la lignée d’Isaac comme héritier des promesses divines.",
  "Agar": "Agar, servante égyptienne de Sarai, devient mère d’Ismaël, le fils d’Abraham, après que Sarai ait proposé à Abram de l’épouser pour assurer une descendance.\n\n Lorsque Agar se sait enceinte, elle méprise Sarai, provoquant des tensions dans leur relation.\n\n Après avoir fui dans le désert, elle rencontre l’ange de Yahvé, qui lui promet que son fils deviendra le père d’une grande nation.\n\nPlus tard, à cause des conflits entre Ismaël et Isaac, Agar et son fils sont chassés.\n\n Cependant, Dieu intervient pour sauver Agar et Ismaël dans le désert, confirmant qu’Ismaël aura également une descendance nombreuse, bien que ce ne soit pas par lui que passera la promesse.\n\n Agar symbolise à la fois la douleur de l’exclusion et la fidélité de Dieu envers ceux qui sont en marge.",
  
  "Lot": "Lot, neveu d’Abraham et fils de Haran, accompagne Abraham lorsqu’il quitte Ur pour Canaan.\n\n Lot s’installe à Sodome, une ville connue pour sa corruption.\n\n Dieu détruit Sodome et Gomorrhe à cause de leur méchanceté, mais Lot et ses filles sont sauvés par des anges.\n\n Cependant, la femme de Lot est transformée en statue de sel pour avoir désobéi aux instructions divines en regardant en arrière.\n\n Après la destruction, Lot vit avec ses deux filles dans une caverne.\n\n Dans un épisode troublant, ses filles, croyant être les dernières humaines sur terre, le font boire du vin et ont des enfants de lui, donnant naissance à Moab et Ben-Ammi, ancêtres respectifs des Moabites et des Ammonites.",

"Ben-Ammi": "Ben-Ammi, fils de Lot et de sa fille cadette, est l’ancêtre des Ammonites, un peuple qui habitait à l’est du Jourdain.\n\n Son nom signifie ‘fils de mon peuple’, reflétant l’origine incestueuse de sa naissance.\n\n Les Ammonites deviennent des voisins et des ennemis fréquents d’Israël, souvent en conflit avec le peuple élu, bien que la Loi de Moïse interdise l’hostilité envers eux en raison de leur lien avec Abraham à travers Lot.",

"Madian": "Madian, fils d’Abraham et de Ketura, est l’ancêtre des Madianites, un peuple nomade du désert.\n\n Les Madianites vivent principalement dans les régions au sud-est de Canaan.\n\n Moïse trouve refuge parmi eux après avoir fui l’Égypte et épouse Séphora, fille de Jethro (ou Réuel), prêtre madianite.\n\n Les Madianites jouent un rôle important dans plusieurs récits bibliques, notamment en tant qu’alliés d’Israël, mais aussi comme ennemis dans l’histoire de Gédéon, où ils sont vaincus miraculeusement par un petit nombre d’hommes choisis par Dieu.",

"Moab": "Moab, fils de Lot et de sa fille aînée, est l’ancêtre des Moabites, un peuple installé à l’est de la mer Morte.\n\n Les Moabites entretiennent une relation complexe avec Israël, tantôt alliés, tantôt ennemis.\n\n Balak, roi de Moab, tente de maudire Israël en engageant Balaam, mais échoue car Dieu protège son peuple.\n\n Ruth, l’une des figures bibliques les plus connues, est une Moabite qui devient ancêtre de David et donc de Jésus, symbolisant l’intégration des étrangers dans le plan divin.",

"Amalek": "Amalek, petit-fils d’Ésaü par son fils Éliphaz et sa concubine Timna, est l’ancêtre des Amalécites, un peuple nomade et ennemi juré d’Israël.\n\n Les Amalécites attaquent Israël peu après l’Exode, ce qui provoque une bataille où Moïse, avec l’aide de Josué et d’Aaron, obtient la victoire grâce à son intercession divine.\n\n Dieu déclare une hostilité perpétuelle entre Israël et Amalek, ordonnant leur destruction totale.\n\n Cet ordre est réitéré à Saül et Samuel.\n\n Les Amalécites symbolisent l’opposition à Dieu dans la tradition biblique et sont finalement éradiqués sous le règne de David.",

  
  
  "Ismael": "Ismaël, fils d’Abraham et de sa servante égyptienne Agar, est le premier fils d’Abraham.\n\n Son nom, qui signifie ‘Dieu entend’, reflète l’intervention divine en faveur de sa mère lorsqu’elle fuyait Sarai dans le désert.\n\n L’ange de Yahvé promet à Agar que son fils sera le père d’une grande nation.\n\nIsmaël grandit dans le foyer d’Abraham jusqu’à la naissance d’Isaac.\n\n Les tensions entre Agar et Sara, ainsi que la rivalité entre Ismaël et Isaac, conduisent à l’expulsion d’Agar et de son fils.\n\n Dans le désert, Dieu sauve Ismaël de la mort par soif et réitère sa promesse : il deviendra l’ancêtre de douze princes et d’un grand peuple.\n\nIsmaël s’installe dans le désert de Paran, où il devient un archer et épouse une Égyptienne.\n\n Ses descendants sont associés aux Ismaélites, souvent identifiés comme des tribus nomades arabes.\n\n Ismaël réapparaît brièvement lors de l’enterrement d’Abraham, qu’il partage avec Isaac.\n\n Il vécut 137 ans et est considéré comme l’ancêtre des nations arabes selon la tradition biblique.",
   "Isaac": "Isaac, fils d’Abraham et de Sara, est l’enfant de la promesse divine, né miraculeusement lorsque ses parents étaient très âgés.\n\n Son nom, signifiant ‘il rira’, rappelle le rire d’incrédulité de Sara à l’annonce de sa naissance.\n\n Isaac est le premier héritier direct de l’alliance de Dieu avec Abraham.\n\nL’un des épisodes les plus marquants de sa vie est l’épreuve du sacrifice sur le mont Moriah.\n\n Bien qu’il soit jeune, Isaac accepte passivement la volonté de son père, démontrant sa propre foi et obéissance.\n\n Dieu intervient pour sauver Isaac, confirmant ainsi l’alliance avec Abraham.\n\nIsaac épouse Rébecca, une femme choisie par Abraham et trouvée grâce à l’intervention divine.\n\n Avec elle, il a deux fils, Ésaü et Jacob, qui deviendront les fondateurs de deux nations rivales.\n\n Isaac est décrit comme un homme paisible, consacrant sa vie à la prière et à la méditation.\n\n Il prospère en terre de Canaan, où Dieu renouvelle avec lui les promesses faites à Abraham.\n\nIsaac vécut jusqu’à l’âge de 180 ans, devenant témoin des conflits entre ses fils.\n\n Sa cécité et sa préférence pour Ésaü compliquent la transmission de la bénédiction patriarcale, finalement usurpée par Jacob.\n\n Isaac reste néanmoins une figure centrale de la foi dans la tradition biblique.",
   "Rebecca": "Rébecca, fille de Bethuel et sœur de Laban, appartient à la famille d’Abraham.\n\n Elle est choisie comme épouse pour Isaac par l’intendant d’Abraham, qui reconnaît en elle un signe divin : son hospitalité et sa générosité envers un étranger.\n\n Rébecca accepte avec foi de quitter son pays et sa famille pour rejoindre Isaac en Canaan.\n\nElle joue un rôle clé dans la continuation de la lignée d’Abraham.\n\n Bien que stérile au début de son mariage, Rébecca prie Dieu et devient mère de jumeaux, Ésaü et Jacob.\n\n Pendant sa grossesse, elle reçoit une révélation divine : ses fils représenteront deux nations rivales, et l’aîné (Ésaü) servira le cadet (Jacob).\n\nRébecca est connue pour son intelligence et sa détermination.\n\n Voyant Isaac favoriser Ésaü, elle agit pour que Jacob reçoive la bénédiction patriarcale en usant de ruse.\n\n Ce choix provoque une rupture entre ses fils, mais il assure la continuation de l’alliance divine avec Jacob.\n\nAprès l’épisode de la bénédiction, Rébecca incite Jacob à fuir chez son frère Laban pour échapper à la colère d’Ésaü.\n\n Bien que son rôle dans ces événements soit controversé, elle est perçue comme une femme de foi, veillant à la réalisation des plans divins.\n\n Rébecca est enterrée au tombeau des Patriarches à Hébron, aux côtés d’Isaac, son époux.",
   "Jacob": "Jacob, fils d’Isaac et de Rébecca, est le cadet des jumeaux qu’elle met au monde.\n\n Son nom, signifiant ‘celui qui talonne’, fait référence à sa naissance, où il sort en tenant le talon de son frère Ésaü.\n\n Jacob est le troisième patriarche de la lignée d’Abraham, héritant des promesses divines malgré son statut de cadet.\n\n Avec l’aide de sa mère Rébecca, Jacob obtient la bénédiction de son père Isaac en se faisant passer pour Ésaü, ce qui provoque la colère de ce dernier.\n\n Fuyant la vengeance de son frère, Jacob se réfugie chez son oncle Laban en Mésopotamie.\n\n En chemin, il a une vision de l’échelle reliant le ciel et la terre, où Dieu lui promet la descendance et la terre de Canaan.\n\n Chez Laban, Jacob travaille quatorze ans pour épouser ses cousines Léa et Rachel.\n\n De leurs unions et de leurs servantes naissent les douze fils de Jacob, fondateurs des douze tribus d’Israël.\n\n Après un conflit avec Laban, Jacob retourne en Canaan.\n\n Il y affronte Dieu lors d’un combat mystérieux, après lequel il reçoit le nom d’Israël, signifiant ‘celui qui lutte avec Dieu’.\n\n Réconcilié avec Ésaü, Jacob termine sa vie en Égypte, sous la protection de son fils Joseph.\n\n Il vécut 147 ans et fut enterré à Mamré, dans le tombeau des Patriarches.",

"Ésaü": "Ésaü, fils aîné d’Isaac et de Rébecca, est le frère jumeau de Jacob.\n\n Son nom, signifiant ‘velu’, et son surnom Édom, ‘roux’, reflètent son apparence physique à la naissance.\n\n Ésaü est décrit comme un chasseur habile et un homme des champs, contrastant avec Jacob, homme plus réservé et vivant sous la tente.\n\n Bien qu’étant l’aîné, Ésaü vend son droit d’aînesse à Jacob pour un plat de lentilles, montrant son indifférence envers les responsabilités spirituelles liées à ce statut.\n\n Plus tard, Jacob usurpe également la bénédiction paternelle destinée à Ésaü, provoquant une profonde colère et un désir de vengeance chez ce dernier.\n\n Ésaü s’établit finalement en Édom (Séir), où il devient l’ancêtre des Édomites.\n\n Malgré les conflits initiaux, il se réconcilie avec Jacob lors d’une rencontre émouvante des années plus tard.\n\n Ésaü représente dans la tradition biblique une figure de rivalité fraternelle et une nation distincte du peuple élu.",

"Laban": "Laban, fils de Bethuel et frère de Rébecca, est l’oncle de Jacob et le père de Léa et Rachel.\n\n Il vit en Mésopotamie, dans la ville de Harran.\n\n Lorsque Jacob fuit la colère de son frère Ésaü, il trouve refuge chez Laban, qui l’accueille chaleureusement.\n\n Cependant, Laban est connu pour sa ruse : il trompe Jacob en lui donnant Léa en mariage à la place de Rachel, pour laquelle Jacob avait travaillé sept ans.\n\n Jacob accepte de travailler sept années supplémentaires pour épouser Rachel, qu’il aime profondément.\n\n Le conflit entre Jacob et Laban s’intensifie au sujet du partage des troupeaux, mais Jacob, avec la bénédiction divine, prospère malgré les manipulations de Laban.\n\n Finalement, Jacob quitte Laban avec sa famille et ses richesses.\n\n Une alliance est conclue entre eux pour sceller leur séparation pacifique.\n\n Laban est souvent vu comme une figure rusée, jouant un rôle crucial dans les récits des Patriarches.",

"Rachel": "Rachel, fille de Laban et sœur cadette de Léa, est l’épouse préférée de Jacob.\n\n Jacob tombe amoureux d’elle dès leur première rencontre et accepte de travailler sept ans pour l’épouser.\n\n Cependant, Laban trompe Jacob en lui donnant Léa, et Jacob doit travailler sept années supplémentaires pour Rachel.\n\n Stérile pendant longtemps, Rachel souffre en voyant Léa donner plusieurs enfants à Jacob.\n\n Finalement, Dieu intervient et Rachel donne naissance à Joseph, puis à Benjamin.\n\n Elle meurt en mettant Benjamin au monde et est enterrée près de Bethléem.\n\n Rachel est souvent décrite comme une figure d’amour et de douleur, illustrant les épreuves liées à la maternité et au mariage dans les récits bibliques.",

"Léa": "Léa, fille aînée de Laban et sœur de Rachel, est donnée en mariage à Jacob par ruse, à la place de sa sœur cadette.\n\n Bien que moins aimée que Rachel, Léa est bénie par Dieu et donne à Jacob six fils (Ruben, Siméon, Lévi, Juda, Issacar et Zabulon) ainsi qu’une fille, Dina.\n\n Elle représente dans la tradition biblique une figure de fidélité et de maternité prolifique, contribuant significativement à la formation des douze tribus d’Israël.\n\n Léa souffre de l’amour inégal de Jacob, mais trouve consolation dans les enfants qu’elle lui donne.\n\n Elle est enterrée aux côtés de Jacob dans le tombeau des Patriarches à Hébron, partageant ainsi une place importante dans l’histoire du peuple élu.",

   "Ruben": "Ruben, fils aîné de Jacob et de Léa, est le premier des douze fils de Jacob.\n\n Son nom, signifiant ‘voici un fils’, reflète la joie de Léa à sa naissance.\n\n Bien qu’il soit l’aîné, Ruben perd son droit d’aînesse à cause de sa faute : il couche avec Bilha, la concubine de son père Jacob, un acte qui provoque son exclusion des bénédictions patriarcales.\n\n Ruben joue néanmoins un rôle crucial en sauvant Joseph de la mort, persuadant ses frères de le jeter dans une citerne au lieu de le tuer.\n\n Sa tribu, bien qu’importante, n’occupe pas une position dominante dans l’histoire d’Israël.",

"Simeon": "Siméon, deuxième fils de Jacob et de Léa, est connu pour son caractère impulsif et violent.\n\n Avec son frère Lévi, il venge le déshonneur de leur sœur Dina en massacrant les habitants de Sichem, ce qui provoque la colère de Jacob.\n\n En conséquence, Siméon ne reçoit pas de bénédiction privilégiée de la part de son père.\n\n Sa tribu est intégrée à celle de Juda et perd de l’importance au fil du temps.\n\n Malgré cela, Siméon reste une figure clé dans la généalogie des douze tribus d’Israël.",

"Lévi": "Lévi, troisième fils de Jacob et de Léa, est l’ancêtre de la tribu lévitique, dédiée au service religieux et au sacerdoce en Israël.\n\n Avec son frère Siméon, Lévi participe au massacre des habitants de Sichem pour venger leur sœur Dina, ce qui attire sur lui une critique sévère de Jacob.\n\n Bien que la violence de Lévi soit condamnée, sa descendance est consacrée à Dieu, donnant naissance aux prêtres et aux Lévites qui jouent un rôle central dans le culte israélite.",

"Juda": "Juda, quatrième fils de Jacob et de Léa, est l’ancêtre de la tribu royale d’Israël et, selon la tradition biblique, de la lignée messianique.\n\n Bien qu’il participe à la vente de Joseph, il se distingue par son rôle de leader parmi ses frères.\n\n Il plaide en faveur de Benjamin et offre sa propre vie en garantie.\n\n Jacob bénit Juda comme le porteur du sceptre, préfigurant la royauté de David et, selon les chrétiens, la venue du Messie.\n\n La tribu de Juda est centrale dans l’histoire d’Israël, représentant le royaume du sud après la division du pays.",

"Dan": "Dan, premier fils de Jacob et de Bilha, la servante de Rachel, est l’ancêtre de la tribu de Dan.\n\n Son nom, signifiant ‘il a jugé’, reflète la reconnaissance de Rachel pour le jugement divin en sa faveur.\n\n La tribu de Dan est connue pour sa capacité militaire et son rôle dans la conquête de la terre promise.\n\n Cependant, elle est également associée à l’idolâtrie, notamment avec l’établissement d’un sanctuaire à Dan.",

"Naphtali": "Naphtali, deuxième fils de Jacob et de Bilha, est décrit comme un cerf libre dans la bénédiction de Jacob, symbole de rapidité et d’agilité.\n\n La tribu de Naphtali occupe une région fertile au nord d’Israël et contribue à l’histoire militaire du pays, notamment sous la direction de Débora et de Barak.\n\n Naphtali est une figure symbolique de liberté et de bénédictions divines.",

"Gad (Jacob)": "Gad, premier fils de Jacob et de Zilpa, la servante de Léa, est l’ancêtre de la tribu de Gad.\n\n Son nom, signifiant ‘chance’ ou ‘bande armée’, reflète les bénédictions de Léa à sa naissance.\n\n La tribu de Gad s’établit à l’est du Jourdain, dans une région exposée aux attaques ennemies.\n\n Les Gadites sont connus pour leur bravoure et leur compétence militaire, jouant un rôle important dans les batailles d’Israël.",

"Aser": "Aser, deuxième fils de Jacob et de Zilpa, est l’ancêtre de la tribu d’Aser.\n\n Son nom, signifiant ‘heureux’, reflète la reconnaissance de Léa pour la bénédiction divine.\n\n La tribu d’Aser s’établit dans une région fertile au nord-ouest d’Israël, célèbre pour ses oliveraies.\n\n Aser est associé à l’abondance et à la prospérité, comme en témoigne la bénédiction de Moïse qui décrit ses terres comme riches et généreuses.",

"Issacar": "Issacar, cinquième fils de Jacob et de Léa, est l’ancêtre de la tribu d’Issacar.\n\n Son nom reflète la gratitude de Léa pour la rétribution divine.\n\n La tribu d’Issacar est connue pour sa sagesse et son dévouement au travail agricole.\n\n Issacar est décrit dans les bénédictions de Jacob comme un âne robuste, symbole de travail acharné et de stabilité, jouant un rôle crucial dans la prospérité d’Israël.",

"Zabulon": "Zabulon, sixième fils de Jacob et de Léa, est l’ancêtre de la tribu de Zabulon.\n\n Son nom, signifiant ‘habitation’, reflète le désir de Léa d’être honorée par Jacob.\n\n La tribu de Zabulon s’établit près de la mer, prospérant grâce au commerce maritime.\n\n Elle est associée à la richesse et au soutien des autres tribus, jouant un rôle important dans la prospérité économique d’Israël.",

"Joseph": "Joseph, fils de Jacob et de Rachel, est l’un des personnages les plus marquants de la Bible.\n\n Préféré de son père, il suscite la jalousie de ses frères, qui le vendent comme esclave en Égypte.\n\n Grâce à son don d’interprétation des rêves, Joseph devient le vizir du pharaon, sauvant l’Égypte et sa propre famille de la famine.\n\n Joseph est l’ancêtre des tribus d’Éphraïm et de Manassé, qui jouent un rôle central dans l’histoire d’Israël.\n\n Il est une figure de rédemption, de sagesse et de fidélité à Dieu.",

"Benjamin": "Benjamin, dernier fils de Jacob et de Rachel, est le plus jeune des douze fils.\n\n Sa naissance est marquée par la mort de sa mère Rachel, qui l’appelle Ben-Oni (‘fils de ma douleur’), mais Jacob le renomme Benjamin (‘fils de ma droite’).\n\n Benjamin est particulièrement protégé par Jacob et ses frères après la disparition de Joseph.\n\n Sa tribu est petite mais joue un rôle crucial, notamment avec la figure du roi Saül.\n\n Benjamin est une figure de fidélité et d’importance stratégique dans l’histoire d’Israël.",
"Manassé (Joseph)": "Manassé, fils aîné de Joseph et d’Asnath, est né en Égypte.\n\n Son nom, signifiant ‘faire oublier’, reflète la gratitude de Joseph envers Dieu pour lui avoir permis d’oublier ses épreuves.\n\n Bien qu’étant l’aîné, Manassé voit son frère cadet Éphraïm recevoir une bénédiction supérieure de la part de leur grand-père Jacob, ce qui établit Éphraïm comme tribu prédominante.\n\n La tribu de Manassé se distingue néanmoins en recevant un territoire important de chaque côté du Jourdain, jouant un rôle significatif dans l’histoire d’Israël.",

"Éphraïm": "Éphraïm, second fils de Joseph et d’Asnath, est préféré à son frère aîné Manassé lorsque Jacob, leur grand-père, inverse ses mains pour bénir les deux garçons.\n\n Son nom, signifiant ‘fécondité’, reflète la bénédiction de Dieu sur Joseph en Égypte.\n\n La tribu d’Éphraïm devient l’une des plus puissantes et influentes d’Israël, donnant son nom au royaume du nord après la division du pays.\n\n Éphraïm est un symbole de force, de bénédiction et d’héritage spirituel.",
"Pharaon": "Pharaon, roi d’Égypte au temps de Moïse, est le principal opposant à la libération des Hébreux.\n\n Son cœur s’endurcit malgré les dix plaies que Dieu envoie sur l’Égypte, ce qui conduit à la libération miraculeuse du peuple d’Israël.\n\n La mort des Égyptiens dans la mer Rouge marque la fin de sa poursuite des Hébreux.\n\n Pharaon est une figure symbolique de l’oppression, de l’arrogance et du refus de se soumettre à la volonté divine.",

"Moïse": "Moïse, fils d’Amram et de Jokébed, est l’un des plus grands prophètes et chefs d’Israël.\n\n Sauvé des eaux du Nil par la fille de Pharaon, il est élevé à la cour égyptienne tout en restant fidèle à ses racines hébraïques.\n\n Après avoir tué un Égyptien, Moïse fuit en Madian, où il épouse Séphora, fille de Jethro, et devient le père de deux fils, Guershom (‘étranger’) et Éliézer (‘Dieu est mon secours’).\n\n Moïse est choisi par Dieu pour libérer les Hébreux de l’esclavage en Égypte, conduisant son peuple à travers la mer Rouge et le désert vers la terre promise.\n\n Il reçoit la Loi sur le mont Sinaï, établissant l’alliance entre Dieu et Israël.\n\n Moïse demeure une figure centrale de la foi, de la justice et de l’obéissance à Dieu.",

"Aaron": "Aaron, frère aîné de Moïse et de Myriam, est le premier grand prêtre d’Israël.\n\n Il est choisi par Dieu pour être le porte-parole de Moïse devant Pharaon, jouant un rôle crucial dans les dix plaies et l’exode.\n\n Aaron est l’ancêtre des prêtres israélites, appelés les ‘cohanim’.\n\n Malgré son rôle spirituel, il commet une faute grave en façonnant le veau d’or à la demande du peuple.\n\n Il reçoit néanmoins la grâce divine et demeure un modèle de médiation entre Dieu et les hommes.\n\n Aaron a quatre fils : Nadab, Abihu, Éléazar et Ithamar.\n\n Il meurt sur le mont Hor, laissant un héritage sacré à Israël.",

"Séphora": "Séphora, fille de Jethro et épouse de Moïse, est une figure clé de soutien dans la vie de Moïse.\n\n Elle devient la mère de deux fils, Guershom et Éliézer.\n\n Séphora sauve Moïse en accomplissant un acte de circoncision sur son fils, apaisant ainsi la colère divine.\n\n Bien que discrète, Séphora incarne la fidélité et le rôle essentiel des femmes dans l’histoire biblique.",

"Myriam": "Myriam, sœur de Moïse et d’Aaron, est une prophétesse et une figure clé dans l’exode d’Israël.\n\n Elle sauve Moïse bébé en le surveillant lorsqu’il est placé dans un panier sur le Nil.\n\n Après la traversée de la mer Rouge, Myriam mène le peuple dans un chant de louange à Dieu, célébrant la délivrance divine.\n\n Bien qu’elle critique Moïse à un moment donné, ce qui entraîne une punition temporaire, Myriam reste une figure de foi et de leadership.\n\n Elle meurt dans le désert avant l’entrée en Canaan.",

"Jethro": "Jethro, beau-père de Moïse et prêtre de Madian, joue un rôle important dans l’histoire de l’exode.\n\n Il accueille Moïse après sa fuite d’Égypte et lui donne sa fille Séphora en mariage.\n\n Jethro conseille à Moïse de déléguer ses responsabilités en instituant un système de juges, une suggestion qui améliore la gouvernance du peuple.\n\n Jethro est un modèle de sagesse et de piété, honorant Dieu après avoir entendu les récits des merveilles divines accomplies en Égypte.",

"Josué": "Josué, fils de Nun et serviteur fidèle de Moïse, devient le successeur de ce dernier à la tête d’Israël.\n\n Il est l’un des douze espions envoyés en Canaan et, avec Caleb, l’un des deux à rapporter un message de foi en la conquête de la terre promise.\n\n Josué conduit Israël à la victoire sur Jéricho et d’autres villes cananéennes, répartissant ensuite le territoire entre les tribus.\n\n Il est un modèle de courage, d’obéissance et de foi en Dieu, exhortant le peuple à rester fidèle à l’alliance divine.",

"Caleb": "Caleb, fils de Jephunné, est l’un des douze espions envoyés par Moïse pour explorer Canaan.\n\n Contrairement aux autres espions, Caleb montre une foi inébranlable en la promesse divine, exhortant Israël à entrer dans la terre promise malgré les défis.\n\n En récompense, Dieu promet à Caleb qu’il vivra pour entrer en Canaan, où il reçoit Hébron comme héritage.\n\n Caleb est un exemple de fidélité, de courage et de persévérance dans la foi.",

"Othniel": "Othniel, fils de Kenaz et neveu de Caleb, est le premier juge d’Israël mentionné dans le livre des Juges.\n\n Il délivre Israël des mains de Cushan-Rishataïm, roi d’Aram-Naharaïm, qui les avait opprimés pendant huit ans.\n\n Inspiré par l’Esprit de Yahvé, Othniel mène le peuple à la victoire, inaugurant une période de quarante ans de paix.\n\n Il est un modèle d’obéissance et de foi en Dieu, jouant un rôle crucial dans le début de l’ère des juges.",

"Cushan-Rishataïm": "Cushan-Rishataïm, roi d’Aram-Naharaïm, est l’oppresseur d’Israël pendant huit ans avant d’être vaincu par Othniel, le premier juge d’Israël.\n\n Son nom, signifiant ‘doublement méchant’, reflète sa réputation d’ennemi cruel et puissant.\n\n Il symbolise les nations qui oppriment Israël en raison de leur infidélité à Dieu.",

"Eglon": "Églon, roi de Moab, est un oppresseur d’Israël qui, avec l’aide des Ammonites et des Amalécites, conquiert le pays et asservit les Israélites pendant dix-huit ans.\n\n Il est décrit comme un homme obèse, ce qui joue un rôle dans sa mort aux mains d’Éhud.\n\n Après avoir reçu un message ‘de Dieu’ d’Éhud, Églon est poignardé dans sa chambre, marquant la fin de son oppression sur Israël.",

"Ehud": "Éhud, fils de Guéra et membre de la tribu de Benjamin, est le second juge d’Israël.\n\n Gaucher, il utilise cette particularité pour dissimuler une dague et assassiner Églon, roi de Moab, mettant fin à dix-huit ans d’oppression.\n\n Après cet acte, Éhud mène les Israélites à une victoire décisive contre les Moabites, assurant une période de paix de quatre-vingts ans.\n\n Il est un exemple de stratégie, de courage et de foi en Dieu.",

"Shamgar": "Shamgar, fils d’Anath, est un juge d’Israël mentionné brièvement dans le livre des Juges.\n\n Il est célèbre pour avoir tué six cents Philistins avec un aiguillon à bœufs, sauvant ainsi Israël.\n\n Bien que peu de détails soient donnés sur lui, Shamgar illustre la manière dont Dieu peut utiliser des moyens simples et des personnes inattendues pour délivrer son peuple.",

"Débora": "Débora, prophétesse et seule femme juge d’Israël, joue un rôle central dans la libération d’Israël des mains de Jabin, roi de Canaan.\n\n Inspirée par Dieu, elle commande à Barak de lever une armée contre Sisera, chef des armées de Jabin.\n\n Après la victoire, Débora chante un cantique célébrant la délivrance divine.\n\n Elle est un modèle de leadership spirituel, de sagesse et de foi en Dieu.",

"Sisera": "Sisera, chef des armées de Jabin, roi de Canaan, est l’ennemi principal lors du récit de Débora.\n\n Commandant une armée équipée de neuf cents chars de fer, il est vaincu par les forces d’Israël sous Barak, grâce à l’intervention divine.\n\n Sisera fuit à pied et trouve refuge dans la tente de Yaël, mais il est tué par cette dernière, marquant la fin de son oppression.",

"Yaël": "Yaël, femme de Héber le Kénien, joue un rôle clé dans la victoire d’Israël sur Sisera.\n\n Lorsqu’il cherche refuge dans sa tente après sa défaite, Yaël le tue en enfonçant un pieu de tente dans sa tête pendant qu’il dort.\n\n Cet acte décisif fait d’elle une héroïne de la libération d’Israël, saluée dans le cantique de Débora.",

"Jabin": "Jabin, roi de Canaan, règne à Hatsor et opprime Israël pendant vingt ans.\n\n Il est soutenu par son chef militaire Sisera et une armée redoutable.\n\n Après la défaite de Sisera par Barak et Débora, Jabin perd son pouvoir, marquant la fin de sa domination.\n\n Il incarne l’oppresseur contre lequel Dieu intervient pour délivrer son peuple.",

"Gédéon": "Gédéon, fils de Joas et membre de la tribu de Manassé, est appelé par Dieu pour délivrer Israël des Madianites.\n\n Initialement hésitant et doutant de ses capacités, il demande des signes divins pour confirmer sa mission.\n\n Avec une armée réduite à 300 hommes, Gédéon vainc les Madianites grâce à une stratégie inspirée par Dieu.\n\n Après sa victoire, il refuse de devenir roi, déclarant que Yahvé est le seul souverain d’Israël.\n\n Cependant, il commet une faute en fabriquant un éphod, qui devient une source d’idolâtrie.\n\n Gédéon est un exemple de foi et de dépendance envers Dieu malgré ses imperfections.",

"Abimélek": "Abimélek, fils de Gédéon et de sa concubine de Sichem, cherche à devenir roi en éliminant ses frères, les fils légitimes de Gédéon.\n\n Soutenu par les habitants de Sichem, il fait massacrer soixante-dix de ses frères, mais Jotham, le plus jeune, survit et prophétise la chute d’Abimélek.\n\n Son règne tyrannique prend fin lorsqu’une femme lui écrase le crâne en lançant une meule depuis une tour, mettant fin à son ambition et accomplissant la justice divine.",

"Jotham": "Jotham, plus jeune fils de Gédéon, échappe au massacre orchestré par Abimélek.\n\n Il adresse une parabole aux habitants de Sichem, avertissant des conséquences de leur soutien à Abimélek.\n\n Son discours prophétique se réalise lorsque Sichem et Abimélek sont détruits par des querelles internes, illustrant la justice de Dieu.",

"Jephté": "Jephté, fils d’un père israélite et d’une prostituée, est rejeté par sa famille et devient chef d’un groupe de guerriers.\n\n Appelé par les anciens de Galaad pour délivrer Israël des Ammonites, il accepte à condition de devenir leur chef.\n\n Après une victoire miraculeuse, Jephté tient un vœu imprudent, sacrifiant sa fille unique, un acte qui reste l’un des épisodes les plus tragiques de l’histoire biblique.\n\n Il est un exemple de foi mêlée d’impulsivité et d’erreurs humaines.",

"Samson": "Samson, fils de Manoach et dernier juge d’Israël mentionné dans le livre des Juges, est consacré à Dieu dès sa naissance comme naziréen.\n\n Doué d’une force surhumaine, il combat les Philistins, ennemis d’Israël, accomplissant des exploits comme tuer un lion à mains nues ou abattre un millier d’hommes avec une mâchoire d’âne.\n\n Cependant, il est vulnérable à ses passions, notamment pour Dalila, qui trahit son secret en livrant la source de sa force : ses cheveux.\n\n Capturé et aveuglé, Samson détruit le temple philistin en sa mort, tuant de nombreux ennemis et accomplissant une délivrance finale pour Israël.",

"Dalila": "Dalila, une femme des Philistins, séduit Samson et devient l’instrument de sa chute.\n\n En manipulant Samson, elle découvre le secret de sa force – ses cheveux – et le trahit en les faisant couper, permettant aux Philistins de le capturer.\n\n Bien que peu d’informations soient données sur ses motivations, Dalila incarne la ruse et la séduction au service de l’oppression.",
"Samuel": "Samuel, fils d’Anne et d’Elqana, est consacré à Dieu dès sa naissance en réponse à la prière fervente de sa mère.\n\n Il grandit au service du prêtre Eli dans le sanctuaire de Silo.\n\n Prophète, juge et dernier leader de l’époque des Juges, Samuel joue un rôle clé dans la transition d’Israël vers la monarchie.\n\n C’est lui qui oint Saul comme premier roi d’Israël, puis David après que Saul ait été rejeté par Dieu.\n\n Samuel est connu pour sa fidélité à Dieu, son rôle dans la victoire contre les Philistins et son autorité morale.\n\n Il meurt en étant respecté par tout le peuple.",

"Eli": "Eli, prêtre et juge d’Israël, est chargé du sanctuaire de Silo où il élève Samuel.\n\n Bien qu’il serve Dieu fidèlement, il est critiqué pour ne pas avoir corrigé la corruption de ses fils, Hophni et Phinées, qui profanent le sanctuaire.\n\n Dieu annonce par Samuel le jugement sur la maison d’Eli : ses fils meurent le même jour, et Eli, en apprenant la nouvelle, tombe de sa chaise et meurt.\n\n Il reste un personnage à la fois respecté et tragique, exemplifiant l’importance de la responsabilité spirituelle.",

"Anne (Samuel)": "Anne, épouse d’Elqana et mère de Samuel, est un modèle de foi et de prière.\n\n Stérile, elle implore Dieu au sanctuaire de Silo, promettant de consacrer son fils à son service.\n\n Dieu répond à sa prière, et elle donne naissance à Samuel.\n\n Anne exprime sa gratitude par un cantique de louange, souvent comparé au Magnificat de Marie.\n\n Elle confie Samuel à Eli dès son jeune âge et devient un symbole d’espoir et de dévouement à Dieu.",

"Saül": "Saül, premier roi d’Israël, est choisi par Dieu à travers Samuel pour conduire son peuple.\n\n De la tribu de Benjamin, il est décrit comme un homme grand et impressionnant.\n\n Saül commence son règne avec succès, remportant des victoires militaires contre les ennemis d’Israël.\n\n Cependant, son désobéissance aux ordres de Dieu, notamment son échec à détruire totalement les Amalécites, conduit à son rejet par Dieu.\n\n Il devient jaloux de David, son successeur désigné, et passe ses dernières années à le persécuter.\n\n Saül meurt tragiquement lors de la bataille de Guilboa, avec ses fils, marquant la fin de sa dynastie.",

"David": "David, fils de Jessé et berger de Bethléem, est choisi par Dieu pour devenir roi d’Israël après Saül.\n\n Il est oint par Samuel et gagne en notoriété en vainquant Goliath, le géant philistin.\n\n David est connu pour sa foi profonde, ses talents musicaux (auteur de nombreux psaumes) et ses succès militaires.\n\n Malgré ses péchés, notamment son adultère avec Bethsabée et le meurtre d’Urie, il se repent sincèrement et demeure un modèle de relation avec Dieu.\n\n Son règne marque l’apogée d’Israël, et il reçoit la promesse messianique d’une descendance éternelle.",

"Ishboshet": "Ishboshet, fils de Saül, devient roi d’Israël après la mort de son père grâce au soutien d’Abner, chef de l’armée.\n\n Cependant, son règne est marqué par des conflits internes et une rivalité avec David, qui règne sur Juda.\n\n Abner, en désaccord avec Ishboshet, passe du côté de David, affaiblissant davantage Ishboshet.\n\n Il est assassiné par ses propres hommes, mettant fin à son règne et ouvrant la voie à l’unification d’Israël sous David.",

"Urie": "Urie, soldat loyal et mari de Bethsabée, sert dans l’armée de David.\n\n Après que David commette l’adultère avec Bethsabée, Urie est envoyé en première ligne sur ordre du roi pour être tué, afin de couvrir la faute de David.\n\n Sa mort injuste est condamnée par le prophète Nathan, et Urie est reconnu comme un modèle d’intégrité et de dévouement.",

"Nathan": "Nathan est un prophète de Dieu à la cour de David.\n\n Il joue un rôle clé dans la condamnation du péché de David avec Bethsabée, utilisant une parabole pour exposer son péché.\n\n Il est aussi l’instrument de la promesse divine faite à David concernant une dynastie éternelle.\n\n Nathan reste un conseiller influent, impliqué dans l’ascension de Salomon au trône après David.",

"Gad (David)": "Gad, prophète de Dieu, conseille David tout au long de sa vie.\n\n Il avertit David de fuir Saül et joue un rôle lors du recensement impulsif du roi, qui provoque la colère divine.\n\n Gad ordonne à David de construire un autel sur l’aire d’Ornan pour apaiser Dieu, un acte qui établit le futur site du Temple.\n\n Gad est un exemple de fidélité et d’obéissance à Dieu.",

"Abner": "Abner, chef de l’armée de Saül, soutient Ishboshet comme roi après la mort de Saül.\n\n Homme puissant et stratège militaire, il entre en conflit avec Joab, le général de David.\n\n Lorsqu’il change de camp pour soutenir David, il est assassiné par Joab, sous prétexte de venger son frère Asaël.\n\n Abner est un personnage complexe, à la fois loyal et opportuniste.",

"Abishag": "Abishag, une jeune femme de Shounem, est choisie pour réchauffer le roi David dans ses derniers jours en raison de sa vieillesse et de son affaiblissement.\n\n Bien qu’elle ne soit pas sa femme, elle joue un rôle symbolique dans les intrigues pour la succession au trône après la mort de David, notamment dans les revendications d’Adonias.",

"Ahimélek": "Ahimélek, prêtre de Nob, aide David en fuite en lui donnant les pains de proposition et l’épée de Goliath.\n\n Sa bonté envers David provoque la colère de Saül, qui ordonne le massacre des prêtres de Nob.\n\n Ahimélek est tué avec sa famille, mais son fils Abiathar survit et rejoint David, devenant son prêtre fidèle.",

"Joab": "Joab, neveu de David et commandant en chef de son armée, est un redoutable guerrier et stratège.\n\n Fidèle à David, il remporte plusieurs victoires importantes, mais ses actions violentes et indépendantes, comme l’assassinat d’Abner et d’Absalom, provoquent des tensions avec le roi.\n\n Joab est finalement exécuté sur ordre de Salomon pour ses actes de trahison.",

"Asaël": "Asaël, frère de Joab et Abishaï, est connu pour sa rapidité et son courage.\n\n Il meurt lors d’une bataille contre Abner, qui le tue à contrecœur en légitime défense.\n\n Sa mort est vengée plus tard par Joab, déclenchant une vendetta entre les deux camps.",
"Absalom": "Absalom, fils de David et de Maaka, est connu pour sa beauté et son ambition.\n\n Après les actes de son demi-frère Amnon, Absalom le fait tuer et s’exile pendant plusieurs années.\n\n De retour à Jérusalem, il complote pour renverser David, gagnant le soutien du peuple grâce à son charisme.\n\n Sa rébellion échoue, et il meurt lors d’une bataille dans la forêt d’Éphraïm, tué par Joab malgré les ordres de David.\n\n La mort d’Absalom provoque un deuil intense chez David, qui pleure amèrement la perte de son fils rebelle.",

"Ahitophel": "Ahitophel, conseiller de David, est connu pour sa grande sagesse.\n\n Cependant, il trahit David en rejoignant la rébellion d’Absalom.\n\n Sa stratégie, bien que brillante, est contrecarrée par Houshaï, le loyal conseiller de David.\n\n Déçu par l’échec d’Absalom, Ahitophel met fin à ses jours, illustrant les conséquences tragiques de la trahison.",

"Abiathar": "Abiathar, fils d’Ahimélek, est le seul survivant du massacre des prêtres de Nob.\n\n Il rejoint David en exil et devient son prêtre.\n\n Abiathar joue un rôle important tout au long du règne de David, mais il soutient Adonias contre Salomon lors de la succession au trône, ce qui entraîne sa destitution par Salomon.",
"Adonias": "Adonias, fils de David et de Haggith, est l’un des prétendants au trône après la vieillesse de David.\n\n Ambitieux, il tente de se faire couronner roi en secret avec le soutien de Joab et d’Abiathar, alors que David avait promis le trône à Salomon.\n\n Alertés par Nathan et Bethsabée, David intervient pour couronner Salomon à Jérusalem.\n\n Après l’accession de Salomon au trône, Adonias cherche à épouser Abishag, ce qui est interprété comme une nouvelle tentative de revendiquer le trône.\n\n Salomon ordonne son exécution, marquant la fin de ses ambitions politiques.",

"Salomon": "Salomon, fils de David et de Bethsabée, est choisi par Dieu et David pour succéder au trône d’Israël.\n\n Connu pour sa sagesse, il demande à Dieu un cœur sage pour gouverner son peuple, ce qui lui vaut richesse et prospérité.\n\n Il construit le Temple de Jérusalem, accomplissant ainsi une promesse divine.\n\n Cependant, son règne est aussi marqué par des excès : de nombreuses alliances avec des nations étrangères par mariage, une fiscalité lourde et l’idolâtrie, influencée par ses femmes étrangères.\n\n Salomon reste une figure centrale de l’histoire biblique, tant pour ses réalisations que pour ses erreurs, et son règne marque l’apogée d’Israël avant sa division.",

"Roboam": "Roboam, fils de Salomon, devient roi après la mort de son père.\n\n Son règne est marqué par la division du royaume en deux : Juda, qu’il dirige, et Israël, sous le leadership de Jéroboam.\n\n Cette scission survient après que Roboam rejette les conseils des anciens et impose des charges encore plus lourdes au peuple.\n\n Bien qu’il conserve le trône de Juda, son règne est marqué par des conflits constants avec Israël et un affaiblissement de la fidélité à Dieu, ce qui entraîne des invasions étrangères et une diminution de son autorité.",

"Jéroboam": "Jéroboam, serviteur de Salomon et fils de Nebath, devient le premier roi d’Israël après la scission du royaume.\n\n Prophétisé par le prophète Ahija, il est choisi pour diriger les dix tribus du Nord.\n\n Cependant, par crainte que son peuple retourne à Jérusalem pour adorer Dieu, il établit un culte idolâtre avec des veaux d’or à Béthel et Dan, entraînant Israël dans l’apostasie.\n\n Son règne est marqué par des conflits avec Roboam et des avertissements divins.\n\n Il est considéré comme l’instigateur du péché d’idolâtrie qui caractérise les rois d’Israël.",


"Jéhu (Prophète)":"Fils de Hanani, il est un prophète actif sous les règnes de Baësha et de Josaphat.\n\n Il est envoyé par Dieu pour condamner Baësha, roi d’Israël, pour avoir suivi les voies de Jéroboam et conduit son peuple dans l’idolâtrie.\n\n Il annonce la destruction de la dynastie de Baësha, une prophétie qui se réalise sous le règne de son fils Éla.\n\n Plus tard, Jéhu intervient aussi auprès de Josaphat, roi de Juda, pour lui reprocher son alliance avec Achab, roi d’Israël, un monarque impie.\n\n Son message souligne l’importance de la fidélité à Dieu et des conséquences des alliances avec les méchants.",
"Ahiyya":"Ahiyya de Silo est un prophète important sous le règne de Jéroboam Ier, le premier roi du royaume d’Israël après la scission avec Juda.\n\n Il est connu pour avoir annoncé à Jéroboam qu’il deviendrait roi sur dix tribus d’Israël, en déchirant symboliquement son manteau en douze morceaux.\n\n Toutefois, il prophétise également la chute de la maison de Jéroboam en raison de son infidélité à Dieu.\n\n Vers la fin de sa vie, devenu aveugle, Ahiyya prédit à la femme de Jéroboam la mort de leur fils et le désastre à venir sur Israël en raison des péchés du roi.\n\n Son rôle est central dans la transition du pouvoir en Israël et dans l’annonce du jugement divin.",
"Omri":"Un général qui devient roi d’Israël après une période d’instabilité politique.\n\n Il fonde une dynastie durable et établit Samarie comme nouvelle capitale du royaume.\n\n Son règne est marqué par une centralisation du pouvoir et un renforcement de l’influence politique et économique d’Israël.\n\n Cependant, la Bible le critique sévèrement pour avoir suivi les péchés de Jéroboam et introduit davantage d’idolâtrie dans le royaume.\n\n Il est le père d’Achab, qui poursuivra sa politique expansionniste mais s’attirera encore plus la colère divine par son alliance avec Jézabel et son soutien aux cultes étrangers.",
"Achab":"Fils d’Omri, il est l’un des rois les plus célèbres d’Israël, connu pour son règne puissant mais marqué par l’idolâtrie et l’oppression.\n\n Il épouse Jézabel, une princesse phénicienne, et introduit officiellement le culte de Baal en Israël, provoquant l’opposition des prophètes, notamment Élie.\n\n Son règne est marqué par des conflits avec les royaumes voisins, notamment la Syrie de Ben-Hadad, et par des décisions controversées comme la confiscation de la vigne de Naboth.\n\n Malgré quelques moments de repentance, Achab meurt au combat contre les Syriens, frappé par une flèche selon la prophétie de Michée.\n\n Son héritage reste celui d’un roi puissant mais infidèle à Dieu, dont la dynastie est bientôt éradiquée par Jéhu.",
"Élie":"Il est l’un des plus grands prophètes d’Israël, célèbre pour son opposition farouche à Achab et Jézabel.\n\n Il annonce une sécheresse en Israël comme châtiment pour le culte de Baal et défie les prophètes de Baal sur le mont Carmel, où Dieu répond par le feu, prouvant ainsi sa supériorité.\n\n Élie est aussi connu pour ses miracles, comme la multiplication de la farine et de l’huile de la veuve de Sarepta et la résurrection de son fils.\n\n Après avoir fui la colère de Jézabel, il reçoit une révélation divine sur le mont Horeb.\n\n Son ministère s’achève de manière spectaculaire lorsqu’il est enlevé au ciel dans un char de feu, laissant son disciple Élisée poursuivre son œuvre.",
"Jézabel":"Fille du roi de Tyr, elle est la femme d’Achab et l’une des figures les plus décriées de la Bible.\n\n Elle impose le culte de Baal en Israël, persécute les prophètes de Dieu et orchestre l’exécution de Naboth pour permettre à Achab de s’emparer de sa vigne.\n\n Son influence sur le roi et sur le royaume est immense, renforçant l’idolâtrie et la corruption.\n\n Son destin est prophétisé par Élie : elle sera dévorée par les chiens.\n\n Cette prophétie se réalise lorsque Jéhu, après avoir renversé la dynastie d’Achab, la fait jeter par la fenêtre du palais.\n\n Son nom devient synonyme de manipulation et d’opposition à Dieu.",
"Hazaël":"Officier syrien qui devient roi de Damas après avoir assassiné son maître, Ben-Hadad II, selon une prophétie d’Élisée.\n\n Son règne est marqué par des campagnes militaires agressives contre Israël et Juda.\n\n Il inflige de lourdes défaites à Joram et à Joachaz, affaiblissant considérablement Israël.\n\n Son expansion territoriale et sa brutalité sont considérées comme un instrument du jugement divin contre Israël pour son idolâtrie.\n\n Hazaël règne longtemps et pose les bases de la puissance syrienne face aux royaumes hébreux.",
"Élisée":"Successeur d’Élie et un prophète puissant en Israël.\n\n Il reçoit une double portion de l’esprit d’Élie et accomplit de nombreux miracles, notamment la purification des eaux de Jéricho, la multiplication des pains, la guérison de Naaman le Syrien et la résurrection d’un enfant.\n\n Il joue aussi un rôle politique, annonçant la montée au pouvoir d’Hazaël en Syrie et de Jéhu en Israël.\n\n Son ministère se distingue par sa proximité avec le peuple et ses interventions miraculeuses pour le bien des fidèles.\n\n Même après sa mort, son influence reste forte, comme en témoigne la résurrection d’un homme au contact de ses ossements.",
"Ben-Hadad":"Ben-Hadad est un nom porté par plusieurs rois de Syrie, ennemis récurrents d’Israël.\n\n Le plus célèbre est Ben-Hadad II, qui attaque Israël sous Achab et subit une défaite humiliante.\n\n Bien qu’épargné par Achab après une victoire miraculeuse israélite, il continue ses attaques sous Joram.\n\n Son règne est marqué par une alternance de conflits et de trêves avec Israël, et il finit assassiné par Hazaël, son propre serviteur, comme Élisée l’avait prédit.",
"Michée":"Fils de Yimla, il est un prophète actif sous Achab et Joram.\n\n Il est surtout connu pour sa confrontation avec les faux prophètes lors de la guerre contre la Syrie.\n\n Tandis que les autres prophètes encouragent Achab à combattre, Michée, malgré les pressions, annonce la défaite et la mort du roi.\n\n Il est emprisonné pour son message, mais sa prophétie se réalise lorsque Achab meurt au combat.\n\n Son courage et son attachement à la vérité font de lui un modèle de fidélité prophétique.",
"Joram (Juda)":"Roi de Juda, il est le fils de Josaphat.\n\n Son règne est marqué par des troubles politiques et religieux.\n\n Il épouse Athalie, fille d’Achab et Jézabel, renforçant l’influence idolâtre en Juda.\n\n Il persécute ses frères et favorise le culte des Baals.\n\n Sous son règne, Édom et Libnah se révoltent, affaiblissant son royaume.\n\n Le prophète Élie lui annonce un châtiment divin, et Joram meurt d’une maladie atroce.\n\n Il est enterré sans honneurs, marquant la disgrâce d’un roi infidèle à Dieu.",
"Josaphat":"Fils d’Asa, il est roi de Juda et l’un des monarques les plus pieux de son royaume.\n\n Il cherche à réformer la nation en favorisant le culte de Yahvé et en envoyant des prêtres enseigner la Loi à travers Juda.\n\n Il établit un système judiciaire fondé sur la justice divine et s’efforce d’éliminer l’idolâtrie.\n\n Toutefois, il commet une erreur stratégique en s’alliant avec Achab, roi d’Israël, en donnant son fils en mariage à Athalie et en participant à une guerre contre la Syrie.\n\n Il est miraculeusement sauvé lors de la bataille et, après un avertissement du prophète Jéhu, il se consacre à des réformes religieuses.\n\n Il remporte une grande victoire contre une coalition ennemie grâce à sa foi, voyant Dieu disperser ses adversaires alors que son armée chantait des louanges.\n\n Josaphat meurt après un règne prospère, laissant un héritage spirituel important.",
"Géhazi":"Il est le serviteur d’Élisée, mais il devient un personnage tragique en raison de sa cupidité.\n\n Il est témoin de nombreux miracles, notamment la résurrection du fils de la Shunammite.\n\n Cependant, il trahit son maître en cherchant secrètement à obtenir des richesses de Naaman, le général syrien guéri de la lèpre par Élisée.\n\n Lorsqu’il ment à Élisée à propos de son action, il est maudit et frappé de la lèpre à son tour.\n\n Plus tard, il apparaît dans le récit où il raconte au roi de Samarie les miracles d’Élisée, ce qui suggère qu’il a peut-être retrouvé une certaine faveur.",
"Jéhu (Roi)":"Officier de l’armée d’Israël, il est oint roi par un prophète envoyé par Élisée avec pour mission de détruire la maison d’Achab.\n\n Il mène un coup d’État sanglant, éliminant Joram d’Israël, Achazia de Juda, Jézabel, et tous les descendants d’Achab.\n\n Il fait aussi massacrer les prêtres de Baal et met fin officiellement à son culte.\n\n Cependant, bien qu’il soit un instrument du jugement divin, il ne marche pas pleinement selon les voies de Dieu et maintient les pratiques idolâtres de Jéroboam.\n\n Son règne est marqué par une certaine stabilité militaire, mais Israël reste affaibli sous son règne.",
"Joachaz":"Fils de Jéhu (roi), règne sur Israël et hérite d’un royaume affaibli par les guerres contre la Syrie.\n\n En raison de l’idolâtrie persistante du peuple, Dieu permet que Hazaël, roi de Syrie, écrase Israël.\n\n Joachaz implore Yahvé, et Dieu lui accorde un certain soulagement, mais son règne reste marqué par l’oppression et la faiblesse militaire.\n\n Il meurt en laissant le trône à son fils Joas.",
"Joas":"Fils de Joachaz, il devient roi d’Israël et connaît un certain succès militaire contre les Syriens.\n\n Encouragé par Élisée avant sa mort, il frappe le sol trois fois avec des flèches, ce qui symbolise trois victoires contre la Syrie.\n\n Cependant, en raison de son manque de foi, il ne remporte pas une victoire totale.\n\n Il lutte aussi contre Juda et pille Jérusalem.\n\n Malgré ces succès, il ne met pas fin aux cultes idolâtres instaurés par Jéroboam.",
"Manassé (roi)":"Manassé, roi de Juda pendant 55 ans (687-642 av.J-C. , est d’abord l’un des souverains les plus impies de l’histoire biblique.\n\n Il restaure l’idolâtrie, érige des autels païens dans le Temple, pratique la sorcellerie, consulte les devins et va jusqu’à sacrifier ses propres fils aux divinités païennes.\n\n Il persécute aussi violemment les fidèles de Dieu, répandant un sang innocent à Jérusalem, et selon la tradition, aurait fait exécuter le prophète Ésaïe.\n\n Malgré les avertissements des prophètes, il persiste dans sa rébellion jusqu’à ce que Dieu permette son humiliation : capturé par les Assyriens, il est emmené enchaîné à Babylone.\n\n C’est dans cette détresse qu’il se tourne sincèrement vers Dieu, prie avec humilité et obtient son pardon.\n\n Ramené à Jérusalem, il tente de réparer ses erreurs en abolissant le culte païen et en restaurant le culte de l’Éternel, mais son influence néfaste reste ancrée dans le peuple.",
"Osée (roi)":"Dernier roi du royaume d’Israël.\n\n Il tente de résister à l’Assyrie en cherchant une alliance avec l’Égypte, mais cette décision provoque la colère de l’Assyrie, qui envahit Israël et détruit Samarie en 722 av.J-C. Il est capturé et emprisonné, marquant la fin du royaume du Nord.\n\n Son règne est le dernier témoignage du déclin moral et spirituel d’Israël.",
"Osée (prophète)":"Prophète envoyé pour dénoncer l’infidélité d’Israël envers Dieu.\n\n Son message est illustré par son mariage avec Gomer, une femme infidèle, symbolisant la relation brisée entre Dieu et Israël.\n\n Malgré l’idolâtrie du peuple, Osée proclame l’amour et la miséricorde de Dieu, qui appelle Israël à revenir à lui.\n\n Son livre est un puissant témoignage du jugement et du pardon divins.",
"Shishak":"Pharaon d’Égypte qui envahit Juda sous le règne de Roboam.\n\n Il pille le temple de Jérusalem et emporte les trésors du palais royal, y compris les boucliers d’or de Salomon.\n\n Son invasion est un avertissement divin contre l’infidélité de Juda.",
"Asa":"Réformateur religieux qui élimine les idoles et rétablit le culte de Yahvé.\n\n Il remporte une grande victoire contre les Éthiopiens grâce à sa foi, mais dans ses dernières années, il s’appuie sur des alliances humaines au lieu de Dieu, ce qui lui attire la réprimande d’un prophète.\n\n Il meurt après une maladie aux pieds",
"Athalie":"Fille de Jézabel, elle usurpe le trône de Juda après la mort de son fils Achazia.\n\n Elle tente d’éradiquer la lignée davidique, mais Joas, son petit-fils, est sauvé par Joad.\n\n Après six ans de règne, elle est renversée et exécutée.",
"Joad":"Grand prêtre qui sauve Joas et le cache dans le temple pendant six ans.\n\n Il organise le renversement d’Athalie et restaure le culte de Yahvé en Juda.",
"Amatsia":"Roi de Juda, il commence bien son règne mais finit par s’éloigner de Dieu.\n\n Il remporte une victoire contre Édom, mais après s’être tourné vers leurs dieux, il est vaincu par Joas d’Israël.\n\n Il meurt assassiné.",
"Ézéchias":"Un des plus grands rois de Juda.\n\n Il restaure le culte de Yahvé, résiste à l’Assyrie et voit le miracle de la guérison et du recul de son ombre.\n\n Sa foi est un modèle de confiance en Dieu.",
"Josias":"Roi réformateur qui découvre le livre de la Loi et purge Juda de l’idolâtrie.\n\n Son règne est une période de renouveau spirituel, mais il meurt prématurément en combattant l’Égypte.",
"Azarias":"Roi de Juda qui connaît la prospérité, mais il est frappé de lèpre pour avoir usurpé le rôle sacerdotal dans le temple.",
"Joaquim (roi)":"Roi de Juda qui méprise les prophéties de Jérémie.\n\n Il se rebelle contre Babylone et meurt en disgrâce.",
"Daniel":"Prophète et conseiller royal en Babylonie.\n\n Il interprète les rêves de Nabuchodonosor, survit à la fosse aux lions et reçoit des visions sur la fin des temps.\n\n Son livre est un mélange de récits historiques et de prophéties apocalyptiques.",
"Sédécias":"Dernier roi de Juda.\n\n Il se rebelle contre Babylone, ce qui entraîne la destruction de Jérusalem et du temple.\n\n Il est capturé, ses fils sont tués sous ses yeux, et il meurt en exil.",
"Ézéchiel":"Prophète et prêtre exilé à Babylone, contemporain de Jérémie et Daniel.\n\n Il reçoit des visions puissantes, notamment celle des chérubins portant le trône de Dieu et celle des ossements desséchés qui revivent, symbolisant la restauration d’Israël.\n\n Il dénonce l’idolâtrie et l’injustice, annonçant la destruction de Jérusalem, mais il prophétise aussi un nouvel avenir, avec un temple restauré et une présence divine renouvelée parmi le peuple.\n\n Son message allie jugement sévère et espoir de rédemption.",
"Zorobabel":"Descendant de David,  il est gouverneur de Juda après le retour d’exil babylonien.\n\n Il dirige la reconstruction du temple avec l’encouragement des prophètes Aggée et Zacharie.\n\n Bien qu’il ne devienne pas roi, il est un symbole messianique de restauration et de renouveau, préfigurant l’espoir d’un futur dirigeant davidique.\n\n Sous son leadership, le second temple est achevé, rétablissant le culte à Jérusalem.",
"Josué (prêtre)":"Grand prêtre qui accompagne Zorobabel dans la reconstruction du temple après l’exil.\n\n Il est au centre d’une vision du prophète Zacharie, où il est vêtu d’habits sales avant d’être purifié et revêtu de nouveaux vêtements, symbolisant le pardon de Dieu et la restauration du sacerdoce.\n\n Son rôle est crucial pour rétablir le culte et encourager le peuple à rester fidèle à Dieu.",
"Aggée":"Prophète qui exhorte les Juifs revenus d’exil à reprendre la construction du temple, interrompue à cause de l’opposition et de l’indifférence du peuple.\n\n Il insiste sur la nécessité de donner la priorité à Dieu plutôt qu’à leurs propres maisons.\n\n Grâce à son message, les travaux reprennent et le temple est achevé.\n\n Il annonce aussi la venue d’un futur règne messianique.",
"Néhémie":"Haut fonctionnaire à la cour perse qui devient gouverneur de Juda.\n\n Voyant l’état de Jérusalem, il obtient la permission du roi Artaxerxès de reconstruire ses murailles.\n\n Malgré l’opposition des ennemis de Juda, il organise efficacement la reconstruction tout en renforçant la spiritualité du peuple.\n\n Il impose des réformes, condamne les mariages mixtes avec des païens et restaure l’obéissance à la Loi de Moïse.\n\n Son leadership est marqué par une profonde foi et un engagement inébranlable pour la restauration de Jérusalem.",
"Zacharie (prophète)":"Prophète contemporain d’Aggée, chargé d’encourager la reconstruction du temple.\n\n Ses visions symboliques annoncent la restauration de Jérusalem et la venue du Messie.\n\n Il parle d’un roi humble monté sur un âne, prophétie accomplie par Jésus.\n\n Il insiste sur la souveraineté de Dieu et son plan pour la rédemption d’Israël et du monde.",
"Ésaïe":"Un des plus grands prophètes de l’Ancien Testament.\n\n Il annonce le jugement sur Juda et Israël à cause de leur infidélité, mais il prophétise aussi la venue d’un Messie qui apportera justice et salut.\n\n Ses prophéties incluent des descriptions du serviteur souffrant (associé à Jésus), du règne de paix du futur roi et de la restauration d’Israël.\n\n Il avertit les rois de Juda contre les alliances humaines et prêche une confiance totale en Dieu.",
"Cyrus":"Roi de Perse, est décrit dans la Bible comme un instrument de Dieu.\n\n Il conquiert Babylone en 539 av.J-C. et permet aux Juifs exilés de retourner à Jérusalem et de reconstruire le temple, accomplissant la prophétie d’Ésaïe.\n\n Il est l’un des rares souverains païens à être qualifié d’« oint » par Dieu, soulignant son rôle providentiel dans l’histoire biblique.",
"Joël (prophète)":"Prophète qui annonce une invasion de sauterelles comme signe du jugement divin, appelant le peuple à la repentance.\n\n Il prophétise aussi l’effusion de l’Esprit de Dieu sur toute chair, une parole reprise lors de la Pentecôte dans le Nouveau Testament.\n\n Son message insiste sur le Jour du Seigneur, un temps de jugement mais aussi de restauration pour ceux qui se tournent vers Dieu.",
"Esdras":"Scribe et prêtre qui dirige une seconde vague de retour des exilés à Jérusalem.\n\n Il joue un rôle clé dans la restauration spirituelle du peuple en enseignant la Loi et en condamnant les mariages mixtes avec les nations païennes.\n\n Il insiste sur l’importance de l’obéissance aux commandements de Dieu et redonne au peuple un sens d’identité basé sur la Torah.\n\n Son action prépare le terrain pour la réforme de Néhémie.",
"Judas Maccabée":"Chef militaire juif du IIe siècle av.J-C.  qui dirige la révolte des Maccabées contre l’Empire séleucide et son roi Antiochos IV Épiphane.\n\n Après que ce dernier ait profané le Temple et interdit la pratique du judaïsme, Judas mène une guérilla victorieuse, purifie et rétablit le culte au Temple de Jérusalem, événement célébré lors de Hanoucca.\n\n Il remporte plusieurs victoires stratégiques mais meurt au combat contre les forces séleucides.\n\n Il est un symbole de résistance et de foi inébranlable.",
"Habacuc":"Prophète du VIIe siècle av.J-C. qui questionne Dieu sur l’injustice et la souffrance.\n\n Son livre est structuré autour d’un dialogue avec Dieu, où il demande pourquoi les méchants prospèrent tandis que les justes souffrent.\n\n Dieu lui répond que les Babyloniens viendront punir Juda, mais qu’eux aussi seront jugés.\n\n Habacuc conclut par une prière exaltant la souveraineté de Dieu et exprimant une confiance totale en Lui, même dans l’adversité.",
"Nahum":"Prophète qui annonce la chute de Ninive, capitale de l’Empire assyrien, oppresseur d’Israël.\n\n Il décrit avec force la destruction de la ville, soulignant la justice divine qui punit les nations cruelles.\n\n Son message est un réconfort pour Juda, montrant que Dieu intervient dans l’histoire pour défendre son peuple et juger les oppresseurs.",
"Jonas":"Prophète envoyé par Dieu à Ninive pour appeler les habitants à la repentance.\n\n D’abord réticent, il tente de fuir en prenant la mer, mais il est avalé par un grand poisson et passe trois jours dans son ventre avant d’être rejeté sur la terre ferme.\n\n Finalement, il prêche à Ninive, et la ville se repent, ce qui le met en colère car il espérait voir le jugement de Dieu tomber sur eux.\n\n Son histoire illustre la miséricorde divine et rappelle que Dieu veut le salut de toutes les nations.",
"Amos":"Berger et prophète du VIIIe siècle av.J-C.  qui dénonce l’injustice sociale, l’oppression des pauvres et l’hypocrisie religieuse en Israël.\n\n Il annonce le jugement de Dieu contre les riches corrompus et les dirigeants infidèles, mais termine sur une note d’espoir avec la promesse de la restauration du peuple.\n\n Il met l’accent sur la justice divine et la nécessité d’une foi authentique.",
"Abdias":"Il prophétise contre Édom, un peuple ennemi d’Israël, pour sa trahison lors de la destruction de Jérusalem.\n\n Il annonce que Dieu jugera sévèrement Édom et que Juda sera restauré.\n\n Son message met en avant la souveraineté divine et la rétribution contre ceux qui s’opposent à son peuple.",
"Jérémie":"Prophète majeur du VIIe et VIe siècle av.J-C. Il annonce la chute imminente de Jérusalem et l’exil à Babylone en raison de l’infidélité du peuple.\n\n Surnommé le « prophète des larmes », il souffre de persécutions et de rejet.\n\n Son message insiste sur l’importance d’un cœur sincère devant Dieu plutôt que de simples rites religieux.\n\n Il prophétise aussi une « nouvelle alliance » où la loi de Dieu sera inscrite dans les cœurs.\n\n Après la destruction de Jérusalem, il continue d’avertir et de guider les survivants.",
"Job":"Un homme juste qui subit d’immenses souffrances : il perd ses richesses, sa famille et sa santé.\n\n Son histoire explore le problème du mal et de la souffrance innocente.\n\n Ses amis l’accusent de péché caché, mais Job défend son intégrité et questionne Dieu.\n\n Finalement, Dieu lui répond, soulignant la grandeur et la sagesse divine.\n\n Job reconnaît son humilité devant Dieu, et il est restauré au double de ses bénédictions initiales.\n\n Son histoire illustre la fidélité dans l’épreuve et la souveraineté divine.",
"Esther":" Jeune Juive devenue reine de Perse.\n\n Lorsqu’un complot d’Haman menace d’exterminer son peuple, elle risque sa vie en intercédant auprès du roi Assuérus.\n\n Grâce à son courage et à sa sagesse, elle obtient la révocation du décret et sauve les Juifs.\n\n Son histoire est célébrée lors de la fête de Pourim et illustre la providence divine et le courage face à l’adversité.",
"Tobie":"Un Juif pieux et exilé en Assyrie, il devient aveugle et envoie son fils, Tobie, en voyage pour récupérer une somme d’argent.\n\n Accompagné par l’ange Raphaël, Tobie guérit son père et épouse Sara, une jeune femme affligée par un démon.\n\n L’histoire met en avant la prière, la fidélité à Dieu, et l’intervention divine pour protéger les justes.",
"Judith":"Héroïne juive dont l’histoire est racontée dans le Livre de Judith.\n\n Lorsqu’Holopherne, général de Nabuchodonosor, assiège la ville de Béthulie, elle use de sa beauté et de son intelligence pour sauver son peuple.\n\n Se faisant passer pour une alliée, elle gagne la confiance d’Holopherne, puis le décapite dans son sommeil.\n\n Son acte de bravoure inspire les Israélites, qui repoussent l’ennemi.\n\n Modèle de foi, de courage et de ruse, Judith est célébrée comme une figure de délivrance et de résistance face à l’oppression.",
"Bath-Shéba":"D’abord l’épouse d’Urie le Hittite avant de devenir la femme du roi David.\n\n Leur relation commence par un scandale, mais elle joue ensuite un rôle central dans la dynastie davidique.\n\n Après la mort de leur premier enfant, elle donne naissance à Salomon, futur roi d’Israël.\n\n Grâce à l’appui du prophète Nathan, elle assure son accession au trône.\n\n En tant que reine mère, elle détient une influence importante à la cour de Salomon.\n\n Son histoire illustre la rédemption et l’accomplissement des promesses divines malgré les épreuves.",
"Ésaie":"Il a exercé son ministère en Juda au 8ᵉ siècle av.J-C.  sous les règnes d’Ozias, Jotham, Achaz et Ézéchias.\n\n Une époque de bouleversements politiques et spirituels.\n\n L’Assyrie est la puissance dominante, menaçant constamment le royaume de Juda.\n\n Israël (le royaume du Nord) tombe sous l’invasion assyrienne en 722 av.J-C.  tandis que Juda, bien que survivant, est spirituellement corrompu et en proie à l’idolâtrie.\n\n Appelé par Dieu dans une vision spectaculaire (Ésaïe 6), Ésaïe reçoit la mission d’annoncer à Juda la nécessité de revenir à l’obéissance divine.\n\n Il dénonce l’injustice sociale, l’oppression des pauvres et l’hypocrisie religieuse de son peuple.\n\n Son message est à la fois un appel au repentir et une annonce du jugement divin sur ceux qui persistent dans le péché.\n\n Dès le début, Ésaïe proclame le jugement de Dieu contre Juda et les nations païennes.\n\n Il annonce que la désobéissance entraînera la destruction de Jérusalem et l’exil à Babylone (prédiction qui s’accomplira plus tard).\n\n Cependant, ce jugement a un but purificateur : Dieu veut restaurer un peuple fidèle.\n\n Ésaïe est souvent appelé 'le prophète de l’espérance' car il annonce avec clarté la venue du Messie.\n\n Il prophétise  la naissance virginale d’un enfant nommé Emmanuel, le règne d’un roi juste (descendant de David), le Serviteur souffrant.\n\n Ésaïe annonce la fin de l’exil et la restauration d’Israël.\n\n Il proclame que Dieu prépare un chemin pour son peuple, l’appelant à revenir à Lui avec confiance.",

   };

final Map<String, IconData> persoIcons = {
  "Adam": Icons.person, // Tête d'homme
  "Eve": Icons.person_2, // Tête de femme
  "Cain": Icons.person,
  "Abel": Icons.person,
  "Sett": Icons.person,
  "Henoch": Icons.person,
  "Mathusalem": Icons.person,
  "Noé": Icons.person,
  "Sem": Icons.person,
  "Cham": Icons.person,
  "Japhet": Icons.person,
  "Canaan": Icons.person,
"Eber": Icons.person,
"Térah": Icons.person, 
"Abram": Icons.person,
 "Saraï":Icons.person_2,
  "Ketura":Icons.person_2, 
  "Agar":Icons.person_2,
   "Lot": Icons.person,
    "Ben-Ammi": Icons.person,
"Madian": Icons.person, 
"Moab": Icons.person, 
"Amalek": Icons.person, 
"Ismael": Icons.person,
 "Isaac": Icons.person, 
 "Rebecca": Icons.person_2,
  "Jacob": Icons.person, 
  "Ésaü": Icons.person,
   "Laban": Icons.person,
    "Rachel": Icons.person_2, 
    "Léa" : Icons.person_2,
     "Ruben": Icons.person,
  "Simeon": Icons.person,
  "Levi": Icons.person,
  "Juda": Icons.person,
  "Dan": Icons.person,
  "Naphtali": Icons.person,
  "Gad": Icons.person,
  "Aser": Icons.person,
  "Issacar": Icons.person,
  "Zabulon": Icons.person,
  "Joseph": Icons.person,
  "Benjamin": Icons.person,
  "Manassé (Joseph)": Icons.person,
  "Ephraim": Icons.person,
  "Pharaon": Icons.person,
  "Moise": Icons.person,
  "Aaron": Icons.person,
  "Séphora":Icons.person_2, 
  "Myriam":Icons.person_2, 
  "Jethro": Icons.person, 
  "Josué": Icons.person, 
  "Caleb": Icons.person, 
  "Othniel": Icons.person, 
  "Cushan-Rishataïm": Icons.person, 
  "Églon": Icons.person, 
  "Ehud": Icons.person,
   "Shamgar": Icons.person,
    "Débora":Icons.person_2,
     "Sisera": Icons.person, 
     "Yaël":Icons.person_2,
      "Jabin":Icons.person,
       "Gédéon": Icons.person,
        "Abimélek": Icons.person,
         "Jotham": Icons.person,
          "Jephté": Icons.person,
           "Samson": Icons.person,
           "Dalila":Icons.person_2,
            "Samuel": Icons.person,
             "Eli": Icons.person,
              "Anne (Samuel)":Icons.person_2,
               "Saül": Icons.person,
                "David": Icons.person,
                 "Ishboshet": Icons.person,
                  "Urie": Icons.person,
                   "Nathan": Icons.person,
                    "Gad (David)": Icons.person, 
                    "Abner": Icons.person,
                     "Abishag":Icons.person_2,
                      "Ahimélek": Icons.person, 
                      "Joab": Icons.person, 
                      "Asaël": Icons.person, 
                      "Absalom": Icons.person, 
                      "Ahitophel": Icons.person, 
                      "Abiathar": Icons.person, 
                      "Adonias": Icons.person, 
                      "Salomon": Icons.person, 
                      "Roboam": Icons.person,
                    "Jéroboam": Icons.person,
"Jéhu (prophète)": Icons.person,
"Ahiyya": Icons.person,
"Omri": Icons.person,
"Achab": Icons.person,
"Élie": Icons.person,
"Jézabel":Icons.person_2,
"Hazaël": Icons.person,
"Élisée": Icons.person,
"Ben-Hadad": Icons.person,
"Michée": Icons.person,
"Joram (Juda)": Icons.person,
"Josaphat": Icons.person,
"Géhazi": Icons.person,
"Jéhu (roi)": Icons.person,
"Joachaz": Icons.person,
"Joas": Icons.person,
"Manassé (roi)": Icons.person,
"Osée (roi)": Icons.person,
"Osée (prophète)": Icons.person,
"Shishak": Icons.person,
"Asa": Icons.person,
"Athalie":Icons.person_2,
"Joad": Icons.person,
"Amatsia": Icons.person,
"Ézéchias": Icons.person,
"Josias": Icons.person,
"Azarias": Icons.person,
"Joaquim (roi)": Icons.person,
"Daniel": Icons.person,
"Sédécias": Icons.person,
"Ézéchiel": Icons.person,
"Zorobabel": Icons.person,
"Josué (prêtre)": Icons.person,
"Aggée": Icons.person,
"Néhémie": Icons.person,
"Zacharie (prophète)": Icons.person,
"Ésaïe": Icons.person,
"Cyrus": Icons.person,
"Joël (prophète)": Icons.person,
"Esdras": Icons.person,
"Judas Maccabée": Icons.person,
"Habacuc": Icons.person,
"Nahum": Icons.person,
"Jonas": Icons.person,
"Amos": Icons.person,
"Abdias": Icons.person,
"Jérémie": Icons.person,
"Job": Icons.person,
"Esther": Icons.person_2,
"Judith": Icons.person_2,
"Tobie": Icons.person,

"Bath-Shéba": Icons.person_2,
"Ésaie":Icons.person,








};



  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
  backgroundColor: Colors.brown,
  elevation: 0,
),

    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Affichage de l'icône
          Icon(
            persoIcons[persoName] ?? Icons.help, // Icône associée ou une par défaut
            size: 100, // Taille de l'icône
            color: Colors.brown, // Couleur de l'icône
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      persoName,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      persoContent[persoName] ?? "Aucune information disponible.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    ),
  );
}
}
