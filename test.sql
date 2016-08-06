-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `postedDate` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Tt21','content or ost 1','2016-08-06 00:00:00',0,0,1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `registeredDate` datetime NOT NULL,
  `imageNeme` varchar(255) NOT NULL,
  `imageData` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user5','usr5','user5','user5@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,0,'2016-08-06 16:45:13','def.jpg','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\r(,&1\'\Z-1\"%57:..\"38:.7(-2+\n\n\n\r\r\r\r\r-++++++-++-+++++++++++++++++-++++++++++++++++++++++ÿÀ\0\0f\0f\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\09\0\0\0\0\0\0\0!1Qaq‘\"2ARr±Cb¡BÁ\Â\Ññ3‚’“¢ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0?\0¼b\"\" ~]Â‚\Ì@\0jI:\0Y\'\Ý9¼­õ\ÆJƒ\ä{¸«\0&¿3¯\ÓY\Äo\îò>FCb£iEMÀ\Ê?6\á\í\í¨\ÐL\ÓÃ·A¹ñ¡õñXÔ±\é\à@û\ÉÝ·±òô/«/·[_?yX]w)vm”Ú·\Ò\Å,Cª°ý\Ôöƒ\ï/\è‘«¶—3\Z¼8Il_‚\Õ:2ÿ\0n\â$¼D@DDD@Oöj\íLÅ¢›o`H®§µ€\ë!T±\Ê\ÏKa6;\Ì\Ú\ìOi.I2W\é\ÎU‘©-Õ«Ó¯MNºI\no•6_\ÊDg<ý½óG&\ØŸB\äþñü?‰\Ô\Õ\è\×_\é–­º\ÚH\ÔÝŠ‡K}3±\ÓF€<8D²dR\" \"\"\" &\ìU¶·¥½—­«o•”©û\Ìñ\æM­±ò0¬4ÞŒº3*9UHõÓ´ssy\Ý\é«fzL4\ÈÖ¦\Ñÿ\0[ú¬<ø<¥$Ê‰6È˜\Ë I\ÐÌ–=@|\Ó6\Òôk³ý>Ò¡H\ÕQŽCxV5_ýp@³: \Ý\Û1±\Þû•’\ËßˆV\à«%K\Éx\æ	\æt=Ó¿ˆ‘Hˆ€ˆˆˆ€ˆˆûßˆ-\ÂÉ¬û\èv2¯ýÀŸ:\ç\á„<ùw\Ë\ï|7ŠŠ©¶‘`k\Z³_ó\á\â\Z\Äur\'”¥vÅªy@‚\nŸpù\Ë7¡lUüM\Ï\ï\\pûŸŸ\ØJÁ4\Öw½\ïX—³Û¨G¨VYG\Ô;:\åœM]Ÿ´i½x\éµ-^\Ô \è{÷xµ DDD@DN[¤-\â8xÞ¡\Ò\ÛO£«µyz\Ïô\Z}Hµ·w»”-\é,•^„˜õ,\à¶\Þú\äßª‚(O‚²u#õ7_–“Ž[Y$“Ì“Ì“\Úf+o2\Þvodç²²	3s(“\"\íC\ÙÁd’\Â\È\ÒE\n\Ïd\Ú\ÇS­Ù™\ïY[µmñ!#ü\Î\×dt‰zh¹._}G¿\Üß´¬1\ì\"oW‘ÿ\0Ø»s)x©°6ž\ÒNž+ü\ä”ù\ßiÛb\äR\Ü.§^\æõa\ï_[i&M\ä§S m;©—\èAIôD@Jc¥\Ü\Þ<\ä«^UP4­Î¬|‚yK˜\Ê\Ç7Ü‹›*›=v\02?²t\Z\r\ê]Ú³6fÀÎ§•˜\ï§Äš8ý¤FC‘\í¾ ¼£5ù#²hÙ‘\Ý1[lÀl³øŽéš¬ž\é\é\'\í,M\Õx\ì›5²™\rM²O\Z\ë9WUò©2¶\ÓIkt9•Å‰eZÿ\0§\Ü=\Ê\à6ž|^sÙ›ŸvœJ)^\Ö!ŽžZ›‘»ƒ[(vr\ì\Ëi\í \Ð©O<\Òx\Ë<ˆ-\ÂF\ëF\ån\æ;ûH§\Äk+£\Ì\ë¥<´ûHËº*À?Á§ƒX>\Æ\"5\è£\á?ó·û\Í\Ì~Œpò”ø\ê\ßxˆ›—‰_³R_dTJD\rÔ ¡2<ˆ\Ïb ÿ\Ù');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-06 16:55:21
