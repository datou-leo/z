/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - news
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`news` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `news`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values (1,'admin','0c360428dc0d51543578ac7c6857ad55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `newsid` int(20) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(200) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newstype` varchar(200) NOT NULL,
  `newstime` date NOT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`newsid`,`newstitle`,`newsimg`,`newstype`,`newstime`) values (4,'美食aaa','9dfac0bbfd74671fa854a8fcc00ea81c.jpg','精选','2017-06-08'),(5,'美食','4690208c598ac20d311f926eb4bf0b35.jpg','百家','2017-06-08'),(6,'美食','d58898fa412c43d094ab6ae243830edc.jpg','百家','2017-06-08'),(7,'美食','b861a56649ac87eef5562eca2fce72da.jpg','本地','2017-06-08'),(8,'美食','105639dda32657c3b517c6886ed3a64c.jpg','百家','2017-06-08'),(9,'美食','97deb67429d92b0b63fa8556a2a7a182.jpg','精选','2017-06-08'),(10,'美食','cd626ceb520f2e8544245b5263b839fc.jpg','精选','2017-06-08'),(11,'美食','c0dc000545525676eb3bfb10a7181066.jpg','百家','2017-06-08'),(12,'美食','26a010c67a8294df30b41847028c48f6.jpg','精选','2017-06-08'),(13,'美食','5c444214eb2f6f76603f13fac74d6e93.jpg','精选','2017-06-08'),(14,'美食','726f880defe7a408ce69ac7ceb0e9581.jpg','百家','2017-06-08'),(15,'美食','54a6c3a3fdacd52be4cfa78223d56ddf.jpg','精选','2017-06-08'),(16,'美食','335a19dc2e98f6d7fa6d58f728321ed8.jpg','精选','2017-06-08'),(17,'美食','fa3616b39d7034df8cf7eccd723f7fd5.jpg','精选','2017-06-08'),(19,'旅游','0ef5cdf4dd6ed5ebb7543ebe3a6c184c.jpg','百家','0000-00-00'),(20,'旅游','7f2c2acb4b01b2b62847a7dc59145275.jpg','本地','2017-06-14'),(21,'做饭','51a717db38180c9031f2006f107d653f.jpg','本地','2017-06-09'),(25,'读书','42251403975c6ef30a890845901bdc5e.jpg','本地','2017-06-09'),(27,'画画','41074b13567e92537469f564babb10e4.jpg','本地','2017-06-08'),(28,'去西藏','4bc1b10ec12b1607025ab82e2fe393e7.jpg','百家','2017-06-15'),(29,'成都','b217ad925ea862284b30ae1b2e7190db.jpg','本地','2017-06-21'),(30,'重庆','45b4194c553309d672b8830fba9e6265.jpg','本地','2017-06-15'),(31,'音乐','1c9560012837a56aea95fba5e50d4b88.jpg','百家','2017-06-08'),(32,'精选','187aa79a5005664e76823ad01603404e.jpg','精选','2017-06-15'),(33,'精选3','ea770ab3e7e4c6a38ec0b4ef83d147e0.jpg','精选','2017-06-14'),(34,'精选2','133e0626e4f2beeb452730b543dfe63f.jpg','精选','2017-06-14'),(35,'百家','5799faf7e8503e07580d543c90aa7d18.jpg','百家','2017-06-14'),(36,'百家2','2e4e1ebb660ee60cb733fe3e7829edca.jpg','百家','2017-06-14'),(37,'百家','54f79fe1629d03fad90fc020190ee652.jpg','百家','2017-06-14'),(38,'本地','4d91fc38a4fe0b7094ddbd88c99ebf6a.jpg','本地','2017-06-14'),(39,'本地','dc4910e0d4235a432ba3afd29f8f2a60.jpg','本地','2017-06-14'),(41,'百家','1512e66051e808a3963dccfec74262b4.jpg','百家','2017-06-14'),(42,'百家','c0934ed2bbd615d55a01834c49591c23.jpg','百家','2017-06-22'),(43,'本地','35323e191dc42d2f05c45015fdc0cab0.jpg','本地','2017-06-07'),(44,'本地','7c17b6f9c88af80779f0808842920cda.jpg','本地','2017-06-16'),(46,'本地','1c125df18cc1c35eb1e7823908bba47b.jpg','本地','2017-06-09'),(47,'精选4','0591eb974f0ea05eae8a45dd5a9a8974.jpg','精选','2017-06-15'),(48,'精选5','7086f868d0b08fdda07d93060413645b.jpg','精选','2017-06-15'),(49,'精选6','6a9bac443c62ca5d9fba71e3c816f16a.jpg','精选','2017-06-15'),(50,'精选7','72ebe7758ab0afdd408783b85bc32fd5.jpg','精选','2017-06-15'),(51,'本地4','eb4574e408e8b46203e358f100d26003.jpg','本地','2017-06-15'),(52,'本地5','f319d423771f1b945bfaacaa6a896c90.jpg','本地','2017-06-15'),(53,'本地6','37845dca3bcfc895fd9cd7625ee6a2d1.jpg','本地','2017-06-15'),(54,'百家4','35204f3f1aff177ab2b7e5aab53f477a.jpg','百家','2017-06-15'),(55,'百家4','3ce56f34b9f3ac84706778511637c3f5.jpg','百家','2017-06-15'),(56,'百家5','580764f4056c37a0079ddf87729ef6b4.jpg','百家','2017-06-15'),(57,'百家6','0d103512dc321ac47d1271ca0813f0d8.jpg','百家','2017-06-15'),(58,'百家7','6eb9547b264c2c3b0b142c08b5938550.jpg','百家','2017-06-15'),(59,'本地杭州江干','7ab9cb650ce4e32997c782b1531ebf27.jpg','本地','2018-07-07'),(60,'本地武汉zzz','a66a2b9385a7d6ebf835dab70a03d41c.jpg','本地','2018-07-07'),(61,'本地杭州','e5bf0295d6ef24277d27808dbccf2aa8.jpg','本地','2018-07-25'),(62,'美食','06ac35deb816f495a14f88d3cf68ef92.jpg','本地','2018-07-27'),(63,'苏州','7be066b26d6ca3503d1e5983765347b7.jpg','本地','2018-07-27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
