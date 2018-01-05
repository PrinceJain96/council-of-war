/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - notice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`notice` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `notice`;

/*Table structure for table `meting` */

DROP TABLE IF EXISTS `meting`;

CREATE TABLE `meting` (
  `nid` int(5) NOT NULL auto_increment,
  `ntopic` char(20) default NULL,
  `ntext` char(50) default NULL,
  `placeid` int(5) default NULL,
  `iid` int(5) default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `meting` */

insert  into `meting`(`nid`,`ntopic`,`ntext`,`placeid`,`iid`,`date`) values (1,'Global Waing','This will be related to most heating topic in the',1,1,'0000-00-00'),(2,'Bitcoin','This will related to most expensive currency',1,2,NULL),(3,'AI','Discusion will be based on latest technology \"Arti',1,2,NULL),(4,'e','weqw',NULL,2,NULL),(5,'','',NULL,2,NULL);

/*Table structure for table `place` */

DROP TABLE IF EXISTS `place`;

CREATE TABLE `place` (
  `pid` int(5) NOT NULL auto_increment,
  `pname` char(20) default NULL,
  `padr` char(20) default NULL,
  `ac` int(2) default NULL,
  `charge` int(5) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `place` */

insert  into `place`(`pid`,`pname`,`padr`,`ac`,`charge`) values (1,NULL,'qq',NULL,122),(2,NULL,'qq',NULL,122),(3,NULL,'1',NULL,122),(4,NULL,'q',NULL,122),(5,NULL,'2',NULL,122);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(5) NOT NULL auto_increment,
  `uname` char(20) default NULL,
  `utype` int(2) default NULL,
  `upass` varchar(10) default NULL,
  `mob` char(12) default NULL,
  `adr` varchar(20) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`uname`,`utype`,`upass`,`mob`,`adr`) values (1,'admin',1,'abc',NULL,NULL),(2,'init',2,'abc',NULL,NULL),(3,'user',0,'abc',NULL,NULL),(4,'1',2,'1','1',NULL),(5,'1',2,'1','1',NULL),(6,'1',0,'1','1',NULL),(7,'1',0,'1','1',NULL),(8,'1',0,'1','1',NULL),(9,'1',0,'11','1',NULL),(10,'1',0,'11','1',NULL),(11,'q',0,'1','1',NULL),(12,'1',0,'1','1',NULL),(13,'11',2,'1','1',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
