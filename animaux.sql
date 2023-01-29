-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 29 jan. 2023 à 22:39
-- Version du serveur : 10.6.11-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE `animaux` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `regime` varchar(255) NOT NULL,
  `classe` varchar(255) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id`, `nom`, `regime`, `classe`, `continent`, `description`) VALUES
(1, 'Chien', 'carnivore', 'mammifère', 'Tous', 'Le chien est un mammifère carnivore de la famille des canidés, issu du loup, le Canis lupus. Son nom scientifique est d\'ailleurs Canis lupus familiaris. Familiaris parce qu\'il a été domestiqué par l\'Homme il y a plus de 30.000 ans. Il a été sélectionné grâce à des hybridations entre races. Et le chien est aujourd\'hui -- avec le chat -- l\'un des animaux de compagnie préférés dans le monde. Il en existe plus de 300 races.'),
(2, 'Chat', 'carnivore', 'mammifère', 'Tous', 'Un chat pèse environ entre 2 à 6 kg et mesure 46 à 51 cm sans la queue, qui, elle, mesure en moyenne 20 à 25 cm. Ses griffes rétractiles peuvent rentrer et sortir à tout moment. Il a 18 griffes : 5 sur chacune de ses pattes avant et 4 sur chacune de ses pattes arrières.\r\n\r\nEn ce qui concerne son cerveau, le chat est similaire à 90% à celui d\'un homme et d\'ailleurs il possède plus de neurones qu\'un chien.Sa température corporelle est de 38,5 °C - 39 °C. Ses battements cardiaques sont de 110 - 140 battements par minute.2,3\r\n\r\nLe chat vit couramment 15 ou 16 ans, mais on a vu des chats vivre jusqu\'à 20 ans et plus. Le plus vieux chat jamais enregistré, Creme Puff, est mort à 38 ans et 3 jours.'),
(3, 'Tigre', 'carnivore', 'mammifère', 'Asie', 'Aisément reconnaissable à sa fourrure rousse rayée de noir, le tigre Panthera tigris est le plus grand félin sauvage et l\'un des plus grands carnivores terrestres. Super-prédateur, il chasse principalement les cerfs et les sangliers, bien qu\'il puisse s\'attaquer à des proies de taille plus importante comme les buffles.'),
(4, 'Cheval', 'herbivore', 'mammifère', 'Tous', 'Le cheval est un grand mammifère herbivore et ongulé à sabot unique ; c\'est l\'une des espèces de la famille des Équidés, lesquelles ont évolué, au cours des derniers 45 à 55 millions d\'années, à partir d\'un petit mammifère possédant plusieurs doigts.'),
(5, 'Lézard', 'carnivore (généralement)', 'reptile', 'Tous (sauf l\'Antarctique)', 'Le corps des lézards est constitué de trois parties : la tête, le corps et la queue, cette dernière étant souvent longue et fine mais parfois courte et trapue. Ils sont aussi couverts d\'écailles de formes variables (lisses, tuberculeuses, épineuses) et dont les couleurs sont fonction du milieu dans lequel ils vivent.\r\nEn cas de danger, il peuvent se débarrasser de leur queue, qui repoussera plus tard.'),
(6, 'Girafe', 'herbivore', 'mammifère', 'Afrique', 'La girafe peut mesurer jusqu\'à 5,80 mètres de haut !\r\nLa girafe, avec le lion et l\'éléphant, est l\'icône de la savane d\'Afrique. La girafe est très grande, musclée et mince. Elle a deux petites cornes sur la tête. Son cou est super long, mais il a le même nombre de vertèbres que celui d\'un humain, c\'est-à-dire 7.'),
(7, 'Koala', 'herbivore', 'mammifère', 'Océanie', 'Le koala (Phascolarctos cinereus), appelé aussi Paresseux australien, est une espèce de marsupial arboricole herbivore endémique d\'Australie et le seul représentant encore vivant de la famille des Phascolarctidés.\r\nLe koala est étroitement lié à l\'eucalyptus ou gommier, dont il ne mange que les feuilles de certaines espèces. Les mâles peuvent vivre en moyenne 15 ans, et les femelles 20 ans.'),
(8, 'Ornithorynque', 'carnivore', 'mammifère', 'Océanie', 'Ornithorynque (Ornithorhynchus anatinus) L\'ornithorynque ne peut être confondu avec aucun autre animal. C\'est un petit mammifère – il dépasse rarement 2 kg – vraiment original, à la fourrure courte et dense et au large bec de canard. Son pelage est typique d\'une espèce aquatique.\r\nCet animal fait partie des cinq espèces de l\'ordre des monotrèmes, le seul ordre de mammifères qui pond des oeufs!'),
(9, 'Poule', 'omnivore', 'Oiseau', 'Tous (sauf Antarctique)', 'Le mot poule est en français un nom vernaculaire ambigu. C\'est en général le nom donné à la femelle de diverses espèces d\'oiseaux, principalement des Galliformes, en particulier à la Poule domestique mais aussi à d\'autres espèces : Poule d\'eau, Poule faisane, ...\r\nLa poule est très utile si vous ne voulez pas de gaspillage, elle mange de tout!'),
(10, 'Serpent', 'carnivore', 'Reptile', 'Tous (sauf Antarctique)', 'Les serpents, de nom scientifique Serpentes, forment un sous-ordre de squamates carnivores au corps très allongé et dépourvus de membres apparents.\r\nCertains sont venimaux, alors que d\'autres utilisent la constriction pour tuer leurs proies (ils les étouffent entre leurs anneaux)\r\n'),
(11, 'Bonobo', 'Frugivore, omnivore', 'mammifère', 'Afrique', 'Animal social, le bonobo vit en groupe de plusieurs dizaines d’individus composé de mâles, de femelles et de jeunes. La structure sociale est plutôt du genre matriarcale et pacifique.\r\n\r\nLes femelles quittent le groupe lorsqu’elles atteignent l’âge de procréer et partent à la recherche d’un nouveau clan. Les mâles restent toute leur vie dans le groupe qui les a vu naître.\r\n\r\nLes bonobos utilisent les relations sexuelles pour apaiser les tensions au sein du groupe et réduire ainsi l’agressivité. L’activité sexuelle est très intense même en dehors des périodes de reproduction.\r\n\r\nLa présence d’un singe bouc émissaire à l’intérieur du groupe permet également d’apaiser certaines tensions.\r\n\r\nLes bonobos utilisent des outils pour se nourrir comme des tiges pour extraire les termites des termitières.\r\n\r\nLes primates seraient capables de manifester des sentiments d’empathie les uns envers les autres.'),
(12, 'Caïman', 'Carnivore', 'reptile', 'Amérique du sud', 'Le caïman noir est un reptile carnivore appartenant à la famille des alligatoridés et vivant sur le continent sud-américain.\r\n\r\nIl est le plus grand des crocodiles américains.\r\n\r\nIl se distingue du crocodile et de l’alligator par sa couleur sombre, presque noire.\r\nLe reptile mange des poissons (piranhas, poisson-chat…), des crustacés, des tortues, des reptiles (anaconda géant), des cerfs, des tapirs, des petits mammifères (ragondins), des oiseaux, des insectes.'),
(13, 'Dromadaire', 'herbivore', 'mammifère', 'Afrique, Asie, Océanie', 'Le dromadaire est un animal social et grégaire. Il vit en groupe d’une vingtaine d’individus composé d’un mâle dominant, de femelles et de jeunes.\r\n\r\nL’activité principale de l’espèce est la quête de nourriture.\r\n\r\nUn dromadaire peut marcher jusqu’à 50 km par jour et ce, pendant plusieurs jours.\r\nLe dromadaire possède une seule bosse.'),
(14, 'Kiwi', 'omnivore', 'Oiseau', 'Océanie (Nouvelle Zélande uniquement)', 'Le kiwi austral est une espèce d’oiseau coureur appartenant à l’ordre des apterygiformes et à la famille des aptérygidés.\r\n\r\nA l’instar d’autres espèces d’oiseaux coureurs (l’autruche, l’émeu d’Australie, le cormoran aptère…), il est incapable de voler. \r\n\r\nL’espèce vit en Nouvelle-Zélande.\r\nL’oiseau mange des insectes, des invertébrés, des araignées, des larves, des escargots.\r\n\r\nIl se nourrit de végétaux occasionnellement (baies, fruits).'),
(15, 'Manchot empereur', 'carnivore', 'oiseau', 'Antarctique', 'Le manchot empereur est une espèce d’oiseau de mer appartenant à l’ordre des sphénisciformes et à la famille des sphéniscidés.\r\n\r\nIl ressemble au pingouin, mais il est beaucoup plus gros que lui et ne peut pas voler.\r\n\r\nIl vit au pôle Sud, en Antarctique d’où l’espèce est endémique.\r\nLe manchot empereur est une espèce sociale et grégaire. Il vit en groupe ou colonie, sur terre ou en mer, que ce soit lors de la chasse ou pendant la période de reproduction. Ces colonies peuvent comporter parfois plusieurs milliers d’individus.\r\n\r\nL’effet de groupe permet à tous les individus de se protéger du froid intense en constituant un groupe dense (à la manière de la tortue romaine) où les individus au centre se réchauffent et laissent place alternativement aux individus à la périphérie de la colonie.\r\n\r\nPour communiquer entre eux, les manchots empereurs utilisent différents cris ou bruits et peuvent émettre des sons à des fréquences variables. Ces cris sont très utiles lors de la nidification lorsque les partenaires doivent se retrouver parmi des milliers d’autres congénères.\r\n\r\nInapte au vol (du fait d’ailes courtes et rigides), le manchot empereur se déplace en marchant ou en glissant sur le ventre. \r\n\r\nLors de la période de reproduction, les manchots empereurs entament une longue marche sur la glace à l’intérieur des terres (50 à 100 km) afin de trouver l’endroit idéal pour nicher (à l’abris des vents violents). Une fois l’oeuf pondu, le mâle le couve pendant que la femelle retourne à la mer pour se nourrir. Son absence peut durer jusqu’à 2 mois.\r\n\r\nA la fin de la période de couvaison, le mâle aura perdu 30 à 40 % de son poids. Une fois la femelle de retour à la colonie, le mâle ira rejoindre la mer à son tour pour se nourrir.'),
(16, 'Narval', 'carnivore', 'Mammifère', 'Océan arctique', 'Le narval, appelé également la licorne des mers, est un mammifère marin appartenant à l’ordre des cétacés et à la famille des monodontidés.\r\n\r\nL’animal est caractérisé par sa longue défense (dent, corne) de plusieurs mètres de long à l’avant de sa tête, d’où son surnom de licorne des mers.\r\n\r\nIl vit dans les régions arctiques du globe.'),
(17, 'Requin baleine', 'omnivore (essentiellement du plancton)', 'Chondrichthyens', 'Eaux tropicales et tempérées à chaudes', 'Le requin baleine est une espèce de requin omnivore de la famille des rhincodontidés dont il est le seul membre.\r\n\r\nIl vit dans toutes les eaux tropicales et tempérées chaudes de l’Atlantique, du Pacifique et de l’Océan Indien.\r\n\r\nIl est considéré comme le plus grand poisson vivant sur terre.'),
(18, 'Tortue luth', 'carnivore', 'reptile', 'Tous les océans du globe', 'La tortue luth, appelée également la tortue à dos de cuir, est une espèce de tortue marine appartenant à la classe des reptiles et à la famille des dermochelyidés.\r\n\r\nElle est la plus grande de toutes les espèces de tortues.\r\n\r\nElle vit dans tous les océans de la planète mais est en voie de disparition.'),
(19, 'Zèbre', 'herbivore', 'mammifère', 'Afrique', 'Le zèbre de Burchell ou zèbre des plaines est un mammifère herbivore de la famille des équidés.\r\n\r\nAnimal grégaire, caractérisé par ses rayures noires et blanches, il fait partie intégrante du continent africain.\r\nLe zèbre de Burchell est un animal grégaire ; il vit en troupeaux composé de plusieurs dizaines d’individus. Un noyau familial se forme et se compose d’un étalon, de plusieurs juments et des poulains. L’étalon se charge de la protection de la famille.\r\n\r\nIl existe également une hiérarchie entre les juments au sein du clan. Les liens sociaux sont très forts au sein de la famille.\r\n\r\nAvant de former une famille, les étalons vivent entre eux et se défient lors de combats impressionnants pour désigner celui qui deviendra le chef de famille.\r\n\r\nLes contacts physiques (câlins, caresses, toilettage) sont fréquents chez le zèbre de Burchell.\r\n\r\nAnimal sociable, il lui arrive fréquemment de paitre avec des animaux d’espèces différentes comme les gnous.'),
(20, 'Varan du nil', 'carnivore', 'reptile', 'Afrique', 'Le varan du Nil est une espèce de grand lézard semi-aquatique appartenant à la classe des reptiles et à la famille des varanidés.\r\n\r\nIl est considéré comme le plus grand lézard africain.\r\n\r\nIl vit le long de la vallée du Nil ainsi que dans une grande partie de l’Afrique subsaharienne.\r\n\r\nL’espèce a été introduite en Floride (Etats-Unis).\r\n');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
