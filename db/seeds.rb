# Suppression des données existantes
puts "destruction des utilisateurs, des articles et des commentaires"

User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "destruction faite"

# Creation des utilisateurs
puts "creation de 8 utilisatrices"
AverageGirl = User.create(email: "user1@lewagon.fr", password: "password", nickname: "AverageGirl")
BigBeauty = User.create(email: "user2@lewagon.fr", password: "password", nickname: "BigBeauty")
CurvyBabe = User.create(email: "user3@lewagon.fr", password: "password", nickname: "CurvyBabe")
DeeDee = User.create(email: "user4@lewagon.fr", password: "password", nickname: "DeeDee")
ElasticGirl = User.create(email: "user5@lewagon.fr", password: "password", nickname: "ElasticGirl")
Fatshionista = User.create(email: "user6@lewagon.fr", password: "password", nickname: "Fatshionista")
Glamazon = User.create(email: "user7@lewagon.fr", password: "password", nickname: "Glamazon")
HoneyBee = User.create(email: "user8@lewagon.fr", password: "password", nickname: "HoneyBee")
puts "les 8 utilisatrices creees"

# Creation des articles
puts "creation de 16 articles"
un = Post.create(title: "30 basiques à avoir dans sa garde-robe à l’automne",
            subtitle: "Alors que les températures ne vont pas tarder à se rafraîchir, il est temps de repenser sa garde-robe automnale.",
            content: "Imprimé serpent, denim en all-over, empiècements en cuir, carreaux de toutes sortes, parkas démesurées… Si l’automne s’annonce singulier et audacieux, pas question d’y mettre un pied sans armer son vestiaire anti-frimas d’incontournables de saison. Un tailleur bien coupé pour s’affirmer, une veste en jean parce qu’elle est indémodable, un denim beige pour briller, une blouse fleurie pour conter fleurette, un blazer XXL pour se la jouer désinvolte, une peau lainée pour s’y lover, des mocassins tendances pour battre le pavé… Un dressing qui s’annonce cocon à travers un prisme de pièces complices, familières, à l’allure rassurante et assurée. Et pourtant, les tendances mode automne-hiver 2023-2024 ne manquent pas de dresser un florilège d'envies stylistiques pointues, rétro, pile dans l’air du temps. L’occasion de passer en revue les 30 basiques à avoir dans sa garde-robe à l’automne. À bon entendeur.",
            url: "https://www.elle.fr/Mode/Les-conseils-mode/basique-automne",
            created_at: DateTime.now - 15.days,
            user: AverageGirl)
deux = Post.create(title: "L'oeil de la styliste : pourquoi votre miroir vous ment un peu, beaucoup",
            subtitle: "Même si vous passez peu de temps devant la glace, vous ne pouvez pas éviter totalement votre reflet. Miroir d’ascenseur, vitrine, rétroviseur, selfie, réunion en visio… Et ce que vous voyez ne correspond pas toujours au réel.",
            content: "Cuisses rondes, jambes arquées, cernes marquées… Miroir, mon beau miroir, et si tu arrêtais de me trouver des complexes ? Contrairement au miroir de la sorcière de Blanche-Neige, le nôtre nous voit rarement comme on est. Normal, les miroirs ne reflètent qu’une représentation d’une réalité parmi d’autres. Déjà, d’un point de vue technique, lorsque vous vous regardez, vous vous voyez en image inversée : pour vous, le côté droit de votre visage et de votre corps se placent à gauche. Et puis, vous avez sûrement remarqué que les miroirs ne sont pas tous aussi amicaux. Selon leur épaisseur, l’éclairage et la façon dont ils ont été posés, ils vous reflètent avec plus ou moins de fidélité. Ils déforment, grossissent ou allongent subtilement ou carrément grossièrement. Leurs dimensions aussi transforment votre image. Entre une étroite et longue glace rectangulaire, un vaste miroir de château et un carré qui s’arrête à mi-cuisses, vous ne verrez pas la même personne mais une femme avec trois silhouettes différentes. Et puis, contrairement à la vraie vie où on vous regarde en 4 D, face aux miroirs, vous avez une vision de vous en 2 D. Avouez que c’est réducteur ! Et surtout, au-delà des apparences, il y a votre perception à vous et tout ce que vous pensez voir et qui n’appartient qu’à votre histoire personnelle.",
            url:  "https://www.elle.fr/Mode/Les-conseils-mode/L-oeil-de-la-styliste-pourquoi-votre-miroir-vous-ment-un-peu-beaucoup-4148014",
            created_at: DateTime.now - 10.days,
            user: BigBeauty)
trois = Post.create(title: "Voici l’astuce facile pour des belles ondulations selon le champion du monde de coiffure",
            subtitle: "Le chef de cabine coiffure Diogo Pereira-Nunès, sacré champion du monde la coiffure, nous révèle les secrets de la mise en beauté du défilé Victoria Tomas printemps – été 2024.",
            content: "Pour le début de la semaine de la mode parisienne, Victoria Tomas a posé ses valises au Palais de la Femme dans le 11ème arrondissement de Paris. Quelques heures avant le début des festivités, nous nous sommes infiltrés dans les coulisses du show. Notre objectif ? Rencontrer Diogo Pereira-Nunès, formateur chez Jean-Louis David, élu double champion du monde de la coiffure en 2022. Chef de cabine coiffure du défilé, l’expert a imaginé en collaboration avec Victoria Feldman et Tomas Berzins et aidé d'une armée de coiffeurs Jean-Louis David une mise en beauté ultra naturelle. « Le naturel était vraiment le maitre-mot pour cette saison. C’est un look travaillé, mais qui ne dénature pas le mannequin. On a gardé l’identité de chaque nature de cheveux », nous explique le hairstylist. Au menu : les cheveux lisses ont été sublimés tandis que les ondulations des cheveux bouclés ont été parfaitement définies.",
            url:"https://www.elle.fr/Beaute/Cheveux/Astuces/Voici-l-astuce-facile-pour-des-belles-ondulations-selon-le-champion-du-monde-de-coiffure-4166845",
            created_at: DateTime.now - 5.days,
            user: CurvyBabe)
quatre = Post.create(title: "Balmain : ce qu'il faut retenir du défilé printemps-été 2024 à Paris",
            subtitle: "Si le vol d'une cinquantaine de pièces produites pour le défilé avait suscité l'émoi il y a quelques semaines, Olivier Rousteing a créé l'événement mercredi 27 septembre en dévoilant une collection à couper le souffle.",
            content: "Le défilé Balmain était sans doute l'un des événements les plus attendus de cette Fashion Week printemps-été 2024. Un rendez-vous mode donné par Olivier Rousteing, au sein du Palais de Chaillot, où il y présentait une collection grandiose, malgré le triste vol d'une partie des pièces confectionnées initialement pour être présentées ce mercredi 27 septembre. Le créateur relève haut la main le défi, et adresse ses remerciements à ses proches : l'équipe Balmain, ses ami(e)s et collègues de l'industrie de la mode, ainsi qu'à la police française.",
            url: "https://www.vogue.fr/article/balmain-printemps-ete-2024-paris-olivier-rousteing",
            created_at: DateTime.now - 20.days,
            user: DeeDee)
cinq = Post.create(title: "Les personnalités s'emparent déjà de la plus grande tendance robe de cet automne",
            subtitle: "La robe rouge va faire fureur.",
            content: "Il accentue le côté sexy de celle qui le porte. Le rouge s'impose comme la couleur la plus désirable de la saison prochaine. Chargée de toutes sortes de symboles, du danger à la passion, en passant par le courage, la robe rouge est aussi symbolique que la revenge dress dans la mode. Aperçue sur les podiums des défilés Alexander McQueen, Fendi, Balenciaga, Blumarine, ou encore Bottega Veneta, cette teinte flamboyante est déjà adoubée par plusieurs personnalités en vue.",
            url: "https://www.vogue.fr/article/robe-rouge-tendance-automne-mode",
            user: ElasticGirl)
six = Post.create(title: "93 ans après sa création, ce sac Louis Vuitton est en passe de devenir le it-bag de 2024",
            subtitle: "Il n'a jamais été aussi convoité !",
            content: "Après sa création en 1854, la maison Louis Vuitton s'est rapidement imposée comme la référence de la bagagerie. Ce sont pourtant les sacs à main de la maison parisienne qui ont véritablement séduit des générations de consommateurs. Avec des modèles intemporels comme le Neverfull, le Noé, le Keepall, l'Alma, le Sac Plat et la Petite Malle, elle est devenue une institution dans l’univers des it-bags.",
            url: "https://www.vogue.fr/article/louis-vuitton-histoire-sac-speedy",
            user: Fatshionista)
sept = Post.create(title: "Comment adopter la tendance school girl cet automne ?",
            subtitle: "Au rendez-vous : mini-jupe plissée, cravate et chaussettes hautes au service d’une allure cool et preppy. ",
            content: "Après les remous provoqués par le défilé printemps-été 2022 de Miu Miu, nul doute que la tendance school girl n'est pas prête de s'essouffler ! Depuis cette collection, la mode preppy, à grand renfort de micro-jupes plissées, de cardigans un peu sages, de mocassins classiques ou de chemises crop top continuent d'avoir la côte. Soit un vestiaire modernisé que n’auraient pas renié les héroïnes de Gossip Girl ou de Clueless et que les filles les plus en vue - de Jeanne Damas à Monica Ainley de La Villardière en passant par Bella Hadid et Elsa Hosk - ont déjà adopté. La dernière en date à s'y être essayée ? Blanca Miró, qui publiait sur son compte Instagram un cliché de sa tenue, jupe plissée et ballerines aux pieds.",
            url: "https://www.vogue.fr/mode/galerie/comment-adopter-tendance-school-girl",
            created_at: DateTime.now - 15.days,
            user: Glamazon)
huit = Post.create(title: "L'histoire de la maison Hermès, de 1837 à aujourd'hui",
            subtitle: "Presque deux cents ans d'existence, des sacs iconiques, un savoir-faire unique à la française : tout ce qu'il faut savoir sur la maison Hermès.",
            content: "L’histoire d’Hermès commence en 1837. Thierry Hermès, alors âgé de 36 ans, vit à Paris depuis quelques années lorsqu’il ouvre sa petite boutique en tant que maître artisan harnacheur sellier. Son métier consiste à concevoir et à fabriquer des harnais et différents équipements pour chevaux qu’il vend ensuite dans son magasin. En 1867, trente ans après l’ouverture de la boutique, Hermès est récompensé par la médaille première classe lors de l'exposition universelle de 1867. À partir de là, le succès est fulgurant : le tsar Nicolas II lui passe commande pour équiper ses chevaux. Hermès s'ouvre à une clientèle prestigieuse, constituée de rois et de présidents du monde entier.",
            url: "https://www.vogue.fr/communaute/wiki-de-la-mode/articles/herms-la-boutique-de-luxe-au-clbre-carr-de-soie/20604",
            created_at: DateTime.now - 25.days,
            user: HoneyBee)
neuf = Post.create(title:"Comment le jean taille basse des années 2000 est (re)devenu tendance ?",
            subtitle: "Emblème des années 2000, le jean-taille basse se porte à nouveau et fièrement !",
            content: "Existe-t-il une tendance plus clivante que celle des jeans taille basse ? La semaine dernière, dans un article intitulé “For Goodness’ Sake, Please Let Us Not Return to Low-Rise Jeans” (Par pitié, opposons-nous au retour du jean taille basse) publié sur Vogue.com, Molly Jong-Fast critiquait ouvertement cette pièce incontournable du vestiaire des années 2000. Elle avançait ainsi qu’ils étaient un symbole de l’hypersexualisation caractéristique de cette époque, où les femmes qui étaient sous le feu des projecteurs (notamment Britney Spears et Brittany Murphy) étaient maltraitées, et où la culture toxique des régimes régnait en maître. Notre monde peine actuellement à sortir d’une pandémie qui a tué des millions de gens, et de nombreux gouvernements sont confrontés à des difficultés en tous genres, de la chaîne d’approvisionnement à l’essor de l’autocratie. La vie est assez dure comme ça, pas besoin en plus de voir le retour des jeans qui dévoilent accidentellement vos fesses et vous font complexer sur votre ventre”, écrit-elle.",
            url: "https://www.vogue.fr/mode/article/annees-2000-jean-taille-basse-tendance",
            created_at: DateTime.now - 8.days,
            user: AverageGirl)
dix = Post.create(title: "Ces bottines Mango chics et tendances vont élever tous nos looks d’automne",
            subtitle: "Élégantes, ultra-modes et accessibles, ces bottines Mango seront nos meilleures alliées stylées pour un automne sans fashion faux-pas.",
            content: "La mode l’a prédit : cet automne, l’allure grunge sera celle sur laquelle il faudra compter. Pull déchiré, jean effiloché, t-shirt troué et souliers à l’effet usé… Le vécu et l’authenticité seront maîtres mots de notre vestiaire de saison, à condition de vouloir se plier à cette tendance. Pour celles qui aiment suivre la mode mais pas la subir, une alternative un peu plus abordable et chic au quotidien le grunge fait sensation sur la fashionsphère : le style western. Bonne nouvelle : pour mettre un pied dans cette lubie de cowgirl sans perdre en élégance, Mango propose LA paire de bottines parfaite, à moins de 50 euros.",
            url: "https://www.grazia.fr/mode/crush-shopping/ces-bottines-mango-a-moins-de-50-euros-vont-elever-tous-nos-looks-dautomne-873334.html#item=1",
            user: BigBeauty)
onze = Post.create(title: "Ce pantalon en jean chic et stylé aux accents street sera aussi à l’aise en concert qu’en sortie culturelle",
            subtitle: "C’est la tendance jean qui fait un revival et qui va faire fureur la saison prochaine !",
            content: "C’était le jean de toutes les filles les plus stylées du lycée, mais aussi celui des mecs sur lesquels on crushait à coup sûr. Le porter nous conférait immédiatement un statut mode, une mention excellente et les félicitations du jury. Le jean baggy a longtemps disparu des radars modes laissant la place à des pièces moins tranchées. Le slim et le jean bootcut ont pris le relais jusqu’à ce que la mode adoube de nouveau cette pièce. Ce pantalon en jean chic et stylé aux accents street sera de tous vos évents du concert au musée du vestiaire masculin au féminin. La pièce Y2k que s’arrachaient les rapeurs est de retour sur les filles les plus stylées : d’Iris Mittenaere à Gigi Hadid, on le veut toutes ! ",
            url: "https://www.grazia.fr/mode/tendances-mode/ce-pantalon-en-jean-chic-et-style-aux-accents-street-sera-aussi-a-laise-en-concert-quen-sortie-culturelle-849964.html#item=1",
            created_at: DateTime.now - 15.days,
            user: CurvyBabe)
douze = Post.create(title: "Comment porter le tailleur cet automne ? 6 looks dont s’inspirer pour une allure tailoring à se damner",
            subtitle: "Pour enfin savoir comment porter le tailleur cet automne sans ressembler à un banquier, on s’inspire de ces 6 looks pile dans l’air du temps.",
            content: "Parce que la rentrée a bel et bien sonné et que le moment est venu de retrouver notre vestiaire workwear, pour un véritable show-off de basiques intemporels, d’allure première de la classe et de tailleurs bien coupés. Car oui c’est une évidence, le costume est un incontournable tendance de cette période mais aussi de cette saison automne-hiver 2023. De tous les podiums de défilés, il s’est imposé comme le must-have tailoring à absolument avoir dans son placard. Pour l’adopter et le porter cet automne, découvrez une masterclass stylée avec ces six inspirations de looks à imiter d’urgence.",
            url: "https://www.grazia.fr/mode/inspirations/comment-porter-le-tailleur-cet-automne-6-looks-dont-sinspirer-pour-une-allure-tailoring-a-se-damner-795998.html#item=1",
            created_at: DateTime.now - 12.days,
            user: DeeDee)
treize = Post.create(title: "Voici comment laver un blazer à la machine à laver sans l’abimer… Et c’est garanti effet pressing assuré !",
            subtitle: "C’est bientôt la rentrée ! Il est temps de ressortir le blazer du placard… Et pour le remettre à neuf, on vous donne la marche à suivre !",
            content: "Le blazer est incontestablement l’une des pièces les plus fortes d’un dressing… Et pour cause, il habille nos jeans, se coordonne à nos pantalons à pince ou encore, il brise les codes en se mariant à une jupe en cuir. En gros, il est multifonction et permet de paraitre classe en toute occasion. Cependant, cet indémodable demande un entretien particulier qu’on ne maîtrise pas toujours ! Grazia vous donne le pas à pas pour un blazer comme neuf après un passage en machine à laver. ",
            url: "https://www.grazia.fr/mode/inspirations/voici-comment-laver-un-blazer-a-la-machine-a-laver-sans-labimer-et-cest-garanti-effet-pressing-assure-790869.html",
            created_at: DateTime.now - 2.days,
            user: ElasticGirl)
quatorze = Post.create(title: "Barbie : voici 12 looks roses ultra-canons dont s’inspirer pour célébrer la sortie du film déjà culte",
            subtitle: "Alors que le film Barbie vient de sortir aujourd’hui, le rose est à l’honneur. Voici 12 inspis mode pour l’adopter avec style.",
            content: "La date fatidique est enfin arrivée : le film le plus attendu de l’année, Barbie, vient de sortir ce 19 juillet 2023. Et, comme si dire « Hi Barbie » toutes les deux secondes ne suffisait pas à atténuer notre enthousiasme de fan girl, l’idée de nous habiller tout de rose (ou presque) à l’occasion de la sortie en salles semble l’évidence absolue. Couleur signature, et un brin cliché, de la célèbre poupée Mattel, le rose est aussi de ces nuances qui égayent un outfit à elle toute seule. On aurait donc tort de lui résister cet été. Pour lui succomber et se muer en Barbie 3.0, voici 12 inspirations de looks roses pile dans la tendance de l’été.",
            url: "https://www.grazia.fr/mode/inspirations/barbie-voici-12-looks-roses-ultra-canons-dont-sinspirer-pour-celebrer-la-sortie-du-film-deja-culte-780842.html#item=1",
            user: Fatshionista)
quinze = Post.create(title: "Cette sélection de pulls sera parfaite pour dépoussiérer la petite laine de mamie",
            subtitle: "Avec les pulls en maille et en laine, l’automne deviendra notre terrain de jeu favori.",
            content: "Même s’il est difficile de s’en rendre compte au vu des températures de ces dernières semaines, l’automne est à notre porte. Cette saison est souvent la préférée des modeuses, car elle permet d’affirmer le style à l’aide de pièces telles que la veste en cuir, le blazer ou la pièce en maille. À défaut de  s’affubler des pièces les plus chaudes de notre dressing, les petits pull-overs et cardigans sont parfaits pour entrer en douceur dans la saison qui signe la rentrée.",
            url: "https://www.grazia.fr/mode/shopping/cette-selection-de-pulls-sera-parfaite-pour-depoussierer-la-petite-laine-de-mamie-797484.html#item=1",
            user: Glamazon)
seize = Post.create(title: "Comment le clip «Freedom» de George Michael a propulsé la carrière de quatre supermodels stars des années 90",
            subtitle: "Dans la nouvelle série documentaire Les Supermodels d'AppleTV, Naomi Campbell, Christy Turlington, Linda Evangelista et Cindy Crawford expliquent comment elles se sont retrouvées dans le clip Freedom de George Michael.",
            content: "Alors qu'elles défilaient pour les plus grands créateurs, les quatre supermodels iconiques des années 90, Cindy Crawford, Christy Turlington, Linda Evangelista et Naomi Campbell, ne se doutaient pas une seule seconde de l'impact qu'elles avaient sur la pop culture. C'est lorsqu'elles ont eu la possibilité de tourner pour le clip Freedom de George Michael qu'elles s'en sont vite rendu compte.",
            url: "https://www.vanityfair.fr/article/comment-le-clip-freedom-de-george-michael-a-propulse-la-carriere-de-quatre-supermodels-stars-des-annees-90",
            user: HoneyBee)

puts "les 16 articles sont crees"

#creation des commentaires
puts "creation de 7 commentaires"

Comment.create(content: "Pas très convaincue pour cet automne",
              post: un,
              user: Glamazon)
Comment.create(content: "Je suis tellement fan de GM!!! Quelle icone <3",
              post: seize,
              user: HoneyBee)
Comment.create(content: "C'est clair que c'est clivant comme pantalon. C'est tellement Millenials!!! #old",
              post: neuf,
              user: Fatshionista)
Comment.create(content: "Je suis trop d'accord avec Fatshionista... Perso ça me va pas du tout. Cette tendance sera sans moi",
              post: neuf,
              user: BigBeauty)
Comment.create(content: "Depuis que j'essaie de faire tenir mes ondulations, et que j'ai lu cet article, j'ai des pubs partout pour des produits coiffants... c'est fou!",
              post: trois,
              user: AverageGirl)
Comment.create(content: "Je rêve d'avoir un de ces sacs un jour",
              post: huit,
              user: CurvyBabe)
Comment.create(content: "@CurvyBabe, moi aussi! mais voilà le budget à avoir...",
              post: huit,
              user: DeeDee)
puts "les 7 commentaires sont crées et ajoutés"
puts "Les seeds sont terminées!!"
