/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.8-log : Database - handicraft
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`handicraft` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `handicraft`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `catid` bigint(50) NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`catid`,`catname`) values (8,'Paper'),(9,'Plastic');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`f_id`,`user_id`,`subject`,`description`) values (1,'7','Test Sub','Test Description ....'),(2,'7','Test Sub1 ','Test Description 2....');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `l_id` int(20) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'approved',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`l_id`,`reg_id`,`email`,`password`,`type`,`status`) values (0,'0','admin@gmail.com','admin','ADMIN','approved'),(33,'7','aji@gmail.com','123','USER','approved'),(34,'8','meenu@gmail.com','123','USER','approved'),(35,'3','lcccekm@gmail.com','123','SHOP','Approved'),(36,'4','lcc@gmail.com','123','SHOP','Approved');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  `sphone` varchar(100) DEFAULT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

insert  into `shop`(`s_id`,`sname`,`sphone`,`saddress`,`semail`,`photo`) values (3,'lcc cochin','8876373332','3rd Floor, Darmodhayam Building,, Shanmugham Road, Marine Drive, Kochi, Kerala 682031','lcccekm@gmail.com','gift2.jpg'),(4,'Lcc Alwaye','7673839393','2nd Floor, Gold Fort Building, Bye Pass Junction, Aluva, Kerala 683101','lcc@gmail.com','gifth1.jpg');

/*Table structure for table `tb_cart` */

DROP TABLE IF EXISTS `tb_cart`;

CREATE TABLE `tb_cart` (
  `cart_id` int(100) NOT NULL AUTO_INCREMENT,
  `cusid` varchar(100) DEFAULT NULL,
  `centerid` varchar(100) DEFAULT NULL,
  `itemid` varchar(100) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT 'USER',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `tb_cart` */

insert  into `tb_cart`(`cart_id`,`cusid`,`centerid`,`itemid`,`item`,`date`,`status`,`usertype`) values (27,'7','4','16','Paper Ball','2022/Sep/22','Paid','USER'),(29,'7','4','17','Plastic  Bottile','2022/Sep/23','incart','USER');

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `productcode` bigint(50) NOT NULL AUTO_INCREMENT,
  `centerid` int(100) DEFAULT NULL,
  `productname` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `price` bigint(100) NOT NULL,
  `warranty` varchar(100) NOT NULL,
  `features` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stocks` varchar(100) DEFAULT '0',
  PRIMARY KEY (`productcode`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tb_product` */

insert  into `tb_product`(`productcode`,`centerid`,`productname`,`category`,`brand`,`price`,`warranty`,`features`,`image`,`stocks`) values (16,4,'Paper Ball','Paper','nobrand',100,'nowarranty','lite weight and beautiful','smile.jpg','1'),(17,4,'Plastic  Bottile','Plastic','nobrand',150,'nowarranty','awsome ','bottile.jpg','5');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(40) NOT NULL,
  `uemail` varchar(40) NOT NULL,
  `uaddress` varchar(40) NOT NULL,
  `uphoneno` varchar(40) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`uname`,`uemail`,`uaddress`,`uphoneno`) values (7,'Ajin','aji@gmail.com','NH966A, Mulavukad, Kochi, Kerala 682504','9865637372'),(8,'Meenu','meenu@gmail.com','X7VW+6V7, Kaloor, test, Kerala 682017','9845356322');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
