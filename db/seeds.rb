# Suppression des données existantes
puts "destruction des utilisateurs, des articles et des commentaires"

User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "destruction faite"

# Creation des utilisateurs
puts "creation de 8 utilisateurs"
AverageGirl = User.create(email: "user1@lewagon.fr", password: "password", nickname: "AverageGirl")
BigBeauty = User.create(email: "user2@lewagon.fr", password: "password", nickname: "BigBeauty")
CurvyBabe = User.create(email: "user3@lewagon.fr", password: "password", nickname: "CurvyBabe")
DeeDee = User.create(email: "user4@lewagon.fr", password: "password", nickname: "DeeDee")
ElasticGirl = User.create(email: "user5@lewagon.fr", password: "password", nickname: "ElasticGirl")
Fatshionista = User.create(email: "user6@lewagon.fr", password: "password", nickname: "Fatshionista")
Glamazon = User.create(email: "user7@lewagon.fr", password: "password", nickname: "Glamazon")
HoneyBee = User.create(email: "user8@lewagon.fr", password: "password", nickname: "HoneyBee")
puts "utilisateurs crees"

# Creation des articles
puts "creation de 8 articles"
un = Post.create(title: "30 basiques à avoir dans sa garde-robe à l’automne",
            subtitle: "Alors que les températures ne vont pas tarder à se rafraîchir, il est temps de repenser sa garde-robe automnale.",
            content: "Imprimé serpent, denim en all-over, empiècements en cuir, carreaux de toutes sortes, parkas démesurées… Si l’automne s’annonce singulier et audacieux, pas question d’y mettre un pied sans armer son vestiaire anti-frimas d’incontournables de saison. Un tailleur bien coupé pour s’affirmer, une veste en jean parce qu’elle est indémodable, un denim beige pour briller, une blouse fleurie pour conter fleurette, un blazer XXL pour se la jouer désinvolte, une peau lainée pour s’y lover, des mocassins tendances pour battre le pavé… Un dressing qui s’annonce cocon à travers un prisme de pièces complices, familières, à l’allure rassurante et assurée. Et pourtant, les tendances mode automne-hiver 2023-2024 ne manquent pas de dresser un florilège d'envies stylistiques pointues, rétro, pile dans l’air du temps. L’occasion de passer en revue les 30 basiques à avoir dans sa garde-robe à l’automne. À bon entendeur.",
            url: "https://www.elle.fr/Mode/Les-conseils-mode/basique-automne",
            user: AverageGirl)
deux = Post.create(title: "L'oeil de la styliste : pourquoi votre miroir vous ment un peu, beaucoup",
            subtitle: "Même si vous passez peu de temps devant la glace, vous ne pouvez pas éviter totalement votre reflet. Miroir d’ascenseur, vitrine, rétroviseur, selfie, réunion en visio… Et ce que vous voyez ne correspond pas toujours au réel.",
            content: "Cuisses rondes, jambes arquées, cernes marquées… Miroir, mon beau miroir, et si tu arrêtais de me trouver des complexes ? Contrairement au miroir de la sorcière de Blanche-Neige, le nôtre nous voit rarement comme on est. Normal, les miroirs ne reflètent qu’une représentation d’une réalité parmi d’autres. Déjà, d’un point de vue technique, lorsque vous vous regardez, vous vous voyez en image inversée : pour vous, le côté droit de votre visage et de votre corps se placent à gauche. Et puis, vous avez sûrement remarqué que les miroirs ne sont pas tous aussi amicaux. Selon leur épaisseur, l’éclairage et la façon dont ils ont été posés, ils vous reflètent avec plus ou moins de fidélité. Ils déforment, grossissent ou allongent subtilement ou carrément grossièrement. Leurs dimensions aussi transforment votre image. Entre une étroite et longue glace rectangulaire, un vaste miroir de château et un carré qui s’arrête à mi-cuisses, vous ne verrez pas la même personne mais une femme avec trois silhouettes différentes. Et puis, contrairement à la vraie vie où on vous regarde en 4 D, face aux miroirs, vous avez une vision de vous en 2 D. Avouez que c’est réducteur ! Et surtout, au-delà des apparences, il y a votre perception à vous et tout ce que vous pensez voir et qui n’appartient qu’à votre histoire personnelle.",
            url:  "https://www.elle.fr/Mode/Les-conseils-mode/L-oeil-de-la-styliste-pourquoi-votre-miroir-vous-ment-un-peu-beaucoup-4148014",
            user: BigBeauty)
trois = Post.create(title: "Voici l’astuce facile pour des belles ondulations selon le champion du monde de coiffure",
            subtitle: "Le chef de cabine coiffure Diogo Pereira-Nunès, sacré champion du monde la coiffure, nous révèle les secrets de la mise en beauté du défilé Victoria Tomas printemps – été 2024.",
            content: "Pour le début de la semaine de la mode parisienne, Victoria Tomas a posé ses valises au Palais de la Femme dans le 11ème arrondissement de Paris. Quelques heures avant le début des festivités, nous nous sommes infiltrés dans les coulisses du show. Notre objectif ? Rencontrer Diogo Pereira-Nunès, formateur chez Jean-Louis David, élu double champion du monde de la coiffure en 2022. Chef de cabine coiffure du défilé, l’expert a imaginé en collaboration avec Victoria Feldman et Tomas Berzins et aidé d'une armée de coiffeurs Jean-Louis David une mise en beauté ultra naturelle. « Le naturel était vraiment le maitre-mot pour cette saison. C’est un look travaillé, mais qui ne dénature pas le mannequin. On a gardé l’identité de chaque nature de cheveux », nous explique le hairstylist. Au menu : les cheveux lisses ont été sublimés tandis que les ondulations des cheveux bouclés ont été parfaitement définies.",
            url:"https://www.elle.fr/Beaute/Cheveux/Astuces/Voici-l-astuce-facile-pour-des-belles-ondulations-selon-le-champion-du-monde-de-coiffure-4166845",
            user: CurvyBabe)
quatre = Post.create(title: "Le Retour des Années 90 dans la Mode",
            content: "Les années 90 font un retour en force, et cela se reflète dans les tendances actuelles. Les crop-tops, portés avec des jeans taille haute, sont un look emblématique de cette époque. Les jeans baggy sont également de retour, offrant un confort ultime et un style décontracté. Les vestes en jean et les chemises à carreaux sont des pièces essentielles pour adopter le look des années 90. Accessoirisez avec des bandanas autour du cou ou dans les cheveux pour une touche rétro. Les baskets blanches classiques sont le choix idéal pour compléter ce look décontracté et cool.",
            url: "https://www.modedujour.com/retour-annees-90-mode",
            user: DeeDee)
cinq = Post.create(title: "La Durabilité dans la Mode : Comment Faire des Choix Éthiques",
            content: "La mode durable est devenue un sujet brûlant ces dernières années, et à juste titre. Pour faire des choix éthiques, commencez par rechercher des marques qui mettent en avant la durabilité, utilisant des matériaux recyclés et des pratiques de fabrication respectueuses de l'environnement. Pensez à la qualité plutôt qu'à la quantité. Optez pour des pièces intemporelles et bien faites qui dureront longtemps. Privilégiez également les vêtements d'occasion et les vides greniers pour réduire votre impact environnemental.",
            url: "https://www.modedujour.com/durabilite-mode-choix-ethiques",
            user: ElasticGirl)
six = Post.create(title: "L'Art de Mixer les Imprimés",
            content: "Mélanger les imprimés peut sembler intimidant, mais c'est une tendance amusante à essayer. Pour réussir, choisissez un élément de base neutre comme une jupe ou un pantalon à imprimé, puis ajoutez un autre imprimé avec un ton complémentaire. Par exemple, un haut rayé avec une jupe à pois. N'oubliez pas d'équilibrer les proportions. Si vous avez un imprimé audacieux en haut, gardez le bas plus sobre et vice versa. Les accessoires discrets, comme des chaussures unies et un sac simple, peuvent aider à ancrer le look.",
            url: "https://www.modedujour.com/art-mixer-imprimes",
            user: Fatshionista)
sept = Post.create(title: "Les Accessoires Incontournables de l'Été",
            content: "L'été est le moment idéal pour mettre en valeur vos accessoires. Un chapeau de soleil à large bord peut vous protéger du soleil tout en ajoutant une touche de glamour à votre tenue. Les lunettes de soleil sont également indispensables, optez pour une paire tendance qui correspond à votre style. Les sacs en paille ou en osier sont parfaits pour la saison estivale, tout comme les bijoux en coquillage et les colliers de perles. N'oubliez pas de glisser dans des sandales confortables pour une promenade sous le soleil.",
            url: "https://www.modedujour.com/accessoires-incontournables-ete",
            user: Glamazon)
huit = Post.create(title: "Le Retour du Denim : Comment Porter le Jean en Tête à Pied",
            content: "Le denim est l'un des tissus les plus polyvalents de la mode, et il est de retour en force. Les jeans skinny sont toujours populaires, mais n'ayez pas peur d'essayer des coupes plus larges comme les jeans droits ou les mom jeans. Les vestes en jean sont un classique intemporel, mais vous pouvez également expérimenter avec des combinaisons en jean ou des robes en denim. Le denim sur denim est également une option si vous jouez avec les nuances et les textures.",
            url: "https://www.modedujour.com/retour-du-denim-comment-porter-le-jean",
            user: HoneyBee)

puts "articles crees"

#creation des commentaires
puts "creation de 7 commentaires"

Comment.create(content: "Pas très convaincue pour ce printemps",
              post: un,
              user: Glamazon)
Comment.create(content: "Je suis d'accord avec toi, je ne suis pas fan des imprimés floraux. Rien ne vaut les bons vieux chics",
              post: deux,
              user: HoneyBee)
Comment.create(content: "le retour du fluo et des bonnes vieilles bananes. Je ne sais pas s'il faut s'en réjouir",
              post: trois,
              user: Fatshionista)
Comment.create(content: "Trop bien!! je vais pouvoir ressortir les tenues fluos de ma mère!!!",
              post: trois,
              user: BigBeauty)
Comment.create(content: "Mixer les imprimés!!! Je ne suis pas sûre d'assumer",
              post: six,
              user: AverageGirl)
Comment.create(content: "comme si le denim avait disparu de la mode... perso c'est mon uniforme quotidien!",
              post: huit,
              user: CurvyBabe)
Comment.create(content: "Ok pour le denim. Mais quid des slim? On peut les abandonner? C'est tellement Millenials",
              post: huit,
              user: DeeDee)
puts "les commentaires sont crées et ajoutés"
puts "seeds terminés!!"
