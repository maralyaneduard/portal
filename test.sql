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
INSERT INTO `user` VALUES (1,'user5','usr5','user5','user5@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,0,'2016-08-06 16:45:13','def.jpg','�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r(,&1\'\Z-1\"%57:..\"38:.7(-2+\n\n\n\r\r\r\r\r-++++++-++-+++++++++++++++++-++++++++++++++++++++++��\0\0f\0f\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\09\0\0\0\0\0\0\0!1Qaq�\"2ARr��Cb�B�\�\��3�����\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0�b\"\" ~]\�@\0jI:\0Y\'\�9���\�J�\�{��\0&�3�\�Y\�o\��>FCb�iEM�\�?6\�\�\��\�L\�÷A����XԱ\�\�@�\�ݍ����/�/�[_?yX]w)vm�ڷ\�\�,C���\���\�/\����3\Z��8Il_�\�:2�\0n\�$�D@DDD@O�j\�LŢ�o`H����\�!T�\�\�Ka6;\�\�\�Oi.I2W\�\�U��-իӯMN�I\no�6_\�Dg<���G&\��B\����?�\�\�\�\�_\���\�H\�݊�K}3�\�F�<8D�dR\" \"\"\" &\�U�������o����\��\�M���0�4ތ�3*9UH�Ӵssy\�\�fzL4\�֦\��\0[��<�<�$ʉ6Ș\��I\�̖=@|\�6\��k��>ҡH\�Q�CxV5_�p@�: \�\�1�\����\�߈V\�%K\�x�\�	\�t=ӿ��H���������߈-\�ɬ�\�v2����:\�\�<�w\�\�|7�����`k\Z�_�\�\�\Z\�ur\'��vŪy@�\n�p�\�7�lU�M\�\�\\p���\�J�4\�w�\�X��ۨG�VYG\�;:\��M]��i�x\�-^\� \�{�x� DDD@DN[�-\�8xޡ\�\�O���yz\��\Z}H���w��-\�,�^����,\�\��\�ߪ�(O��u#�7_���[�Y$�̓̓\�f+o2�\�vod粲	3s(�\"\�C\��d�\�\�\�E\n\�d\�\�S�ٙ\�Y[�m�!#�\�\�dt�zh�._�}G�\�ߴ�1\�\"oW��\0ػs)x��6�\�N�+�\��\�iۏb\�R\�.�^\��a\�_[i&M\�S�m;��\�AI�D@Jc�\�\�<\�^UP4�ά|�yK�\�\�7܋�*�=v\02?�t\Z\r\�]ڳ6f�Χ��\�Ě8��FC�\�� ���5�#�hّ\�1[l�l����隬�\�\�\'\�,�M\�x\�5��\rM�O\Z\�9WU��2��\�Ikt9�ŉeZ�\0��\�=\�\�6�|^s�ٛ��v�J)^\�!��Z����[(vr\�\�i\��\��O<\�x\�<�-\�F\�F\�n\�;�H�\�k+�\�\�<��H˺*�?���X>\�\"5\�\�?��\�\�~�p��\�\�x����_�R_dT�JD\rԠ�2�<�\�b �\�');
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
