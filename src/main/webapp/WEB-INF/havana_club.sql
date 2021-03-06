-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: havana_club
-- ------------------------------------------------------
-- Server version	5.5.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pathImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS `drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drinkName` varchar(255) DEFAULT NULL,
  `recipe` longtext,
  `country_id` int(11) DEFAULT NULL,
  `pathImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb25hds663ir2rn5cqtelyxvds` (`country_id`),
  KEY `drinkName_index` (`drinkName`),
  CONSTRAINT `FKb25hds663ir2rn5cqtelyxvds` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FKrkfy5xduu0uofuc6i10fkvkg0` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO `drink` VALUES (2,'ЖЕЛТЫЙ ПОПУГАЙ (YELLOW PARROT)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и перемешать. 3. Процедить в коктейльный бокал.',NULL,'resources/ЖЕЛТЫЙ ПОПУГАЙ (YELLOW PARROT)/yellow_parrot.jpg'),(3,'ЛОНДОНСКИЙ ТУМАН (LONDON FOG)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. Украсить край бокала веточкой мяты.',NULL,'resources/ЛОНДОНСКИЙ ТУМАН (LONDON FOG)/london-fog.jpg'),(4,'НОКАУТ II (KNOCK OUT II)','1. Налить вес ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал.',NULL,'resources/НОКАУТ II (KNOCK OUT II)/Knock-out-II.jpg'),(5,'АМЕРИКА (AMERICA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. Напиток сбрызгнуть соком из кусочка лимонной цедры и положить цедру к бокал.',NULL,'resources/АМЕРИКА (AMERICA)/america.jpg'),(6,'БРУКЛИН (BROOKLYN)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и перемешать. 3. Процедить в коктейльный бокал.',NULL,'resources/БРУКЛИН (BROOKLYN)/BROOKLYN.jpg'),(7,'БУРБОН ФЛИП (BOURBON FLIP)','1. Налить бурбон, ром, сливки, сахарный сироп. 2. Добавить яичный желток. 3. Положить лед и смешать.',NULL,'resources/БУРБОН ФЛИП (BOURBON FLIP)/Bourbon-flip.jpg'),(8,'ВИСКИ САУЭР (WHISKEY SOUR)','1. Налить бурбон, лимонный сок, сахарный сироп, биттер в шейкер. 2. Добавить лед и смешать. 3. Процедить в стакан тумблер. 4. Апельсином и вишенкой украсить край стакана.',NULL,'resources/ВИСКИ САУЭР (WHISKEY SOUR)/whiskey-sour.jpg'),(9,'ЕПИСКОП (BISHOP)','1.  Налить вес ингридиенты в шейкер. 2.  Добавить лед и смешать. 3.  Процедить в коктейльныи бокал.',NULL,'resources/ЕПИСКОП (BISHOP)/bishop.jpg'),(10,'КОРОЛЕВСКИЙ КРЕСТ (KING\'S CROSS)','1. Налить вес ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейль-ный бокал. 4. Сбрызнуть соком из кусочка лимонной цедры и положить цедру в коктейль.',NULL,'resources/КОРОЛЕВСКИЙ КРЕСТ (KING\'S CROSS)/KINGS-CROSS.jpg'),(11,'ЛОС-АНДЖЕЛЕС (Л. А)','1.  Налить виски, вермут, лимонный сок и сироп в шейкер. 2.  Добавить лед и взбить. 3.  Положить лед и смешать. 4.  Процедить в стакан для лонгдринка.',NULL,'resources/ЛОС-АНДЖЕЛЕС (Л. А)/Los-Angeles.jpg'),(12,'МАНХЭТТЕН (MANHATTAN)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. В бокал положить вишенку на шпажке. По желанию напиток сбрызнуть соком из кусочка лимонной цедры и положить цедру в бокал.',NULL,'resources/МАНХЭТТЕН (MANHATTAN)/manhattan.jpg'),(13,'РОБ РОЙ (ROB ROY)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. В коктейль положить вишенку на шпажке.',NULL,'resources/РОБ РОЙ (ROB ROY)/Rob_Roy.jpg'),(14,'ЖЕЛТОЕ МОРЕ (YELLOW SEA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал.',NULL,'resources/ЖЕЛТОЕ МОРЕ (YELLOW SEA)/yellow-sea.jpg'),(15,'КОСМОПОЛИТЕН (COSMOPOLITEN)','1. Налить все ингредиенты в шейкер. 2.  Добавить лед и смешать. 3.  Процедить в коктейльный бокал.',NULL,'resources/КОСМОПОЛИТЕН (COSMOPOLITEN)/COSMOPOLITEN.jpg'),(16,'КАСАБЛАНКА (CASABLANCA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить а стакан для лонгдринка, наполовину наполненный кубиками льда.',NULL,'resources/КАСАБЛАНКА (CASABLANCA)/kasablanka.jpg'),(17,'КРОВАВАЯ МЕРИ (BLOODY MARY)','1. Налить водку, лимонный сок, томатный сок в стакан для лонгдринка. 2. Добавить соусы, соль и перец. 3. Положить лед и перемешать. По желанию добавить в коктейль маленький кусочек стебля сельдерея.',NULL,'resources/КРОВАВАЯ МЕРИ (BLOODY MARY)/bloody-mary.jpg'),(18,'ОТВЕРТКА (SCREWDRIVER)','1. Водку налить в стакан тумблер со льдом. 2. Долить апельсиновым соком и перемешать. 3. Край бокала украсить половиной кружка апельсина.',NULL,'resources/ОТВЕРТКА (SCREWDRIVER)/otvertka.jpg'),(19,'СЕКС НА ПЛЯЖЕ (SEX ON THE BEACH)','1. Налить водку и ликеры в шейкер. 2. Добавить лед и смешать. 3. Процедить в стакан хайбол. 4. Долить соками. 5. Коктейльную вишенку нанизать на шпажку и опустить в коктейль.',NULL,'resources/СЕКС НА ПЛЯЖЕ (SEX ON THE BEACH)/sex-on-the-beech.jpg'),(20,'АЛЯСКА (ALASKA)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и перемешать. 3. Процедить в коктейльный бокал.',NULL,'resources/АЛЯСКА (ALASKA)/alaska.jpg'),(21,'АМПИР (EMPIRE)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и перемешать. 3.  Процедить в коктейльный бокал. 4.  Вишенку на шпажке опустить в бокал.',NULL,'resources/АМПИР (EMPIRE)/empire.jpg'),(22,'БЕРМУДЫ (BERMUDA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать.',NULL,'resources/БЕРМУДЫ (BERMUDA)/bermuda.jpg'),(23,'ГАВАЙСКИЙ КОКТЕЙЛЬ (HAWAIIAN COCKTAIL)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал.',NULL,'resources/ГАВАЙСКИЙ КОКТЕЙЛЬ (HAWAIIAN COCKTAIL)/hawaiian.jpg'),(24,'ИМПЕРИАЛ (IMPERIAL)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и перемешать. 3. Процедить в коктейльный бокал. 4. Оливку на шпажке опустить в напиток.',NULL,'resources/ИМПЕРИАЛ (IMPERIAL)/imperial.jpg'),(25,'МЕДОВЫЙ МЕСЯЦ I (HONEYMOON I)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. В напиток опустить вишенку.',NULL,'resources/МЕДОВЫЙ МЕСЯЦ I (HONEYMOON I)/HONEYMOON.jpg'),(26,'МИЛЛИОН ДОЛЛАРОВ (MILLION DOLLARS)','1.  Налить джин, вермут, ликер, ананасовый сок в шейкер. 2.  Добавить яичный белок. 3.  Положить лед и смешать. 4.  Процедить в коктейльныи бокал.',NULL,'resources/МИЛЛИОН ДОЛЛАРОВ (MILLION DOLLARS)/mil_dol.jpg'),(27,'АЛЬБА (ALBA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в предварительно охлажденный коктейльный бокал. 4. Край бокала украсить половинкой кружка апельсина.',NULL,'resources/АЛЬБА (ALBA)/alba.jpg'),(28,'АЙ-БИ-Ю КОКТЕЙЛЬ (I В U COCTAIL)','1. Налить нее ингредиенты, кроме шампанского, в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал. 4. Долить шампанским. 5. Край бокала украсить половинкой кружка апельсина.',NULL,'resources/АЙ-БИ-Ю КОКТЕЙЛЬ (I В U COCTAIL)/ibu-coctail.jpg'),(29,'КОНЬЯК ФЛИП (COGNAC FLIP)','1. Налить коньяк в шейкер. 2. Добавить желток и сахар. 3. Положить лед и смешать. 4. Процедить в коктейльный бокал.',NULL,'resources/КОНЬЯК ФЛИП (COGNAC FLIP)/Cognac-flip.jpg'),(30,'БРЭНДИ ЗУМ (BRANDY ZOOM)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в коктейльный бокал.',NULL,'resources/БРЭНДИ ЗУМ (BRANDY ZOOM)/Brandy-zoom.jpg'),(31,'БАНАНОВАЯ КОРОВА (BANANA COW)','1. Налить ром, сироп и молоко в блендер. 2. Куда же положить банан. 3. Добавить лед и взбить. 4. Процедить в стакан для лонгдринка. 5. Коктейль подать с толстой соломинкой.',NULL,'resources/БАНАНОВАЯ КОРОВА (BANANA COW)/Banana-cow.jpg'),(32,'БОМБЕЙ ПУНШ (BOMBAY PUNCH)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в стакан для лонгдринка с колотым льдом. 4. Ананас и вишенку на одной шпажке положить на край стакана.',NULL,'resources/БОМБЕЙ ПУНШ (BOMBAY PUNCH)/Bombay-Punch.jpg'),(33,'ГАВАНА КЛУБ (HAVANA CLUB)','1. Налить все ингредиенты в стакан для предварительного смешивания. 2. Добавить лед и размешать. 3. Процедить в коктейльный бокал. 4. Напиток сбрызнуть соком из кусочка лимонной цедры и положить цедру в бокал.',NULL,'resources/ГАВАНА КЛУБ (HAVANA CLUB)/Havana-club.jpg'),(34,'МОХИТО (MOJITO)','1.  В коктейльном стакане растолочь листья мяты. 2.  Добавить лимонный сок или сок лайма, сахарный сироп и перемешать. 3.  Положить немного колотого льда и сверху налить ром, еще раз перемешать. 4.  Веточку мяты сбрызнуть содовой водой  и опустить в коктейль.',NULL,'resources/МОХИТО (MOJITO)/mohito.jpg'),(35,'ПИНА КОЛАДА (PINACOLADA)','1. Налить ром, сироп и сок в шейкер. 2. Положить сливки. 3. Добавить лед и смешать. 4. Процедить в стакан для лонгдринка',NULL,'resources/ПИНА КОЛАДА (PINACOLADA)/pina-kolada.jpg'),(36,'АЛЛИЛУЙЯ (ALELUIA)','1. Налить текилу, ликеры и сок в шейкер. 2. Добавить туда же белок. 3. Положить лед и смешать. 4. Процедить в стакан для лонгдринка. 5. Долить Bitter Lemon и перемешать еще раз. 6. Кружок лимона вместе с вишенками на шпажке положить на край стакана. 7. Веточку мяты и кружок апельсина опустить в коктейль.',NULL,'resources/АЛЛИЛУЙЯ (ALELUIA)/aleluia.jpg'),(37,'ЗОЛОТОЙ ВУЛКАН (GOLDEN VOLCANO)','1. Налить текилу, ликеры и соки в шейкер. 2. Добавить сливки. 3. Смешать со льдом. 4. Процедить в коктейльный бокал. 5. Вишенкой украсить край бокала или положить шпажку на его край.',NULL,'resources/ЗОЛОТОЙ ВУЛКАН (GOLDEN VOLCANO)/Golden-volcano.jpg'),(38,'МЕКСИКАНСКАЯ НОЧЬ (MEXICAN NIGHT)','1. Четверть лимона положить в стакан и раздавить его пестиком. 2. Налить текилу и сироп в стакан для предварительного смешивания. 3. Добавить лед. 4. Долить биттером и слегка перемешать. 5. Процедить в коктейльный бокал.',NULL,'resources/МЕКСИКАНСКАЯ НОЧЬ (MEXICAN NIGHT)/Mexican-night.jpg'),(39,'ПЕРСИКОВАЯ МАРГАРИТА (PEACH MARGARITA)','1. Нарезать половинку персика дольками. 2. Смешать вес ингредиенты в блендере с ледянои крошкой до однородной массы. 3. Подать в бокале для мартини. 4. Украсить долькой персика.',NULL,'resources/ПЕРСИКОВАЯ МАРГАРИТА (PEACH MARGARITA)/Paech-margarita.jpg'),(40,'ПРАДО (PRADO)','1. Налить текилу, ликеры и сок в шейкер. 2. Добавить белок. 3. Положить лед и смешать. 4. Процедить в коктейльный бокал. 5. Добавить фрукты.',NULL,'resources/ПРАДО (PRADO)/Prado.jpg'),(41,'ПТИЦА ДЖУНГЛЕЙ (JUNGLE BIRD)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в стакан для лонгдринка с колотым льдом. 4. Фрукты нанизать на одну шпажку и положить на край стакана.',NULL,'resources/ПТИЦА ДЖУНГЛЕЙ (JUNGLE BIRD)/Jungle-bird.jpg'),(42,'БИ 52 (В 52)','1. Налить Kahlua в ликерную рюмку 2. Налить ликер Bailey\'s Irish Creame тонкой струйкой по барной ложке. 3. Таким же способом сверху налить Cointreau.  4. Поджечь верхний слой горящей зубочисткой (не спичками!!!) или зажигалкой. 5. Быстро выпить горящий коктейль через трубочку.',NULL,'resources/БИ 52 (В 52)/B-52.jpg'),(43,'КАРИБСКОЕ ЧУДО (CARIBBEAN WONDER)','1. Налить все ингредиенты в шейкер.  2. Добавить лед и смешать. 3. Процедить в стакан для лонгдринка с сахарным ободком. 4. Четвертью кружка ананаса украсить край стакана.',NULL,'resources/КАРИБСКОЕ ЧУДО (CARIBBEAN WONDER)/Caribbean-wonder.jpg'),(44,'КОКОНАТ ФРУТ (COCONUT FRUIT)','1. Налить все ингредиенты и шейкер. 2. Добавить лед и смешать. ',NULL,'resources/КОКОНАТ ФРУТ (COCONUT FRUIT)/Coconat-fruit.jpg'),(45,'ЛАМБАДА (LAMBADA)','1. Налить все ингредиенты в шейкер. 2. Добавить лед и смешать. 3. Процедить в стакан для лонгдринка со льдом. 4. Край стакана украсить вишенкой. ',NULL,'resources/ЛАМБАДА (LAMBADA)/Lambada.jpg'),(46,'ДИКСИ (DIXIE)','1. Налить все ингредиенты и шейкер.2. Добавить лед и смешать.3. Процедить в коктейльный бокал.',NULL,'resources/ДИКСИ (DIXIE)/dixie.jpg');
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_ingredient`
--

DROP TABLE IF EXISTS `drink_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drink_ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `id_drink` int(11) NOT NULL,
  KEY `FKxquknvq252xb3vsten39f5hf` (`id_drink`),
  KEY `FKbyjwkucg3v863tj96yq2rd1df` (`id_ingredient`),
  CONSTRAINT `FKbyjwkucg3v863tj96yq2rd1df` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `FKkf12soqfrmfjc7mbinvf0gokl` FOREIGN KEY (`id_drink`) REFERENCES `drink` (`id`),
  CONSTRAINT `FKxquknvq252xb3vsten39f5hf` FOREIGN KEY (`id_drink`) REFERENCES `drink` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_ingredient`
--

LOCK TABLES `drink_ingredient` WRITE;
/*!40000 ALTER TABLE `drink_ingredient` DISABLE KEYS */;
INSERT INTO `drink_ingredient` VALUES (18,6),(19,6),(20,6),(21,7),(22,7),(23,7),(24,7),(25,7),(26,8),(27,8),(28,8),(29,8),(30,9),(31,9),(32,9),(33,9),(34,10),(35,10),(36,10),(37,11),(38,11),(39,11),(40,11),(41,11),(42,12),(43,12),(44,13),(45,13),(46,13),(47,14),(48,14),(49,14),(50,14),(51,14),(52,14),(53,15),(54,15),(55,15),(56,15),(57,16),(58,16),(59,16),(60,17),(61,17),(62,17),(63,17),(64,17),(65,17),(66,18),(67,18),(68,19),(69,19),(70,19),(71,19),(72,19),(73,19),(74,20),(75,20),(76,21),(77,21),(78,21),(79,22),(80,22),(81,22),(82,22),(83,23),(84,23),(85,23),(86,24),(87,24),(88,24),(89,24),(90,25),(91,25),(92,25),(93,25),(94,26),(95,26),(96,26),(97,26),(98,26),(99,27),(100,27),(101,27),(102,28),(103,28),(104,28),(105,29),(106,29),(107,29),(108,30),(109,30),(110,30),(111,31),(112,31),(113,31),(114,31),(115,32),(116,32),(117,32),(118,32),(119,32),(120,32),(121,33),(122,33),(123,34),(124,34),(125,34),(126,34),(127,34),(128,35),(129,35),(130,35),(131,35),(132,36),(133,36),(134,36),(135,36),(136,36),(137,36),(138,37),(139,37),(140,37),(141,37),(142,37),(143,37),(144,38),(145,38),(146,38),(147,38),(148,39),(149,39),(150,39),(151,39),(152,40),(153,40),(154,40),(155,40),(156,40),(157,40),(158,41),(159,41),(160,41),(161,42),(162,42),(163,43),(164,43),(165,43),(166,43),(167,44),(168,44),(169,45),(170,45),(171,45),(172,45),(173,45),(5,2),(6,2),(7,2),(8,3),(8,3),(9,3),(9,3),(12,4),(12,4),(13,4),(13,4),(14,4),(14,4),(15,5),(17,5),(1,46),(2,46),(3,46),(4,46);
/*!40000 ALTER TABLE `drink_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink_user`
--

DROP TABLE IF EXISTS `drink_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drink_user` (
  `id_user` int(11) NOT NULL,
  `id_drink` int(11) NOT NULL,
  KEY `FKmwra0k2yw99tq7a9a9shfb576` (`id_drink`),
  KEY `FKr6nuqohstalv0gql9f83gy35l` (`id_user`),
  CONSTRAINT `FK8devmihy1ccuftutwa0rj06wd` FOREIGN KEY (`id_drink`) REFERENCES `drink` (`id`),
  CONSTRAINT `FKmwra0k2yw99tq7a9a9shfb576` FOREIGN KEY (`id_drink`) REFERENCES `drink` (`id`),
  CONSTRAINT `FKr6nuqohstalv0gql9f83gy35l` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink_user`
--

LOCK TABLES `drink_user` WRITE;
/*!40000 ALTER TABLE `drink_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `drink_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredientName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'10 мл абсента Pernod '),(2,'10 мл сухого вермута'),(3,'10 мл лимонного сока'),(4,'2 дэша ликера Grenadine.'),(5,'20 мл абсента Pastis'),(6,'20 мл ликера Yellow Chartreuse'),(7,'20 мл ликера Apricot Brandy.'),(8,'25 мл абсента Anisette'),(9,'25 мл белого мятного ликера'),(12,'20 мл сухого вермута'),(13,'20 мл джина'),(14,'2 дэша белого мятного ликера.'),(15,'50 мл бурбона'),(16,'15 мл сока лайма'),(17,'2 барные ложки ликера Grenadine. '),(18,'40 мл канадского виски'),(19,'20 мл сухого вермута'),(20,'2 дэша   ликера   Maraschino.'),(21,'30 мл бурбона'),(22,'10 мл темного рома'),(23,'30 мл сливок'),(24,'10 мл сахарного сиропа'),(25,'1 яичный желток'),(26,'40 мл бурбона'),(27,'20 мл лимонного сока'),(28,'10 мл сахарного сиропа'),(29,'1 дэш биттера Angostura. '),(30,'30 мл канадского виски'),(31,'10 мл вермута Rosso'),(32,'10 мл апельсинового сока'),(33,'1 барная ложка ликера Green Chartreuse'),(34,'30 мл бурбона'),(35,'30 мл сухого вермута'),(36,'1 дэш Анкера Benedictine D. О. М. '),(37,'30 мл шотландского виски'),(38,'1 дэш вермута Bianco'),(39,'20 мл лимонного сока'),(40,'10 мл сахарного сиропа'),(41,'1 яйцо'),(42,'40 мл канадского виски'),(43,'20 мл вермута Rosso 1 дэш биттера Angostura'),(44,'40 мл шотландского виски'),(45,'20 мл вермута Rosso'),(46,'1 дэш биттера Angostura'),(47,'25 мл водки'),(48,'10 мл ликера Maraschino'),(49,'15 мл светлого рома'),(50,'15 мл ликера Galliano'),(51,'10 мл сока лайма'),(52,'1 барная ложка сахарного сиропа'),(53,'30 мл водки Finlandia Redberry'),(54,'20 мл ликера Cointreau'),(55,'20 мл клюквенного сока'),(56,'10 мл сока лайма'),(57,'30 мл водки'),(58,'20 мл яичного ликера'),(59,'20 мл лимонного сока 40 мл апельсинового сока'),(60,'40 мл водки'),(61,'10 мл лимонного сока'),(62,'120 мл томатного сока'),(63,'ворчестерширскии соус: соус \"Табаско\"'),(64,'соль, пропитанная соком сельдерея'),(65,'перец'),(66,'40 мл водки'),(67,'апельсиновый сок.   '),(68,'15 мл водки: 15 мл ликера Peach Schnapps'),(69,'5 мл ликера Southern Comfort'),(70,'5 мл ликера Midori'),(71,'клюквенный сок'),(72,'апельсиновый сок'),(73,'ананасовый сок'),(74,'40 мл джина'),(75,'20 мл ликера Jaime Chartreuse'),(76,'30 мл джина'),(77,'15 мл кальвадоса'),(78,'15 ми ликера Apricot Brandy: '),(79,'60 мл джина'),(80,'20 мл ликера Peach Brandy'),(81,'1 барная ложка ликера Curasao Blue'),(82,'барная ложка апельсинового сока'),(83,'30 мл джина'),(84,'20 мл апельсинового сока'),(85,'10 мл ликера Curasao Triple Sec'),(86,'30 мл джина'),(87,'30 мл сухого вермута'),(88,'1 капля биттера Angostura'),(89,'1 капля ликера Maraschino'),(90,'40 мл джина'),(91,'20 мл ликера Apricot Brandy'),(92,'5 мл лимонного сока'),(93,'5 мл ликера Grenadine. '),(94,'30 мл джина'),(95,'30 мл вермута Rosso'),(96,'1 барная ложка ликера Grenadine'),(97,'1 барная ложка ананасового сока'),(98,'1 яичный белок.'),(99,'40 мл коньяка'),(100,'20 мл апельсинового сока'),(101,'10 мл малинового сиропа. '),(102,'20 мл бренда'),(103,'20 мл ликера Apricot Brandy: 20 мл апельсинового сока'),(104,'сухое шампанское. '),(105,'60 мл коньяка'),(106,'1 яичный желток'),(107,'2 чайные ложки сахара.'),(108,'40 мл бренди'),(109,'2 барные ложки меда'),(110,'4 барные ложки сливок.'),(111,'60 мл темного рома'),(112,'20 мл сахарного сиропа'),(113,'100 мл молока'),(114,'половина очищенною банана'),(115,'40 мл темного рома'),(116,'10 мл апельсинового ликера'),(117,'40 мл апельсинового сока'),(118,'40 мл ананасового сока'),(119,'20 мл лимонного сока'),(120,'20 мл ликера Grenadine. '),(121,'40 мл светлого рома'),(122,'20 мл вермута Rosso. '),(123,'40 мл светлого рома'),(124,'20 мл сока лимона или лайма'),(125,'10 мл сахарного сиропа'),(126,'содовая вода'),(127,'несколько листиков мяты.   '),(128,'40 мл светлого рома'),(129,'50 мл сиропа Cream of Coconut'),(130,'50 мл ананасового сока'),(131,'10 мл сливок. '),(132,'25 мл белой текилы'),(133,'15 мл ликера Maraschino'),(134,'15 мл ликера Curasao Blue'),(135,'15 мл лимонного сока'),(136,'1 яичный белок'),(137,'Bitter Lemon. '),(138,'15 мл текилы'),(139,'5 мл ликера Curasao Triple Sec'),(140,'15 мл ликера Galliano'),(141,'10 мл сливок'),(142,'10 мл сока лайма'),(143,'10 мл апельсинового сока. '),(144,'40 мл текилы'),(145,'2 дэша сиропа из лайма'),(146,'четверть лимона'),(147,'Bitter Lemon'),(148,'25 мл текилы'),(149,'25 мл апельсинового ликера De Kuyper Triple See'),(150,'25 мл сока лайма'),(151,'5 мл сахарного сиропа: половинка свежего персика.'),(152,'30 мл текилы'),(153,'10 мл ликера Maraschino'),(154,'15 мл сока лайма'),(155,'1 чайная ложка ликера Grenadine'),(156,'1 яичный белок. '),(157,''),(158,'40 мл текилы: 40 мл сока папайи'),(159,'40 мл лимонного сока'),(160,'10 мл сиропа миракуйи'),(161,'20 мл ликера Kahlua'),(162,'20 мл ликера Bailey\'s Irish Creams, 20 мл ликера Cointreau.    '),(163,'40 мл ликера Curasao Blue'),(164,'10 мл светлого рома'),(165,'40 мл бананового сока: 40 мл ананасового сока'),(166,'40 мл пахты'),(167,'30 мл зеленого бананового ликера 30 мл ликера Malibu'),(168,'100 мл ананасового сока. '),(169,'20 мл ликера Curasao Blue'),(170,'10 мл персикового ликера'),(171,'20 мл ликера Malibu'),(172,'20 мл персикового сока'),(173,'10 мл ананасового сока. ');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `localDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsgwj42spshwc3eestq5vk520j` (`user_id`),
  CONSTRAINT `FKsgwj42spshwc3eestq5vk520j` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_drink`
--

DROP TABLE IF EXISTS `orders_drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_drink` (
  `orders_id` int(11) NOT NULL,
  `drink_id` int(11) NOT NULL,
  PRIMARY KEY (`orders_id`,`drink_id`),
  KEY `FK7b8dxsdlovtcsq4gacy73kr6y` (`drink_id`),
  CONSTRAINT `FK1wj1uagfipwfibcuiejv0odx0` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK7b8dxsdlovtcsq4gacy73kr6y` FOREIGN KEY (`drink_id`) REFERENCES `drink` (`id`),
  CONSTRAINT `FKpe9bdj3h83dmgg7ou811afcyx` FOREIGN KEY (`drink_id`) REFERENCES `drink` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_drink`
--

LOCK TABLES `orders_drink` WRITE;
/*!40000 ALTER TABLE `orders_drink` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enable` bit(1) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'havana_club'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-15 23:13:53
