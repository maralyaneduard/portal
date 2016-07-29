-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: hibtest
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Id` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `LastUpdatedDate` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'category 2','category2 description','2010-05-11'),(3,'category 3','new category','2004-05-11');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MessageText` varchar(255) NOT NULL,
  `Rating` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `categoryId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_user_id` (`userId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (6,'test text',5,'2014-07-11',24,2),(7,'test tex5456456t',8,'2014-07-11',26,3),(8,'new message',20,'2014-07-11',26,3),(9,'new test message',0,'2016-07-15',NULL,2),(10,'new test message',4,'2016-07-15',24,2),(11,'message 4',1,'2016-07-15',24,2),(12,'message 18',-2,'2016-07-15',24,2),(13,'user message',5,'2016-07-15',26,2),(14,'user message 1',8,'2016-07-15',26,3),(15,'test test',28,'2016-07-15',26,3),(16,'message',0,'2016-07-15',26,2);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` longtext NOT NULL,
  `postedDate` date NOT NULL,
  `status` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `userId` (`userId`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (7,'test2','content a lot of text text text 15132132465','2016-01-11',2,-7,37),(9,'post 4.11','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2016-07-28',0,0,37),(10,'user5 pos','user 5 post','2016-07-28',1,1,38);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `role` int(11) DEFAULT '0',
  `registeredDate` datetime DEFAULT NULL,
  `lastloginDate` datetime DEFAULT NULL,
  `imageNeme` varchar(255) NOT NULL DEFAULT 'def.jpg',
  `imageData` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (24,'SuperAdmin','Adminsky','admin@gmail.com','admin@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,'2016-02-20 01:37:18',NULL,'def.jpg',NULL),(25,'Diana','Admin','diana@gmail.com','diana@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,'2016-02-20 01:37:49',NULL,'def.jpg',NULL),(26,'Markos','User','user@gmail.com','user@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,0,'2016-02-20 01:38:28',NULL,'def.jpg',NULL),(27,'Arnold','User','arnold@gmail.com','arnold@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,0,'2016-02-20 01:38:54',NULL,'def.jpg',NULL),(28,'Bernard','Usersky','bernard@gmail.com','bernard@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,0,'2016-02-20 01:39:28',NULL,'def.jpg',NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-07-21 16:12:48',NULL,'def.jpg',NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-07-21 16:12:59',NULL,'def.jpg',NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-07-21 16:17:51',NULL,'def.jpg',NULL),(32,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-07-21 16:40:05',NULL,'def.jpg',NULL),(33,'admin','admin','admin123','admin123@mail.ru','123456',NULL,0,'2016-07-21 16:46:45',NULL,'def.jpg',NULL),(37,'fileupload1','fileopload','fileuploadtest','admin011@mail.ru','e10adc3949ba59abbe56e057f20f883e',NULL,0,'2016-07-25 17:52:25',NULL,'def.jpg','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0߁\�\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0\"iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5.1 Windows\" xmpMM:InstanceID=\"xmp.iid:82559B430A9011E59BBD8C2912769284\" xmpMM:DocumentID=\"xmp.did:82559B440A9011E59BBD8C2912769284\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:82559B410A9011E59BBD8C2912769284\" stRef:documentID=\"xmp.did:82559B420A9011E59BBD8C2912769284\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>\"�f\�\0\0\0PLTE���\�\�\�\�\�\�\�\�\�\�\�\�\�\�ñ��\�\�\�\�@X\0\0\�IDATx\�\�\�Iv#!\0P���7n\�q\'5@�\�)\�^� !DA\�䀛u�n\�ͺY7\�f}0�� \0\�5X\�O\�v(\�g\���\Z sYC�`4�E)\�\�\�I,\�p9g�Bf\0���	fg����Y\\�j����!x��,-eudQ(\�\�R+�\�2YMa�q�\�F���F�Y�\��|�삁1l�\"[�M5\�\�b;�X�1,q`�\�\Zˢ��X\�ҏ)�k�\\�Ds_\�\�AP��Ɔ�0\�Vl����\�X\�X\�\r�\n .\�\�ڤʪO�r�ɢ:�fᚳU�\\8�U�\\:�ʋ_-,�iO�\�h-\��\�\�+X.m �\�\�<����\�am\�g�e8�\�-W�6�8,\�\n�D\�\�B�t��ߒē\�÷�*���5��՗Ek��\�A<|Y��Q�YE�\��X�f�y��\�Y�~�Tɺޱ�Ë\�*\�U�\�yoӬ�/)qd����\�3\�~�C��\�Y�\r�?q}��bK�4�\\}X\�Й�\�돛�u,�,U\�y��`�K;߾F6\�\�\�R\�\�J��8\���\'��U��<֭ca*@ܩ��LJ�q��:\�Ɗ\'\�M���R%�,�\�E�񬪓�\�?��O��]W��\��a}\��k\�WկTˬ�\�Su�\�\n\�4;K\"�J\�=v�t�Y\�Y$4�\��*\��q�\�\�6��\�\�VJB\�\�V��\�vU\�e��\�X\�\�Cu�c1\�Y�\�tM\�GujY�+;\�\�\��A\�vS\�z�K)\�\�Uuc	\���\�&:��$(�\�+hx\������2\�\�\�	Y�\�U��.(H�w����\��R\�\�\�$�jwV\��I�^w\�LzΝ�V\�j�}��\�\�\0����+S\�\���g�������\�%�#\�\�uש�3Y8^��\\P�u�:v\n�9�&�pa2K�?&\�f)B�N>	�[��\�\�\��%>,N�4\�K�m��\�\��\�0\�\��/ى�[! Cv�\�&\�!�ɭh\�r2W\�\�\�\�N�SK]c���p}\�K~E+\�O\�}�,`�\�,���͒hj\�l\�b�a9��\�\�Kc��\�\�;�?�\0�G>Ll_L\0\0\0\0IEND�B`�'),(38,'user','last name','User5','user@mail.ru','e10adc3949ba59abbe56e057f20f883e',NULL,0,'2016-07-28 16:20:01',NULL,'def.jpg','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0߁\�\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0\"iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5.1 Windows\" xmpMM:InstanceID=\"xmp.iid:82559B430A9011E59BBD8C2912769284\" xmpMM:DocumentID=\"xmp.did:82559B440A9011E59BBD8C2912769284\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:82559B410A9011E59BBD8C2912769284\" stRef:documentID=\"xmp.did:82559B420A9011E59BBD8C2912769284\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>\"�f\�\0\0\0PLTE���\�\�\�\�\�\�\�\�\�\�\�\�\�\�ñ��\�\�\�\�@X\0\0\�IDATx\�\�\�Iv#!\0P���7n\�q\'5@�\�)\�^� !DA\�䀛u�n\�ͺY7\�f}0�� \0\�5X\�O\�v(\�g\���\Z sYC�`4�E)\�\�\�I,\�p9g�Bf\0���	fg����Y\\�j����!x��,-eudQ(\�\�R+�\�2YMa�q�\�F���F�Y�\��|�삁1l�\"[�M5\�\�b;�X�1,q`�\�\Zˢ��X\�ҏ)�k�\\�Ds_\�\�AP��Ɔ�0\�Vl����\�X\�X\�\r�\n .\�\�ڤʪO�r�ɢ:�fᚳU�\\8�U�\\:�ʋ_-,�iO�\�h-\��\�\�+X.m �\�\�<����\�am\�g�e8�\�-W�6�8,\�\n�D\�\�B�t��ߒē\�÷�*���5��՗Ek��\�A<|Y��Q�YE�\��X�f�y��\�Y�~�Tɺޱ�Ë\�*\�U�\�yoӬ�/)qd����\�3\�~�C��\�Y�\r�?q}��bK�4�\\}X\�Й�\�돛�u,�,U\�y��`�K;߾F6\�\�\�R\�\�J��8\���\'��U��<֭ca*@ܩ��LJ�q��:\�Ɗ\'\�M���R%�,�\�E�񬪓�\�?��O��]W��\��a}\��k\�WկTˬ�\�Su�\�\n\�4;K\"�J\�=v�t�Y\�Y$4�\��*\��q�\�\�6��\�\�VJB\�\�V��\�vU\�e��\�X\�\�Cu�c1\�Y�\�tM\�GujY�+;\�\�\��A\�vS\�z�K)\�\�Uuc	\���\�&:��$(�\�+hx\������2\�\�\�	Y�\�U��.(H�w����\��R\�\�\�$�jwV\��I�^w\�LzΝ�V\�j�}��\�\�\0����+S\�\���g�������\�%�#\�\�uש�3Y8^��\\P�u�:v\n�9�&�pa2K�?&\�f)B�N>	�[��\�\�\��%>,N�4\�K�m��\�\��\�0\�\��/ى�[! Cv�\�&\�!�ɭh\�r2W\�\�\�\�N�SK]c���p}\�K~E+\�O\�}�,`�\�,���͒hj\�l\�b�a9��\�\�Kc��\�\�;�?�\0�G>Ll_L\0\0\0\0IEND�B`�');
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

-- Dump completed on 2016-07-29 10:03:02
