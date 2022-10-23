-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: chaarminar
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `keyword` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES
(2.47,35.32,'happy','arka.json'),
(17.4461,78.3492,'temple','/cache_location_results/17.446146_78.349206_temple.json'),
(17.4461,78.3492,'college','/cache_location_results/17.446146_78.349206_college.json'),
(17.4461,78.3492,'pub','/cache_location_results/17.446146_78.349206_pub.json'),
(17.4463,78.349,'archeological sites','/cache_location_results/17.446328_78.3489676_archeological sites.json'),
(17.4463,78.349,'bars','/cache_location_results/17.446328_78.3489676_bars.json'),
(17.4463,78.349,'park','/cache_location_results/17.446328_78.3489676_park.json'),
(17.4463,78.349,'malls','/cache_location_results/17.446328_78.3489676_malls.json'),
(17.4463,78.349,'theatres','/cache_location_results/17.446328_78.3489676_theatres.json'),
(17.4463,78.349,'monument','/cache_location_results/17.446328_78.3489676_monument.json'),
(17.4463,78.349,'temp','/cache_location_results/17.446328_78.3489676_temp.json'),
(17.4463,78.349,'beaches','/cache_location_results/17.446328_78.3489676_beaches.json'),
(17.4463,78.349,'cinema','/cache_location_results/17.446328_78.3489676_cinema.json'),
(17.4463,78.349,'museum','/cache_location_results/17.446328_78.3489676_museum.json'),
(18.544,78.2422,'bars','/cache_location_results/18.5440264_78.242164_bars.json'),
(18.544,78.2422,'beaches','/cache_location_results/18.5440264_78.242164_beaches.json'),
(18.544,78.2422,'cinema','/cache_location_results/18.5440264_78.242164_cinema.json'),
(18.544,78.2422,'park','/cache_location_results/18.5440264_78.242164_park.json'),
(18.544,78.2422,'malls','/cache_location_results/18.5440264_78.242164_malls.json'),
(18.544,78.2422,'monument','/cache_location_results/18.5440264_78.242164_monument.json'),
(18.544,78.2422,'museum','/cache_location_results/18.5440264_78.242164_museum.json'),
(18.544,78.2422,'temp','/cache_location_results/18.5440264_78.242164_temp.json'),
(18.544,78.2422,'theatres','/cache_location_results/18.5440264_78.242164_theatres.json'),
(18.544,78.2422,'temple','/cache_location_results/18.5440264_78.242164_temple.json'),
(18.544,78.2422,'archeological sites','/cache_location_results/18.5440264_78.242164_archeological sites.json'),
(19.5401,78.5372,'bars','/cache_location_results/19.540108_78.537165_bars.json'),
(19.5401,78.5372,'beaches','/cache_location_results/19.540108_78.537165_beaches.json'),
(19.5401,78.5372,'cinema','/cache_location_results/19.540108_78.537165_cinema.json'),
(19.5401,78.5372,'park','/cache_location_results/19.540108_78.537165_park.json'),
(19.5401,78.5372,'malls','/cache_location_results/19.540108_78.537165_malls.json'),
(19.5401,78.5372,'monument','/cache_location_results/19.540108_78.537165_monument.json'),
(19.5401,78.5372,'museum','/cache_location_results/19.540108_78.537165_museum.json'),
(19.5401,78.5372,'temp','/cache_location_results/19.540108_78.537165_temp.json'),
(19.5401,78.5372,'theatres','/cache_location_results/19.540108_78.537165_theatres.json'),
(19.5401,78.5372,'temple','/cache_location_results/19.540108_78.537165_temple.json'),
(19.5401,78.5372,'archeological sites','/cache_location_results/19.540108_78.537165_archeological sites.json'),
(20.5362,78.8322,'park','/cache_location_results/20.5361887_78.8321653_park.json'),
(20.5362,78.8322,'archeological sites','/cache_location_results/20.5361887_78.8321653_archeological sites.json'),
(20.5362,78.8322,'monument','/cache_location_results/20.5361887_78.8321653_monument.json'),
(20.5362,78.8322,'temp','/cache_location_results/20.5361887_78.8321653_temp.json'),
(20.5362,78.8322,'temple','/cache_location_results/20.5361887_78.8321653_temple.json'),
(20.5362,78.8322,'cinema','/cache_location_results/20.5361887_78.8321653_cinema.json'),
(20.5362,78.8322,'theatres','/cache_location_results/20.5361887_78.8321653_theatres.json'),
(20.5362,78.8322,'beaches','/cache_location_results/20.5361887_78.8321653_beaches.json'),
(20.5362,78.8322,'malls','/cache_location_results/20.5361887_78.8321653_malls.json'),
(20.5362,78.8322,'bars','/cache_location_results/20.5361887_78.8321653_bars.json'),
(20.5362,78.8322,'museum','/cache_location_results/20.5361887_78.8321653_museum.json'),
(22.5722,79.6044,'park','/cache_location_results/22.5721565_79.60438680000001_park.json'),
(22.5722,79.6044,'archeological sites','/cache_location_results/22.5721565_79.60438680000001_archeological sites.json'),
(22.5722,79.6044,'monument','/cache_location_results/22.5721565_79.60438680000001_monument.json'),
(22.5722,79.6044,'temp','/cache_location_results/22.5721565_79.60438680000001_temp.json'),
(22.5722,79.6044,'temple','/cache_location_results/22.5721565_79.60438680000001_temple.json'),
(22.5722,79.6044,'cinema','/cache_location_results/22.5721565_79.60438680000001_cinema.json'),
(22.5722,79.6044,'theatres','/cache_location_results/22.5721565_79.60438680000001_theatres.json'),
(22.5722,79.6044,'beaches','/cache_location_results/22.5721565_79.60438680000001_beaches.json'),
(22.5722,79.6044,'malls','/cache_location_results/22.5721565_79.60438680000001_malls.json'),
(22.5722,79.6044,'bars','/cache_location_results/22.5721565_79.60438680000001_bars.json'),
(22.5722,79.6044,'museum','/cache_location_results/22.5721565_79.60438680000001_museum.json'),
(22.9426,79.2222,'park','/cache_location_results/22.9425664_79.2221629_park.json'),
(22.9426,79.2222,'archeological sites','/cache_location_results/22.9425664_79.2221629_archeological sites.json'),
(22.9426,79.2222,'monument','/cache_location_results/22.9425664_79.2221629_monument.json'),
(22.9426,79.2222,'temp','/cache_location_results/22.9425664_79.2221629_temp.json'),
(22.9426,79.2222,'temple','/cache_location_results/22.9425664_79.2221629_temple.json'),
(22.9426,79.2222,'cinema','/cache_location_results/22.9425664_79.2221629_cinema.json'),
(22.9426,79.2222,'theatres','/cache_location_results/22.9425664_79.2221629_theatres.json'),
(22.9426,79.2222,'beaches','/cache_location_results/22.9425664_79.2221629_beaches.json'),
(22.9426,79.2222,'malls','/cache_location_results/22.9425664_79.2221629_malls.json'),
(22.9426,79.2222,'bars','/cache_location_results/22.9425664_79.2221629_bars.json'),
(22.9426,79.2222,'museum','/cache_location_results/22.9425664_79.2221629_museum.json'),
(24.2009,78.8515,'park','/cache_location_results/24.200858_78.851549_park.json'),
(24.2009,78.8515,'archeological sites','/cache_location_results/24.200858_78.851549_archeological sites.json'),
(24.2009,78.8515,'monument','/cache_location_results/24.200858_78.851549_monument.json'),
(24.2009,78.8515,'temp','/cache_location_results/24.200858_78.851549_temp.json'),
(24.2009,78.8515,'temple','/cache_location_results/24.200858_78.851549_temple.json'),
(24.2009,78.8515,'cinema','/cache_location_results/24.200858_78.851549_cinema.json'),
(24.2009,78.8515,'theatres','/cache_location_results/24.200858_78.851549_theatres.json'),
(24.2009,78.8515,'beaches','/cache_location_results/24.200858_78.851549_beaches.json'),
(24.2009,78.8515,'malls','/cache_location_results/24.200858_78.851549_malls.json'),
(24.2009,78.8515,'bars','/cache_location_results/24.200858_78.851549_bars.json'),
(24.2009,78.8515,'museum','/cache_location_results/24.200858_78.851549_museum.json'),
(25.4591,78.4809,'park','/cache_location_results/25.4591493_78.4809355_park.json'),
(25.4591,78.4809,'archeological sites','/cache_location_results/25.4591493_78.4809355_archeological sites.json'),
(25.4591,78.4809,'monument','/cache_location_results/25.4591493_78.4809355_monument.json'),
(25.4591,78.4809,'temp','/cache_location_results/25.4591493_78.4809355_temp.json'),
(25.4591,78.4809,'temple','/cache_location_results/25.4591493_78.4809355_temple.json'),
(25.4591,78.4809,'cinema','/cache_location_results/25.4591493_78.4809355_cinema.json'),
(25.4591,78.4809,'theatres','/cache_location_results/25.4591493_78.4809355_theatres.json'),
(25.4591,78.4809,'beaches','/cache_location_results/25.4591493_78.4809355_beaches.json'),
(25.4591,78.4809,'malls','/cache_location_results/25.4591493_78.4809355_malls.json'),
(25.4591,78.4809,'bars','/cache_location_results/25.4591493_78.4809355_bars.json'),
(25.4591,78.4809,'museum','/cache_location_results/25.4591493_78.4809355_museum.json'),
(25.9221,78.3213,'park','/cache_location_results/25.9221204_78.32129429999999_park.json'),
(25.9221,78.3213,'archeological sites','/cache_location_results/25.9221204_78.32129429999999_archeological sites.json'),
(25.9221,78.3213,'monument','/cache_location_results/25.9221204_78.32129429999999_monument.json'),
(25.9221,78.3213,'temp','/cache_location_results/25.9221204_78.32129429999999_temp.json'),
(25.9221,78.3213,'temple','/cache_location_results/25.9221204_78.32129429999999_temple.json'),
(25.9221,78.3213,'cinema','/cache_location_results/25.9221204_78.32129429999999_cinema.json'),
(25.9221,78.3213,'theatres','/cache_location_results/25.9221204_78.32129429999999_theatres.json'),
(25.9221,78.3213,'beaches','/cache_location_results/25.9221204_78.32129429999999_beaches.json'),
(25.9221,78.3213,'malls','/cache_location_results/25.9221204_78.32129429999999_malls.json'),
(25.9221,78.3213,'bars','/cache_location_results/25.9221204_78.32129429999999_bars.json'),
(25.9221,78.3213,'museum','/cache_location_results/25.9221204_78.32129429999999_museum.json'),
(26.5129,78.1586,'park','/cache_location_results/26.512872_78.158593_park.json'),
(26.5129,78.1586,'archeological sites','/cache_location_results/26.512872_78.158593_archeological sites.json'),
(26.5129,78.1586,'monument','/cache_location_results/26.512872_78.158593_monument.json'),
(26.5129,78.1586,'temp','/cache_location_results/26.512872_78.158593_temp.json'),
(26.5129,78.1586,'temple','/cache_location_results/26.512872_78.158593_temple.json'),
(26.5129,78.1586,'cinema','/cache_location_results/26.512872_78.158593_cinema.json'),
(26.5129,78.1586,'theatres','/cache_location_results/26.512872_78.158593_theatres.json'),
(26.5129,78.1586,'beaches','/cache_location_results/26.512872_78.158593_beaches.json'),
(26.5129,78.1586,'malls','/cache_location_results/26.512872_78.158593_malls.json'),
(26.5129,78.1586,'bars','/cache_location_results/26.512872_78.158593_bars.json'),
(26.5129,78.1586,'museum','/cache_location_results/26.512872_78.158593_museum.json'),
(27.1036,77.9959,'park','/cache_location_results/27.1036227_77.9958923_park.json'),
(27.1036,77.9959,'archeological sites','/cache_location_results/27.1036227_77.9958923_archeological sites.json'),
(27.1036,77.9959,'monument','/cache_location_results/27.1036227_77.9958923_monument.json'),
(27.1036,77.9959,'temp','/cache_location_results/27.1036227_77.9958923_temp.json'),
(27.1036,77.9959,'temple','/cache_location_results/27.1036227_77.9958923_temple.json'),
(27.1036,77.9959,'cinema','/cache_location_results/27.1036227_77.9958923_cinema.json'),
(27.1036,77.9959,'theatres','/cache_location_results/27.1036227_77.9958923_theatres.json'),
(27.1036,77.9959,'beaches','/cache_location_results/27.1036227_77.9958923_beaches.json'),
(27.1036,77.9959,'malls','/cache_location_results/27.1036227_77.9958923_malls.json'),
(27.1036,77.9959,'bars','/cache_location_results/27.1036227_77.9958923_bars.json'),
(27.1036,77.9959,'museum','/cache_location_results/27.1036227_77.9958923_museum.json'),
(27.2237,78.1206,'park','/cache_location_results/27.2236843_78.120598_park.json'),
(27.2237,78.1206,'archeological sites','/cache_location_results/27.2236843_78.120598_archeological sites.json'),
(27.2237,78.1206,'monument','/cache_location_results/27.2236843_78.120598_monument.json'),
(27.2237,78.1206,'temp','/cache_location_results/27.2236843_78.120598_temp.json'),
(27.2237,78.1206,'temple','/cache_location_results/27.2236843_78.120598_temple.json'),
(27.2237,78.1206,'cinema','/cache_location_results/27.2236843_78.120598_cinema.json'),
(27.2237,78.1206,'theatres','/cache_location_results/27.2236843_78.120598_theatres.json'),
(27.2237,78.1206,'beaches','/cache_location_results/27.2236843_78.120598_beaches.json'),
(27.2237,78.1206,'malls','/cache_location_results/27.2236843_78.120598_malls.json'),
(27.2237,78.1206,'bars','/cache_location_results/27.2236843_78.120598_bars.json'),
(27.2237,78.1206,'museum','/cache_location_results/27.2236843_78.120598_museum.json'),
(27.836,77.8092,'park','/cache_location_results/27.836023_77.809213_park.json'),
(27.836,77.8092,'archeological sites','/cache_location_results/27.836023_77.809213_archeological sites.json'),
(27.836,77.8092,'monument','/cache_location_results/27.836023_77.809213_monument.json'),
(27.836,77.8092,'temp','/cache_location_results/27.836023_77.809213_temp.json'),
(27.836,77.8092,'temple','/cache_location_results/27.836023_77.809213_temple.json'),
(27.836,77.8092,'cinema','/cache_location_results/27.836023_77.809213_cinema.json'),
(27.836,77.8092,'theatres','/cache_location_results/27.836023_77.809213_theatres.json'),
(27.836,77.8092,'beaches','/cache_location_results/27.836023_77.809213_beaches.json'),
(27.836,77.8092,'malls','/cache_location_results/27.836023_77.809213_malls.json'),
(27.836,77.8092,'bars','/cache_location_results/27.836023_77.809213_bars.json'),
(27.836,77.8092,'museum','/cache_location_results/27.836023_77.809213_museum.json'),
(28.4484,77.4978,'park','/cache_location_results/28.4483624_77.4978273_park.json'),
(28.4484,77.4978,'archeological sites','/cache_location_results/28.4483624_77.4978273_archeological sites.json'),
(28.4484,77.4978,'monument','/cache_location_results/28.4483624_77.4978273_monument.json'),
(28.4484,77.4978,'temp','/cache_location_results/28.4483624_77.4978273_temp.json'),
(28.4484,77.4978,'temple','/cache_location_results/28.4483624_77.4978273_temple.json'),
(28.4484,77.4978,'cinema','/cache_location_results/28.4483624_77.4978273_cinema.json'),
(28.4484,77.4978,'theatres','/cache_location_results/28.4483624_77.4978273_theatres.json'),
(28.4484,77.4978,'beaches','/cache_location_results/28.4483624_77.4978273_beaches.json'),
(28.4484,77.4978,'malls','/cache_location_results/28.4483624_77.4978273_malls.json'),
(28.4484,77.4978,'bars','/cache_location_results/28.4483624_77.4978273_bars.json'),
(28.4484,77.4978,'museum','/cache_location_results/28.4483624_77.4978273_museum.json'),
(28.7041,77.1024,'park','/cache_location_results/28.7040873_77.1024072_park.json'),
(28.7041,77.1024,'archeological sites','/cache_location_results/28.7040873_77.1024072_archeological sites.json'),
(28.7041,77.1024,'monument','/cache_location_results/28.7040873_77.1024072_monument.json'),
(28.7041,77.1024,'temp','/cache_location_results/28.7040873_77.1024072_temp.json'),
(28.7041,77.1024,'temple','/cache_location_results/28.7040873_77.1024072_temple.json'),
(28.7041,77.1024,'cinema','/cache_location_results/28.7040873_77.1024072_cinema.json'),
(28.7041,77.1024,'theatres','/cache_location_results/28.7040873_77.1024072_theatres.json'),
(28.7041,77.1024,'beaches','/cache_location_results/28.7040873_77.1024072_beaches.json'),
(28.7041,77.1024,'malls','/cache_location_results/28.7040873_77.1024072_malls.json'),
(28.7041,77.1024,'bars','/cache_location_results/28.7040873_77.1024072_bars.json'),
(28.7041,77.1024,'museum','/cache_location_results/28.7040873_77.1024072_museum.json');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `s_lat` float DEFAULT NULL,
  `s_long` float DEFAULT NULL,
  `d_lat` float DEFAULT NULL,
  `d_long` float DEFAULT NULL,
  `route` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES
(17.4461,78.3492,28.7041,77.1025,'[[17.446328, 78.3489676], [17.4469201, 78.3495045], [18.5440264, 78.242164], [18.5440264, 78.242164], [19.540108, 78.537165], [20.5361887, 78.8321653], [22.5721565, 79.60438680000001], [22.9425664, 79.2221629], [24.200858, 78.851549], [25.4591493, 78.4809355], [25.9221204, 78.32129429999999], [26.512872, 78.158593], [27.1036227, 77.9958923], [27.2236843, 78.120598], [27.836023, 77.809213], [28.4483624, 77.4978273], [28.7040873, 77.1024072]]');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 11:37:05
