-- MySQL dump 10.11
--
-- Host: localhost    Database: domotiga
-- ------------------------------------------------------
-- Server version	5.0.75-0ubuntu10.2

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

CREATE DATABASE domotiga;
GRANT ALL ON domotiga.* TO domouser@localhost IDENTIFIED BY 'kung-fu';
USE domotiga;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `actions` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `type` int(11) default NULL,
  `description` text,
  `param1` varchar(32) default NULL,
  `param2` varchar(32) default NULL,
  `param3` varchar(32) default NULL,
  `param4` varchar(32) default NULL,
  `param5` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'Switch Porch Light On',1,NULL,'1','Value1','On','',''),(2,'Switch Porch Light Off',1,NULL,'1','Value1','Off','',''),(3,'Switch Kitchen Light On',1,NULL,'44','Value1','On','',''),(6,'Set Ventilation to High Speed',1,NULL,'29','Value1','3','',''),(5,'Switch Kitchen Light Off',1,NULL,'44','Value1','Off','',''),(7,'Set Ventilation to Normal Speed',1,NULL,'29','Value1','1','','');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actiontypes`
--

DROP TABLE IF EXISTS `actiontypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `actiontypes` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `tab` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `actiontypes`
--

LOCK TABLES `actiontypes` WRITE;
/*!40000 ALTER TABLE `actiontypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `actiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bwired_devices`
--

DROP TABLE IF EXISTS `bwired_devices`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bwired_devices` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `description` varchar(64) default NULL,
  `devicename` varchar(32) default NULL,
  `deviceid` int(11) default NULL,
  `devicelabel` varchar(16) default NULL,
  `value` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bwired_devices`
--

LOCK TABLES `bwired_devices` WRITE;
/*!40000 ALTER TABLE `bwired_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwired_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_camera0`
--

DROP TABLE IF EXISTS `capture_camera0`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `capture_camera0` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `stamp` datetime default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `capture_camera0`
--

LOCK TABLES `capture_camera0` WRITE;
/*!40000 ALTER TABLE `capture_camera0` DISABLE KEYS */;
INSERT INTO `capture_camera0` VALUES (1,'2008-11-05 12:42:30',''),(2,'2008-11-13 16:55:05',''),(3,'2008-11-13 16:57:06',''),(4,'2008-11-13 17:16:06',''),(5,'2008-11-13 17:25:05',''),(6,'2008-11-13 19:30:17',''),(7,'2008-11-13 19:30:20',''),(8,'2008-11-13 19:30:22',''),(9,'2008-11-13 19:30:25',''),(10,'2008-11-13 19:30:27',''),(11,'2008-11-14 00:21:06',''),(12,'2008-11-14 09:33:06',''),(13,'2008-11-14 13:30:07',''),(14,'2008-11-15 13:38:29',''),(15,'2008-11-15 13:46:29','');
/*!40000 ALTER TABLE `capture_camera0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_camera1`
--

DROP TABLE IF EXISTS `capture_camera1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `capture_camera1` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `stamp` datetime default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `capture_camera1`
--

LOCK TABLES `capture_camera1` WRITE;
/*!40000 ALTER TABLE `capture_camera1` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_camera1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_camera2`
--

DROP TABLE IF EXISTS `capture_camera2`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `capture_camera2` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `stamp` datetime default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `capture_camera2`
--

LOCK TABLES `capture_camera2` WRITE;
/*!40000 ALTER TABLE `capture_camera2` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_camera2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_camera3`
--

DROP TABLE IF EXISTS `capture_camera3`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `capture_camera3` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `stamp` datetime default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `capture_camera3`
--

LOCK TABLES `capture_camera3` WRITE;
/*!40000 ALTER TABLE `capture_camera3` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture_camera3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default 'unknown',
  `target` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Milch',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cdr` (
  `calldate` datetime NOT NULL default '0000-00-00 00:00:00',
  `clid` varchar(80) default NULL,
  `src` varchar(80) default NULL,
  `dst` varchar(80) default NULL,
  `dcontext` varchar(80) default NULL,
  `channel` varchar(80) default NULL,
  `dstchannel` varchar(80) default NULL,
  `lastapp` varchar(80) default NULL,
  `lastdata` varchar(80) default NULL,
  `duration` int(11) NOT NULL default '0',
  `billsec` int(11) NOT NULL default '0',
  `disposition` varchar(45) default NULL,
  `amaflags` int(11) NOT NULL default '0',
  `accountcode` varchar(20) default NULL,
  `userfield` varchar(255) default NULL,
  `uniqueid` varchar(32) default NULL,
  `id` bigint(20) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES ('2008-09-03 16:31:05','0123401234','0123401234','s','incoming','Zap/3-1','Zap/1-1','Dial','Zap/1',92,0,'NO ANSWER',3,'',NULL,NULL,5),('2008-09-03 18:59:54','0123401234','0123401234','s','incoming','Zap/3-1','Zap/1-1','Dial','Zap/1',772,753,'ANSWERED',3,'',NULL,NULL,11),('2008-09-30 20:49:55','0000000000','0000000000','s','incoming','Zap/3-1','Zap/1-1','Dial','Zap/1',31,0,'NO ANSWER',3,'',NULL,NULL,38);
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `conditions` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `type` int(11) default NULL,
  `description` text,
  `param1` varchar(32) default NULL,
  `param2` varchar(32) default NULL,
  `param3` varchar(32) default NULL,
  `param4` varchar(32) default NULL,
  `param5` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
INSERT INTO `conditions` VALUES (1,'It\'s Dark Outside',2,NULL,'Dark','=','True','','');
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditiontypes`
--

DROP TABLE IF EXISTS `conditiontypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `conditiontypes` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `tab` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `conditiontypes`
--

LOCK TABLES `conditiontypes` WRITE;
/*!40000 ALTER TABLE `conditiontypes` DISABLE KEYS */;
INSERT INTO `conditiontypes` VALUES (1,'Time Now',0),(2,'Variable',1),(3,'Device Status',2);
/*!40000 ALTER TABLE `conditiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `address` varchar(32) default NULL,
  `zipcode` varchar(11) default NULL,
  `city` varchar(32) default NULL,
  `country` varchar(32) default NULL,
  `phoneno` varchar(32) default NULL,
  `mobileno` varchar(32) default NULL,
  `email` varchar(32) default NULL,
  `cidphone` varchar(32) default NULL,
  `cidmobile` varchar(32) default NULL,
  `birthday` datetime default NULL,
  `holidaycard` tinyint(1) default NULL,
  `comments` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ron Klinkien','','1234AB','Sliedrecht','The Netherlands','0123401234','','cyberjunkynl@gmail.com','Author','','1966-09-15 00:00:00',1,'I have to Donate some to this guy!');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deviceblacklist`
--

DROP TABLE IF EXISTS `deviceblacklist`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `deviceblacklist` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `address` varchar(64) default NULL,
  `comments` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `deviceblacklist`
--

LOCK TABLES `deviceblacklist` WRITE;
/*!40000 ALTER TABLE `deviceblacklist` DISABLE KEYS */;
INSERT INTO `deviceblacklist` VALUES (1,'/dev/sg0','Unknown hddtool device');
/*!40000 ALTER TABLE `deviceblacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `devices` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `address` varchar(64) default NULL,
  `user` int(11) default NULL,
  `module` int(11) default NULL,
  `location` int(11) default NULL,
  `value` varchar(32) default NULL,
  `value2` varchar(32) default NULL,
  `value3` varchar(32) default NULL,
  `value4` varchar(32) default NULL,
  `label` varchar(32) default NULL,
  `label2` varchar(32) default NULL,
  `label3` varchar(32) default NULL,
  `label4` varchar(32) default NULL,
  `onicon` varchar(32) default NULL,
  `officon` varchar(32) default NULL,
  `dimicon` varchar(32) default NULL,
  `interface` int(11) default NULL,
  `firstseen` datetime default NULL,
  `lastseen` datetime default NULL,
  `enabled` tinyint(1) default NULL,
  `hide` tinyint(1) default NULL,
  `log` tinyint(1) default NULL,
  `groups` varchar(128) default NULL,
  `graph` tinyint(1) default NULL,
  `batterystatus` varchar(32) default NULL,
  `tampered` tinyint(1) default NULL,
  `comments` text,
  `valuerrddsname` varchar(32) default NULL,
  `value2rrddsname` varchar(32) default NULL,
  `value3rrddsname` varchar(32) default NULL,
  `value4rrddsname` varchar(32) default NULL,
  `valuerrdtype` varchar(32) default NULL,
  `value2rrdtype` varchar(32) default NULL,
  `value3rrdtype` varchar(32) default NULL,
  `value4rrdtype` varchar(32) default NULL,
  `switchable` tinyint(1) default NULL,
  `dimable` tinyint(1) default NULL,
  `extcode` tinyint(1) default NULL,
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `floorplan` int(11) default NULL,
  `lastchanged` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'Porch Light','O02',0,10,6,'On','','',NULL,'','','',NULL,'light-on.png','light-off.png',NULL,2,'2008-09-06 13:56:53','2008-12-14 18:00:00',-1,0,-1,'|All Lights|Outside|',0,'',NULL,'','','','',NULL,'','','',NULL,-1,0,NULL,72,121,2,'2008-12-14 18:00:00'),(2,'Power Usage','00F0',0,9,13,'4497256','440','','','','Watt','','','energy.png','energy.png',NULL,1,'2008-08-31 22:39:31','2008-12-14 21:53:01',-1,0,0,'|Energy|',-1,'',NULL,'Measures power usage.','','watt','','','','GAUGE','','',0,0,NULL,0,0,1,'2008-12-14 21:53:01'),(3,'Laundryroom Light','E04',0,2,11,'Off','',NULL,NULL,'','',NULL,NULL,'light-on.png','light-off.png',NULL,2,'2008-08-26 23:12:16','2008-10-16 20:04:51',1,0,1,'|All Lights|',0,'',NULL,'None','','',NULL,NULL,'','',NULL,NULL,1,0,NULL,0,0,1,NULL),(4,'Hobbyroom Light','E03',0,2,12,'Off','',NULL,NULL,'','',NULL,NULL,'light-on.png','light-off.png',NULL,2,'2008-08-26 22:20:11','2008-10-16 20:04:52',1,0,1,'|All Lights|',0,'',NULL,'None','','',NULL,NULL,'','',NULL,NULL,0,1,NULL,259,182,3,NULL),(5,'UV Sensor','32',0,8,8,'2','Low','','','Level','','','','sun.png','sun.png',NULL,1,'2008-08-27 00:19:48','2008-12-14 21:57:32',-1,0,-1,'|Outside|',0,'low',NULL,' Battery replaced at 2008-11-11 20:45:52 ','','','','','','','','',0,0,NULL,0,0,1,'2008-11-16 22:14:36'),(6,'Livingroom Sensor','47',0,7,2,'18.6','36','',NULL,'°C','%',NULL,NULL,'temp.gif','temp.gif',NULL,1,'2008-07-31 13:35:50','2008-12-14 21:57:56',1,0,0,'|Climate|Humidity|Temperature|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,217,194,2,'2008-12-14 21:57:56'),(9,'Bathroom Sensor','68',0,7,3,'16.2','50','',NULL,'°C','%',NULL,NULL,'temp.gif','temp.gif',NULL,1,'2008-07-31 13:36:06','2008-12-14 21:57:44',1,0,0,'|Climate|Humidity|Temperature|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-14 21:57:44'),(10,'Fridge Sensor','05',0,7,7,'6.8','70','',NULL,'°C','%',NULL,NULL,'temp.gif','temp.gif',NULL,1,'2008-09-10 10:47:29','2008-12-14 21:57:36',1,0,0,'|Climate|Humidity|Temperature|',1,'',NULL,'','temp','humid',NULL,NULL,'GAUGE','GAUGE',NULL,NULL,0,0,NULL,0,0,1,'2008-12-14 21:57:36'),(11,'Outside Sensor','0A',0,7,8,'22.3','51','','','°C','%','','','temp.gif','temp.gif',NULL,1,'2008-09-09 16:00:58','2008-12-13 14:29:23',-1,0,0,'|Climate|Humidity|Outside|Temperature|',-1,'',NULL,'','temp','humid','','','GAUGE','GAUGE','','',0,0,NULL,0,0,1,'2008-12-13 14:29:23'),(12,'Doorbell','D02',0,6,6,'','','',NULL,'','','',NULL,'button.gif','button.gif',NULL,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,0,'|Doors|',0,'',NULL,'http://www.waakzaamwonen.nl/catalog/pdf/sax35.pdf','','','',NULL,'','','',NULL,0,0,NULL,0,0,1,NULL),(13,'Harddrive /dev/sda','/dev/sda',0,11,10,'36','',NULL,NULL,'°C','',NULL,NULL,'hd.png','hd.png',NULL,4,'2008-09-06 14:01:08','2008-12-14 22:03:13',1,0,1,'|Server|',1,'',NULL,'','temp','',NULL,NULL,'GAUGE','',NULL,NULL,0,0,NULL,122,125,6,'2008-12-14 21:20:55'),(16,'Rakker','192.168.100.4',0,13,2,'Sleeping','',NULL,NULL,'','',NULL,NULL,'aibo.gif','aibo.gif',NULL,5,'2008-09-06 14:01:07','2008-11-15 16:15:20',1,0,1,'|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,NULL),(17,'SmartUPS','smartups1000',0,14,10,'Online','224.9',NULL,NULL,'','Volt',NULL,NULL,'ups.gif','ups.gif',NULL,6,'2008-09-07 19:55:53','2008-11-13 14:55:17',1,0,1,'|Server|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-11-13 14:55:17'),(18,'Kitchen Motion Sensor','M01',0,4,7,'No Motion','',NULL,NULL,'','',NULL,NULL,'motion-on.gif','motion-off.gif',NULL,1,'2008-08-23 23:34:19','2008-12-14 20:34:00',1,0,1,'|Motion|Security|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,115,62,2,'2008-12-14 20:33:59'),(19,'Serverroom Temp','4D0000004FC78A26',0,15,10,'22.81','',NULL,NULL,'°C','',NULL,NULL,'temp.gif','temp.gif',NULL,3,'2008-08-26 14:37:29','2008-12-14 21:57:45',1,0,0,'|Server|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-14 21:54:45'),(20,'Rainfall Sensor','',NULL,16,8,'','',NULL,NULL,'mm','',NULL,NULL,'rain.png','rain.png',NULL,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,0,'|Outside|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,NULL),(21,'Smoke Detector','C0CF54',0,17,5,'Idle','',NULL,NULL,'','',NULL,NULL,'smoke.png','smoke.png',NULL,1,'2008-11-24 15:55:22','2008-11-24 15:55:22',1,0,1,'|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-11-24 15:55:22'),(22,'Mailbox Sensor','323D34',0,1,6,'Open','Secure',NULL,NULL,'','',NULL,NULL,'mail-on.png','mail-off.png',NULL,1,'2008-09-03 20:27:09','2008-12-14 19:44:48',1,0,1,'|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,NULL),(23,'Front Door Sensor','D2DDD4',0,1,6,'Closed','Secure',NULL,NULL,'','',NULL,NULL,'door-open.png','door-closed.png',NULL,1,'2008-09-03 20:11:50','2008-12-14 20:28:23',1,0,1,'|Doors|Security|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,NULL),(24,'Kitchen Light Sensor','M02',0,5,7,'Dark','',NULL,NULL,'','',NULL,NULL,'motion-on.gif','motion-off.gif',NULL,1,'2008-08-26 19:47:49','2008-12-14 16:32:00',1,0,1,'|Motion|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,229,94,2,'2008-12-14 16:32:00'),(25,'Hot Water','150008013A024910',0,15,17,'22.81','',NULL,NULL,'°C','',NULL,NULL,'temp.gif','temp.gif',NULL,3,'2008-09-08 16:02:43','2008-12-14 21:57:46',1,0,0,'|HVAC|',1,'',NULL,'','temp','',NULL,NULL,'GAUGE','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-14 21:57:46'),(27,'Toilet Motion Sensor','M03',0,4,4,'No Motion','',NULL,NULL,'','',NULL,NULL,'motion-on.gif','motion-off.gif',NULL,1,'2008-08-29 19:37:49','2008-12-13 16:49:03',1,0,1,'|Motion|Security|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-13 16:49:03'),(28,'Toilet Light Sensor','M04',0,5,4,'Dark','',NULL,NULL,'','',NULL,NULL,'motion-on.gif','motion-off.gif',NULL,1,'2008-08-29 19:40:57','2008-12-13 16:48:09',1,0,1,'|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-13 16:48:08'),(29,'My Phone','00:12:D1:A8:B6:10',2,18,16,'.','Away','','','','','','','bt.png','bt.png',NULL,8,'0000-00-00 00:00:00','2008-11-15 16:20:20',-1,0,-1,'|Proximity|',0,'',NULL,'','','','','','','','','',0,0,NULL,0,0,1,NULL),(30,'House Ventilation','A',0,19,7,'3','',NULL,NULL,'Speed','',NULL,NULL,'fan-on.gif','fan-off.gif',NULL,9,'2008-11-19 20:00:58','2008-12-02 16:27:30',0,0,0,'|HVAC|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-11-19 20:02:02'),(34,'Temp Sensor','08',0,12,7,'-22.1','',NULL,NULL,'°C','',NULL,NULL,'temp.gif','temp.gif',NULL,1,'2008-12-03 22:49:37','2008-12-03 22:49:37',0,0,0,'|',0,'',NULL,'','','',NULL,NULL,'','',NULL,NULL,0,0,NULL,0,0,1,'2008-12-03 22:49:37'),(35,'Hygro Sensor','15',0,26,1,'16.4','55','Normal',NULL,'°C','%','',NULL,'','',NULL,1,'2008-12-03 23:29:33','2008-12-04 15:32:25',-1,0,0,'|Climate|',0,'',NULL,'','','','',NULL,'','','',NULL,0,0,NULL,0,0,1,'2008-12-04 15:32:25'),(37,'DomotiGa Server','000D6F000023710F',0,28,10,'On','44.139','0.044','','','W','kWh','','light-on.png','light-off.png',NULL,10,'2008-12-12 17:09:58','2008-12-14 21:46:57',-1,0,0,'|Server|',-1,'',NULL,'','','Watt','','','','GAUGE','','',0,0,NULL,0,0,1,'2008-12-14 21:46:57'),(36,'Close-in Boiler','000D6F00001C8F22',0,27,7,'Off','0','0',NULL,'','','',NULL,'light-on.png','light-off.png',NULL,10,'2008-12-10 16:56:35','2008-12-14 21:46:57',-1,0,-1,'|All Lights|',0,'',NULL,'','','Watt','',NULL,'','GAUGE','',NULL,-1,0,NULL,0,0,1,'2008-12-14 21:46:57');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetypes`
--

DROP TABLE IF EXISTS `devicetypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `devicetypes` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `description` varchar(32) default NULL,
  `type` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `devicetypes`
--

LOCK TABLES `devicetypes` WRITE;
/*!40000 ALTER TABLE `devicetypes` DISABLE KEYS */;
INSERT INTO `devicetypes` VALUES (1,'Marmitek DS90','Door/Window Sensor','X10Security'),(2,'Marmitek LW10G','Lamp Module','X10'),(3,'Marmitek LD11','Dimmer Module','X10'),(4,'Marmitek MS13E M','Motion Sensor','X10'),(5,'Marmitek MS13E L','Light Sensor','X10'),(6,'Xanura SAX35','I/O Actor','A10'),(7,'Oregon THGR238N','Temp/Hygro Sensor','Oregon'),(8,'Oregon UV138','UV Light Sensor','Oregon'),(9,'RFXPwr Module','Power Usage Sensor','RFXCom'),(10,'Marmitek TM13','Wireless Tranceiver','X10'),(11,'HDDTemp Item','Temp Monitor','HDDTemp'),(12,'Oregon THR128','Temp Sensor','Oregon'),(13,'Sony AIBO ERS-7 ','Robot Dog','AIBO'),(14,'APC SmartUPS1000','Power Supply','UPS'),(15,'Dallas DS18S20','Temp Sensor','1-Wire'),(16,'Dallas Rain Gauge','Rain Gauge','1-Wire'),(17,'Marmitek SD90','Smoke Detector','X10Security'),(18,'Bluetooth Device','Phone','Bluetooth'),(19,'ITHO ECO Fan','Central Ventilation','Weeder'),(20,'RFXPulse Gas','Gas Usage Sensor','RFXCom'),(21,'RFXPulse Water','Water Usage Sensor','RFXCom'),(22,'Oregon BWR102','Digital Bathroom Scale','Oregon'),(23,'Oregon GR101','Digital Bathroom Scale','Oregon'),(24,'Oregon THC138','Temp Sensor','Oregon'),(25,'Oregon THR138','Temp Sensor','Oregon'),(26,'Oregon THGR810','Temp/Hygro Sensor','Oregon'),(27,'Plugwise Circle','Zigbee Appliance Module','Plugwise'),(28,'Plugwise Circle+','Zigbee Appliance Module','Plugwise'),(29,'KAKU Doorbell','Wireless Doorbell','X10'),(30,'Oregon THN132N','Temp Sensor','Oregon'),(31,'Oregon THWR288','Temp Sensor','Oregon'),(32,'Oregon BTHR918N','Baro/Temp/Hygro Sensor','Oregon'),(33,'Oregon BTHR968','Baro/Temp/Hygro Sensor','Oregon'),(34,'Marmitek AD10','Switch Module','X10'),(35,'Marmitek LM12','Lamp Module','X10'),(36,'Marmitek AM12','Appliance Module','X10'),(38,'Oregon PCR800','Rain Gauge','Oregon'),(39,'Oregon RTGR328N','Temp/Hygro/Time Sensor','Oregon'),(40,'DSC PIR','Motion Sensor','DSC'),(41,'DSC Contact','Door/Window Sensor','DSC'),(42,'DSC Smoke','Smoke Detector','DSC'),(43,'KAKU AWST-8802','Wireless Wallswitch Dual','HE'),(44,'KAKU AMST-606','Door/Window Sensor','HE'),(46,'KNX/EIB Dim','EIS 2','KNX/EIB'),(45,'KNX/EIB On/Off','EIS 1','KNX/EIB'),(49,'KNX/EIB Values','EIS 5','KNX/EIB'),(48,'KNX/EIB Date','EIS 4','KNX/EIB'),(47,'KNX/EIB Time','EIS 3','KNX/EIB'),(50,'KNX/EIB Scaling %','EIS 6','KNX/EIB'),(51,'KNX/EIB Motor Drives','EIS 7','KNX/EIB'),(52,'KNX/EIB Forced Control','EIS 8','KNX/EIB'),(53,'KNX/EIB 32bit Float','EIS 9','KNX/EIB'),(54,'KNX/EIB 16bit Int','EIS 10','KNX/EIB'),(55,'KNX/EIB 32bit Int','EIS 11','KNX/EIB'),(56,'KNX/EIB 8bit Int','EIS 14','KNX/EIB'),(57,'KNX/EIB 14byte Text','EIS 15','KNX/EIB');
/*!40000 ALTER TABLE `devicetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `enabled` tinyint(1) default NULL,
  `name` varchar(64) default NULL,
  `log` tinyint(1) default NULL,
  `firstrun` datetime default NULL,
  `lastrun` datetime default NULL,
  `comments` text,
  `trigger1` int(11) default NULL,
  `condition1` int(11) default NULL,
  `operand` varchar(16) default NULL,
  `condition2` int(11) default NULL,
  `action1` int(11) default NULL,
  `action2` int(11) default NULL,
  `action3` int(11) default NULL,
  `rerunenabled` tinyint(1) default NULL,
  `rerunvalue` int(11) default NULL,
  `reruntype` varchar(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,0,'Frontdoor Light On',-1,'2009-01-06 17:30:00','2009-03-05 17:15:00','Switch frontdoor light on at dawn',1,0,'',0,1,0,0,0,0,'gb.Second'),(2,0,'Frontdoor Light Off',-1,'2009-01-05 22:17:00','2009-03-06 08:00:00','Switch frontdoor light off at sunset',2,0,'',0,2,0,0,0,0,'gb.Second'),(3,0,'Kitchen Light On when Movement Detected',-1,'2009-01-18 22:15:54','2009-03-05 20:24:16','Switch kitchen light on when someone enters it',4,0,'',0,3,0,0,0,15,'gb.Hour'),(4,0,'Kitchen Light Off if No Movement',-1,'2009-01-18 22:37:47','2009-03-05 20:25:16','Switch kitchen light off when no movement is detected',5,0,'',0,5,0,0,0,0,'gb.Second'),(5,0,'Ventilate Bathroom if Showering',-1,'2009-01-29 18:38:54','2009-02-05 19:33:23','Switch fan to speed 3 if bathroom is moist',3,0,'',0,6,0,0,-1,1,'gb.Hour'),(6,0,'Switch Ventilation to Normal',-1,'2009-01-30 16:53:24','2009-03-06 09:02:04','Switch fan back to normal speed',6,0,'',0,7,0,0,0,0,'gb.Second');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `floors` (
  `floor` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `image` varchar(32) default NULL,
  PRIMARY KEY  (`floor`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
INSERT INTO `floors` VALUES (1,'',''),(2,'1st Floor','1stfloor.jpg'),(3,'2nd Floor','2ndfloor.jpg'),(4,'3rd Floor',NULL),(6,'Asus eee-box','eeebox.jpg');
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_usage`
--

DROP TABLE IF EXISTS `gas_usage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gas_usage` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `counter` bigint(20) default NULL,
  `stamp` datetime default NULL,
  `consumption` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gas_usage`
--

LOCK TABLES `gas_usage` WRITE;
/*!40000 ALTER TABLE `gas_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gas_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalvars`
--

DROP TABLE IF EXISTS `globalvars`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `globalvars` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `var` varchar(64) default NULL,
  `value` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `globalvars`
--

LOCK TABLES `globalvars` WRITE;
/*!40000 ALTER TABLE `globalvars` DISABLE KEYS */;
INSERT INTO `globalvars` VALUES (1,'Second','54'),(2,'Minute','46'),(3,'Hour','19'),(4,'Day','14'),(5,'Month','6'),(6,'Weekday','0'),(7,'Time_Of_Day','evening'),(8,'Year','2009'),(9,'Sunrise','4:58'),(10,'Sunset','21:48'),(11,'Sunrise_Twilight','4:07'),(12,'Sunset_Twilight','22:38'),(13,'Season','spring'),(14,'House_Mode','normal'),(15,'Mode_Set','auto'),(16,'Last_User','admin'),(17,'Mute','T'),(18,'Weekend','T'),(19,'Program_Start','06/14/2009 19:46:52.49'),(20,'Program_Uptime','0 days, 0 hrs, 0 mins, and 2 secs.'),(21,'Tagline','Adam ate the apple, and our teeth still ache.'),(22,'Dark','');
/*!40000 ALTER TABLE `globalvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `groups` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Outside'),(2,'Temperature'),(3,'Humidity'),(4,'Doors'),(5,'Windows'),(6,'All Lights'),(7,'All Units'),(8,'Energy'),(9,'Server'),(10,'Motion'),(12,'HVAC'),(14,'Proximity'),(15,'Climate'),(16,'Security');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interfaces`
--

DROP TABLE IF EXISTS `interfaces`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `interfaces` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `type` varchar(32) default NULL,
  `mode` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `interfaces`
--

LOCK TABLES `interfaces` WRITE;
/*!40000 ALTER TABLE `interfaces` DISABLE KEYS */;
INSERT INTO `interfaces` VALUES (1,'RFXCom Receiver','A10 X10 Oregon KAKU','Read'),(2,'Xanura CTX35','A10 X10','Read Write'),(3,'Midon TEMP08','One-Wire','Read Write'),(4,'HDDTemp Socket','Build-in Module','Read'),(5,'AIBO Socket','Build-in Module','Read'),(6,'UPS Socket','Build-in Module','Read'),(7,'Heyu X10','A10 X10','Write'),(8,'Bluetooth Dongle','Bluetooth','Read Write'),(9,'Weeder I/O Bus','Weeder','Read Write'),(10,'Plugwise Stick','Plugwise','Read Write'),(11,'DSC5401 Interface','DSC','Read Write'),(12,'RFXCom Transmitter','A10 X10 KAKU','Read Write'),(13,'KNX/EIB Interface','KNX EIB','Read Write');
/*!40000 ALTER TABLE `interfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,''),(2,'Livingroom'),(3,'Bathroom'),(4,'Toilet'),(5,'Hallway'),(6,'Frontdoor'),(7,'Kitchen'),(8,'Garden'),(9,'Master Bedroom'),(10,'Serverroom'),(11,'Laundryroom'),(12,'Hobbyroom'),(13,'MeterCabinet'),(15,'Neighbours'),(16,'Mobile'),(17,'Boiler');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeeds`
--

DROP TABLE IF EXISTS `newsfeeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `newsfeeds` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `url` varchar(64) default NULL,
  `description` text,
  `enabled` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (1,'Slashdot','http://rss.slashdot.org/Slashdot/slashdot','News for Nerds. Stuff that Matters.',1),(2,'Tweakers','http://gathering.tweakers.net/rss/list_activetopics','Gathering of Tweakers.',1);
/*!40000 ALTER TABLE `newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notify`
--

DROP TABLE IF EXISTS `notify`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notify` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `keyword` varchar(64) default NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notify`
--

LOCK TABLES `notify` WRITE;
/*!40000 ALTER TABLE `notify` DISABLE KEYS */;
INSERT INTO `notify` VALUES (1,'Frank Zappa',5),(3,'Indonesia',6),(4,'A15',8),(5,'Sliedrecht',7),(7,'Tom Hanks',4);
/*!40000 ALTER TABLE `notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifytypes`
--

DROP TABLE IF EXISTS `notifytypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `notifytypes` (
  `type` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `notifytypes`
--

LOCK TABLES `notifytypes` WRITE;
/*!40000 ALTER TABLE `notifytypes` DISABLE KEYS */;
INSERT INTO `notifytypes` VALUES (1,'e-mail'),(2,'newsfeed'),(3,'tv program'),(4,'movie'),(5,'music'),(6,'earthquake'),(7,'weather'),(8,'traffic');
/*!40000 ALTER TABLE `notifytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `power_usage`
--

DROP TABLE IF EXISTS `power_usage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `power_usage` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `counter` bigint(20) default NULL,
  `stamp` datetime default NULL,
  `consumption` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7060 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `power_usage`
--

LOCK TABLES `power_usage` WRITE;
/*!40000 ALTER TABLE `power_usage` DISABLE KEYS */;
INSERT INTO `power_usage` VALUES (1,4213752,'2008-11-05 13:35:00',0),(2,4213772,'2008-11-05 13:40:00',20),(3,4213965,'2008-11-05 14:25:00',193),(4,4214017,'2008-11-05 14:30:00',52),(5,4214152,'2008-11-05 14:45:00',135),(6,4214754,'2008-11-05 17:05:00',602),(7,4214775,'2008-11-05 17:10:00',21),(8,4214793,'2008-11-05 17:15:00',18),(9,4214814,'2008-11-05 17:20:00',21),(10,4214835,'2008-11-05 17:25:00',21),(11,4214852,'2008-11-05 17:30:00',17),(12,4214873,'2008-11-05 17:45:00',21),(13,4214935,'2008-11-05 17:50:00',62),(14,4214956,'2008-11-05 17:55:00',21),(15,4214977,'2008-11-05 18:00:00',21),(16,4214999,'2008-11-05 18:05:00',22),(17,4215018,'2008-11-05 18:10:00',19),(18,4215040,'2008-11-05 18:15:00',22),(19,4215151,'2008-11-05 18:20:00',111),(20,4215170,'2008-11-05 18:25:00',19),(21,4215191,'2008-11-05 18:30:00',21),(22,4215212,'2008-11-05 18:35:00',21),(23,4215236,'2008-11-05 18:40:00',24),(24,4215430,'2008-11-05 18:45:00',194),(25,4215614,'2008-11-05 18:50:00',184),(26,4215893,'2008-11-05 18:55:00',279),(27,4215954,'2008-11-05 19:00:00',61),(28,4216061,'2008-11-05 19:05:00',107),(29,4216217,'2008-11-05 19:10:00',156),(30,4216347,'2008-11-05 19:15:00',130),(31,4216403,'2008-11-05 19:20:00',56),(32,4216465,'2008-11-05 19:25:00',62),(33,4216527,'2008-11-05 19:30:00',62),(34,4216582,'2008-11-05 19:35:00',55),(35,4216637,'2008-11-05 19:40:00',55),(36,4217164,'2008-11-05 21:05:00',527),(37,4217190,'2008-11-05 21:10:00',26),(38,4217248,'2008-11-05 21:20:00',58),(39,4217304,'2008-11-05 21:30:00',56),(40,4217333,'2008-11-05 21:35:00',29),(41,4217534,'2008-11-05 22:45:00',201),(42,4218030,'2008-11-05 23:15:00',496),(43,4218069,'2008-11-05 23:20:00',39),(44,4219038,'2008-11-05 23:45:00',969),(45,4219074,'2008-11-05 23:50:00',36),(46,4219107,'2008-11-05 23:55:00',33),(47,4219125,'2008-11-06 00:10:00',18),(48,4220078,'2008-11-06 00:40:00',953),(49,4220107,'2008-11-06 00:45:00',29),(50,4220127,'2008-11-06 00:50:00',20),(51,4220198,'2008-11-06 01:05:00',71),(52,4220223,'2008-11-06 01:10:00',25),(53,4220251,'2008-11-06 01:15:00',28),(54,4220278,'2008-11-06 01:20:00',27),(55,4220303,'2008-11-06 01:25:00',25),(56,4220325,'2008-11-06 01:30:00',22),(57,4220347,'2008-11-06 01:35:00',22),(58,4220368,'2008-11-06 01:40:00',21),(59,4220387,'2008-11-06 01:45:00',19),(60,4220408,'2008-11-06 01:50:00',21),(61,4220430,'2008-11-06 01:55:00',22),(62,4220451,'2008-11-06 02:00:00',21),(63,4220470,'2008-11-06 02:05:00',19),(64,4220492,'2008-11-06 02:10:00',22),(65,4220513,'2008-11-06 02:15:00',21),(66,4220532,'2008-11-06 02:20:00',19),(67,4220554,'2008-11-06 02:25:00',22),(68,4220658,'2008-11-06 02:30:00',104),(69,4220679,'2008-11-06 02:35:00',21),(70,4220698,'2008-11-06 02:40:00',19),(71,4220720,'2008-11-06 02:45:00',22),(72,4220741,'2008-11-06 02:50:00',21),(73,4220762,'2008-11-06 02:55:00',21),(74,4220781,'2008-11-06 03:00:00',19),(75,4220802,'2008-11-06 03:05:00',21),(76,4220824,'2008-11-06 03:10:00',22),(77,4220847,'2008-11-06 03:15:00',23),(78,4220875,'2008-11-06 03:20:00',28),(79,4220898,'2008-11-06 03:25:00',23),(80,4220931,'2008-11-06 03:30:00',33),(81,4220955,'2008-11-06 03:35:00',24),(82,4220980,'2008-11-06 03:40:00',25),(83,4221001,'2008-11-06 03:45:00',21),(84,4221018,'2008-11-06 03:50:00',17),(85,4221041,'2008-11-06 03:55:00',23),(86,4221063,'2008-11-06 04:00:00',22),(87,4221084,'2008-11-06 04:05:00',21),(88,4221103,'2008-11-06 04:10:00',19),(89,4221124,'2008-11-06 04:15:00',21),(90,4221146,'2008-11-06 04:20:00',22),(91,4221167,'2008-11-06 04:25:00',21),(92,4221186,'2008-11-06 04:30:00',19),(93,4221207,'2008-11-06 04:35:00',21),(94,4221229,'2008-11-06 04:40:00',22),(95,4221248,'2008-11-06 04:45:00',19),(96,4221269,'2008-11-06 04:50:00',21),(97,4221291,'2008-11-06 04:55:00',22),(98,4221312,'2008-11-06 05:00:00',21),(99,4221331,'2008-11-06 05:05:00',19),(100,4221352,'2008-11-06 05:10:00',21),(101,4221373,'2008-11-06 05:15:00',21),(102,4221394,'2008-11-06 05:20:00',21),(103,4221414,'2008-11-06 05:25:00',20),(104,4221441,'2008-11-06 05:30:00',27),(105,4221467,'2008-11-06 05:35:00',26),(106,4221494,'2008-11-06 05:40:00',27),(107,4221522,'2008-11-06 05:45:00',28),(108,4221549,'2008-11-06 05:50:00',27),(109,4221571,'2008-11-06 05:55:00',22),(110,4221588,'2008-11-06 06:00:00',17),(111,4221611,'2008-11-06 06:05:00',23),(112,4221632,'2008-11-06 06:10:00',21),(113,4221711,'2008-11-06 06:15:00',79),(114,4221764,'2008-11-06 06:20:00',53),(115,4221783,'2008-11-06 06:25:00',19),(116,4221807,'2008-11-06 06:30:00',24),(117,4221826,'2008-11-06 06:35:00',19),(118,4221847,'2008-11-06 06:40:00',21),(119,4221868,'2008-11-06 06:45:00',21),(120,4221889,'2008-11-06 06:50:00',21),(121,4221908,'2008-11-06 06:55:00',19),(122,4221930,'2008-11-06 07:00:00',22),(123,4221952,'2008-11-06 07:05:00',22),(124,4221973,'2008-11-06 07:10:00',21),(125,4221996,'2008-11-06 07:15:00',23),(126,4222019,'2008-11-06 07:20:00',23),(127,4222043,'2008-11-06 07:25:00',24),(128,4222077,'2008-11-06 07:30:00',34),(129,4222113,'2008-11-06 07:35:00',36),(130,4222140,'2008-11-06 07:40:00',27),(131,4222169,'2008-11-06 07:45:00',29),(132,4222194,'2008-11-06 07:50:00',25),(133,4222218,'2008-11-06 07:55:00',24),(134,4222248,'2008-11-06 08:00:00',30),(135,4222272,'2008-11-06 08:05:00',24),(136,4222293,'2008-11-06 08:10:00',21),(137,4222314,'2008-11-06 08:15:00',21),(138,4222335,'2008-11-06 08:20:00',21),(139,4222354,'2008-11-06 08:25:00',19),(140,4222375,'2008-11-06 08:30:00',21),(141,4222396,'2008-11-06 08:35:00',21),(142,4222444,'2008-11-06 08:55:00',48),(143,4222495,'2008-11-06 09:00:00',51),(144,4222516,'2008-11-06 09:05:00',21),(145,4222657,'2008-11-06 09:40:00',141),(146,4222678,'2008-11-06 09:45:00',21),(147,4222698,'2008-11-06 09:50:00',20),(148,4222717,'2008-11-06 09:55:00',19),(149,4222742,'2008-11-06 10:00:00',25),(150,4222772,'2008-11-06 10:05:00',30),(151,4222799,'2008-11-06 10:10:00',27),(152,4222823,'2008-11-06 10:15:00',24),(153,4222847,'2008-11-06 10:20:00',24),(154,4222957,'2008-11-06 10:25:00',110),(155,4222975,'2008-11-06 10:30:00',18),(156,4222996,'2008-11-06 10:35:00',21),(157,4223017,'2008-11-06 10:40:00',21),(158,4223037,'2008-11-06 10:45:00',20),(159,4223056,'2008-11-06 10:50:00',19),(160,4223077,'2008-11-06 10:55:00',21),(161,4223097,'2008-11-06 11:00:00',20),(162,4223118,'2008-11-06 11:05:00',21),(163,4223137,'2008-11-06 11:10:00',19),(164,4223157,'2008-11-06 11:15:00',20),(165,4223178,'2008-11-06 11:20:00',21),(166,4223196,'2008-11-06 11:25:00',18),(167,4223217,'2008-11-06 11:30:00',21),(168,4223238,'2008-11-06 11:35:00',21),(169,4223258,'2008-11-06 11:40:00',20),(170,4223277,'2008-11-06 11:45:00',19),(171,4223297,'2008-11-06 11:50:00',20),(172,4223318,'2008-11-06 11:55:00',21),(173,4223339,'2008-11-06 12:00:00',21),(174,4223357,'2008-11-06 12:05:00',18),(175,4223378,'2008-11-06 12:10:00',21),(176,4223406,'2008-11-06 12:15:00',28),(177,4223431,'2008-11-06 12:20:00',25),(178,4223459,'2008-11-06 12:25:00',28),(179,4223485,'2008-11-06 12:30:00',26),(180,4223512,'2008-11-06 12:35:00',27),(181,4223531,'2008-11-06 12:40:00',19),(182,4223552,'2008-11-06 12:45:00',21),(183,4223573,'2008-11-06 12:50:00',21),(184,4223594,'2008-11-06 12:55:00',21),(185,4223612,'2008-11-06 13:00:00',18),(186,4223633,'2008-11-06 13:05:00',21),(187,4223637,'2008-11-06 13:10:00',4),(188,4223673,'2008-11-06 13:15:00',36),(189,4223693,'2008-11-06 13:20:00',20),(190,4223714,'2008-11-06 13:25:00',21),(191,4223733,'2008-11-06 13:30:00',19),(192,4223758,'2008-11-06 13:35:00',25),(193,4223924,'2008-11-06 13:40:00',166),(194,4224122,'2008-11-06 13:45:00',198),(195,4224303,'2008-11-06 13:50:00',181),(196,4224502,'2008-11-06 14:00:00',199),(197,4224902,'2008-11-06 14:15:00',400),(198,4225001,'2008-11-06 14:30:00',99),(199,4225050,'2008-11-06 14:35:00',49),(200,4225444,'2008-11-06 15:05:00',394),(201,4225477,'2008-11-06 15:10:00',33),(202,4225588,'2008-11-06 15:30:00',111),(203,4225615,'2008-11-06 15:35:00',27),(204,4225637,'2008-11-06 15:40:00',22),(205,4225667,'2008-11-06 15:45:00',30),(206,4225699,'2008-11-06 15:50:00',32),(207,4225988,'2008-11-06 16:35:00',289),(208,4226112,'2008-11-06 17:00:00',124),(209,4226138,'2008-11-06 17:05:00',26),(210,4226160,'2008-11-06 17:10:00',22),(211,4226181,'2008-11-06 17:15:00',21),(212,4226202,'2008-11-06 17:20:00',21),(213,4226222,'2008-11-06 17:25:00',20),(214,4226241,'2008-11-06 17:30:00',19),(215,4226261,'2008-11-06 17:35:00',20),(216,4226287,'2008-11-06 17:50:00',26),(217,4226340,'2008-11-06 17:55:00',53),(218,4226361,'2008-11-06 18:00:00',21),(219,4226380,'2008-11-06 18:05:00',19),(220,4226401,'2008-11-06 18:10:00',21),(221,4226422,'2008-11-06 18:15:00',21),(222,4226443,'2008-11-06 18:20:00',21),(223,4226590,'2008-11-06 18:25:00',147),(224,4226760,'2008-11-06 18:30:00',170),(225,4226950,'2008-11-06 18:35:00',190),(226,4227104,'2008-11-06 18:40:00',154),(227,4227433,'2008-11-06 18:55:00',329),(228,4227572,'2008-11-06 19:00:00',139),(229,4227640,'2008-11-06 19:05:00',68),(230,4227707,'2008-11-06 19:10:00',67),(231,4227774,'2008-11-06 19:15:00',67),(232,4227834,'2008-11-06 19:20:00',60),(233,4227912,'2008-11-06 19:25:00',78),(234,4227990,'2008-11-06 19:30:00',78),(235,4228056,'2008-11-06 19:35:00',66),(236,4228123,'2008-11-06 19:40:00',67),(237,4228186,'2008-11-06 19:45:00',63),(238,4228244,'2008-11-06 19:50:00',58),(239,4228291,'2008-11-06 19:55:00',47),(240,4228344,'2008-11-06 20:00:00',53),(241,4228375,'2008-11-06 20:05:00',31),(242,4228396,'2008-11-06 20:10:00',21),(243,4228413,'2008-11-06 20:15:00',17),(244,4228436,'2008-11-06 20:20:00',23),(245,4228457,'2008-11-06 20:25:00',21),(246,4228476,'2008-11-06 20:30:00',19),(247,4228497,'2008-11-06 20:35:00',21),(248,4228518,'2008-11-06 20:40:00',21),(249,4228539,'2008-11-06 20:45:00',21),(250,4228558,'2008-11-06 20:50:00',19),(251,4228577,'2008-11-06 20:55:00',19),(252,4228601,'2008-11-06 21:00:00',24),(253,4228622,'2008-11-06 21:05:00',21),(254,4228641,'2008-11-06 21:10:00',19),(255,4228668,'2008-11-06 21:15:00',27),(256,4228696,'2008-11-06 21:20:00',28),(257,4228721,'2008-11-06 21:25:00',25),(258,4228749,'2008-11-06 21:30:00',28),(259,4228776,'2008-11-06 21:35:00',27),(260,4228798,'2008-11-06 21:40:00',22),(261,4228817,'2008-11-06 21:45:00',19),(262,4228838,'2008-11-06 21:50:00',21),(263,4228860,'2008-11-06 21:55:00',22),(264,4228881,'2008-11-06 22:00:00',21),(265,4228900,'2008-11-06 22:05:00',19),(266,4228922,'2008-11-06 22:10:00',22),(267,4228943,'2008-11-06 22:15:00',21),(268,4228962,'2008-11-06 22:20:00',19),(269,4228981,'2008-11-06 22:25:00',19),(270,4229005,'2008-11-06 22:30:00',24),(271,4229026,'2008-11-06 22:35:00',21),(272,4229046,'2008-11-06 22:40:00',20),(273,4229067,'2008-11-06 22:45:00',21),(274,4229172,'2008-11-06 22:50:00',105),(275,4229191,'2008-11-06 22:55:00',19),(276,4229212,'2008-11-06 23:00:00',21),(277,4229234,'2008-11-06 23:05:00',22),(278,4229253,'2008-11-06 23:10:00',19),(279,4229274,'2008-11-06 23:15:00',21),(280,4229295,'2008-11-06 23:20:00',21),(281,4229316,'2008-11-06 23:25:00',21),(282,4229342,'2008-11-06 23:30:00',26),(283,4229368,'2008-11-06 23:35:00',26),(284,4229396,'2008-11-06 23:40:00',28),(285,4229423,'2008-11-06 23:45:00',27),(286,4229455,'2008-11-06 23:50:00',32),(287,4229484,'2008-11-06 23:55:00',29),(288,4229513,'2008-11-07 00:00:00',29),(289,4229616,'2008-11-07 00:20:00',103),(290,4229742,'2008-11-07 00:40:00',126),(291,4229881,'2008-11-07 01:05:00',139),(292,4229911,'2008-11-07 01:10:00',30),(293,4229940,'2008-11-07 01:15:00',29),(294,4229969,'2008-11-07 01:20:00',29),(295,4229996,'2008-11-07 01:25:00',27),(296,4230025,'2008-11-07 01:30:00',29),(297,4230051,'2008-11-07 01:35:00',26),(298,4230070,'2008-11-07 01:40:00',19),(299,4230091,'2008-11-07 01:45:00',21),(300,4230119,'2008-11-07 01:50:00',28),(301,4230148,'2008-11-07 01:55:00',29),(302,4230173,'2008-11-07 02:00:00',25),(303,4230201,'2008-11-07 02:05:00',28),(304,4230228,'2008-11-07 02:10:00',27),(305,4230250,'2008-11-07 02:15:00',22),(306,4230270,'2008-11-07 02:20:00',20),(307,4230291,'2008-11-07 02:25:00',21),(308,4230313,'2008-11-07 02:30:00',22),(309,4230414,'2008-11-07 02:35:00',101),(310,4230436,'2008-11-07 02:40:00',22),(311,4230457,'2008-11-07 02:45:00',21),(312,4230479,'2008-11-07 02:50:00',22),(313,4230498,'2008-11-07 02:55:00',19),(314,4230520,'2008-11-07 03:00:00',22),(315,4230541,'2008-11-07 03:05:00',21),(316,4230563,'2008-11-07 03:10:00',22),(317,4230582,'2008-11-07 03:15:00',19),(318,4230603,'2008-11-07 03:20:00',21),(319,4230625,'2008-11-07 03:25:00',22),(320,4230644,'2008-11-07 03:30:00',19),(321,4230666,'2008-11-07 03:35:00',22),(322,4230687,'2008-11-07 03:40:00',21),(323,4230709,'2008-11-07 03:45:00',22),(324,4230726,'2008-11-07 03:50:00',17),(325,4230750,'2008-11-07 03:55:00',24),(326,4230771,'2008-11-07 04:00:00',21),(327,4230790,'2008-11-07 04:05:00',19),(328,4230818,'2008-11-07 04:10:00',28),(329,4230844,'2008-11-07 04:15:00',26),(330,4230872,'2008-11-07 04:20:00',28),(331,4230899,'2008-11-07 04:25:00',27),(332,4230927,'2008-11-07 04:30:00',28),(333,4230948,'2008-11-07 04:35:00',21),(334,4230971,'2008-11-07 04:40:00',23),(335,4230984,'2008-11-07 04:45:00',13),(336,4231012,'2008-11-07 04:50:00',28),(337,4231034,'2008-11-07 04:55:00',22),(338,4231053,'2008-11-07 05:00:00',19),(339,4231075,'2008-11-07 05:05:00',22),(340,4231096,'2008-11-07 05:10:00',21),(341,4231114,'2008-11-07 05:15:00',18),(342,4231137,'2008-11-07 05:20:00',23),(343,4231159,'2008-11-07 05:25:00',22),(344,4231180,'2008-11-07 05:30:00',21),(345,4231200,'2008-11-07 05:35:00',20),(346,4231221,'2008-11-07 05:40:00',21),(347,4231242,'2008-11-07 05:45:00',21),(348,4231262,'2008-11-07 05:50:00',20),(349,4231283,'2008-11-07 05:55:00',21),(350,4231304,'2008-11-07 06:00:00',21),(351,4231326,'2008-11-07 06:05:00',22),(352,4231347,'2008-11-07 06:10:00',21),(353,4231424,'2008-11-07 06:15:00',77),(354,4231470,'2008-11-07 06:20:00',46),(355,4231491,'2008-11-07 06:25:00',21),(356,4231514,'2008-11-07 06:30:00',23),(357,4231543,'2008-11-07 06:35:00',29),(358,4231570,'2008-11-07 06:40:00',27),(359,4231598,'2008-11-07 06:45:00',28),(360,4231622,'2008-11-07 06:50:00',24),(361,4231647,'2008-11-07 06:55:00',25),(362,4231669,'2008-11-07 07:00:00',22),(363,4231691,'2008-11-07 07:05:00',22),(364,4231712,'2008-11-07 07:10:00',21),(365,4231735,'2008-11-07 07:15:00',23),(366,4231758,'2008-11-07 07:20:00',23),(367,4231779,'2008-11-07 07:25:00',21),(368,4231800,'2008-11-07 07:30:00',21),(369,4231821,'2008-11-07 07:35:00',21),(370,4231842,'2008-11-07 07:40:00',21),(371,4231861,'2008-11-07 07:45:00',19),(372,4231881,'2008-11-07 07:50:00',20),(373,4231902,'2008-11-07 07:55:00',21),(374,4231923,'2008-11-07 08:00:00',21),(375,4231942,'2008-11-07 08:05:00',19),(376,4231963,'2008-11-07 08:10:00',21),(377,4231985,'2008-11-07 08:15:00',22),(378,4232004,'2008-11-07 08:20:00',19),(379,4232026,'2008-11-07 08:25:00',22),(380,4232048,'2008-11-07 08:30:00',22),(381,4232069,'2008-11-07 08:35:00',21),(382,4232087,'2008-11-07 08:40:00',18),(383,4232108,'2008-11-07 08:45:00',21),(384,4232129,'2008-11-07 08:50:00',21),(385,4232157,'2008-11-07 08:55:00',28),(386,4232182,'2008-11-07 09:00:00',25),(387,4232213,'2008-11-07 09:05:00',31),(388,4232242,'2008-11-07 09:10:00',29),(389,4232280,'2008-11-07 09:15:00',38),(390,4232312,'2008-11-07 09:20:00',32),(391,4232337,'2008-11-07 09:25:00',25),(392,4232373,'2008-11-07 09:30:00',36),(393,4232406,'2008-11-07 09:35:00',33),(394,4232442,'2008-11-07 09:40:00',36),(395,4232479,'2008-11-07 09:45:00',37),(396,4232513,'2008-11-07 09:50:00',34),(397,4232657,'2008-11-07 09:55:00',144),(398,4232714,'2008-11-07 10:00:00',57),(399,4232755,'2008-11-07 10:05:00',41),(400,4232787,'2008-11-07 10:10:00',32),(401,4232808,'2008-11-07 10:15:00',21),(402,4232829,'2008-11-07 10:20:00',21),(403,4232849,'2008-11-07 10:25:00',20),(404,4232868,'2008-11-07 10:30:00',19),(405,4232888,'2008-11-07 10:35:00',20),(406,4232909,'2008-11-07 10:40:00',21),(407,4232927,'2008-11-07 10:45:00',18),(408,4232948,'2008-11-07 10:50:00',21),(409,4232969,'2008-11-07 10:55:00',21),(410,4232989,'2008-11-07 11:00:00',20),(411,4233008,'2008-11-07 11:05:00',19),(412,4233028,'2008-11-07 11:10:00',20),(413,4233054,'2008-11-07 11:15:00',26),(414,4233082,'2008-11-07 11:20:00',28),(415,4233106,'2008-11-07 11:25:00',24),(416,4233133,'2008-11-07 11:30:00',27),(417,4233160,'2008-11-07 11:35:00',27),(418,4233180,'2008-11-07 11:40:00',20),(419,4233198,'2008-11-07 11:45:00',18),(420,4233221,'2008-11-07 11:50:00',23),(421,4233241,'2008-11-07 11:55:00',20),(422,4233257,'2008-11-07 12:00:00',16),(423,4233280,'2008-11-07 12:05:00',23),(424,4233301,'2008-11-07 12:10:00',21),(425,4233319,'2008-11-07 12:15:00',18),(426,4233340,'2008-11-07 12:20:00',21),(427,4233361,'2008-11-07 12:25:00',21),(428,4233381,'2008-11-07 12:30:00',20),(429,4233400,'2008-11-07 12:35:00',19),(430,4233421,'2008-11-07 12:40:00',21),(431,4233442,'2008-11-07 12:45:00',21),(432,4233462,'2008-11-07 12:50:00',20),(433,4233481,'2008-11-07 12:55:00',19),(434,4233502,'2008-11-07 13:00:00',21),(435,4233523,'2008-11-07 13:05:00',21),(436,4233541,'2008-11-07 13:10:00',18),(437,4233562,'2008-11-07 13:15:00',21),(438,4233583,'2008-11-07 13:20:00',21),(439,4233603,'2008-11-07 13:25:00',20),(440,4233622,'2008-11-07 13:30:00',19),(441,4233647,'2008-11-07 13:35:00',25),(442,4233677,'2008-11-07 13:40:00',30),(443,4233702,'2008-11-07 13:45:00',25),(444,4233746,'2008-11-07 13:50:00',44),(445,4233841,'2008-11-07 13:55:00',95),(446,4233863,'2008-11-07 14:00:00',22),(447,4233881,'2008-11-07 14:05:00',18),(448,4233902,'2008-11-07 14:10:00',21),(449,4233923,'2008-11-07 14:15:00',21),(450,4233943,'2008-11-07 14:20:00',20),(451,4233962,'2008-11-07 14:25:00',19),(452,4233983,'2008-11-07 14:30:00',21),(453,4234004,'2008-11-07 14:35:00',21),(454,4234022,'2008-11-07 14:40:00',18),(455,4234043,'2008-11-07 14:45:00',21),(456,4234064,'2008-11-07 14:50:00',21),(457,4234083,'2008-11-07 14:55:00',19),(458,4234104,'2008-11-07 15:00:00',21),(459,4234333,'2008-11-07 15:55:00',229),(460,4234388,'2008-11-07 16:05:00',55),(461,4234413,'2008-11-07 16:10:00',25),(462,4234440,'2008-11-07 16:15:00',27),(463,4234462,'2008-11-07 16:20:00',22),(464,4234482,'2008-11-07 16:25:00',20),(465,4234501,'2008-11-07 16:30:00',19),(466,4234522,'2008-11-07 16:35:00',21),(467,4234564,'2008-11-07 16:45:00',42),(468,4234582,'2008-11-07 16:50:00',18),(469,4234603,'2008-11-07 16:55:00',21),(470,4234624,'2008-11-07 17:00:00',21),(471,4234642,'2008-11-07 17:05:00',18),(472,4234663,'2008-11-07 17:10:00',21),(473,4234743,'2008-11-07 17:30:00',80),(474,4234764,'2008-11-07 17:35:00',21),(475,4234783,'2008-11-07 17:40:00',19),(476,4234895,'2008-11-07 17:45:00',112),(477,4234916,'2008-11-07 17:50:00',21),(478,4234937,'2008-11-07 17:55:00',21),(479,4234955,'2008-11-07 18:00:00',18),(480,4234977,'2008-11-07 18:05:00',22),(481,4234998,'2008-11-07 18:10:00',21),(482,4235026,'2008-11-07 18:15:00',28),(483,4235051,'2008-11-07 18:20:00',25),(484,4235079,'2008-11-07 18:25:00',28),(485,4235114,'2008-11-07 18:30:00',35),(486,4235175,'2008-11-07 18:35:00',61),(487,4235276,'2008-11-07 18:40:00',101),(488,4235332,'2008-11-07 18:45:00',56),(489,4235388,'2008-11-07 18:50:00',56),(490,4235452,'2008-11-07 18:55:00',64),(491,4235502,'2008-11-07 19:00:00',50),(492,4235551,'2008-11-07 19:05:00',49),(493,4235609,'2008-11-07 19:10:00',58),(494,4235653,'2008-11-07 19:15:00',44),(495,4235699,'2008-11-07 19:20:00',46),(496,4235755,'2008-11-07 19:25:00',56),(497,4235797,'2008-11-07 19:30:00',42),(498,4235825,'2008-11-07 19:35:00',28),(499,4235846,'2008-11-07 19:40:00',21),(500,4235867,'2008-11-07 19:45:00',21),(501,4235886,'2008-11-07 19:50:00',19),(502,4235908,'2008-11-07 19:55:00',22),(503,4235929,'2008-11-07 20:00:00',21),(504,4235950,'2008-11-07 20:05:00',21),(505,4235969,'2008-11-07 20:10:00',19),(506,4235988,'2008-11-07 20:15:00',19),(507,4236017,'2008-11-07 20:20:00',29),(508,4236043,'2008-11-07 20:25:00',26),(509,4236070,'2008-11-07 20:30:00',27),(510,4236098,'2008-11-07 20:35:00',28),(511,4236122,'2008-11-07 20:40:00',24),(512,4236146,'2008-11-07 20:45:00',24),(513,4236167,'2008-11-07 20:50:00',21),(514,4236189,'2008-11-07 20:55:00',22),(515,4236208,'2008-11-07 21:00:00',19),(516,4236229,'2008-11-07 21:05:00',21),(517,4236251,'2008-11-07 21:10:00',22),(518,4236272,'2008-11-07 21:15:00',21),(519,4236291,'2008-11-07 21:20:00',19),(520,4236313,'2008-11-07 21:25:00',22),(521,4236334,'2008-11-07 21:30:00',21),(522,4236355,'2008-11-07 21:35:00',21),(523,4236375,'2008-11-07 21:40:00',20),(524,4236465,'2008-11-07 21:45:00',90),(525,4236501,'2008-11-07 21:50:00',36),(526,4236520,'2008-11-07 21:55:00',19),(527,4236542,'2008-11-07 22:00:00',22),(528,4236563,'2008-11-07 22:05:00',21),(529,4236585,'2008-11-07 22:10:00',22),(530,4236604,'2008-11-07 22:15:00',19),(531,4236625,'2008-11-07 22:20:00',21),(532,4236647,'2008-11-07 22:25:00',22),(533,4236668,'2008-11-07 22:30:00',21),(534,4236691,'2008-11-07 22:35:00',23),(535,4236720,'2008-11-07 22:40:00',29),(536,4236748,'2008-11-07 22:45:00',28),(537,4236773,'2008-11-07 22:50:00',25),(538,4236801,'2008-11-07 22:55:00',28),(539,4236826,'2008-11-07 23:00:00',25),(540,4236847,'2008-11-07 23:05:00',21),(541,4236866,'2008-11-07 23:10:00',19),(542,4236888,'2008-11-07 23:15:00',22),(543,4236909,'2008-11-07 23:20:00',21),(544,4236931,'2008-11-07 23:25:00',22),(545,4236946,'2008-11-07 23:30:00',15),(546,4236972,'2008-11-07 23:35:00',26),(547,4236993,'2008-11-07 23:40:00',21),(548,4237012,'2008-11-07 23:45:00',19),(549,4237034,'2008-11-07 23:50:00',22),(550,4237055,'2008-11-07 23:55:00',21),(551,4237077,'2008-11-08 00:00:00',22),(552,4237096,'2008-11-08 00:05:00',19),(553,4237117,'2008-11-08 00:10:00',21),(554,4237139,'2008-11-08 00:15:00',22),(555,4237158,'2008-11-08 00:20:00',19),(556,4237180,'2008-11-08 00:25:00',22),(557,4237201,'2008-11-08 00:30:00',21),(558,4237223,'2008-11-08 00:35:00',22),(559,4237242,'2008-11-08 00:40:00',19),(560,4237263,'2008-11-08 00:45:00',21),(561,4237285,'2008-11-08 00:50:00',22),(562,4237309,'2008-11-08 00:55:00',24),(563,4237335,'2008-11-08 01:00:00',26),(564,4237364,'2008-11-08 01:05:00',29),(565,4237391,'2008-11-08 01:10:00',27),(566,4237416,'2008-11-08 01:15:00',25),(567,4237442,'2008-11-08 01:20:00',26),(568,4237463,'2008-11-08 01:25:00',21),(569,4237563,'2008-11-08 01:30:00',100),(570,4237589,'2008-11-08 01:35:00',26),(571,4237606,'2008-11-08 01:40:00',17),(572,4237632,'2008-11-08 01:45:00',26),(573,4237653,'2008-11-08 01:50:00',21),(574,4237673,'2008-11-08 01:55:00',20),(575,4237695,'2008-11-08 02:00:00',22),(576,4237716,'2008-11-08 02:05:00',21),(577,4237733,'2008-11-08 02:10:00',17),(578,4237757,'2008-11-08 02:15:00',24),(579,4237778,'2008-11-08 02:20:00',21),(580,4237800,'2008-11-08 02:25:00',22),(581,4237819,'2008-11-08 02:30:00',19),(582,4237841,'2008-11-08 02:35:00',22),(583,4237862,'2008-11-08 02:40:00',21),(584,4237883,'2008-11-08 02:45:00',21),(585,4237903,'2008-11-08 02:50:00',20),(586,4237924,'2008-11-08 02:55:00',21),(587,4237946,'2008-11-08 03:00:00',22),(588,4237965,'2008-11-08 03:05:00',19),(589,4237986,'2008-11-08 03:10:00',21),(590,4238008,'2008-11-08 03:15:00',22),(591,4238036,'2008-11-08 03:20:00',28),(592,4238062,'2008-11-08 03:25:00',26),(593,4238087,'2008-11-08 03:30:00',25),(594,4238117,'2008-11-08 03:35:00',30),(595,4238142,'2008-11-08 03:40:00',25),(596,4238162,'2008-11-08 03:45:00',20),(597,4238186,'2008-11-08 03:50:00',24),(598,4238208,'2008-11-08 03:55:00',22),(599,4238227,'2008-11-08 04:00:00',19),(600,4238248,'2008-11-08 04:05:00',21),(601,4238270,'2008-11-08 04:10:00',22),(602,4238291,'2008-11-08 04:15:00',21),(603,4238311,'2008-11-08 04:20:00',20),(604,4238332,'2008-11-08 04:25:00',21),(605,4238354,'2008-11-08 04:30:00',22),(606,4238373,'2008-11-08 04:35:00',19),(607,4238394,'2008-11-08 04:40:00',21),(608,4238416,'2008-11-08 04:45:00',22),(609,4238438,'2008-11-08 04:50:00',22),(610,4238457,'2008-11-08 04:55:00',19),(611,4238478,'2008-11-08 05:00:00',21),(612,4238500,'2008-11-08 05:05:00',22),(613,4238519,'2008-11-08 05:10:00',19),(614,4238549,'2008-11-08 05:15:00',30),(615,4238647,'2008-11-08 05:20:00',98),(616,4238668,'2008-11-08 05:25:00',21),(617,4238688,'2008-11-08 05:30:00',20),(618,4238709,'2008-11-08 05:35:00',21),(619,4238732,'2008-11-08 05:40:00',23),(620,4238761,'2008-11-08 05:45:00',29),(621,4238786,'2008-11-08 05:50:00',25),(622,4238814,'2008-11-08 05:55:00',28),(623,4238842,'2008-11-08 06:00:00',28),(624,4238866,'2008-11-08 06:05:00',24),(625,4238888,'2008-11-08 06:10:00',22),(626,4238909,'2008-11-08 06:15:00',21),(627,4238928,'2008-11-08 06:20:00',19),(628,4238950,'2008-11-08 06:25:00',22),(629,4238972,'2008-11-08 06:30:00',22),(630,4238993,'2008-11-08 06:35:00',21),(631,4239011,'2008-11-08 06:40:00',18),(632,4239032,'2008-11-08 06:45:00',21),(633,4239053,'2008-11-08 06:50:00',21),(634,4239074,'2008-11-08 06:55:00',21),(635,4239093,'2008-11-08 07:00:00',19),(636,4239114,'2008-11-08 07:05:00',21),(637,4239134,'2008-11-08 07:10:00',20),(638,4239153,'2008-11-08 07:15:00',19),(639,4239174,'2008-11-08 07:20:00',21),(640,4239195,'2008-11-08 07:25:00',21),(641,4239215,'2008-11-08 07:30:00',20),(642,4239234,'2008-11-08 07:35:00',19),(643,4239255,'2008-11-08 07:40:00',21),(644,4239278,'2008-11-08 07:45:00',23),(645,4239300,'2008-11-08 07:50:00',22),(646,4239319,'2008-11-08 07:55:00',19),(647,4239340,'2008-11-08 08:00:00',21),(648,4239361,'2008-11-08 08:05:00',21),(649,4239387,'2008-11-08 08:10:00',26),(650,4239415,'2008-11-08 08:15:00',28),(651,4239442,'2008-11-08 08:20:00',27),(652,4239469,'2008-11-08 08:25:00',27),(653,4239492,'2008-11-08 08:30:00',23),(654,4239513,'2008-11-08 08:35:00',21),(655,4239534,'2008-11-08 08:40:00',21),(656,4239554,'2008-11-08 08:45:00',20),(657,4239573,'2008-11-08 08:50:00',19),(658,4239594,'2008-11-08 08:55:00',21),(659,4239698,'2008-11-08 09:00:00',104),(660,4239717,'2008-11-08 09:05:00',19),(661,4239738,'2008-11-08 09:10:00',21),(662,4239759,'2008-11-08 09:15:00',21),(663,4239781,'2008-11-08 09:20:00',22),(664,4239801,'2008-11-08 09:25:00',20),(665,4239824,'2008-11-08 09:30:00',23),(666,4239847,'2008-11-08 09:35:00',23),(667,4239868,'2008-11-08 09:40:00',21),(668,4239891,'2008-11-08 09:45:00',23),(669,4239914,'2008-11-08 09:50:00',23),(670,4239937,'2008-11-08 09:55:00',23),(671,4239958,'2008-11-08 10:00:00',21),(672,4239981,'2008-11-08 10:05:00',23),(673,4240005,'2008-11-08 10:10:00',24),(674,4240028,'2008-11-08 10:15:00',23),(675,4240049,'2008-11-08 10:20:00',21),(676,4240073,'2008-11-08 10:25:00',24),(677,4240096,'2008-11-08 10:30:00',23),(678,4240124,'2008-11-08 10:35:00',28),(679,4240155,'2008-11-08 10:40:00',31),(680,4240184,'2008-11-08 10:45:00',29),(681,4240214,'2008-11-08 10:50:00',30),(682,4240240,'2008-11-08 10:55:00',26),(683,4240264,'2008-11-08 11:00:00',24),(684,4240284,'2008-11-08 11:05:00',20),(685,4240303,'2008-11-08 11:10:00',19),(686,4240324,'2008-11-08 11:15:00',21),(687,4240345,'2008-11-08 11:20:00',21),(688,4240366,'2008-11-08 11:25:00',21),(689,4240382,'2008-11-08 11:30:00',16),(690,4240405,'2008-11-08 11:35:00',23),(691,4240426,'2008-11-08 11:40:00',21),(692,4240447,'2008-11-08 11:45:00',21),(693,4240466,'2008-11-08 11:50:00',19),(694,4240486,'2008-11-08 11:55:00',20),(695,4240507,'2008-11-08 12:00:00',21),(696,4240526,'2008-11-08 12:05:00',19),(697,4240547,'2008-11-08 12:10:00',21),(698,4240568,'2008-11-08 12:15:00',21),(699,4240589,'2008-11-08 12:20:00',21),(700,4240608,'2008-11-08 12:25:00',19),(701,4240629,'2008-11-08 12:30:00',21),(702,4240649,'2008-11-08 12:35:00',20),(703,4240725,'2008-11-08 12:40:00',76),(704,4240860,'2008-11-08 12:45:00',135),(705,4240902,'2008-11-08 12:50:00',42),(706,4240950,'2008-11-08 12:55:00',48),(707,4240996,'2008-11-08 13:00:00',46),(708,4241041,'2008-11-08 13:05:00',45),(709,4241095,'2008-11-08 13:10:00',54),(710,4241143,'2008-11-08 13:15:00',48),(711,4241184,'2008-11-08 13:20:00',41),(712,4241227,'2008-11-08 13:25:00',43),(713,4241272,'2008-11-08 13:30:00',45),(714,4241310,'2008-11-08 13:35:00',38),(715,4241364,'2008-11-08 13:40:00',54),(716,4241413,'2008-11-08 13:45:14',49),(717,4242398,'2008-11-08 15:40:00',985),(718,4242442,'2008-11-08 15:45:00',44),(719,4242486,'2008-11-08 15:50:00',44),(720,4242525,'2008-11-08 15:55:00',39),(721,4242569,'2008-11-08 16:00:00',44),(722,4242613,'2008-11-08 16:05:00',44),(723,4242656,'2008-11-08 16:10:00',43),(724,4242694,'2008-11-08 16:15:00',38),(725,4242736,'2008-11-08 16:20:00',42),(726,4242779,'2008-11-08 16:25:00',43),(727,4242881,'2008-11-08 16:30:00',102),(728,4242937,'2008-11-08 16:35:00',56),(729,4242960,'2008-11-08 16:40:00',23),(730,4242981,'2008-11-08 16:45:00',21),(731,4243002,'2008-11-08 16:50:00',21),(732,4243020,'2008-11-08 16:55:00',18),(733,4243041,'2008-11-08 17:00:00',21),(734,4243062,'2008-11-08 17:05:00',21),(735,4243081,'2008-11-08 17:10:00',19),(736,4243099,'2008-11-08 17:15:00',18),(737,4243122,'2008-11-08 17:20:00',23),(738,4243143,'2008-11-08 17:25:00',21),(739,4243167,'2008-11-08 17:30:00',24),(740,4243194,'2008-11-08 17:35:00',27),(741,4243221,'2008-11-08 17:40:00',27),(742,4243246,'2008-11-08 17:45:00',25),(743,4243272,'2008-11-08 17:50:00',26),(744,4243294,'2008-11-08 17:55:00',22),(745,4243315,'2008-11-08 18:00:00',21),(746,4243334,'2008-11-08 18:05:00',19),(747,4243354,'2008-11-08 18:10:00',20),(748,4243377,'2008-11-08 18:15:00',23),(749,4243396,'2008-11-08 18:20:00',19),(750,4243418,'2008-11-08 18:25:00',22),(751,4243439,'2008-11-08 18:30:00',21),(752,4243460,'2008-11-08 18:35:00',21),(753,4243480,'2008-11-08 18:40:00',20),(754,4243501,'2008-11-08 18:45:00',21),(755,4243523,'2008-11-08 18:50:00',22),(756,4243544,'2008-11-08 18:55:00',21),(757,4243563,'2008-11-08 19:00:00',19),(758,4243585,'2008-11-08 19:05:00',22),(759,4243606,'2008-11-08 19:10:00',21),(760,4243623,'2008-11-08 19:15:00',17),(761,4243647,'2008-11-08 19:20:00',24),(762,4243668,'2008-11-08 19:25:00',21),(763,4243690,'2008-11-08 19:30:00',22),(764,4243709,'2008-11-08 19:35:00',19),(765,4243731,'2008-11-08 19:40:00',22),(766,4243752,'2008-11-08 19:45:00',21),(767,4243777,'2008-11-08 19:50:00',25),(768,4243803,'2008-11-08 19:55:00',26),(769,4243831,'2008-11-08 20:00:00',28),(770,4243859,'2008-11-08 20:05:00',28),(771,4243884,'2008-11-08 20:10:00',25),(772,4243951,'2008-11-08 20:15:00',67),(773,4244014,'2008-11-08 20:20:00',63),(774,4244036,'2008-11-08 20:25:00',22),(775,4244055,'2008-11-08 20:30:00',19),(776,4244077,'2008-11-08 20:35:00',22),(777,4244098,'2008-11-08 20:40:00',21),(778,4244119,'2008-11-08 20:45:00',21),(779,4244139,'2008-11-08 20:50:00',20),(780,4244160,'2008-11-08 20:55:00',21),(781,4244182,'2008-11-08 21:00:00',22),(782,4244201,'2008-11-08 21:05:00',19),(783,4244222,'2008-11-08 21:10:00',21),(784,4244244,'2008-11-08 21:15:00',22),(785,4244265,'2008-11-08 21:20:00',21),(786,4244284,'2008-11-08 21:25:00',19),(787,4244306,'2008-11-08 21:30:00',22),(788,4244327,'2008-11-08 21:35:00',21),(789,4244347,'2008-11-08 21:40:00',20),(790,4244368,'2008-11-08 21:45:00',21),(791,4244387,'2008-11-08 21:50:00',19),(792,4244411,'2008-11-08 21:55:00',24),(793,4244431,'2008-11-08 22:00:00',20),(794,4244452,'2008-11-08 22:05:00',21),(795,4244474,'2008-11-08 22:10:00',22),(796,4244501,'2008-11-08 22:15:00',27),(797,4244526,'2008-11-08 22:20:00',25),(798,4244552,'2008-11-08 22:25:00',26),(799,4244582,'2008-11-08 22:30:00',30),(800,4244607,'2008-11-08 22:35:00',25),(801,4244631,'2008-11-08 22:40:00',24),(802,4244652,'2008-11-08 22:45:00',21),(803,4244674,'2008-11-08 22:50:00',22),(804,4244693,'2008-11-08 22:55:00',19),(805,4244715,'2008-11-08 23:00:00',22),(806,4244736,'2008-11-08 23:05:00',21),(807,4244755,'2008-11-08 23:10:00',19),(808,4244777,'2008-11-08 23:15:00',22),(809,4244798,'2008-11-08 23:20:00',21),(810,4244819,'2008-11-08 23:25:00',21),(811,4244838,'2008-11-08 23:30:00',19),(812,4244860,'2008-11-08 23:35:00',22),(813,4244881,'2008-11-08 23:40:00',21),(814,4244902,'2008-11-08 23:45:00',21),(815,4244921,'2008-11-08 23:50:00',19),(816,4244943,'2008-11-08 23:55:00',22),(817,4245049,'2008-11-09 00:00:00',106),(818,4245068,'2008-11-09 00:05:00',19),(819,4245089,'2008-11-09 00:10:00',21),(820,4245111,'2008-11-09 00:15:00',22),(821,4245132,'2008-11-09 00:20:00',21),(822,4245151,'2008-11-09 00:25:00',19),(823,4245173,'2008-11-09 00:30:00',22),(824,4245194,'2008-11-09 00:35:00',21),(825,4245222,'2008-11-09 00:40:00',28),(826,4245248,'2008-11-09 00:45:00',26),(827,4245276,'2008-11-09 00:50:00',28),(828,4245303,'2008-11-09 00:55:00',27),(829,4245328,'2008-11-09 01:00:00',25),(830,4245351,'2008-11-09 01:05:00',23),(831,4245372,'2008-11-09 01:10:00',21),(832,4245394,'2008-11-09 01:15:00',22),(833,4245413,'2008-11-09 01:20:00',19),(834,4245434,'2008-11-09 01:25:00',21),(835,4245456,'2008-11-09 01:30:00',22),(836,4245475,'2008-11-09 01:35:00',19),(837,4245497,'2008-11-09 01:40:00',22),(838,4245518,'2008-11-09 01:45:00',21),(839,4245540,'2008-11-09 01:50:00',22),(840,4245559,'2008-11-09 01:55:00',19),(841,4245581,'2008-11-09 02:00:00',22),(842,4245603,'2008-11-09 02:05:00',22),(843,4245624,'2008-11-09 02:10:00',21),(844,4245644,'2008-11-09 02:15:00',20),(845,4245663,'2008-11-09 02:20:00',19),(846,4245687,'2008-11-09 02:25:00',24),(847,4245706,'2008-11-09 02:30:00',19),(848,4245728,'2008-11-09 02:35:00',22),(849,4245749,'2008-11-09 02:40:00',21),(850,4245771,'2008-11-09 02:45:00',22),(851,4245790,'2008-11-09 02:50:00',19),(852,4245814,'2008-11-09 02:55:00',24),(853,4245837,'2008-11-09 03:00:00',23),(854,4245862,'2008-11-09 03:05:00',25),(855,4245891,'2008-11-09 03:10:00',29),(856,4245919,'2008-11-09 03:15:00',28),(857,4245947,'2008-11-09 03:20:00',28),(858,4245971,'2008-11-09 03:25:00',24),(859,4245993,'2008-11-09 03:30:00',22),(860,4246015,'2008-11-09 03:35:00',22),(861,4246036,'2008-11-09 03:40:00',21),(862,4246108,'2008-11-09 03:45:00',72),(863,4246170,'2008-11-09 03:50:00',62),(864,4246192,'2008-11-09 03:55:00',22),(865,4246211,'2008-11-09 04:00:00',19),(866,4246233,'2008-11-09 04:05:00',22),(867,4246254,'2008-11-09 04:10:00',21),(868,4246275,'2008-11-09 04:15:00',21),(869,4246293,'2008-11-09 04:20:00',18),(870,4246316,'2008-11-09 04:25:00',23),(871,4246337,'2008-11-09 04:30:00',21),(872,4246359,'2008-11-09 04:35:00',22),(873,4246378,'2008-11-09 04:40:00',19),(874,4246398,'2008-11-09 04:45:00',20),(875,4246421,'2008-11-09 04:50:00',23),(876,4246440,'2008-11-09 04:55:00',19),(877,4246462,'2008-11-09 05:00:00',22),(878,4246483,'2008-11-09 05:05:00',21),(879,4246505,'2008-11-09 05:10:00',22),(880,4246524,'2008-11-09 05:15:00',19),(881,4246545,'2008-11-09 05:20:00',21),(882,4246567,'2008-11-09 05:25:00',22),(883,4246591,'2008-11-09 05:30:00',24),(884,4246620,'2008-11-09 05:35:00',29),(885,4246648,'2008-11-09 05:40:00',28),(886,4246676,'2008-11-09 05:45:00',28),(887,4246700,'2008-11-09 05:50:00',24),(888,4246723,'2008-11-09 05:55:00',23),(889,4246745,'2008-11-09 06:00:00',22),(890,4246766,'2008-11-09 06:05:00',21),(891,4246785,'2008-11-09 06:10:00',19),(892,4246807,'2008-11-09 06:15:00',22),(893,4246828,'2008-11-09 06:20:00',21),(894,4246847,'2008-11-09 06:25:00',19),(895,4246869,'2008-11-09 06:30:00',22),(896,4246890,'2008-11-09 06:35:00',21),(897,4246909,'2008-11-09 06:40:00',19),(898,4246929,'2008-11-09 06:45:00',20),(899,4246950,'2008-11-09 06:50:00',21),(900,4246969,'2008-11-09 06:55:00',19),(901,4246990,'2008-11-09 07:00:00',21),(902,4247011,'2008-11-09 07:05:00',21),(903,4247029,'2008-11-09 07:10:00',18),(904,4247052,'2008-11-09 07:15:00',23),(905,4247071,'2008-11-09 07:20:00',19),(906,4247091,'2008-11-09 07:25:00',20),(907,4247112,'2008-11-09 07:30:00',21),(908,4247133,'2008-11-09 07:35:00',21),(909,4247152,'2008-11-09 07:40:00',19),(910,4247172,'2008-11-09 07:45:00',20),(911,4247193,'2008-11-09 07:50:00',21),(912,4247298,'2008-11-09 07:55:00',105),(913,4247326,'2008-11-09 08:00:00',28),(914,4247354,'2008-11-09 08:05:00',28),(915,4247381,'2008-11-09 08:10:00',27),(916,4247405,'2008-11-09 08:15:00',24),(917,4247429,'2008-11-09 08:20:00',24),(918,4247450,'2008-11-09 08:25:00',21),(919,4247469,'2008-11-09 08:30:00',19),(920,4247490,'2008-11-09 08:35:00',21),(921,4247510,'2008-11-09 08:40:00',20),(922,4247531,'2008-11-09 08:45:00',21),(923,4247550,'2008-11-09 08:50:00',19),(924,4247571,'2008-11-09 08:55:00',21),(925,4247592,'2008-11-09 09:00:00',21),(926,4247613,'2008-11-09 09:05:00',21),(927,4247632,'2008-11-09 09:10:00',19),(928,4247654,'2008-11-09 09:15:00',22),(929,4247673,'2008-11-09 09:20:00',19),(930,4247695,'2008-11-09 09:25:00',22),(931,4247718,'2008-11-09 09:30:00',23),(932,4247741,'2008-11-09 09:35:00',23),(933,4247762,'2008-11-09 09:40:00',21),(934,4247786,'2008-11-09 09:45:00',24),(935,4247807,'2008-11-09 09:50:00',21),(936,4247832,'2008-11-09 09:55:00',25),(937,4247853,'2008-11-09 10:00:00',21),(938,4247876,'2008-11-09 10:05:00',23),(939,4247897,'2008-11-09 10:10:00',21),(940,4247923,'2008-11-09 10:15:00',26),(941,4247942,'2008-11-09 10:20:00',19),(942,4247976,'2008-11-09 10:25:00',34),(943,4248006,'2008-11-09 10:30:00',30),(944,4248036,'2008-11-09 10:35:00',30),(945,4248062,'2008-11-09 10:40:00',26),(946,4248090,'2008-11-09 10:45:00',28),(947,4248114,'2008-11-09 10:50:00',24),(948,4248135,'2008-11-09 10:55:00',21),(949,4248158,'2008-11-09 11:00:00',23),(950,4248179,'2008-11-09 11:05:00',21),(951,4248199,'2008-11-09 11:10:00',20),(952,4248218,'2008-11-09 11:15:00',19),(953,4248239,'2008-11-09 11:20:00',21),(954,4248259,'2008-11-09 11:25:00',20),(955,4248278,'2008-11-09 11:30:00',19),(956,4248312,'2008-11-09 11:35:00',34),(957,4248403,'2008-11-09 11:40:00',91),(958,4248424,'2008-11-09 11:45:00',21),(959,4248443,'2008-11-09 11:50:00',19),(960,4248463,'2008-11-09 11:55:00',20),(961,4249768,'2008-11-10 19:45:00',1305),(962,4249768,'2008-11-10 19:50:00',0),(963,4249768,'2008-11-10 19:55:00',0),(964,4249768,'2008-11-10 20:00:00',0),(965,4249768,'2008-11-10 20:05:00',0),(966,4249768,'2008-11-10 20:10:00',0),(967,4262320,'2008-11-11 00:05:00',12552),(968,4262349,'2008-11-11 00:10:00',29),(969,4262461,'2008-11-11 00:30:00',112),(970,4262490,'2008-11-11 00:35:00',29),(971,4262516,'2008-11-11 00:40:00',26),(972,4262544,'2008-11-11 00:45:00',28),(973,4262573,'2008-11-11 00:50:00',29),(974,4262602,'2008-11-11 00:55:00',29),(975,4262628,'2008-11-11 01:00:00',26),(976,4262657,'2008-11-11 01:05:00',29),(977,4262686,'2008-11-11 01:10:00',29),(978,4262715,'2008-11-11 01:15:00',29),(979,4262741,'2008-11-11 01:20:00',26),(980,4262773,'2008-11-11 01:25:00',32),(981,4262809,'2008-11-11 01:30:00',36),(982,4262841,'2008-11-11 01:35:00',32),(983,4262876,'2008-11-11 01:40:00',35),(984,4262911,'2008-11-11 01:45:00',35),(985,4262943,'2008-11-11 01:50:00',32),(986,4262969,'2008-11-11 01:55:00',26),(987,4262998,'2008-11-11 02:00:00',29),(988,4263026,'2008-11-11 02:05:00',28),(989,4263062,'2008-11-11 02:10:00',36),(990,4263087,'2008-11-11 02:15:02',25),(991,4263114,'2008-11-11 02:20:02',27),(992,4263157,'2008-11-11 02:30:00',43),(993,4263165,'2008-11-11 02:35:00',8),(994,4263165,'2008-11-11 02:40:00',0),(995,4263165,'2008-11-11 02:45:00',0),(996,4263165,'2008-11-11 02:50:00',0),(997,4263165,'2008-11-11 02:55:00',0),(998,4263165,'2008-11-11 03:00:00',0),(999,4263165,'2008-11-11 03:05:00',0),(1000,4263165,'2008-11-11 03:10:00',0),(1001,4263427,'2008-11-11 03:15:00',262),(1002,4263448,'2008-11-11 03:20:00',21),(1003,4263469,'2008-11-11 03:25:00',21),(1004,4263489,'2008-11-11 03:30:00',20),(1005,4263513,'2008-11-11 03:35:00',24),(1006,4263544,'2008-11-11 03:40:00',31),(1007,4263569,'2008-11-11 03:45:00',25),(1008,4263596,'2008-11-11 03:50:00',27),(1009,4263623,'2008-11-11 03:55:00',27),(1010,4263646,'2008-11-11 04:00:00',23),(1011,4263663,'2008-11-11 04:05:00',17),(1012,4263686,'2008-11-11 04:10:00',23),(1013,4263708,'2008-11-11 04:15:00',22),(1014,4263729,'2008-11-11 04:20:00',21),(1015,4263748,'2008-11-11 04:25:00',19),(1016,4263769,'2008-11-11 04:30:00',21),(1017,4263790,'2008-11-11 04:35:00',21),(1018,4263812,'2008-11-11 04:40:00',22),(1019,4263831,'2008-11-11 04:45:00',19),(1020,4263852,'2008-11-11 04:50:00',21),(1021,4263873,'2008-11-11 04:55:00',21),(1022,4263892,'2008-11-11 05:00:00',19),(1023,4263913,'2008-11-11 05:05:00',21),(1024,4263934,'2008-11-11 05:10:00',21),(1025,4263956,'2008-11-11 05:15:00',22),(1026,4263975,'2008-11-11 05:20:00',19),(1027,4263996,'2008-11-11 05:25:00',21),(1028,4264017,'2008-11-11 05:30:00',21),(1029,4264038,'2008-11-11 05:35:00',21),(1030,4264057,'2008-11-11 05:40:00',19),(1031,4264083,'2008-11-11 05:45:00',26),(1032,4264111,'2008-11-11 05:50:00',28),(1033,4264134,'2008-11-11 05:55:00',23),(1034,4264164,'2008-11-11 06:00:00',30),(1035,4264191,'2008-11-11 06:05:00',27),(1036,4264215,'2008-11-11 06:10:00',24),(1037,4264232,'2008-11-11 06:15:00',17),(1038,4264256,'2008-11-11 06:20:00',24),(1039,4264277,'2008-11-11 06:25:00',21),(1040,4264297,'2008-11-11 06:30:00',20),(1041,4264318,'2008-11-11 06:35:00',21),(1042,4264337,'2008-11-11 06:40:00',19),(1043,4264361,'2008-11-11 06:45:00',24),(1044,4264380,'2008-11-11 06:50:00',19),(1045,4264399,'2008-11-11 06:55:00',19),(1046,4264509,'2008-11-11 07:00:00',110),(1047,4264531,'2008-11-11 07:05:00',22),(1048,4264550,'2008-11-11 07:10:00',19),(1049,4264573,'2008-11-11 07:15:00',23),(1050,4264599,'2008-11-11 07:20:00',26),(1051,4264637,'2008-11-11 07:25:00',38),(1052,4264667,'2008-11-11 07:30:00',30),(1053,4264696,'2008-11-11 07:35:00',29),(1054,4264727,'2008-11-11 07:40:00',31),(1055,4264750,'2008-11-11 07:45:00',23),(1056,4264768,'2008-11-11 07:50:00',18),(1057,4264787,'2008-11-11 07:55:00',19),(1058,4264817,'2008-11-11 08:00:00',30),(1059,4264842,'2008-11-11 08:05:00',25),(1060,4264869,'2008-11-11 08:10:00',27),(1061,4264896,'2008-11-11 08:15:00',27),(1062,4264922,'2008-11-11 08:20:00',26),(1063,4264941,'2008-11-11 08:25:00',19),(1064,4264962,'2008-11-11 08:30:00',21),(1065,4264982,'2008-11-11 08:35:00',20),(1066,4265003,'2008-11-11 08:40:00',21),(1067,4265022,'2008-11-11 08:45:00',19),(1068,4265042,'2008-11-11 08:50:00',20),(1069,4265063,'2008-11-11 08:55:00',21),(1070,4265082,'2008-11-11 09:00:00',19),(1071,4265103,'2008-11-11 09:05:00',21),(1072,4265123,'2008-11-11 09:10:00',20),(1073,4265144,'2008-11-11 09:15:00',21),(1074,4265163,'2008-11-11 09:20:00',19),(1075,4265183,'2008-11-11 09:25:00',20),(1076,4265204,'2008-11-11 09:30:00',21),(1077,4265225,'2008-11-11 09:35:00',21),(1078,4265243,'2008-11-11 09:40:00',18),(1079,4265264,'2008-11-11 09:45:00',21),(1080,4265285,'2008-11-11 09:50:00',21),(1081,4265303,'2008-11-11 09:55:00',18),(1082,4265324,'2008-11-11 10:00:00',21),(1083,4265345,'2008-11-11 10:05:00',21),(1084,4265366,'2008-11-11 10:10:00',21),(1085,4265392,'2008-11-11 10:15:00',26),(1086,4265419,'2008-11-11 10:20:00',27),(1087,4265446,'2008-11-11 10:25:00',27),(1088,4265473,'2008-11-11 10:30:00',27),(1089,4265497,'2008-11-11 10:35:00',24),(1090,4265507,'2008-11-11 10:40:13',10),(1091,4265538,'2008-11-11 10:45:00',31),(1092,4265556,'2008-11-11 10:50:00',18),(1093,4265662,'2008-11-11 10:55:00',106),(1094,4265682,'2008-11-11 11:00:00',20),(1095,4265703,'2008-11-11 11:05:00',21),(1096,4265722,'2008-11-11 11:10:00',19),(1097,4265742,'2008-11-11 11:15:00',20),(1098,4265763,'2008-11-11 11:20:00',21),(1099,4265784,'2008-11-11 11:25:00',21),(1100,4265802,'2008-11-11 11:30:00',18),(1101,4265823,'2008-11-11 11:35:00',21),(1102,4265843,'2008-11-11 11:40:00',20),(1103,4265862,'2008-11-11 11:45:00',19),(1104,4265880,'2008-11-11 11:50:00',18),(1105,4265903,'2008-11-11 11:55:00',23),(1106,4265924,'2008-11-11 12:00:00',21),(1107,4265942,'2008-11-11 12:05:00',18),(1108,4265963,'2008-11-11 12:10:00',21),(1109,4265984,'2008-11-11 12:15:00',21),(1110,4266002,'2008-11-11 12:20:00',18),(1111,4266024,'2008-11-11 12:25:00',22),(1112,4266053,'2008-11-11 12:30:00',29),(1113,4266080,'2008-11-11 12:35:00',27),(1114,4266104,'2008-11-11 12:40:00',24),(1115,4266131,'2008-11-11 12:45:00',27),(1116,4266157,'2008-11-11 12:50:00',26),(1117,4266181,'2008-11-11 12:55:00',24),(1118,4266210,'2008-11-11 13:00:00',29),(1119,4266396,'2008-11-11 13:05:00',186),(1120,4266561,'2008-11-11 13:10:00',165),(1121,4266647,'2008-11-11 13:15:00',86),(1122,4266673,'2008-11-11 13:20:00',26),(1123,4266700,'2008-11-11 13:25:00',27),(1124,4266894,'2008-11-11 13:30:00',194),(1125,4266958,'2008-11-11 13:35:00',64),(1126,4266990,'2008-11-11 13:40:00',32),(1127,4267028,'2008-11-11 13:45:00',38),(1128,4267059,'2008-11-11 13:50:00',31),(1129,4267096,'2008-11-11 13:55:00',37),(1130,4267140,'2008-11-11 14:00:00',44),(1131,4267167,'2008-11-11 14:05:00',27),(1132,4267196,'2008-11-11 14:10:00',29),(1133,4267222,'2008-11-11 14:15:00',26),(1134,4267252,'2008-11-11 14:20:00',30),(1135,4267286,'2008-11-11 14:25:00',34),(1136,4267316,'2008-11-11 14:30:00',30),(1137,4267356,'2008-11-11 14:35:00',40),(1138,4267393,'2008-11-11 14:40:00',37),(1139,4267441,'2008-11-11 14:45:00',48),(1140,4267471,'2008-11-11 14:50:00',30),(1141,4267513,'2008-11-11 14:55:00',42),(1142,4267576,'2008-11-11 15:00:00',63),(1143,4267622,'2008-11-11 15:05:00',46),(1144,4267666,'2008-11-11 15:10:00',44),(1145,4267694,'2008-11-11 15:15:00',28),(1146,4267720,'2008-11-11 15:20:00',26),(1147,4267739,'2008-11-11 15:25:00',19),(1148,4267851,'2008-11-11 15:30:00',112),(1149,4267871,'2008-11-11 15:35:00',20),(1150,4267892,'2008-11-11 15:40:00',21),(1151,4267911,'2008-11-11 15:45:00',19),(1152,4267932,'2008-11-11 15:50:00',21),(1153,4267953,'2008-11-11 15:55:00',21),(1154,4267973,'2008-11-11 16:00:00',20),(1155,4267992,'2008-11-11 16:05:00',19),(1156,4268013,'2008-11-11 16:10:00',21),(1157,4268030,'2008-11-11 16:15:00',17),(1158,4268053,'2008-11-11 16:20:00',23),(1159,4268072,'2008-11-11 16:25:00',19),(1160,4268095,'2008-11-11 16:30:00',23),(1161,4268116,'2008-11-11 16:35:00',21),(1162,4268132,'2008-11-11 16:40:00',16),(1163,4268155,'2008-11-11 16:45:00',23),(1164,4268176,'2008-11-11 16:50:00',21),(1165,4268202,'2008-11-11 16:55:00',26),(1166,4268227,'2008-11-11 17:00:00',25),(1167,4268254,'2008-11-11 17:05:00',27),(1168,4268281,'2008-11-11 17:10:00',27),(1169,4268305,'2008-11-11 17:15:00',24),(1170,4268328,'2008-11-11 17:20:00',23),(1171,4268348,'2008-11-11 17:25:00',20),(1172,4268369,'2008-11-11 17:30:00',21),(1173,4268388,'2008-11-11 17:35:00',19),(1174,4268408,'2008-11-11 17:40:00',20),(1175,4268429,'2008-11-11 17:45:00',21),(1176,4268450,'2008-11-11 17:50:00',21),(1177,4268468,'2008-11-11 17:55:00',18),(1178,4268489,'2008-11-11 18:00:00',21),(1179,4268508,'2008-11-11 18:05:00',19),(1180,4268530,'2008-11-11 18:10:00',22),(1181,4268551,'2008-11-11 18:15:00',21),(1182,4268572,'2008-11-11 18:20:00',21),(1183,4268597,'2008-11-11 18:25:00',25),(1184,4268709,'2008-11-11 18:35:00',112),(1185,4268770,'2008-11-11 18:40:00',61),(1186,4269130,'2008-11-11 19:00:00',360),(1187,4269197,'2008-11-11 19:05:00',67),(1188,4269277,'2008-11-11 19:10:00',80),(1189,4269358,'2008-11-11 19:15:00',81),(1190,4269437,'2008-11-11 19:20:00',79),(1191,4269504,'2008-11-11 19:25:00',67),(1192,4269570,'2008-11-11 19:30:00',66),(1193,4269627,'2008-11-11 19:35:00',57),(1194,4269699,'2008-11-11 19:40:00',72),(1195,4269756,'2008-11-11 19:45:00',57),(1196,4269809,'2008-11-11 19:50:00',53),(1197,4269880,'2008-11-11 19:55:00',71),(1198,4269986,'2008-11-11 20:00:00',106),(1199,4270090,'2008-11-11 20:05:00',104),(1200,4270391,'2008-11-11 20:10:00',301),(1201,4270691,'2008-11-11 20:15:00',300),(1202,4270956,'2008-11-11 20:20:00',265),(1203,4271018,'2008-11-11 20:25:00',62),(1204,4271071,'2008-11-11 20:30:00',53),(1205,4271121,'2008-11-11 20:35:00',50),(1206,4271197,'2008-11-11 20:40:00',76),(1207,4271344,'2008-11-11 20:45:00',147),(1208,4271644,'2008-11-11 20:50:00',300),(1209,4271942,'2008-11-11 20:55:00',298),(1210,4272071,'2008-11-11 21:00:00',129),(1211,4272119,'2008-11-11 21:05:00',48),(1212,4272222,'2008-11-11 21:15:00',103),(1213,4272319,'2008-11-11 21:30:00',97),(1214,4272345,'2008-11-11 21:35:00',26),(1215,4272374,'2008-11-11 21:40:00',29),(1216,4272404,'2008-11-11 21:45:00',30),(1217,4272433,'2008-11-11 21:50:00',29),(1218,4272460,'2008-11-11 21:55:00',27),(1219,4272574,'2008-11-11 22:15:00',114),(1220,4272641,'2008-11-11 22:25:00',67),(1221,4272745,'2008-11-11 22:40:00',104),(1222,4272780,'2008-11-11 22:45:00',35),(1223,4272806,'2008-11-11 22:50:00',26),(1224,4272835,'2008-11-11 22:55:00',29),(1225,4272951,'2008-11-11 23:00:00',116),(1226,4272980,'2008-11-11 23:05:00',29),(1227,4273006,'2008-11-11 23:10:00',26),(1228,4273035,'2008-11-11 23:15:00',29),(1229,4273065,'2008-11-11 23:20:00',30),(1230,4273091,'2008-11-11 23:25:00',26),(1231,4273120,'2008-11-11 23:30:00',29),(1232,4273149,'2008-11-11 23:35:00',29),(1233,4273178,'2008-11-11 23:40:00',29),(1234,4273205,'2008-11-11 23:45:00',27),(1235,4273211,'2008-11-11 23:50:05',6),(1236,4273263,'2008-11-11 23:55:00',52),(1237,4273293,'2008-11-12 00:00:00',30),(1238,4273320,'2008-11-12 00:05:00',27),(1239,4273349,'2008-11-12 00:10:00',29),(1240,4273386,'2008-11-12 00:15:00',37),(1241,4273454,'2008-11-12 00:25:00',68),(1242,4273486,'2008-11-12 00:30:00',32),(1243,4273637,'2008-11-12 00:55:00',151),(1244,4273725,'2008-11-12 01:10:00',88),(1245,4273750,'2008-11-12 01:15:00',25),(1246,4273771,'2008-11-12 01:20:00',21),(1247,4273793,'2008-11-12 01:25:00',22),(1248,4273814,'2008-11-12 01:30:00',21),(1249,4273833,'2008-11-12 01:35:00',19),(1250,4273855,'2008-11-12 01:40:00',22),(1251,4273877,'2008-11-12 01:45:00',22),(1252,4273898,'2008-11-12 01:50:00',21),(1253,4273918,'2008-11-12 01:55:00',20),(1254,4273937,'2008-11-12 02:00:00',19),(1255,4273961,'2008-11-12 02:05:00',24),(1256,4273983,'2008-11-12 02:10:00',22),(1257,4274012,'2008-11-12 02:15:00',29),(1258,4274040,'2008-11-12 02:20:00',28),(1259,4274068,'2008-11-12 02:25:00',28),(1260,4274093,'2008-11-12 02:30:00',25),(1261,4274118,'2008-11-12 02:35:00',25),(1262,4274140,'2008-11-12 02:40:00',22),(1263,4274159,'2008-11-12 02:45:00',19),(1264,4274181,'2008-11-12 02:50:00',22),(1265,4274292,'2008-11-12 02:55:00',111),(1266,4274314,'2008-11-12 03:00:00',22),(1267,4274333,'2008-11-12 03:05:00',19),(1268,4274355,'2008-11-12 03:10:00',22),(1269,4274376,'2008-11-12 03:15:00',21),(1270,4274398,'2008-11-12 03:20:00',22),(1271,4274417,'2008-11-12 03:25:00',19),(1272,4274439,'2008-11-12 03:30:00',22),(1273,4274460,'2008-11-12 03:35:00',21),(1274,4274480,'2008-11-12 03:40:00',20),(1275,4274501,'2008-11-12 03:45:00',21),(1276,4274523,'2008-11-12 03:50:00',22),(1277,4274544,'2008-11-12 03:55:00',21),(1278,4274564,'2008-11-12 04:00:00',20),(1279,4274583,'2008-11-12 04:05:00',19),(1280,4274607,'2008-11-12 04:10:00',24),(1281,4274634,'2008-11-12 04:15:00',27),(1282,4274657,'2008-11-12 04:20:00',23),(1283,4274688,'2008-11-12 04:25:00',31),(1284,4274716,'2008-11-12 04:30:00',28),(1285,4274740,'2008-11-12 04:35:00',24),(1286,4274764,'2008-11-12 04:40:00',24),(1287,4274786,'2008-11-12 04:45:00',22),(1288,4274807,'2008-11-12 04:50:00',21),(1289,4274827,'2008-11-12 04:55:00',20),(1290,4274848,'2008-11-12 05:00:00',21),(1291,4274868,'2008-11-12 05:05:00',20),(1292,4274892,'2008-11-12 05:10:00',24),(1293,4274911,'2008-11-12 05:15:00',19),(1294,4274933,'2008-11-12 05:20:00',22),(1295,4274954,'2008-11-12 05:25:00',21),(1296,4274973,'2008-11-12 05:30:00',19),(1297,4274995,'2008-11-12 05:35:00',22),(1298,4275016,'2008-11-12 05:40:00',21),(1299,4275038,'2008-11-12 05:45:00',22),(1300,4275058,'2008-11-12 05:50:00',20),(1301,4275078,'2008-11-12 05:55:00',20),(1302,4275102,'2008-11-12 06:00:00',24),(1303,4275122,'2008-11-12 06:05:00',20),(1304,4275145,'2008-11-12 06:10:00',23),(1305,4275169,'2008-11-12 06:15:00',24),(1306,4275193,'2008-11-12 06:20:00',24),(1307,4275222,'2008-11-12 06:25:00',29),(1308,4275253,'2008-11-12 06:30:00',31),(1309,4275294,'2008-11-12 06:35:00',41),(1310,4275337,'2008-11-12 06:40:00',43),(1311,4275370,'2008-11-12 06:45:00',33),(1312,4275397,'2008-11-12 06:50:00',27),(1313,4275453,'2008-11-12 06:55:00',56),(1314,4275531,'2008-11-12 07:00:00',78),(1315,4275552,'2008-11-12 07:05:00',21),(1316,4275573,'2008-11-12 07:10:00',21),(1317,4275594,'2008-11-12 07:15:00',21),(1318,4275613,'2008-11-12 07:20:00',19),(1319,4275634,'2008-11-12 07:25:00',21),(1320,4275655,'2008-11-12 07:30:00',21),(1321,4275676,'2008-11-12 07:35:00',21),(1322,4275695,'2008-11-12 07:40:00',19),(1323,4275716,'2008-11-12 07:45:00',21),(1324,4275737,'2008-11-12 07:50:00',21),(1325,4275753,'2008-11-12 07:55:00',16),(1326,4275776,'2008-11-12 08:00:00',23),(1327,4275797,'2008-11-12 08:05:00',21),(1328,4275818,'2008-11-12 08:10:00',21),(1329,4275837,'2008-11-12 08:15:00',19),(1330,4275858,'2008-11-12 08:20:00',21),(1331,4275879,'2008-11-12 08:25:00',21),(1332,4275900,'2008-11-12 08:30:00',21),(1333,4275924,'2008-11-12 08:35:00',24),(1334,4275950,'2008-11-12 08:40:00',26),(1335,4275977,'2008-11-12 08:45:00',27),(1336,4276004,'2008-11-12 08:50:00',27),(1337,4276031,'2008-11-12 08:55:00',27),(1338,4276053,'2008-11-12 09:00:00',22),(1339,4276074,'2008-11-12 09:05:00',21),(1340,4276093,'2008-11-12 09:10:00',19),(1341,4276114,'2008-11-12 09:15:00',21),(1342,4276135,'2008-11-12 09:20:00',21),(1343,4276154,'2008-11-12 09:25:00',19),(1344,4276175,'2008-11-12 09:30:00',21),(1345,4276196,'2008-11-12 09:35:00',21),(1346,4276217,'2008-11-12 09:40:00',21),(1347,4276236,'2008-11-12 09:45:00',19),(1348,4276240,'2008-11-12 09:50:00',4),(1349,4276278,'2008-11-12 09:55:00',38),(1350,4276297,'2008-11-12 10:00:00',19),(1351,4276317,'2008-11-12 10:05:00',20),(1352,4276338,'2008-11-12 10:10:00',21),(1353,4276359,'2008-11-12 10:15:00',21),(1354,4276378,'2008-11-12 10:20:00',19),(1355,4276399,'2008-11-12 10:25:00',21),(1356,4276420,'2008-11-12 10:30:00',21),(1357,4276441,'2008-11-12 10:35:00',21),(1358,4276458,'2008-11-12 10:40:00',17),(1359,4276482,'2008-11-12 10:45:00',24),(1360,4276533,'2008-11-12 10:50:00',51),(1361,4276621,'2008-11-12 10:55:00',88),(1362,4276645,'2008-11-12 11:00:00',24),(1363,4276672,'2008-11-12 11:05:00',27),(1364,4276698,'2008-11-12 11:10:00',26),(1365,4276717,'2008-11-12 11:15:00',19),(1366,4276737,'2008-11-12 11:20:00',20),(1367,4276758,'2008-11-12 11:25:00',21),(1368,4276779,'2008-11-12 11:30:00',21),(1369,4276798,'2008-11-12 11:35:00',19),(1370,4276817,'2008-11-12 11:40:00',19),(1371,4276840,'2008-11-12 11:45:00',23),(1372,4276861,'2008-11-12 11:50:00',21),(1373,4276879,'2008-11-12 11:55:00',18),(1374,4276900,'2008-11-12 12:00:00',21),(1375,4276921,'2008-11-12 12:05:00',21),(1376,4276938,'2008-11-12 12:10:00',17),(1377,4276961,'2008-11-12 12:15:00',23),(1378,4276982,'2008-11-12 12:20:00',21),(1379,4277003,'2008-11-12 12:25:00',21),(1380,4277022,'2008-11-12 12:30:00',19),(1381,4277041,'2008-11-12 12:35:00',19),(1382,4277065,'2008-11-12 12:40:00',24),(1383,4277086,'2008-11-12 12:45:00',21),(1384,4277105,'2008-11-12 12:50:00',19),(1385,4277126,'2008-11-12 12:55:00',21),(1386,4277151,'2008-11-12 13:00:00',25),(1387,4277176,'2008-11-12 13:05:00',25),(1388,4277204,'2008-11-12 13:10:00',28),(1389,4277231,'2008-11-12 13:15:00',27),(1390,4277258,'2008-11-12 13:20:00',27),(1391,4277280,'2008-11-12 13:25:00',22),(1392,4277297,'2008-11-12 13:30:00',17),(1393,4277322,'2008-11-12 13:35:00',25),(1394,4277343,'2008-11-12 13:40:00',21),(1395,4277361,'2008-11-12 13:45:00',18),(1396,4277382,'2008-11-12 13:50:00',21),(1397,4277403,'2008-11-12 13:55:00',21),(1398,4277422,'2008-11-12 14:00:00',19),(1399,4277443,'2008-11-12 14:05:00',21),(1400,4277464,'2008-11-12 14:10:00',21),(1401,4277485,'2008-11-12 14:15:00',21),(1402,4277504,'2008-11-12 14:20:00',19),(1403,4277525,'2008-11-12 14:25:00',21),(1404,4277546,'2008-11-12 14:30:00',21),(1405,4277567,'2008-11-12 14:35:00',21),(1406,4277669,'2008-11-12 14:40:00',102),(1407,4277688,'2008-11-12 14:45:00',19),(1408,4277711,'2008-11-12 14:50:00',23),(1409,4277730,'2008-11-12 14:55:00',19),(1410,4277751,'2008-11-12 15:00:00',21),(1411,4277772,'2008-11-12 15:05:00',21),(1412,4277793,'2008-11-12 15:10:00',21),(1413,4277815,'2008-11-12 15:15:00',22),(1414,4277844,'2008-11-12 15:20:00',29),(1415,4277872,'2008-11-12 15:25:00',28),(1416,4277899,'2008-11-12 15:30:00',27),(1417,4277923,'2008-11-12 15:35:00',24),(1418,4277948,'2008-11-12 15:40:00',25),(1419,4277969,'2008-11-12 15:45:00',21),(1420,4277988,'2008-11-12 15:50:00',19),(1421,4278009,'2008-11-12 15:55:00',21),(1422,4278030,'2008-11-12 16:00:00',21),(1423,4278051,'2008-11-12 16:05:00',21),(1424,4278070,'2008-11-12 16:10:00',19),(1425,4278091,'2008-11-12 16:15:00',21),(1426,4278112,'2008-11-12 16:20:00',21),(1427,4278134,'2008-11-12 16:25:00',22),(1428,4278157,'2008-11-12 16:30:00',23),(1429,4278194,'2008-11-12 16:35:00',37),(1430,4278225,'2008-11-12 16:40:00',31),(1431,4278258,'2008-11-12 16:45:00',33),(1432,4278328,'2008-11-12 16:50:00',70),(1433,4278402,'2008-11-12 16:55:00',74),(1434,4278446,'2008-11-12 17:00:00',44),(1435,4278481,'2008-11-12 17:05:00',35),(1436,4278528,'2008-11-12 17:10:00',47),(1437,4278572,'2008-11-12 17:15:00',44),(1438,4278615,'2008-11-12 17:20:00',43),(1439,4278749,'2008-11-12 17:25:00',134),(1440,4278821,'2008-11-12 17:30:00',72),(1441,4278892,'2008-11-12 17:35:00',71),(1442,4278957,'2008-11-12 17:40:00',65),(1443,4279074,'2008-11-12 17:45:00',117),(1444,4279134,'2008-11-12 17:50:00',60),(1445,4279191,'2008-11-12 17:55:00',57),(1446,4279238,'2008-11-12 18:00:00',47),(1447,4279295,'2008-11-12 18:05:00',57),(1448,4279345,'2008-11-12 18:10:00',50),(1449,4279455,'2008-11-12 18:20:00',110),(1450,4279593,'2008-11-12 18:25:00',138),(1451,4279678,'2008-11-12 18:35:00',85),(1452,4279759,'2008-11-12 18:40:00',81),(1453,4279815,'2008-11-12 18:45:00',56),(1454,4279885,'2008-11-12 18:50:00',70),(1455,4281299,'2008-11-12 20:55:00',1414),(1456,4281450,'2008-11-12 21:30:00',151),(1457,4281584,'2008-11-12 21:35:00',134),(1458,4281622,'2008-11-12 21:40:00',38),(1459,4281659,'2008-11-12 21:45:00',37),(1460,4281705,'2008-11-12 21:50:00',46),(1461,4281746,'2008-11-12 21:55:00',41),(1462,4281777,'2008-11-12 22:00:00',31),(1463,4281849,'2008-11-12 22:10:00',72),(1464,4281899,'2008-11-12 22:15:00',50),(1465,4282042,'2008-11-12 22:20:00',143),(1466,4282103,'2008-11-12 22:25:00',61),(1467,4282163,'2008-11-12 22:30:00',60),(1468,4282218,'2008-11-12 22:35:00',55),(1469,4282278,'2008-11-12 22:40:00',60),(1470,4282338,'2008-11-12 22:45:00',60),(1471,4282399,'2008-11-12 22:50:00',61),(1472,4282449,'2008-11-12 22:55:00',50),(1473,4282453,'2008-11-12 23:10:00',4),(1474,4282548,'2008-11-12 23:25:00',95),(1475,4282737,'2008-11-12 23:40:00',189),(1476,4282773,'2008-11-12 23:45:00',36),(1477,4282801,'2008-11-12 23:50:00',28),(1478,4282838,'2008-11-12 23:55:00',37),(1479,4282868,'2008-11-13 00:00:00',30),(1480,4282892,'2008-11-13 00:05:00',24),(1481,4282926,'2008-11-13 00:10:00',34),(1482,4282956,'2008-11-13 00:15:00',30),(1483,4282986,'2008-11-13 00:20:00',30),(1484,4283013,'2008-11-13 00:25:00',27),(1485,4283044,'2008-11-13 00:30:00',31),(1486,4283073,'2008-11-13 00:35:00',29),(1487,4283103,'2008-11-13 00:40:00',30),(1488,4283161,'2008-11-13 00:50:00',58),(1489,4283191,'2008-11-13 00:55:00',30),(1490,4283219,'2008-11-13 01:00:00',28),(1491,4283244,'2008-11-13 01:05:00',25),(1492,4283267,'2008-11-13 01:10:00',23),(1493,4283289,'2008-11-13 01:15:00',22),(1494,4283309,'2008-11-13 01:20:00',20),(1495,4283332,'2008-11-13 01:25:00',23),(1496,4283354,'2008-11-13 01:30:00',22),(1497,4283383,'2008-11-13 01:35:00',29),(1498,4283409,'2008-11-13 01:40:00',26),(1499,4283438,'2008-11-13 01:45:00',29),(1500,4283467,'2008-11-13 01:50:00',29),(1501,4283492,'2008-11-13 01:55:00',25),(1502,4283517,'2008-11-13 02:00:00',25),(1503,4283539,'2008-11-13 02:05:00',22),(1504,4283562,'2008-11-13 02:10:00',23),(1505,4283665,'2008-11-13 02:15:00',103),(1506,4283687,'2008-11-13 02:20:00',22),(1507,4283710,'2008-11-13 02:25:00',23),(1508,4283732,'2008-11-13 02:30:00',22),(1509,4283752,'2008-11-13 02:35:00',20),(1510,4283775,'2008-11-13 02:40:00',23),(1511,4283797,'2008-11-13 02:45:00',22),(1512,4283818,'2008-11-13 02:50:00',21),(1513,4283838,'2008-11-13 02:55:00',20),(1514,4283862,'2008-11-13 03:00:00',24),(1515,4283885,'2008-11-13 03:05:00',23),(1516,4283905,'2008-11-13 03:10:00',20),(1517,4283928,'2008-11-13 03:15:00',23),(1518,4283950,'2008-11-13 03:20:00',22),(1519,4283970,'2008-11-13 03:25:00',20),(1520,4283993,'2008-11-13 03:30:00',23),(1521,4284015,'2008-11-13 03:35:00',22),(1522,4284039,'2008-11-13 03:40:00',24),(1523,4284066,'2008-11-13 03:45:00',27),(1524,4284096,'2008-11-13 03:50:00',30),(1525,4284125,'2008-11-13 03:55:00',29),(1526,4284153,'2008-11-13 04:00:00',28),(1527,4284179,'2008-11-13 04:05:00',26),(1528,4284201,'2008-11-13 04:10:00',22),(1529,4284224,'2008-11-13 04:15:00',23),(1530,4284244,'2008-11-13 04:20:00',20),(1531,4284267,'2008-11-13 04:25:00',23),(1532,4284289,'2008-11-13 04:30:00',22),(1533,4284312,'2008-11-13 04:35:00',23),(1534,4284332,'2008-11-13 04:40:00',20),(1535,4284355,'2008-11-13 04:45:00',23),(1536,4284377,'2008-11-13 04:50:00',22),(1537,4284400,'2008-11-13 04:55:00',23),(1538,4284420,'2008-11-13 05:00:00',20),(1539,4284443,'2008-11-13 05:05:00',23),(1540,4284465,'2008-11-13 05:10:00',22),(1541,4284486,'2008-11-13 05:15:00',21),(1542,4284508,'2008-11-13 05:20:00',22),(1543,4284531,'2008-11-13 05:25:00',23),(1544,4284553,'2008-11-13 05:30:00',22),(1545,4284573,'2008-11-13 05:35:00',20),(1546,4284596,'2008-11-13 05:40:00',23),(1547,4284618,'2008-11-13 05:45:00',22),(1548,4284641,'2008-11-13 05:50:00',23),(1549,4284668,'2008-11-13 05:55:00',27),(1550,4284749,'2008-11-13 06:00:00',81),(1551,4284810,'2008-11-13 06:05:00',61),(1552,4284833,'2008-11-13 06:10:00',23),(1553,4284864,'2008-11-13 06:15:00',31),(1554,4284888,'2008-11-13 06:20:00',24),(1555,4284910,'2008-11-13 06:25:00',22),(1556,4284931,'2008-11-13 06:30:00',21),(1557,4284953,'2008-11-13 06:35:00',22),(1558,4284974,'2008-11-13 06:40:00',21),(1559,4284996,'2008-11-13 06:45:00',22),(1560,4285016,'2008-11-13 06:50:00',20),(1561,4285039,'2008-11-13 06:55:00',23),(1562,4285061,'2008-11-13 07:00:00',22),(1563,4285081,'2008-11-13 07:05:00',20),(1564,4285104,'2008-11-13 07:10:00',23),(1565,4285128,'2008-11-13 07:15:00',24),(1566,4285152,'2008-11-13 07:20:00',24),(1567,4285174,'2008-11-13 07:25:00',22),(1568,4285198,'2008-11-13 07:30:00',24),(1569,4285222,'2008-11-13 07:35:00',24),(1570,4285247,'2008-11-13 07:40:00',25),(1571,4285275,'2008-11-13 07:45:00',28),(1572,4285305,'2008-11-13 07:50:20',30),(1573,4285336,'2008-11-13 07:55:00',31),(1574,4285353,'2008-11-13 08:00:00',17),(1575,4285380,'2008-11-13 08:05:00',27),(1576,4285410,'2008-11-13 08:10:00',30),(1577,4285438,'2008-11-13 08:15:00',28),(1578,4285464,'2008-11-13 08:20:00',26),(1579,4285491,'2008-11-13 08:25:00',27),(1580,4285518,'2008-11-13 08:30:00',27),(1581,4285539,'2008-11-13 08:35:00',21),(1582,4285559,'2008-11-13 08:40:00',20),(1583,4285581,'2008-11-13 08:45:00',22),(1584,4285603,'2008-11-13 08:50:00',22),(1585,4285623,'2008-11-13 08:55:00',20),(1586,4285644,'2008-11-13 09:00:00',21),(1587,4285666,'2008-11-13 09:05:00',22),(1588,4285688,'2008-11-13 09:10:00',22),(1589,4285708,'2008-11-13 09:15:00',20),(1590,4285730,'2008-11-13 09:20:00',22),(1591,4285751,'2008-11-13 09:25:00',21),(1592,4285771,'2008-11-13 09:30:00',20),(1593,4285793,'2008-11-13 09:35:00',22),(1594,4285815,'2008-11-13 09:40:00',22),(1595,4285896,'2008-11-13 09:45:00',81),(1596,4285943,'2008-11-13 09:50:00',47),(1597,4285963,'2008-11-13 09:55:00',20),(1598,4286009,'2008-11-13 10:05:00',46),(1599,4286029,'2008-11-13 10:10:00',20),(1600,4286050,'2008-11-13 10:15:00',21),(1601,4286074,'2008-11-13 10:20:00',24),(1602,4286129,'2008-11-13 10:30:00',55),(1603,4286157,'2008-11-13 10:35:00',28),(1604,4286210,'2008-11-13 10:45:00',53),(1605,4286231,'2008-11-13 10:50:00',21),(1606,4286253,'2008-11-13 10:55:00',22),(1607,4286275,'2008-11-13 11:00:00',22),(1608,4286295,'2008-11-13 11:05:00',20),(1609,4286316,'2008-11-13 11:10:00',21),(1610,4286338,'2008-11-13 11:15:00',22),(1611,4286358,'2008-11-13 11:20:00',20),(1612,4286380,'2008-11-13 11:25:00',22),(1613,4286401,'2008-11-13 11:30:00',21),(1614,4286423,'2008-11-13 11:35:00',22),(1615,4286443,'2008-11-13 11:40:00',20),(1616,4286465,'2008-11-13 11:45:00',22),(1617,4286486,'2008-11-13 11:50:00',21),(1618,4286508,'2008-11-13 11:55:00',22),(1619,4286528,'2008-11-13 12:00:00',20),(1620,4286550,'2008-11-13 12:05:00',22),(1621,4286657,'2008-11-13 12:10:00',107),(1622,4286691,'2008-11-13 12:15:00',34),(1623,4286729,'2008-11-13 12:20:00',38),(1624,4286763,'2008-11-13 12:25:00',34),(1625,4286808,'2008-11-13 12:30:00',45),(1626,4286849,'2008-11-13 12:35:00',41),(1627,4286893,'2008-11-13 12:40:00',44),(1628,4286936,'2008-11-13 12:45:00',43),(1629,4287009,'2008-11-13 12:50:00',73),(1630,4287096,'2008-11-13 12:55:00',87),(1631,4287142,'2008-11-13 13:00:00',46),(1632,4287187,'2008-11-13 13:05:00',45),(1633,4287228,'2008-11-13 13:10:00',41),(1634,4287272,'2008-11-13 13:15:00',44),(1635,4287317,'2008-11-13 13:20:00',45),(1636,4287362,'2008-11-13 13:25:00',45),(1637,4287402,'2008-11-13 13:30:00',40),(1638,4287441,'2008-11-13 13:35:00',39),(1639,4287487,'2008-11-13 13:40:00',46),(1640,4287597,'2008-11-13 13:45:00',110),(1641,4287655,'2008-11-13 13:50:00',58),(1642,4287698,'2008-11-13 13:55:00',43),(1643,4287744,'2008-11-13 14:00:00',46),(1644,4287781,'2008-11-13 14:05:00',37),(1645,4287825,'2008-11-13 14:10:00',44),(1646,4287869,'2008-11-13 14:15:00',44),(1647,4287912,'2008-11-13 14:20:00',43),(1648,4287947,'2008-11-13 14:25:00',35),(1649,4287987,'2008-11-13 14:30:00',40),(1650,4288027,'2008-11-13 14:35:00',40),(1651,4288062,'2008-11-13 14:40:00',35),(1652,4288107,'2008-11-13 14:45:00',45),(1653,4288153,'2008-11-13 14:50:00',46),(1654,4288197,'2008-11-13 14:55:00',44),(1655,4288245,'2008-11-13 15:00:00',48),(1656,4288288,'2008-11-13 15:05:00',43),(1657,4288331,'2008-11-13 15:10:00',43),(1658,4288890,'2008-11-13 16:25:00',559),(1659,4288996,'2008-11-13 16:45:00',106),(1660,4289006,'2008-11-13 16:50:00',10),(1661,4289050,'2008-11-13 16:55:00',44),(1662,4289079,'2008-11-13 17:00:00',29),(1663,4289106,'2008-11-13 17:05:00',27),(1664,4289128,'2008-11-13 17:10:00',22),(1665,4289149,'2008-11-13 17:15:00',21),(1666,4289168,'2008-11-13 17:20:00',19),(1667,4289186,'2008-11-13 17:25:00',18),(1668,4289221,'2008-11-13 17:30:00',35),(1669,4289277,'2008-11-13 17:35:00',56),(1670,4289335,'2008-11-13 17:40:00',58),(1671,4289380,'2008-11-13 17:45:00',45),(1672,4289489,'2008-11-13 17:50:00',109),(1673,4289599,'2008-11-13 17:55:00',110),(1674,4289648,'2008-11-13 18:00:00',49),(1675,4289692,'2008-11-13 18:05:00',44),(1676,4289742,'2008-11-13 18:10:00',50),(1677,4289792,'2008-11-13 18:15:00',50),(1678,4289837,'2008-11-13 18:20:00',45),(1679,4289883,'2008-11-13 18:25:00',46),(1680,4289917,'2008-11-13 18:30:00',34),(1681,4289956,'2008-11-13 18:35:00',39),(1682,4289999,'2008-11-13 18:40:00',43),(1683,4290042,'2008-11-13 18:45:00',43),(1684,4290090,'2008-11-13 18:50:00',48),(1685,4290137,'2008-11-13 18:55:00',47),(1686,4290176,'2008-11-13 19:00:00',39),(1687,4290219,'2008-11-13 19:05:00',43),(1688,4290261,'2008-11-13 19:10:00',42),(1689,4290297,'2008-11-13 19:15:00',36),(1690,4290351,'2008-11-13 19:20:00',54),(1691,4290409,'2008-11-13 19:25:00',58),(1692,4290415,'2008-11-13 19:30:15',6),(1693,4290518,'2008-11-13 19:35:00',103),(1694,4290577,'2008-11-13 19:40:00',59),(1695,4290629,'2008-11-13 19:45:00',52),(1696,4290694,'2008-11-13 19:50:00',65),(1697,4290736,'2008-11-13 19:55:00',42),(1698,4290756,'2008-11-13 20:00:00',20),(1699,4290769,'2008-11-13 20:05:00',13),(1700,4290782,'2008-11-13 20:10:00',13),(1701,4290795,'2008-11-13 20:15:00',13),(1702,4290808,'2008-11-13 20:20:00',13),(1703,4290821,'2008-11-13 20:25:00',13),(1704,4290832,'2008-11-13 20:30:00',11),(1705,4290844,'2008-11-13 20:35:00',12),(1706,4290858,'2008-11-13 20:40:00',14),(1707,4290871,'2008-11-13 20:45:00',13),(1708,4290889,'2008-11-13 20:50:00',18),(1709,4290909,'2008-11-13 20:55:00',20),(1710,4290929,'2008-11-13 21:00:00',20),(1711,4290946,'2008-11-13 21:05:00',17),(1712,4290963,'2008-11-13 21:10:00',17),(1713,4290979,'2008-11-13 21:15:00',16),(1714,4290993,'2008-11-13 21:20:00',14),(1715,4291005,'2008-11-13 21:25:00',12),(1716,4291018,'2008-11-13 21:30:00',13),(1717,4291031,'2008-11-13 21:35:00',13),(1718,4291043,'2008-11-13 21:40:00',12),(1719,4291056,'2008-11-13 21:45:00',13),(1720,4291068,'2008-11-13 21:50:00',12),(1721,4291148,'2008-11-13 21:55:00',80),(1722,4291183,'2008-11-13 22:00:00',35),(1723,4291196,'2008-11-13 22:05:00',13),(1724,4291209,'2008-11-13 22:10:00',13),(1725,4291221,'2008-11-13 22:15:00',12),(1726,4291233,'2008-11-13 22:20:00',12),(1727,4291246,'2008-11-13 22:25:00',13),(1728,4291259,'2008-11-13 22:30:00',13),(1729,4291271,'2008-11-13 22:35:00',12),(1730,4291284,'2008-11-13 22:40:00',13),(1731,4291297,'2008-11-13 22:45:00',13),(1732,4291309,'2008-11-13 22:50:00',12),(1733,4291323,'2008-11-13 22:55:00',14),(1734,4291344,'2008-11-13 23:00:00',21),(1735,4291363,'2008-11-13 23:05:00',19),(1736,4291382,'2008-11-13 23:10:00',19),(1737,4291399,'2008-11-13 23:15:00',17),(1738,4291417,'2008-11-13 23:20:00',18),(1739,4291429,'2008-11-13 23:25:00',12),(1740,4291442,'2008-11-13 23:30:00',13),(1741,4291455,'2008-11-13 23:35:00',13),(1742,4291468,'2008-11-13 23:40:00',13),(1743,4291481,'2008-11-13 23:45:00',13),(1744,4291492,'2008-11-13 23:50:00',11),(1745,4291504,'2008-11-13 23:55:00',12),(1746,4291518,'2008-11-14 00:00:00',14),(1747,4291530,'2008-11-14 00:05:00',12),(1748,4291543,'2008-11-14 00:10:00',13),(1749,4291556,'2008-11-14 00:15:00',13),(1750,4291569,'2008-11-14 00:20:00',13),(1751,4291580,'2008-11-14 00:25:00',11),(1752,4291593,'2008-11-14 00:30:00',13),(1753,4291606,'2008-11-14 00:35:00',13),(1754,4291619,'2008-11-14 00:40:00',13),(1755,4291631,'2008-11-14 00:45:00',12),(1756,4291644,'2008-11-14 00:50:00',13),(1757,4291657,'2008-11-14 00:55:00',13),(1758,4291669,'2008-11-14 01:00:00',12),(1759,4291682,'2008-11-14 01:05:00',13),(1760,4291702,'2008-11-14 01:10:00',20),(1761,4291722,'2008-11-14 01:15:00',20),(1762,4291740,'2008-11-14 01:20:00',18),(1763,4291759,'2008-11-14 01:25:00',19),(1764,4291778,'2008-11-14 01:30:00',19),(1765,4291792,'2008-11-14 01:35:00',14),(1766,4291805,'2008-11-14 01:40:00',13),(1767,4291818,'2008-11-14 01:45:00',13),(1768,4291831,'2008-11-14 01:50:00',13),(1769,4291843,'2008-11-14 01:55:00',12),(1770,4291876,'2008-11-14 02:00:00',33),(1771,4291953,'2008-11-14 02:05:00',77),(1772,4291968,'2008-11-14 02:10:00',15),(1773,4291979,'2008-11-14 02:15:00',11),(1774,4291992,'2008-11-14 02:20:00',13),(1775,4292005,'2008-11-14 02:25:00',13),(1776,4292017,'2008-11-14 02:30:00',12),(1777,4292030,'2008-11-14 02:35:00',13),(1778,4292043,'2008-11-14 02:40:00',13),(1779,4292056,'2008-11-14 02:45:00',13),(1780,4292068,'2008-11-14 02:50:00',12),(1781,4292081,'2008-11-14 02:55:00',13),(1782,4292094,'2008-11-14 03:00:00',13),(1783,4292104,'2008-11-14 03:05:00',10),(1784,4292118,'2008-11-14 03:10:00',14),(1785,4292131,'2008-11-14 03:15:00',13),(1786,4292144,'2008-11-14 03:20:00',13),(1787,4292162,'2008-11-14 03:25:00',18),(1788,4292182,'2008-11-14 03:30:00',20),(1789,4292202,'2008-11-14 03:35:00',20),(1790,4292219,'2008-11-14 03:40:00',17),(1791,4292238,'2008-11-14 03:45:00',19),(1792,4292253,'2008-11-14 03:50:00',15),(1793,4292266,'2008-11-14 03:55:00',13),(1794,4292278,'2008-11-14 04:00:00',12),(1795,4292291,'2008-11-14 04:05:00',13),(1796,4292304,'2008-11-14 04:10:00',13),(1797,4292317,'2008-11-14 04:15:00',13),(1798,4292329,'2008-11-14 04:20:00',12),(1799,4292342,'2008-11-14 04:25:00',13),(1800,4292355,'2008-11-14 04:30:00',13),(1801,4292367,'2008-11-14 04:35:00',12),(1802,4292380,'2008-11-14 04:40:00',13),(1803,4292393,'2008-11-14 04:45:00',13),(1804,4292406,'2008-11-14 04:50:00',13),(1805,4292418,'2008-11-14 04:55:00',12),(1806,4292431,'2008-11-14 05:00:00',13),(1807,4292444,'2008-11-14 05:05:00',13),(1808,4292456,'2008-11-14 05:10:00',12),(1809,4292469,'2008-11-14 05:15:00',13),(1810,4292482,'2008-11-14 05:20:00',13),(1811,4292495,'2008-11-14 05:25:00',13),(1812,4292506,'2008-11-14 05:30:00',11),(1813,4292519,'2008-11-14 05:35:00',13),(1814,4292536,'2008-11-14 05:40:00',17),(1815,4292554,'2008-11-14 05:45:00',18),(1816,4292574,'2008-11-14 05:50:00',20),(1817,4292652,'2008-11-14 05:55:00',78),(1818,4292695,'2008-11-14 06:00:00',43),(1819,4292710,'2008-11-14 06:05:00',15),(1820,4292723,'2008-11-14 06:10:00',13),(1821,4292736,'2008-11-14 06:15:00',13),(1822,4292749,'2008-11-14 06:20:00',13),(1823,4292761,'2008-11-14 06:25:00',12),(1824,4292774,'2008-11-14 06:30:00',13),(1825,4292787,'2008-11-14 06:35:00',13),(1826,4292799,'2008-11-14 06:40:00',12),(1827,4292812,'2008-11-14 06:45:00',13),(1828,4292824,'2008-11-14 06:50:00',12),(1829,4292838,'2008-11-14 06:55:00',14),(1830,4292851,'2008-11-14 07:00:00',13),(1831,4292864,'2008-11-14 07:05:00',13),(1832,4292878,'2008-11-14 07:10:00',14),(1833,4292894,'2008-11-14 07:15:00',16),(1834,4292907,'2008-11-14 07:20:00',13),(1835,4292923,'2008-11-14 07:25:00',16),(1836,4292939,'2008-11-14 07:30:00',16),(1837,4292953,'2008-11-14 07:35:00',14),(1838,4292968,'2008-11-14 07:40:00',15),(1839,4292983,'2008-11-14 07:45:00',15),(1840,4292999,'2008-11-14 07:50:00',16),(1841,4293013,'2008-11-14 07:55:00',14),(1842,4293032,'2008-11-14 08:00:00',19),(1843,4293054,'2008-11-14 08:05:00',22),(1844,4293076,'2008-11-14 08:10:00',22),(1845,4293096,'2008-11-14 08:15:00',20),(1846,4293117,'2008-11-14 08:20:00',21),(1847,4293138,'2008-11-14 08:25:00',21),(1848,4293152,'2008-11-14 08:30:00',14),(1849,4293168,'2008-11-14 08:35:00',16),(1850,4293183,'2008-11-14 08:40:00',15),(1851,4293199,'2008-11-14 08:45:00',16),(1852,4293211,'2008-11-14 08:50:00',12),(1853,4293223,'2008-11-14 08:55:00',12),(1854,4293236,'2008-11-14 09:00:00',13),(1855,4293249,'2008-11-14 09:05:00',13),(1856,4293261,'2008-11-14 09:10:00',12),(1857,4293274,'2008-11-14 09:15:00',13),(1858,4293287,'2008-11-14 09:20:00',13),(1859,4293298,'2008-11-14 09:25:00',11),(1860,4293311,'2008-11-14 09:30:00',13),(1861,4293324,'2008-11-14 09:35:00',13),(1862,4293427,'2008-11-14 09:40:00',103),(1863,4293907,'2008-11-14 12:45:19',480),(1864,4293907,'2008-11-14 12:45:43',0),(1865,4294039,'2008-11-14 13:30:00',132),(1866,4294080,'2008-11-14 13:35:00',41),(1867,4294111,'2008-11-14 13:40:00',31),(1868,4294189,'2008-11-14 13:45:00',78),(1869,4294202,'2008-11-14 13:50:00',13),(1870,4294215,'2008-11-14 13:55:00',13),(1871,4294226,'2008-11-14 14:00:00',11),(1872,4294239,'2008-11-14 14:05:00',13),(1873,4294252,'2008-11-14 14:10:00',13),(1874,4294264,'2008-11-14 14:15:00',12),(1875,4294276,'2008-11-14 14:20:00',12),(1876,4294289,'2008-11-14 14:25:00',13),(1877,4294302,'2008-11-14 14:30:00',13),(1878,4294314,'2008-11-14 14:35:00',12),(1879,4294327,'2008-11-14 14:40:00',13),(1880,4294339,'2008-11-14 14:45:00',12),(1881,4294353,'2008-11-14 14:50:00',14),(1882,4294874,'2008-11-14 17:30:00',521),(1883,4294894,'2008-11-14 17:35:00',20),(1884,4294912,'2008-11-14 17:40:00',18),(1885,4294931,'2008-11-14 17:45:00',19),(1886,4294950,'2008-11-14 17:50:00',19),(1887,4294968,'2008-11-14 17:55:00',18),(1888,4294981,'2008-11-14 18:00:00',13),(1889,4294994,'2008-11-14 18:05:00',13),(1890,4295007,'2008-11-14 18:10:00',13),(1891,4295018,'2008-11-14 18:15:00',11),(1892,4295031,'2008-11-14 18:20:00',13),(1893,4295044,'2008-11-14 18:25:00',13),(1894,4295057,'2008-11-14 18:30:00',13),(1895,4295069,'2008-11-14 18:35:00',12),(1896,4295082,'2008-11-14 18:40:00',13),(1897,4295094,'2008-11-14 18:45:00',12),(1898,4295106,'2008-11-14 18:50:00',12),(1899,4295119,'2008-11-14 18:55:00',13),(1900,4295132,'2008-11-14 19:00:00',13),(1901,4295144,'2008-11-14 19:05:00',12),(1902,4295156,'2008-11-14 19:10:00',12),(1903,4295169,'2008-11-14 19:15:00',13),(1904,4295182,'2008-11-14 19:20:00',13),(1905,4295194,'2008-11-14 19:25:00',12),(1906,4295206,'2008-11-14 19:30:00',12),(1907,4295219,'2008-11-14 19:35:00',13),(1908,4295232,'2008-11-14 19:40:00',13),(1909,4295243,'2008-11-14 19:45:00',11),(1910,4295256,'2008-11-14 19:50:00',13),(1911,4295273,'2008-11-14 19:55:00',17),(1912,4295294,'2008-11-14 20:00:00',21),(1913,4295312,'2008-11-14 20:05:00',18),(1914,4295331,'2008-11-14 20:10:00',19),(1915,4295350,'2008-11-14 20:15:00',19),(1916,4295369,'2008-11-14 20:20:00',19),(1917,4295382,'2008-11-14 20:25:00',13),(1918,4295395,'2008-11-14 20:30:00',13),(1919,4295408,'2008-11-14 20:35:00',13),(1920,4295419,'2008-11-14 20:40:00',11),(1921,4295432,'2008-11-14 20:45:00',13),(1922,4295445,'2008-11-14 20:50:00',13),(1923,4295457,'2008-11-14 20:55:00',12),(1924,4295469,'2008-11-14 21:00:00',12),(1925,4295482,'2008-11-14 21:05:00',13),(1926,4295493,'2008-11-14 21:10:00',11),(1927,4295595,'2008-11-14 21:15:00',102),(1928,4295606,'2008-11-14 21:20:00',11),(1929,4295619,'2008-11-14 21:25:00',13),(1930,4295632,'2008-11-14 21:30:00',13),(1931,4295644,'2008-11-14 21:35:00',12),(1932,4295657,'2008-11-14 21:40:00',13),(1933,4295669,'2008-11-14 21:45:00',12),(1934,4295682,'2008-11-14 21:50:00',13),(1935,4295694,'2008-11-14 21:55:00',12),(1936,4295707,'2008-11-14 22:00:00',13),(1937,4295719,'2008-11-14 22:05:00',12),(1938,4295733,'2008-11-14 22:10:00',14),(1939,4295744,'2008-11-14 22:15:00',11),(1940,4295757,'2008-11-14 22:20:00',13),(1941,4295776,'2008-11-14 22:25:00',19),(1942,4295794,'2008-11-14 22:30:00',18),(1943,4295814,'2008-11-14 22:35:00',20),(1944,4295833,'2008-11-14 22:40:00',19),(1945,4295852,'2008-11-14 22:45:00',19),(1946,4295867,'2008-11-14 22:50:00',15),(1947,4295880,'2008-11-14 22:55:00',13),(1948,4295893,'2008-11-14 23:00:00',13),(1949,4295905,'2008-11-14 23:05:00',12),(1950,4295918,'2008-11-14 23:10:00',13),(1951,4295929,'2008-11-14 23:15:00',11),(1952,4295943,'2008-11-14 23:20:00',14),(1953,4295955,'2008-11-14 23:25:00',12),(1954,4295967,'2008-11-14 23:30:00',12),(1955,4295981,'2008-11-14 23:35:00',14),(1956,4298674,'2008-11-15 12:45:00',2693),(1957,4298710,'2008-11-15 12:50:00',36),(1958,4298743,'2008-11-15 12:55:00',33),(1959,4298774,'2008-11-15 13:00:00',31),(1960,4298807,'2008-11-15 13:05:00',33),(1961,4298848,'2008-11-15 13:10:00',41),(1962,4298888,'2008-11-15 13:15:00',40),(1963,4298925,'2008-11-15 13:20:00',37),(1964,4299052,'2008-11-15 13:25:00',127),(1965,4299235,'2008-11-15 13:50:00',183),(1966,4299842,'2008-11-15 15:05:00',607),(1967,4299947,'2008-11-15 15:20:00',105),(1968,4299993,'2008-11-15 15:25:00',46),(1969,4300046,'2008-11-15 15:30:00',53),(1970,4300097,'2008-11-15 15:35:00',51),(1971,4300148,'2008-11-15 15:40:00',51),(1972,4300195,'2008-11-15 15:45:00',47),(1973,4300245,'2008-11-15 15:50:00',50),(1974,4300269,'2008-11-15 15:55:00',24),(1975,4300292,'2008-11-15 16:00:00',23),(1976,4300315,'2008-11-15 16:05:00',23),(1977,4300338,'2008-11-15 16:10:00',23),(1978,4300361,'2008-11-15 16:15:00',23),(1979,4300381,'2008-11-15 16:20:00',20),(1980,4300449,'2008-11-15 16:35:00',68),(1981,4300913,'2008-11-15 17:50:00',464),(1982,4300937,'2008-11-15 17:55:00',24),(1983,4300954,'2008-11-15 18:00:00',17),(1984,4300968,'2008-11-15 18:05:00',14),(1985,4300984,'2008-11-15 18:10:00',16),(1986,4301002,'2008-11-15 18:15:00',18),(1987,4301019,'2008-11-15 18:20:00',17),(1988,4301036,'2008-11-15 18:25:00',17),(1989,4301050,'2008-11-15 18:30:00',14),(1990,4301068,'2008-11-15 18:35:00',18),(1991,4301086,'2008-11-15 18:40:00',18),(1992,4301102,'2008-11-15 18:45:00',16),(1993,4301120,'2008-11-15 18:50:00',18),(1994,4301138,'2008-11-15 18:55:00',18),(1995,4301156,'2008-11-15 19:00:00',18),(1996,4301172,'2008-11-15 19:05:00',16),(1997,4301190,'2008-11-15 19:10:00',18),(1998,4301207,'2008-11-15 19:15:00',17),(1999,4301221,'2008-11-15 19:20:00',14),(2000,4301236,'2008-11-15 19:25:00',15),(2001,4301252,'2008-11-15 19:30:00',16),(2002,4301280,'2008-11-15 19:35:00',28),(2003,4301306,'2008-11-15 19:40:00',26),(2004,4301328,'2008-11-15 19:45:00',22),(2005,4301351,'2008-11-15 19:50:00',23),(2006,4301371,'2008-11-15 19:55:00',20),(2007,4301386,'2008-11-15 20:00:00',15),(2008,4301404,'2008-11-15 20:05:00',18),(2009,4301422,'2008-11-15 20:10:00',18),(2010,4301440,'2008-11-15 20:15:00',18),(2011,4301456,'2008-11-15 20:20:00',16),(2012,4301474,'2008-11-15 20:25:00',18),(2013,4301492,'2008-11-15 20:30:00',18),(2014,4301509,'2008-11-15 20:35:00',17),(2015,4301522,'2008-11-15 20:40:00',13),(2016,4301534,'2008-11-15 20:45:00',12),(2017,4301547,'2008-11-15 20:50:00',13),(2018,4301564,'2008-11-15 20:55:00',17),(2019,4301582,'2008-11-15 21:00:00',18),(2020,4301598,'2008-11-15 21:05:00',16),(2021,4301617,'2008-11-15 21:10:00',19),(2022,4301634,'2008-11-15 21:15:00',17),(2023,4301650,'2008-11-15 21:20:00',16),(2024,4301667,'2008-11-15 21:25:00',17),(2025,4301684,'2008-11-15 21:30:00',17),(2026,4301703,'2008-11-15 21:35:00',19),(2027,4301730,'2008-11-15 21:40:00',27),(2028,4301754,'2008-11-15 21:45:00',24),(2029,4301773,'2008-11-15 21:50:00',19),(2030,4301790,'2008-11-15 21:55:00',17),(2031,4301821,'2008-11-15 22:00:00',31),(2032,4301912,'2008-11-15 22:05:00',91),(2033,4301924,'2008-11-15 22:10:00',12),(2034,4301937,'2008-11-15 22:15:00',13),(2035,4301949,'2008-11-15 22:20:00',12),(2036,4301962,'2008-11-15 22:25:00',13),(2037,4301974,'2008-11-15 22:30:00',12),(2038,4301987,'2008-11-15 22:35:00',13),(2039,4302000,'2008-11-15 22:40:00',13),(2040,4302013,'2008-11-15 22:45:00',13),(2041,4302025,'2008-11-15 22:50:00',12),(2042,4302038,'2008-11-15 22:55:00',13),(2043,4302051,'2008-11-15 23:00:00',13),(2044,4302063,'2008-11-15 23:05:00',12),(2045,4302076,'2008-11-15 23:10:00',13),(2046,4302088,'2008-11-15 23:15:00',12),(2047,4302101,'2008-11-15 23:20:00',13),(2048,4302113,'2008-11-15 23:25:00',12),(2049,4302126,'2008-11-15 23:30:00',13),(2050,4302139,'2008-11-15 23:35:00',13),(2051,4302159,'2008-11-15 23:40:00',20),(2052,4302177,'2008-11-15 23:45:00',18),(2053,4302196,'2008-11-15 23:50:00',19),(2054,4302216,'2008-11-15 23:55:00',20),(2055,4302233,'2008-11-16 00:00:00',17),(2056,4302249,'2008-11-16 00:05:00',16),(2057,4302262,'2008-11-16 00:10:00',13),(2058,4302274,'2008-11-16 00:15:00',12),(2059,4302287,'2008-11-16 00:20:00',13),(2060,4302300,'2008-11-16 00:25:00',13),(2061,4302313,'2008-11-16 00:30:00',13),(2062,4302326,'2008-11-16 00:35:00',13),(2063,4302338,'2008-11-16 00:40:00',12),(2064,4302351,'2008-11-16 00:45:00',13),(2065,4302364,'2008-11-16 00:50:00',13),(2066,4302376,'2008-11-16 00:55:00',12),(2067,4302389,'2008-11-16 01:00:00',13),(2068,4302402,'2008-11-16 01:05:00',13),(2069,4302415,'2008-11-16 01:10:00',13),(2070,4302427,'2008-11-16 01:15:00',12),(2071,4302438,'2008-11-16 01:20:00',11),(2072,4302453,'2008-11-16 01:25:00',15),(2073,4302466,'2008-11-16 01:30:00',13),(2074,4302478,'2008-11-16 01:35:00',12),(2075,4302491,'2008-11-16 01:40:00',13),(2076,4302507,'2008-11-16 01:45:00',16),(2077,4302523,'2008-11-16 01:50:00',16),(2078,4302543,'2008-11-16 01:55:00',20),(2079,4302565,'2008-11-16 02:00:00',22),(2080,4302584,'2008-11-16 02:05:00',19),(2081,4302601,'2008-11-16 02:10:00',17),(2082,4302613,'2008-11-16 02:15:00',12),(2083,4302715,'2008-11-16 02:20:00',102),(2084,4302728,'2008-11-16 02:25:00',13),(2085,4302738,'2008-11-16 02:30:00',10),(2086,4302753,'2008-11-16 02:35:00',15),(2087,4302766,'2008-11-16 02:40:00',13),(2088,4302777,'2008-11-16 02:45:00',11),(2089,4302790,'2008-11-16 02:50:00',13),(2090,4302803,'2008-11-16 02:55:00',13),(2091,4302816,'2008-11-16 03:00:00',13),(2092,4302828,'2008-11-16 03:05:00',12),(2093,4302840,'2008-11-16 03:10:00',12),(2094,4302853,'2008-11-16 03:15:00',13),(2095,4302866,'2008-11-16 03:20:00',13),(2096,4302878,'2008-11-16 03:25:00',12),(2097,4302891,'2008-11-16 03:30:00',13),(2098,4302904,'2008-11-16 03:35:00',13),(2099,4302915,'2008-11-16 03:40:00',11),(2100,4302928,'2008-11-16 03:45:00',13),(2101,4302941,'2008-11-16 03:50:00',13),(2102,4302955,'2008-11-16 03:55:00',14),(2103,4302974,'2008-11-16 04:00:00',19),(2104,4302994,'2008-11-16 04:05:00',20),(2105,4303013,'2008-11-16 04:10:00',19),(2106,4303032,'2008-11-16 04:15:00',19),(2107,4303049,'2008-11-16 04:20:00',17),(2108,4303063,'2008-11-16 04:25:00',14),(2109,4303076,'2008-11-16 04:30:00',13),(2110,4303089,'2008-11-16 04:35:00',13),(2111,4303100,'2008-11-16 04:40:00',11),(2112,4303114,'2008-11-16 04:45:00',14),(2113,4303127,'2008-11-16 04:50:00',13),(2114,4303138,'2008-11-16 04:55:00',11),(2115,4303151,'2008-11-16 05:00:00',13),(2116,4303164,'2008-11-16 05:05:00',13),(2117,4303177,'2008-11-16 05:10:00',13),(2118,4303189,'2008-11-16 05:15:00',12),(2119,4303202,'2008-11-16 05:20:00',13),(2120,4303215,'2008-11-16 05:25:00',13),(2121,4303228,'2008-11-16 05:30:00',13),(2122,4303240,'2008-11-16 05:35:00',12),(2123,4303252,'2008-11-16 05:40:00',12),(2124,4303264,'2008-11-16 05:45:00',12),(2125,4303277,'2008-11-16 05:50:00',13),(2126,4303290,'2008-11-16 05:55:00',13),(2127,4303303,'2008-11-16 06:00:00',13),(2128,4303316,'2008-11-16 06:05:00',13),(2129,4303330,'2008-11-16 06:10:00',14),(2130,4303351,'2008-11-16 06:15:00',21),(2131,4303369,'2008-11-16 06:20:00',18),(2132,4303474,'2008-11-16 06:25:00',105),(2133,4303493,'2008-11-16 06:30:00',19),(2134,4303511,'2008-11-16 06:35:00',18),(2135,4303523,'2008-11-16 06:40:00',12),(2136,4303535,'2008-11-16 06:45:00',12),(2137,4303547,'2008-11-16 06:50:00',12),(2138,4303560,'2008-11-16 06:55:00',13),(2139,4303573,'2008-11-16 07:00:00',13),(2140,4303585,'2008-11-16 07:05:00',12),(2141,4303599,'2008-11-16 07:10:00',14),(2142,4303614,'2008-11-16 07:15:00',15),(2143,4303627,'2008-11-16 07:20:00',13),(2144,4303642,'2008-11-16 07:25:00',15),(2145,4303657,'2008-11-16 07:30:00',15),(2146,4303671,'2008-11-16 07:35:00',14),(2147,4303683,'2008-11-16 07:40:00',12),(2148,4303698,'2008-11-16 07:45:00',15),(2149,4303713,'2008-11-16 07:50:00',15),(2150,4303728,'2008-11-16 07:55:00',15),(2151,4303747,'2008-11-16 08:00:00',19),(2152,4303762,'2008-11-16 08:05:00',15),(2153,4303776,'2008-11-16 08:10:00',14),(2154,4303790,'2008-11-16 08:15:00',14),(2155,4303805,'2008-11-16 08:20:00',15),(2156,4303822,'2008-11-16 08:25:00',17),(2157,4303844,'2008-11-16 08:30:00',22),(2158,4303864,'2008-11-16 08:35:00',20),(2159,4303883,'2008-11-16 08:40:00',19),(2160,4303905,'2008-11-16 08:45:00',22),(2161,4303923,'2008-11-16 08:50:00',18),(2162,4303935,'2008-11-16 08:55:00',12),(2163,4303947,'2008-11-16 09:00:00',12),(2164,4303959,'2008-11-16 09:05:00',12),(2165,4303969,'2008-11-16 09:10:00',10),(2166,4303983,'2008-11-16 09:15:00',14),(2167,4303995,'2008-11-16 09:20:00',12),(2168,4304007,'2008-11-16 09:25:00',12),(2169,4304018,'2008-11-16 09:30:00',11),(2170,4304030,'2008-11-16 09:35:00',12),(2171,4304043,'2008-11-16 09:40:00',13),(2172,4304054,'2008-11-16 09:45:00',11),(2173,4304066,'2008-11-16 09:50:00',12),(2174,4304078,'2008-11-16 09:55:00',12),(2175,4304090,'2008-11-16 10:00:00',12),(2176,4304101,'2008-11-16 10:05:00',11),(2177,4304113,'2008-11-16 10:10:00',12),(2178,4304125,'2008-11-16 10:15:00',12),(2179,4304171,'2008-11-16 10:20:00',46),(2180,4304235,'2008-11-16 10:25:00',64),(2181,4304247,'2008-11-16 10:30:00',12),(2182,4304259,'2008-11-16 10:35:00',12),(2183,4304270,'2008-11-16 10:40:00',11),(2184,4304288,'2008-11-16 10:45:00',18),(2185,4304308,'2008-11-16 10:50:00',20),(2186,4304327,'2008-11-16 10:55:00',19),(2187,4304343,'2008-11-16 11:00:00',16),(2188,4304362,'2008-11-16 11:05:00',19),(2189,4304378,'2008-11-16 11:10:00',16),(2190,4304387,'2008-11-16 11:15:00',9),(2191,4304401,'2008-11-16 11:20:00',14),(2192,4304413,'2008-11-16 11:25:00',12),(2193,4304425,'2008-11-16 11:30:00',12),(2194,4304436,'2008-11-16 11:35:00',11),(2195,4304449,'2008-11-16 11:40:00',13),(2196,4304461,'2008-11-16 11:45:00',12),(2197,4304473,'2008-11-16 11:50:00',12),(2198,4304484,'2008-11-16 11:55:00',11),(2199,4304497,'2008-11-16 12:00:00',13),(2200,4304509,'2008-11-16 12:05:00',12),(2201,4304521,'2008-11-16 12:10:00',12),(2202,4304532,'2008-11-16 12:15:00',11),(2203,4304545,'2008-11-16 12:20:00',13),(2204,4304557,'2008-11-16 12:25:00',12),(2205,4304568,'2008-11-16 12:30:00',11),(2206,4304580,'2008-11-16 12:35:00',12),(2207,4304592,'2008-11-16 12:40:00',12),(2208,4304605,'2008-11-16 12:45:00',13),(2209,4304614,'2008-11-16 12:50:00',9),(2210,4304628,'2008-11-16 12:55:00',14),(2211,4304643,'2008-11-16 13:00:00',15),(2212,4304661,'2008-11-16 13:05:00',18),(2213,4304680,'2008-11-16 13:10:00',19),(2214,4304699,'2008-11-16 13:15:00',19),(2215,4304717,'2008-11-16 13:20:00',18),(2216,4304733,'2008-11-16 13:25:00',16),(2217,4304746,'2008-11-16 13:30:00',13),(2218,4304759,'2008-11-16 13:35:00',13),(2219,4304771,'2008-11-16 13:40:00',12),(2220,4304782,'2008-11-16 13:45:00',11),(2221,4304795,'2008-11-16 13:50:00',13),(2222,4304807,'2008-11-16 13:55:00',12),(2223,4304818,'2008-11-16 14:00:00',11),(2224,4304831,'2008-11-16 14:05:00',13),(2225,4304843,'2008-11-16 14:10:00',12),(2226,4304855,'2008-11-16 14:15:00',12),(2227,4304880,'2008-11-16 14:20:00',25),(2228,4304964,'2008-11-16 14:25:00',84),(2229,4304977,'2008-11-16 14:30:00',13),(2230,4304988,'2008-11-16 14:35:00',11),(2231,4305000,'2008-11-16 14:40:00',12),(2232,4305013,'2008-11-16 14:45:00',13),(2233,4305025,'2008-11-16 14:50:00',12),(2234,4305037,'2008-11-16 14:55:00',12),(2235,4305049,'2008-11-16 15:00:00',12),(2236,4305061,'2008-11-16 15:05:00',12),(2237,4305074,'2008-11-16 15:10:00',13),(2238,4305085,'2008-11-16 15:15:00',11),(2239,4305105,'2008-11-16 15:20:00',20),(2240,4305123,'2008-11-16 15:25:00',18),(2241,4305142,'2008-11-16 15:30:00',19),(2242,4305160,'2008-11-16 15:35:00',18),(2243,4305179,'2008-11-16 15:40:00',19),(2244,4305193,'2008-11-16 15:45:00',14),(2245,4305205,'2008-11-16 15:50:00',12),(2246,4305217,'2008-11-16 15:55:00',12),(2247,4305228,'2008-11-16 16:00:00',11),(2248,4305242,'2008-11-16 16:05:00',14),(2249,4305253,'2008-11-16 16:10:00',11),(2250,4305266,'2008-11-16 16:15:00',13),(2251,4305278,'2008-11-16 16:20:00',12),(2252,4305289,'2008-11-16 16:25:00',11),(2253,4305302,'2008-11-16 16:30:00',13),(2254,4305314,'2008-11-16 16:35:00',12),(2255,4305327,'2008-11-16 16:40:00',13),(2256,4305338,'2008-11-16 16:45:00',11),(2257,4305349,'2008-11-16 16:50:00',11),(2258,4305362,'2008-11-16 16:55:00',13),(2259,4305375,'2008-11-16 17:00:00',13),(2260,4305386,'2008-11-16 17:05:00',11),(2261,4305398,'2008-11-16 17:10:00',12),(2262,4305410,'2008-11-16 17:15:00',12),(2263,4305420,'2008-11-16 17:20:00',10),(2264,4305434,'2008-11-16 17:25:00',14),(2265,4305446,'2008-11-16 17:30:00',12),(2266,4305462,'2008-11-16 17:35:00',16),(2267,4305480,'2008-11-16 17:40:00',18),(2268,4305499,'2008-11-16 17:45:00',19),(2269,4305517,'2008-11-16 17:50:00',18),(2270,4305532,'2008-11-16 17:55:00',15),(2271,4305552,'2008-11-16 18:00:00',20),(2272,4305564,'2008-11-16 18:05:00',12),(2273,4305577,'2008-11-16 18:10:00',13),(2274,4305673,'2008-11-16 18:15:00',96),(2275,4305686,'2008-11-16 18:20:00',13),(2276,4305699,'2008-11-16 18:25:00',13),(2277,4305712,'2008-11-16 18:30:00',13),(2278,4305723,'2008-11-16 18:35:00',11),(2279,4305736,'2008-11-16 18:40:00',13),(2280,4305749,'2008-11-16 18:45:00',13),(2281,4305761,'2008-11-16 18:50:00',12),(2282,4305774,'2008-11-16 18:55:00',13),(2283,4305787,'2008-11-16 19:00:00',13),(2284,4305799,'2008-11-16 19:05:00',12),(2285,4305812,'2008-11-16 19:10:00',13),(2286,4305825,'2008-11-16 19:15:00',13),(2287,4305838,'2008-11-16 19:20:00',13),(2288,4305865,'2008-11-16 19:25:00',27),(2289,4305958,'2008-11-16 19:30:00',93),(2290,4306148,'2008-11-16 19:35:00',190),(2291,4306348,'2008-11-16 19:40:00',200),(2292,4306527,'2008-11-16 19:45:00',179),(2293,4306606,'2008-11-16 19:50:00',79),(2294,4306662,'2008-11-16 19:55:00',56),(2295,4306721,'2008-11-16 20:00:00',59),(2296,4306776,'2008-11-16 20:05:00',55),(2297,4306839,'2008-11-16 20:10:00',63),(2298,4306896,'2008-11-16 20:15:00',57),(2299,4306929,'2008-11-16 20:20:00',33),(2300,4307014,'2008-11-16 20:25:00',85),(2301,4307042,'2008-11-16 20:30:00',28),(2302,4307077,'2008-11-16 20:35:00',35),(2303,4307109,'2008-11-16 20:40:00',32),(2304,4307145,'2008-11-16 20:45:00',36),(2305,4307177,'2008-11-16 20:50:00',32),(2306,4307217,'2008-11-16 20:55:00',40),(2307,4307246,'2008-11-16 21:00:00',29),(2308,4307281,'2008-11-16 21:05:00',35),(2309,4307318,'2008-11-16 21:10:00',37),(2310,4307354,'2008-11-16 21:15:00',36),(2311,4307409,'2008-11-16 21:20:00',55),(2312,4307438,'2008-11-16 21:25:00',29),(2313,4307464,'2008-11-16 21:30:00',26),(2314,4307587,'2008-11-16 21:35:00',123),(2315,4307767,'2008-11-16 21:40:00',180),(2316,4307949,'2008-11-16 21:45:00',182),(2317,4308040,'2008-11-16 21:50:00',91),(2318,4308083,'2008-11-16 21:55:00',43),(2319,4308123,'2008-11-16 22:00:00',40),(2320,4308157,'2008-11-16 22:05:00',34),(2321,4308184,'2008-11-16 22:10:00',27),(2322,4308306,'2008-11-16 22:15:00',122),(2323,4308340,'2008-11-16 22:20:00',34),(2324,4308367,'2008-11-16 22:25:00',27),(2325,4308397,'2008-11-16 22:30:00',30),(2326,4308424,'2008-11-16 22:35:00',27),(2327,4308453,'2008-11-16 22:40:00',29),(2328,4308481,'2008-11-16 22:45:00',28),(2329,4308513,'2008-11-16 22:50:00',32),(2330,4308552,'2008-11-16 22:55:00',39),(2331,4308579,'2008-11-16 23:00:00',27),(2332,4308598,'2008-11-16 23:05:00',19),(2333,4308618,'2008-11-16 23:10:00',20),(2334,4311838,'2008-11-17 15:40:00',3220),(2335,4311856,'2008-11-17 15:45:00',18),(2336,4311869,'2008-11-17 15:50:00',13),(2337,4311881,'2008-11-17 15:55:00',12),(2338,4311892,'2008-11-17 16:00:00',11),(2339,4311904,'2008-11-17 16:05:00',12),(2340,4311917,'2008-11-17 16:10:00',13),(2341,4311928,'2008-11-17 16:15:00',11),(2342,4311941,'2008-11-17 16:20:00',13),(2343,4314600,'2008-11-17 22:30:00',2659),(2344,4314623,'2008-11-17 22:35:00',23),(2345,4314675,'2008-11-17 22:45:00',52),(2346,4327718,'2008-11-19 12:20:00',13043),(2347,4327731,'2008-11-19 12:25:00',13),(2348,4327767,'2008-11-19 12:40:00',36),(2349,4327779,'2008-11-19 12:45:00',12),(2350,4327792,'2008-11-19 12:50:00',13),(2351,4327803,'2008-11-19 12:55:00',11),(2352,4327815,'2008-11-19 13:00:00',12),(2353,4327828,'2008-11-19 13:05:00',13),(2354,4327839,'2008-11-19 13:10:00',11),(2355,4327856,'2008-11-19 13:15:00',17),(2356,4327875,'2008-11-19 13:20:00',19),(2357,4327894,'2008-11-19 13:25:00',19),(2358,4327911,'2008-11-19 13:30:00',17),(2359,4327929,'2008-11-19 13:35:00',18),(2360,4327944,'2008-11-19 13:40:00',15),(2361,4327957,'2008-11-19 13:45:00',13),(2362,4327968,'2008-11-19 13:50:00',11),(2363,4327980,'2008-11-19 13:55:00',12),(2364,4327993,'2008-11-19 14:00:00',13),(2365,4328004,'2008-11-19 14:05:00',11),(2366,4328016,'2008-11-19 14:10:00',12),(2367,4328029,'2008-11-19 14:15:00',13),(2368,4328041,'2008-11-19 14:20:00',12),(2369,4328052,'2008-11-19 14:25:00',11),(2370,4328065,'2008-11-19 14:30:00',13),(2371,4328077,'2008-11-19 14:35:00',12),(2372,4328088,'2008-11-19 14:40:00',11),(2373,4328101,'2008-11-19 14:45:00',13),(2374,4328114,'2008-11-19 14:50:00',13),(2375,4328126,'2008-11-19 14:55:00',12),(2376,4328137,'2008-11-19 15:00:00',11),(2377,4328149,'2008-11-19 15:05:00',12),(2378,4328171,'2008-11-19 15:10:00',22),(2379,4328259,'2008-11-19 15:15:00',88),(2380,4328271,'2008-11-19 15:20:00',12),(2381,4328283,'2008-11-19 15:25:00',12),(2382,4328298,'2008-11-19 15:30:00',15),(2383,4328320,'2008-11-19 15:35:00',22),(2384,4328337,'2008-11-19 15:40:00',17),(2385,4328356,'2008-11-19 15:45:00',19),(2386,4328373,'2008-11-19 15:50:00',17),(2387,4328389,'2008-11-19 15:55:00',16),(2388,4328401,'2008-11-19 16:00:00',12),(2389,4328414,'2008-11-19 16:05:00',13),(2390,4328426,'2008-11-19 16:10:00',12),(2391,4328438,'2008-11-19 16:15:00',12),(2392,4328450,'2008-11-19 16:20:00',12),(2393,4328463,'2008-11-19 16:25:00',13),(2394,4328475,'2008-11-19 16:30:00',12),(2395,4328486,'2008-11-19 16:35:00',11),(2396,4328499,'2008-11-19 16:40:00',13),(2397,4328511,'2008-11-19 16:45:00',12),(2398,4328523,'2008-11-19 16:50:00',12),(2399,4328535,'2008-11-19 16:55:00',12),(2400,4328547,'2008-11-19 17:00:00',12),(2401,4328560,'2008-11-19 17:05:00',13),(2402,4328571,'2008-11-19 17:10:00',11),(2403,4328583,'2008-11-19 17:15:00',12),(2404,4328595,'2008-11-19 17:20:00',12),(2405,4328607,'2008-11-19 17:25:00',12),(2406,4328618,'2008-11-19 17:30:00',11),(2407,4328631,'2008-11-19 17:35:00',13),(2408,4328643,'2008-11-19 17:40:00',12),(2409,4328656,'2008-11-19 17:45:00',13),(2410,4328676,'2008-11-19 17:50:00',20),(2411,4328695,'2008-11-19 17:55:00',19),(2412,4328713,'2008-11-19 18:00:00',18),(2413,4328821,'2008-11-19 18:20:00',108),(2414,4328905,'2008-11-19 18:25:00',84),(2415,4328938,'2008-11-19 18:30:00',33),(2416,4328972,'2008-11-19 18:35:00',34),(2417,4329003,'2008-11-19 18:40:00',31),(2418,4329051,'2008-11-19 18:45:00',48),(2419,4329119,'2008-11-19 18:50:00',68),(2420,4329237,'2008-11-19 18:55:00',118),(2421,4329570,'2008-11-19 19:00:00',333),(2422,4329895,'2008-11-19 19:05:00',325),(2423,4330192,'2008-11-19 19:10:00',297),(2424,4330317,'2008-11-19 19:15:00',125),(2425,4330388,'2008-11-19 19:20:00',71),(2426,4330449,'2008-11-19 19:25:00',61),(2427,4330528,'2008-11-19 19:30:00',79),(2428,4330644,'2008-11-19 19:35:00',116),(2429,4330947,'2008-11-19 19:40:00',303),(2430,4331254,'2008-11-19 19:45:00',307),(2431,4331489,'2008-11-19 19:50:00',235),(2432,4331564,'2008-11-19 19:55:00',75),(2433,4331677,'2008-11-19 20:00:00',113),(2434,4331737,'2008-11-19 20:05:00',60),(2435,4331788,'2008-11-19 20:10:00',51),(2436,4331891,'2008-11-19 20:20:00',103),(2437,4331944,'2008-11-19 20:25:00',53),(2438,4331990,'2008-11-19 20:30:00',46),(2439,4332042,'2008-11-19 20:35:00',52),(2440,4332095,'2008-11-19 20:40:00',53),(2441,4332148,'2008-11-19 20:45:00',53),(2442,4332196,'2008-11-19 20:50:00',48),(2443,4332249,'2008-11-19 20:55:00',53),(2444,4332301,'2008-11-19 21:00:00',52),(2445,4332349,'2008-11-19 21:05:00',48),(2446,4332403,'2008-11-19 21:10:00',54),(2447,4332456,'2008-11-19 21:15:00',53),(2448,4332512,'2008-11-19 21:20:00',56),(2449,4332562,'2008-11-19 21:25:00',50),(2450,4332618,'2008-11-19 21:30:00',56),(2451,4332665,'2008-11-19 21:35:00',47),(2452,4332689,'2008-11-19 21:40:00',24),(2453,4332719,'2008-11-19 21:45:00',30),(2454,4332752,'2008-11-19 21:50:00',33),(2455,4332784,'2008-11-19 21:55:00',32),(2456,4332813,'2008-11-19 22:00:00',29),(2457,4332844,'2008-11-19 22:05:00',31),(2458,4332866,'2008-11-19 22:10:00',22),(2459,4332887,'2008-11-19 22:15:00',21),(2460,4332906,'2008-11-19 22:20:00',19),(2461,4332926,'2008-11-19 22:25:00',20),(2462,4332968,'2008-11-19 22:35:00',42),(2463,4332987,'2008-11-19 22:40:00',19),(2464,4333008,'2008-11-19 22:45:00',21),(2465,4333029,'2008-11-19 22:50:00',21),(2466,4333047,'2008-11-19 22:55:00',18),(2467,4333068,'2008-11-19 23:00:00',21),(2468,4333177,'2008-11-19 23:15:00',109),(2469,4333235,'2008-11-19 23:20:00',58),(2470,4333255,'2008-11-19 23:25:00',20),(2471,4333277,'2008-11-19 23:30:00',22),(2472,4333296,'2008-11-19 23:35:00',19),(2473,4333345,'2008-11-19 23:45:00',49),(2474,4333370,'2008-11-19 23:50:00',25),(2475,4333397,'2008-11-19 23:55:00',27),(2476,4333424,'2008-11-20 00:00:00',27),(2477,4333451,'2008-11-20 00:05:00',27),(2478,4333470,'2008-11-20 00:10:00',19),(2479,4333491,'2008-11-20 00:15:00',21),(2480,4333511,'2008-11-20 00:20:00',20),(2481,4333532,'2008-11-20 00:25:00',21),(2482,4333551,'2008-11-20 00:30:00',19),(2483,4333572,'2008-11-20 00:35:00',21),(2484,4333592,'2008-11-20 00:40:00',20),(2485,4333604,'2008-11-20 00:45:00',12),(2486,4333618,'2008-11-20 00:50:00',14),(2487,4333631,'2008-11-20 00:55:00',13),(2488,4333644,'2008-11-20 01:00:00',13),(2489,4333655,'2008-11-20 01:05:00',11),(2490,4333668,'2008-11-20 01:10:00',13),(2491,4333681,'2008-11-20 01:15:00',13),(2492,4333694,'2008-11-20 01:20:00',13),(2493,4333706,'2008-11-20 01:25:00',12),(2494,4333719,'2008-11-20 01:30:00',13),(2495,4333731,'2008-11-20 01:35:00',12),(2496,4333743,'2008-11-20 01:40:00',12),(2497,4333756,'2008-11-20 01:45:00',13),(2498,4333777,'2008-11-20 01:50:00',21),(2499,4333797,'2008-11-20 01:55:00',20),(2500,4333814,'2008-11-20 02:00:00',17),(2501,4333833,'2008-11-20 02:05:00',19),(2502,4333852,'2008-11-20 02:10:00',19),(2503,4333865,'2008-11-20 02:15:00',13),(2504,4333877,'2008-11-20 02:20:00',12),(2505,4333890,'2008-11-20 02:25:00',13),(2506,4333903,'2008-11-20 02:30:00',13),(2507,4333915,'2008-11-20 02:35:00',12),(2508,4333928,'2008-11-20 02:40:00',13),(2509,4333941,'2008-11-20 02:45:00',13),(2510,4333954,'2008-11-20 02:50:00',13),(2511,4333965,'2008-11-20 02:55:00',11),(2512,4333978,'2008-11-20 03:00:00',13),(2513,4333991,'2008-11-20 03:05:00',13),(2514,4334083,'2008-11-20 03:10:00',92),(2515,4334099,'2008-11-20 03:15:00',16),(2516,4334112,'2008-11-20 03:20:00',13),(2517,4334125,'2008-11-20 03:25:00',13),(2518,4334138,'2008-11-20 03:30:00',13),(2519,4334150,'2008-11-20 03:35:00',12),(2520,4334162,'2008-11-20 03:40:00',12),(2521,4334175,'2008-11-20 03:45:00',13),(2522,4334187,'2008-11-20 03:50:00',12),(2523,4334204,'2008-11-20 03:55:00',17),(2524,4334224,'2008-11-20 04:00:00',20),(2525,4334244,'2008-11-20 04:05:00',20),(2526,4334261,'2008-11-20 04:10:00',17),(2527,4334280,'2008-11-20 04:15:00',19),(2528,4334297,'2008-11-20 04:20:00',17),(2529,4334310,'2008-11-20 04:25:00',13),(2530,4334321,'2008-11-20 04:30:00',11),(2531,4334334,'2008-11-20 04:35:00',13),(2532,4334347,'2008-11-20 04:40:00',13),(2533,4334359,'2008-11-20 04:45:00',12),(2534,4334372,'2008-11-20 04:50:00',13),(2535,4334385,'2008-11-20 04:55:00',13),(2536,4334398,'2008-11-20 05:00:00',13),(2537,4334410,'2008-11-20 05:05:00',12),(2538,4334423,'2008-11-20 05:10:00',13),(2539,4334436,'2008-11-20 05:15:00',13),(2540,4334449,'2008-11-20 05:20:00',13),(2541,4334461,'2008-11-20 05:25:00',12),(2542,4334474,'2008-11-20 05:30:00',13),(2543,4334487,'2008-11-20 05:35:00',13),(2544,4334498,'2008-11-20 05:40:00',11),(2545,4334511,'2008-11-20 05:45:00',13),(2546,4334524,'2008-11-20 05:50:00',13),(2547,4334537,'2008-11-20 05:55:00',13),(2548,4334548,'2008-11-20 06:00:00',11),(2549,4334565,'2008-11-20 06:05:00',17),(2550,4334585,'2008-11-20 06:10:00',20),(2551,4334603,'2008-11-20 06:15:00',18),(2552,4334622,'2008-11-20 06:20:00',19),(2553,4334641,'2008-11-20 06:25:00',19),(2554,4334658,'2008-11-20 06:30:00',17),(2555,4334670,'2008-11-20 06:35:00',12),(2556,4334683,'2008-11-20 06:40:00',13),(2557,4334698,'2008-11-20 06:45:00',15),(2558,4334712,'2008-11-20 06:50:00',14),(2559,4334725,'2008-11-20 06:55:00',13),(2560,4334820,'2008-11-20 07:00:00',95),(2561,4334832,'2008-11-20 07:05:00',12),(2562,4334846,'2008-11-20 07:10:00',14),(2563,4334859,'2008-11-20 07:15:00',13),(2564,4334874,'2008-11-20 07:20:00',15),(2565,4334889,'2008-11-20 07:25:00',15),(2566,4334904,'2008-11-20 07:30:00',15),(2567,4334921,'2008-11-20 07:35:00',17),(2568,4334936,'2008-11-20 07:40:00',15),(2569,4334950,'2008-11-20 07:45:00',14),(2570,4334975,'2008-11-20 07:50:00',25),(2571,4335002,'2008-11-20 07:55:00',27),(2572,4335027,'2008-11-20 08:00:00',25),(2573,4335054,'2008-11-20 08:05:00',27),(2574,4335066,'2008-11-20 08:10:00',12),(2575,4335083,'2008-11-20 08:15:00',17),(2576,4335103,'2008-11-20 08:20:00',20),(2577,4335120,'2008-11-20 08:25:00',17),(2578,4335139,'2008-11-20 08:30:00',19),(2579,4335157,'2008-11-20 08:35:00',18),(2580,4335174,'2008-11-20 08:40:00',17),(2581,4335185,'2008-11-20 08:45:00',11),(2582,4335197,'2008-11-20 08:50:00',12),(2583,4335209,'2008-11-20 08:55:00',12),(2584,4335220,'2008-11-20 09:00:00',11),(2585,4335233,'2008-11-20 09:05:00',13),(2586,4335245,'2008-11-20 09:10:00',12),(2587,4335257,'2008-11-20 09:15:00',12),(2588,4335268,'2008-11-20 09:20:00',11),(2589,4335280,'2008-11-20 09:25:00',12),(2590,4335292,'2008-11-20 09:30:00',12),(2591,4335304,'2008-11-20 09:35:00',12),(2592,4335315,'2008-11-20 09:40:00',11),(2593,4335327,'2008-11-20 09:45:00',12),(2594,4335339,'2008-11-20 09:50:00',12),(2595,4335350,'2008-11-20 09:55:00',11),(2596,4335362,'2008-11-20 10:00:00',12),(2597,4335375,'2008-11-20 10:05:00',13),(2598,4335387,'2008-11-20 10:10:00',12),(2599,4335398,'2008-11-20 10:15:00',11),(2600,4335410,'2008-11-20 10:20:00',12),(2601,4335422,'2008-11-20 10:25:00',12),(2602,4335439,'2008-11-20 10:30:00',17),(2603,4335456,'2008-11-20 10:35:00',17),(2604,4335475,'2008-11-20 10:40:00',19),(2605,4335554,'2008-11-20 10:45:00',79),(2606,4335594,'2008-11-20 10:50:00',40),(2607,4335610,'2008-11-20 10:55:00',16),(2608,4335622,'2008-11-20 11:00:00',12),(2609,4335634,'2008-11-20 11:05:00',12),(2610,4335645,'2008-11-20 11:10:00',11),(2611,4335658,'2008-11-20 11:15:00',13),(2612,4335670,'2008-11-20 11:20:00',12),(2613,4335682,'2008-11-20 11:25:00',12),(2614,4335693,'2008-11-20 11:30:00',11),(2615,4335705,'2008-11-20 11:35:00',12),(2616,4335717,'2008-11-20 11:40:00',12),(2617,4335728,'2008-11-20 11:45:00',11),(2618,4335740,'2008-11-20 11:50:00',12),(2619,4335753,'2008-11-20 11:55:00',13),(2620,4335765,'2008-11-20 12:00:00',12),(2621,4335776,'2008-11-20 12:05:00',11),(2622,4335788,'2008-11-20 12:10:00',12),(2623,4335800,'2008-11-20 12:15:00',12),(2624,4335812,'2008-11-20 12:20:00',12),(2625,4335823,'2008-11-20 12:25:00',11),(2626,4335836,'2008-11-20 12:30:00',13),(2627,4335848,'2008-11-20 12:35:00',12),(2628,4335859,'2008-11-20 12:40:00',11),(2629,4335876,'2008-11-20 12:45:00',17),(2630,4335896,'2008-11-20 12:50:00',20),(2631,4335914,'2008-11-20 12:55:00',18),(2632,4335931,'2008-11-20 13:00:00',17),(2633,4335949,'2008-11-20 13:05:00',18),(2634,4335965,'2008-11-20 13:10:00',16),(2635,4335977,'2008-11-20 13:15:00',12),(2636,4335988,'2008-11-20 13:20:00',11),(2637,4336000,'2008-11-20 13:25:00',12),(2638,4336012,'2008-11-20 13:30:00',12),(2639,4336023,'2008-11-20 13:35:00',11),(2640,4336036,'2008-11-20 13:40:00',13),(2641,4336048,'2008-11-20 13:45:00',12),(2642,4336060,'2008-11-20 13:50:00',12),(2643,4336071,'2008-11-20 13:55:00',11),(2644,4336083,'2008-11-20 14:00:00',12),(2645,4336095,'2008-11-20 14:05:00',12),(2646,4336107,'2008-11-20 14:10:00',12),(2647,4336118,'2008-11-20 14:15:00',11),(2648,4336131,'2008-11-20 14:20:00',13),(2649,4336143,'2008-11-20 14:25:00',12),(2650,4336154,'2008-11-20 14:30:00',11),(2651,4336166,'2008-11-20 14:35:00',12),(2652,4336266,'2008-11-20 14:40:00',100),(2653,4336278,'2008-11-20 14:45:00',12),(2654,4336289,'2008-11-20 14:50:00',11),(2655,4336302,'2008-11-20 14:55:00',13),(2656,4336316,'2008-11-20 15:00:00',14),(2657,4336334,'2008-11-20 15:05:00',18),(2658,4336353,'2008-11-20 15:10:00',19),(2659,4336372,'2008-11-20 15:15:00',19),(2660,4336390,'2008-11-20 15:20:00',18),(2661,4336406,'2008-11-20 15:25:00',16),(2662,4336418,'2008-11-20 15:30:00',12),(2663,4336431,'2008-11-20 15:35:00',13),(2664,4336443,'2008-11-20 15:40:00',12),(2665,4336454,'2008-11-20 15:45:00',11),(2666,4336466,'2008-11-20 15:50:00',12),(2667,4336478,'2008-11-20 15:55:00',12),(2668,4336489,'2008-11-20 16:00:00',11),(2669,4336502,'2008-11-20 16:05:00',13),(2670,4336514,'2008-11-20 16:10:00',12),(2671,4336526,'2008-11-20 16:15:00',12),(2672,4336537,'2008-11-20 16:20:00',11),(2673,4336549,'2008-11-20 16:25:00',12),(2674,4336561,'2008-11-20 16:30:00',12),(2675,4336574,'2008-11-20 16:35:00',13),(2676,4336585,'2008-11-20 16:40:00',11),(2677,4336597,'2008-11-20 16:45:00',12),(2678,4336609,'2008-11-20 16:50:00',12),(2679,4336620,'2008-11-20 16:55:00',11),(2680,4336632,'2008-11-20 17:00:00',12),(2681,4336644,'2008-11-20 17:05:00',12),(2682,4336656,'2008-11-20 17:10:00',12),(2683,4336667,'2008-11-20 17:15:00',11),(2684,4336684,'2008-11-20 17:20:00',17),(2685,4336703,'2008-11-20 17:25:00',19),(2686,4336720,'2008-11-20 17:30:00',17),(2687,4336738,'2008-11-20 17:35:00',18),(2688,4336756,'2008-11-20 17:40:00',18),(2689,4336771,'2008-11-20 17:45:00',15),(2690,4336782,'2008-11-20 17:50:00',11),(2691,4336794,'2008-11-20 17:55:00',12),(2692,4336806,'2008-11-20 18:00:00',12),(2693,4336819,'2008-11-20 18:05:00',13),(2694,4336831,'2008-11-20 18:10:00',12),(2695,4336843,'2008-11-20 18:15:00',12),(2696,4336856,'2008-11-20 18:20:00',13),(2697,4336867,'2008-11-20 18:25:00',11),(2698,4336902,'2008-11-20 18:30:00',35),(2699,4336970,'2008-11-20 18:35:00',68),(2700,4337126,'2008-11-20 18:40:00',156),(2701,4337188,'2008-11-20 18:45:00',62),(2702,4337256,'2008-11-20 18:50:00',68),(2703,4337324,'2008-11-20 18:55:00',68),(2704,4337391,'2008-11-20 19:00:00',67),(2705,4337451,'2008-11-20 19:05:00',60),(2706,4337516,'2008-11-20 19:10:00',65),(2707,4337610,'2008-11-20 19:15:00',94),(2708,4337683,'2008-11-20 19:20:00',73),(2709,4337738,'2008-11-20 19:25:00',55),(2710,4337786,'2008-11-20 19:30:00',48),(2711,4337839,'2008-11-20 19:35:00',53),(2712,4337886,'2008-11-20 19:40:00',47),(2713,4337938,'2008-11-20 19:45:00',52),(2714,4337989,'2008-11-20 19:50:00',51),(2715,4338033,'2008-11-20 19:55:00',44),(2716,4338074,'2008-11-20 20:00:00',41),(2717,4338114,'2008-11-20 20:05:00',40),(2718,4338200,'2008-11-20 20:15:00',86),(2719,4338232,'2008-11-20 20:20:00',32),(2720,4338256,'2008-11-20 20:25:00',24),(2721,4338282,'2008-11-20 20:30:00',26),(2722,4338305,'2008-11-20 20:35:00',23),(2723,4338413,'2008-11-20 20:40:00',108),(2724,4338441,'2008-11-20 20:45:00',28),(2725,4338465,'2008-11-20 20:50:00',24),(2726,4338490,'2008-11-20 20:55:00',25),(2727,4338516,'2008-11-20 21:00:00',26),(2728,4338542,'2008-11-20 21:05:00',26),(2729,4338565,'2008-11-20 21:10:00',23),(2730,4338591,'2008-11-20 21:15:00',26),(2731,4338619,'2008-11-20 21:20:00',28),(2732,4338645,'2008-11-20 21:25:00',26),(2733,4338668,'2008-11-20 21:30:00',23),(2734,4338702,'2008-11-20 21:35:00',34),(2735,4338734,'2008-11-20 21:40:00',32),(2736,4338767,'2008-11-20 21:45:00',33),(2737,4338802,'2008-11-20 21:50:00',35),(2738,4338834,'2008-11-20 21:55:00',32),(2739,4338860,'2008-11-20 22:00:00',26),(2740,4338882,'2008-11-20 22:05:00',22),(2741,4338903,'2008-11-20 22:10:00',21),(2742,4338923,'2008-11-20 22:15:00',20),(2743,4338936,'2008-11-20 22:20:00',13),(2744,4338948,'2008-11-20 22:25:00',12),(2745,4338961,'2008-11-20 22:30:00',13),(2746,4338974,'2008-11-20 22:35:00',13),(2747,4338986,'2008-11-20 22:40:00',12),(2748,4338999,'2008-11-20 22:45:00',13),(2749,4339012,'2008-11-20 22:50:00',13),(2750,4339025,'2008-11-20 22:55:00',13),(2751,4339037,'2008-11-20 23:00:00',12),(2752,4339050,'2008-11-20 23:05:00',13),(2753,4339062,'2008-11-20 23:10:00',12),(2754,4339075,'2008-11-20 23:15:00',13),(2755,4339087,'2008-11-20 23:20:00',12),(2756,4339100,'2008-11-20 23:25:00',13),(2757,4339113,'2008-11-20 23:30:00',13),(2758,4339129,'2008-11-20 23:35:00',16),(2759,4339149,'2008-11-20 23:40:00',20),(2760,4339169,'2008-11-20 23:45:00',20),(2761,4339188,'2008-11-20 23:50:00',19),(2762,4339205,'2008-11-20 23:55:00',17),(2763,4339222,'2008-11-21 00:00:00',17),(2764,4339235,'2008-11-21 00:05:00',13),(2765,4339248,'2008-11-21 00:10:00',13),(2766,4339260,'2008-11-21 00:15:00',12),(2767,4339360,'2008-11-21 00:20:00',100),(2768,4339374,'2008-11-21 00:25:00',14),(2769,4339385,'2008-11-21 00:30:00',11),(2770,4339398,'2008-11-21 00:35:00',13),(2771,4339412,'2008-11-21 00:40:00',14),(2772,4339425,'2008-11-21 00:45:00',13),(2773,4339437,'2008-11-21 00:50:00',12),(2774,4339450,'2008-11-21 00:55:00',13),(2775,4339463,'2008-11-21 01:00:00',13),(2776,4339475,'2008-11-21 01:05:00',12),(2777,4339487,'2008-11-21 01:10:00',12),(2778,4339500,'2008-11-21 01:15:00',13),(2779,4339513,'2008-11-21 01:20:00',13),(2780,4339525,'2008-11-21 01:25:00',12),(2781,4339538,'2008-11-21 01:30:00',13),(2782,4339551,'2008-11-21 01:35:00',13),(2783,4339567,'2008-11-21 01:40:00',16),(2784,4339585,'2008-11-21 01:45:00',18),(2785,4339605,'2008-11-21 01:50:00',20),(2786,4339624,'2008-11-21 01:55:00',19),(2787,4339642,'2008-11-21 02:00:00',18),(2788,4339659,'2008-11-21 02:05:00',17),(2789,4339673,'2008-11-21 02:10:00',14),(2790,4339686,'2008-11-21 02:15:00',13),(2791,4339698,'2008-11-21 02:20:00',12),(2792,4339711,'2008-11-21 02:25:00',13),(2793,4339724,'2008-11-21 02:30:00',13),(2794,4339737,'2008-11-21 02:35:00',13),(2795,4339748,'2008-11-21 02:40:00',11),(2796,4339761,'2008-11-21 02:45:00',13),(2797,4339774,'2008-11-21 02:50:00',13),(2798,4339786,'2008-11-21 02:55:00',12),(2799,4339799,'2008-11-21 03:00:00',13),(2800,4339812,'2008-11-21 03:05:00',13),(2801,4339825,'2008-11-21 03:10:00',13),(2802,4339837,'2008-11-21 03:15:00',12),(2803,4339851,'2008-11-21 03:20:00',14),(2804,4339867,'2008-11-21 03:25:00',16),(2805,4339885,'2008-11-21 03:30:00',18),(2806,4339900,'2008-11-21 03:35:00',15),(2807,4339915,'2008-11-21 03:40:00',15),(2808,4339931,'2008-11-21 03:45:00',16),(2809,4339949,'2008-11-21 03:50:00',18),(2810,4339969,'2008-11-21 03:55:00',20),(2811,4339988,'2008-11-21 04:00:00',19),(2812,4340007,'2008-11-21 04:05:00',19),(2813,4340023,'2008-11-21 04:10:00',16),(2814,4340036,'2008-11-21 04:15:00',13),(2815,4340107,'2008-11-21 04:20:00',71),(2816,4340144,'2008-11-21 04:25:00',37),(2817,4340156,'2008-11-21 04:30:00',12),(2818,4340169,'2008-11-21 04:35:00',13),(2819,4340182,'2008-11-21 04:40:00',13),(2820,4340193,'2008-11-21 04:45:00',11),(2821,4340206,'2008-11-21 04:50:00',13),(2822,4340219,'2008-11-21 04:55:00',13),(2823,4340232,'2008-11-21 05:00:00',13),(2824,4340244,'2008-11-21 05:05:00',12),(2825,4340257,'2008-11-21 05:10:00',13),(2826,4340270,'2008-11-21 05:15:00',13),(2827,4340281,'2008-11-21 05:20:00',11),(2828,4340294,'2008-11-21 05:25:00',13),(2829,4340307,'2008-11-21 05:30:00',13),(2830,4340320,'2008-11-21 05:35:00',13),(2831,4340332,'2008-11-21 05:40:00',12),(2832,4340344,'2008-11-21 05:45:00',12),(2833,4340357,'2008-11-21 05:50:00',13),(2834,4340370,'2008-11-21 05:55:00',13),(2835,4340388,'2008-11-21 06:00:00',18),(2836,4340408,'2008-11-21 06:05:00',20),(2837,4340428,'2008-11-21 06:10:00',20),(2838,4340446,'2008-11-21 06:15:00',18),(2839,4340466,'2008-11-21 06:20:00',20),(2840,4340482,'2008-11-21 06:25:00',16),(2841,4340497,'2008-11-21 06:30:00',15),(2842,4340510,'2008-11-21 06:35:00',13),(2843,4340531,'2008-11-21 06:40:00',21),(2844,4340557,'2008-11-21 06:45:00',26),(2845,4340576,'2008-11-21 06:50:00',19),(2846,4340592,'2008-11-21 06:55:00',16),(2847,4340604,'2008-11-21 07:00:00',12),(2848,4340617,'2008-11-21 07:05:00',13),(2849,4340628,'2008-11-21 07:10:00',11),(2850,4340640,'2008-11-21 07:15:00',12),(2851,4340653,'2008-11-21 07:20:00',13),(2852,4340665,'2008-11-21 07:25:00',12),(2853,4340676,'2008-11-21 07:30:00',11),(2854,4340688,'2008-11-21 07:35:00',12),(2855,4340700,'2008-11-21 07:40:00',12),(2856,4340711,'2008-11-21 07:45:00',11),(2857,4340724,'2008-11-21 07:50:00',13),(2858,4340736,'2008-11-21 07:55:00',12),(2859,4340748,'2008-11-21 08:00:00',12),(2860,4340830,'2008-11-21 08:05:00',82),(2861,4340881,'2008-11-21 08:10:00',51),(2862,4340901,'2008-11-21 08:15:00',20),(2863,4340918,'2008-11-21 08:20:00',17),(2864,4340937,'2008-11-21 08:25:00',19),(2865,4340956,'2008-11-21 08:30:00',19),(2866,4340972,'2008-11-21 08:35:00',16),(2867,4340983,'2008-11-21 08:40:00',11),(2868,4340996,'2008-11-21 08:45:00',13),(2869,4341008,'2008-11-21 08:50:00',12),(2870,4341020,'2008-11-21 08:55:00',12),(2871,4341032,'2008-11-21 09:00:00',12),(2872,4341044,'2008-11-21 09:05:00',12),(2873,4341056,'2008-11-21 09:10:00',12),(2874,4341067,'2008-11-21 09:15:00',11),(2875,4341080,'2008-11-21 09:20:00',13),(2876,4341092,'2008-11-21 09:25:00',12),(2877,4341104,'2008-11-21 09:30:00',12),(2878,4341116,'2008-11-21 09:35:00',12),(2879,4341128,'2008-11-21 09:40:00',12),(2880,4341140,'2008-11-21 09:45:00',12),(2881,4341152,'2008-11-21 09:50:00',12),(2882,4341164,'2008-11-21 09:55:00',12),(2883,4341176,'2008-11-21 10:00:00',12),(2884,4341189,'2008-11-21 10:05:00',13),(2885,4341200,'2008-11-21 10:10:00',11),(2886,4341212,'2008-11-21 10:15:00',12),(2887,4341224,'2008-11-21 10:20:00',12),(2888,4341235,'2008-11-21 10:25:00',11),(2889,4341253,'2008-11-21 10:30:00',18),(2890,4341272,'2008-11-21 10:35:00',19),(2891,4341291,'2008-11-21 10:40:00',19),(2892,4341308,'2008-11-21 10:45:00',17),(2893,4341326,'2008-11-21 10:50:00',18),(2894,4341340,'2008-11-21 10:55:00',14),(2895,4341353,'2008-11-21 11:00:00',13),(2896,4341364,'2008-11-21 11:05:00',11),(2897,4341376,'2008-11-21 11:10:00',12),(2898,4341388,'2008-11-21 11:15:00',12),(2899,4341400,'2008-11-21 11:20:00',12),(2900,4341412,'2008-11-21 11:25:00',12),(2901,4341424,'2008-11-21 11:30:00',12),(2902,4341437,'2008-11-21 11:35:00',13),(2903,4341448,'2008-11-21 11:40:00',11),(2904,4341460,'2008-11-21 11:45:00',12),(2905,4341473,'2008-11-21 11:50:00',13),(2906,4341484,'2008-11-21 11:55:00',11),(2907,4341496,'2008-11-21 12:00:00',12),(2908,4341509,'2008-11-21 12:05:00',13),(2909,4341521,'2008-11-21 12:10:00',12),(2910,4341532,'2008-11-21 12:15:00',11),(2911,4341545,'2008-11-21 12:20:00',13),(2912,4341557,'2008-11-21 12:25:00',12),(2913,4341569,'2008-11-21 12:30:00',12),(2914,4341581,'2008-11-21 12:35:00',12),(2915,4341594,'2008-11-21 12:40:00',13),(2916,4341633,'2008-11-21 12:45:00',39),(2917,4341716,'2008-11-21 12:50:00',83),(2918,4341736,'2008-11-21 12:55:00',20),(2919,4341755,'2008-11-21 13:00:00',19),(2920,4341771,'2008-11-21 13:05:00',16),(2921,4341790,'2008-11-21 13:10:00',19),(2922,4341804,'2008-11-21 13:15:00',14),(2923,4341816,'2008-11-21 13:20:00',12),(2924,4341827,'2008-11-21 13:25:00',11),(2925,4341840,'2008-11-21 13:30:00',13),(2926,4341852,'2008-11-21 13:35:00',12),(2927,4341865,'2008-11-21 13:40:00',13),(2928,4341876,'2008-11-21 13:45:00',11),(2929,4341888,'2008-11-21 13:50:00',12),(2930,4341901,'2008-11-21 13:55:00',13),(2931,4341912,'2008-11-21 14:00:00',11),(2932,4341924,'2008-11-21 14:05:00',12),(2933,4341937,'2008-11-21 14:10:00',13),(2934,4341949,'2008-11-21 14:15:00',12),(2935,4341960,'2008-11-21 14:20:00',11),(2936,4341973,'2008-11-21 14:25:00',13),(2937,4341985,'2008-11-21 14:30:00',12),(2938,4341998,'2008-11-21 14:35:00',13),(2939,4342009,'2008-11-21 14:40:00',11),(2940,4342021,'2008-11-21 14:45:00',12),(2941,4342034,'2008-11-21 14:50:00',13),(2942,4342045,'2008-11-21 14:55:00',11),(2943,4342058,'2008-11-21 15:00:00',13),(2944,4342070,'2008-11-21 15:05:00',12),(2945,4342089,'2008-11-21 15:10:00',19),(2946,4342107,'2008-11-21 15:15:00',18),(2947,4342126,'2008-11-21 15:20:00',19),(2948,4342144,'2008-11-21 15:25:00',18),(2949,4342161,'2008-11-21 15:30:00',17),(2950,4342174,'2008-11-21 15:35:00',13),(2951,4342188,'2008-11-21 15:40:00',14),(2952,4342200,'2008-11-21 15:45:00',12),(2953,4342211,'2008-11-21 15:50:00',11),(2954,4342224,'2008-11-21 15:55:00',13),(2955,4342236,'2008-11-21 16:00:00',12),(2956,4342249,'2008-11-21 16:05:00',13),(2957,4342260,'2008-11-21 16:10:00',11),(2958,4342272,'2008-11-21 16:15:00',12),(2959,4342285,'2008-11-21 16:20:00',13),(2960,4342296,'2008-11-21 16:25:00',11),(2961,4342309,'2008-11-21 16:30:00',13),(2962,4342321,'2008-11-21 16:35:00',12),(2963,4342333,'2008-11-21 16:40:00',12),(2964,4342344,'2008-11-21 16:45:00',11),(2965,4342423,'2008-11-21 16:50:00',79),(2966,4342450,'2008-11-21 16:55:00',27),(2967,4342463,'2008-11-21 17:00:00',13),(2968,4342474,'2008-11-21 17:05:00',11),(2969,4342486,'2008-11-21 17:10:00',12),(2970,4342501,'2008-11-21 17:15:00',15),(2971,4342513,'2008-11-21 17:20:00',12),(2972,4342672,'2008-11-21 17:25:00',159),(2973,4342866,'2008-11-21 17:30:00',194),(2974,4343052,'2008-11-21 17:35:00',186),(2975,4343206,'2008-11-21 17:40:00',154),(2976,4343361,'2008-11-21 17:45:00',155),(2977,4348430,'2008-11-22 12:35:00',5069),(2978,4348714,'2008-11-22 12:40:00',284),(2979,4348972,'2008-11-22 12:45:00',258),(2980,4349196,'2008-11-22 12:50:00',224),(2981,4349258,'2008-11-22 12:55:00',62),(2982,4349314,'2008-11-22 13:00:00',56),(2983,4349365,'2008-11-22 13:05:00',51),(2984,4349425,'2008-11-22 13:10:00',60),(2985,4349641,'2008-11-22 13:15:00',216),(2986,4349905,'2008-11-22 13:20:00',264),(2987,4350165,'2008-11-22 13:25:00',260),(2988,4350271,'2008-11-22 13:30:00',106),(2989,4350331,'2008-11-22 13:35:00',60),(2990,4350416,'2008-11-22 13:40:00',85),(2991,4350555,'2008-11-22 13:45:00',139),(2992,4350605,'2008-11-22 13:50:00',50),(2993,4350646,'2008-11-22 13:55:00',41),(2994,4350691,'2008-11-22 14:00:00',45),(2995,4350736,'2008-11-22 14:05:00',45),(2996,4350782,'2008-11-22 14:10:00',46),(2997,4350823,'2008-11-22 14:15:00',41),(2998,4350868,'2008-11-22 14:20:00',45),(2999,4350913,'2008-11-22 14:25:00',45),(3000,4350954,'2008-11-22 14:30:00',41),(3001,4351000,'2008-11-22 14:35:00',46),(3002,4351047,'2008-11-22 14:40:00',47),(3003,4351097,'2008-11-22 14:45:00',50),(3004,4351139,'2008-11-22 14:50:00',42),(3005,4351191,'2008-11-22 14:55:00',52),(3006,4351244,'2008-11-22 15:00:00',53),(3007,4351285,'2008-11-22 15:05:00',41),(3008,4351315,'2008-11-22 15:10:00',30),(3009,4351349,'2008-11-22 15:15:00',34),(3010,4351446,'2008-11-22 15:30:00',97),(3011,4351471,'2008-11-22 15:35:00',25),(3012,4351495,'2008-11-22 15:40:00',24),(3013,4351517,'2008-11-22 15:45:00',22),(3014,4351541,'2008-11-22 15:50:00',24),(3015,4351563,'2008-11-22 15:55:00',22),(3016,4351579,'2008-11-22 16:00:00',16),(3017,4351596,'2008-11-22 16:05:00',17),(3018,4351614,'2008-11-22 16:10:00',18),(3019,4351632,'2008-11-22 16:15:00',18),(3020,4351647,'2008-11-22 16:20:00',15),(3021,4351665,'2008-11-22 16:25:00',18),(3022,4351682,'2008-11-22 16:30:00',17),(3023,4351700,'2008-11-22 16:35:00',18),(3024,4351716,'2008-11-22 16:40:00',16),(3025,4351733,'2008-11-22 16:45:00',17),(3026,4351751,'2008-11-22 16:50:00',18),(3027,4351766,'2008-11-22 16:55:00',15),(3028,4351783,'2008-11-22 17:00:00',17),(3029,4351800,'2008-11-22 17:05:00',17),(3030,4351817,'2008-11-22 17:10:00',17),(3031,4351833,'2008-11-22 17:15:00',16),(3032,4351850,'2008-11-22 17:20:00',17),(3033,4351868,'2008-11-22 17:25:00',18),(3034,4351883,'2008-11-22 17:30:00',15),(3035,4351990,'2008-11-22 17:35:00',107),(3036,4352015,'2008-11-22 17:40:00',25),(3037,4352039,'2008-11-22 17:45:00',24),(3038,4352060,'2008-11-22 17:50:00',21),(3039,4352083,'2008-11-22 17:55:00',23),(3040,4352102,'2008-11-22 18:00:00',19),(3041,4352120,'2008-11-22 18:05:00',18),(3042,4352136,'2008-11-22 18:10:00',16),(3043,4352154,'2008-11-22 18:15:00',18),(3044,4352172,'2008-11-22 18:20:00',18),(3045,4352188,'2008-11-22 18:25:00',16),(3046,4352206,'2008-11-22 18:30:00',18),(3047,4352224,'2008-11-22 18:35:00',18),(3048,4352243,'2008-11-22 18:40:00',19),(3049,4352259,'2008-11-22 18:45:00',16),(3050,4352277,'2008-11-22 18:50:00',18),(3051,4352295,'2008-11-22 18:55:00',18),(3052,4352312,'2008-11-22 19:00:00',17),(3053,4352330,'2008-11-22 19:05:00',18),(3054,4352348,'2008-11-22 19:10:00',18),(3055,4352367,'2008-11-22 19:15:00',19),(3056,4352383,'2008-11-22 19:20:00',16),(3057,4352401,'2008-11-22 19:25:00',18),(3058,4352419,'2008-11-22 19:30:00',18),(3059,4352443,'2008-11-22 19:35:00',24),(3060,4352465,'2008-11-22 19:40:00',22),(3061,4352490,'2008-11-22 19:45:00',25),(3062,4352514,'2008-11-22 19:50:00',24),(3063,4352535,'2008-11-22 19:55:00',21),(3064,4352555,'2008-11-22 20:00:00',20),(3065,4352573,'2008-11-22 20:05:00',18),(3066,4352591,'2008-11-22 20:10:00',18),(3067,4352607,'2008-11-22 20:15:00',16),(3068,4352625,'2008-11-22 20:20:00',18),(3069,4352643,'2008-11-22 20:25:00',18),(3070,4352659,'2008-11-22 20:30:00',16),(3071,4352676,'2008-11-22 20:35:00',17),(3072,4352694,'2008-11-22 20:40:00',18),(3073,4352712,'2008-11-22 20:45:00',18),(3074,4352728,'2008-11-22 20:50:00',16),(3075,4352746,'2008-11-22 20:55:00',18),(3076,4352763,'2008-11-22 21:00:00',17),(3077,4352781,'2008-11-22 21:05:00',18),(3078,4352797,'2008-11-22 21:10:00',16),(3079,4352815,'2008-11-22 21:15:00',18),(3080,4352832,'2008-11-22 21:20:00',17),(3081,4352848,'2008-11-22 21:25:00',16),(3082,4352898,'2008-11-22 21:30:00',50),(3083,4352975,'2008-11-22 21:35:00',77),(3084,4353000,'2008-11-22 21:40:00',25),(3085,4353022,'2008-11-22 21:45:00',22),(3086,4353045,'2008-11-22 21:50:00',23),(3087,4353069,'2008-11-22 21:55:00',24),(3088,4353086,'2008-11-22 22:00:00',17),(3089,4353104,'2008-11-22 22:05:00',18),(3090,4353122,'2008-11-22 22:10:00',18),(3091,4353140,'2008-11-22 22:15:00',18),(3092,4353156,'2008-11-22 22:20:00',16),(3093,4353173,'2008-11-22 22:25:00',17),(3094,4353191,'2008-11-22 22:30:00',18),(3095,4353209,'2008-11-22 22:35:00',18),(3096,4353225,'2008-11-22 22:40:00',16),(3097,4353243,'2008-11-22 22:45:00',18),(3098,4353261,'2008-11-22 22:50:00',18),(3099,4353277,'2008-11-22 22:55:00',16),(3100,4353295,'2008-11-22 23:00:00',18),(3101,4353311,'2008-11-22 23:05:00',16),(3102,4353324,'2008-11-22 23:10:00',13),(3103,4353336,'2008-11-22 23:15:00',12),(3104,4353349,'2008-11-22 23:20:00',13),(3105,4353362,'2008-11-22 23:25:00',13),(3106,4353375,'2008-11-22 23:30:00',13),(3107,4353396,'2008-11-22 23:35:00',21),(3108,4353416,'2008-11-22 23:40:00',20),(3109,4353435,'2008-11-22 23:45:00',19),(3110,4353452,'2008-11-22 23:50:00',17),(3111,4353470,'2008-11-22 23:55:00',18),(3112,4353483,'2008-11-23 00:00:00',13),(3113,4353496,'2008-11-23 00:05:00',13),(3114,4353508,'2008-11-23 00:10:00',12),(3115,4353521,'2008-11-23 00:15:00',13),(3116,4353533,'2008-11-23 00:20:00',12),(3117,4353546,'2008-11-23 00:25:00',13),(3118,4353559,'2008-11-23 00:30:00',13),(3119,4353572,'2008-11-23 00:35:00',13),(3120,4353585,'2008-11-23 00:40:00',13),(3121,4353597,'2008-11-23 00:45:00',12),(3122,4353609,'2008-11-23 00:50:00',12),(3123,4353622,'2008-11-23 00:55:00',13),(3124,4353634,'2008-11-23 01:00:00',12),(3125,4353647,'2008-11-23 01:05:00',13),(3126,4353659,'2008-11-23 01:10:00',12),(3127,4353672,'2008-11-23 01:15:00',13),(3128,4353684,'2008-11-23 01:20:00',12),(3129,4353769,'2008-11-23 01:25:00',85),(3130,4353792,'2008-11-23 01:30:00',23),(3131,4353807,'2008-11-23 01:35:00',15),(3132,4353826,'2008-11-23 01:40:00',19),(3133,4353845,'2008-11-23 01:45:00',19),(3134,4353864,'2008-11-23 01:50:00',19),(3135,4353881,'2008-11-23 01:55:00',17),(3136,4353899,'2008-11-23 02:00:00',18),(3137,4353912,'2008-11-23 02:05:00',13),(3138,4353925,'2008-11-23 02:10:00',13),(3139,4353936,'2008-11-23 02:15:00',11),(3140,4353949,'2008-11-23 02:20:00',13),(3141,4353962,'2008-11-23 02:25:00',13),(3142,4353974,'2008-11-23 02:30:00',12),(3143,4353987,'2008-11-23 02:35:00',13),(3144,4354000,'2008-11-23 02:40:00',13),(3145,4354012,'2008-11-23 02:45:00',12),(3146,4354024,'2008-11-23 02:50:00',12),(3147,4354037,'2008-11-23 02:55:00',13),(3148,4354050,'2008-11-23 03:00:00',13),(3149,4354062,'2008-11-23 03:05:00',12),(3150,4354075,'2008-11-23 03:10:00',13),(3151,4354088,'2008-11-23 03:15:00',13),(3152,4354101,'2008-11-23 03:20:00',13),(3153,4354112,'2008-11-23 03:25:00',11),(3154,4354125,'2008-11-23 03:30:00',13),(3155,4354138,'2008-11-23 03:35:00',13),(3156,4354151,'2008-11-23 03:40:00',13),(3157,4354163,'2008-11-23 03:45:00',12),(3158,4354182,'2008-11-23 03:50:00',19),(3159,4354202,'2008-11-23 03:55:00',20),(3160,4354220,'2008-11-23 04:00:00',18),(3161,4354239,'2008-11-23 04:05:00',19),(3162,4354258,'2008-11-23 04:10:00',19),(3163,4354272,'2008-11-23 04:15:00',14),(3164,4354284,'2008-11-23 04:20:00',12),(3165,4354297,'2008-11-23 04:25:00',13),(3166,4354310,'2008-11-23 04:30:00',13),(3167,4354322,'2008-11-23 04:35:00',12),(3168,4354335,'2008-11-23 04:40:00',13),(3169,4354348,'2008-11-23 04:45:00',13),(3170,4354361,'2008-11-23 04:50:00',13),(3171,4354372,'2008-11-23 04:55:00',11),(3172,4354386,'2008-11-23 05:00:00',14),(3173,4354481,'2008-11-23 05:05:00',95),(3174,4354494,'2008-11-23 05:10:00',13),(3175,4354506,'2008-11-23 05:15:00',12),(3176,4354519,'2008-11-23 05:20:00',13),(3177,4354532,'2008-11-23 05:25:00',13),(3178,4354544,'2008-11-23 05:30:00',12),(3179,4354557,'2008-11-23 05:35:00',13),(3180,4354570,'2008-11-23 05:40:00',13),(3181,4354583,'2008-11-23 05:45:00',13),(3182,4354595,'2008-11-23 05:50:00',12),(3183,4354608,'2008-11-23 05:55:00',13),(3184,4354621,'2008-11-23 06:00:00',13),(3185,4354636,'2008-11-23 06:05:00',15),(3186,4354657,'2008-11-23 06:10:00',21),(3187,4354677,'2008-11-23 06:15:00',20),(3188,4354697,'2008-11-23 06:20:00',20),(3189,4354716,'2008-11-23 06:25:00',19),(3190,4354735,'2008-11-23 06:30:00',19),(3191,4354750,'2008-11-23 06:35:00',15),(3192,4354763,'2008-11-23 06:40:00',13),(3193,4354778,'2008-11-23 06:45:00',15),(3194,4354793,'2008-11-23 06:50:00',15),(3195,4354808,'2008-11-23 06:55:00',15),(3196,4354821,'2008-11-23 07:00:00',13),(3197,4354836,'2008-11-23 07:05:00',15),(3198,4354851,'2008-11-23 07:10:00',15),(3199,4354866,'2008-11-23 07:15:00',15),(3200,4354879,'2008-11-23 07:20:00',13),(3201,4354894,'2008-11-23 07:25:00',15),(3202,4354909,'2008-11-23 07:30:00',15),(3203,4354922,'2008-11-23 07:35:00',13),(3204,4354937,'2008-11-23 07:40:00',15),(3205,4354952,'2008-11-23 07:45:00',15),(3206,4354967,'2008-11-23 07:50:00',15),(3207,4354981,'2008-11-23 07:55:00',14),(3208,4354995,'2008-11-23 08:00:00',14),(3209,4355008,'2008-11-23 08:05:00',13),(3210,4355019,'2008-11-23 08:10:00',11),(3211,4355031,'2008-11-23 08:15:00',12),(3212,4355044,'2008-11-23 08:20:00',13),(3213,4355058,'2008-11-23 08:25:00',14),(3214,4355076,'2008-11-23 08:30:00',18),(3215,4355095,'2008-11-23 08:35:00',19),(3216,4355145,'2008-11-23 08:40:00',50),(3217,4355214,'2008-11-23 08:45:00',69),(3218,4355232,'2008-11-23 08:50:00',18),(3219,4355244,'2008-11-23 08:55:00',12),(3220,4355255,'2008-11-23 09:00:00',11),(3221,4355268,'2008-11-23 09:05:00',13),(3222,4355280,'2008-11-23 09:10:00',12),(3223,4355292,'2008-11-23 09:15:00',12),(3224,4355303,'2008-11-23 09:20:00',11),(3225,4355319,'2008-11-23 09:25:00',16),(3226,4355332,'2008-11-23 09:30:00',13),(3227,4355344,'2008-11-23 09:35:00',12),(3228,4355355,'2008-11-23 09:40:00',11),(3229,4355367,'2008-11-23 09:45:00',12),(3230,4355380,'2008-11-23 09:50:00',13),(3231,4355392,'2008-11-23 09:55:00',12),(3232,4355403,'2008-11-23 10:00:00',11),(3233,4355416,'2008-11-23 10:05:00',13),(3234,4355428,'2008-11-23 10:10:00',12),(3235,4355439,'2008-11-23 10:15:00',11),(3236,4355450,'2008-11-23 10:20:00',11),(3237,4355464,'2008-11-23 10:25:00',14),(3238,4355476,'2008-11-23 10:30:00',12),(3239,4355487,'2008-11-23 10:35:00',11),(3240,4355499,'2008-11-23 10:40:00',12),(3241,4355512,'2008-11-23 10:45:00',13),(3242,4355526,'2008-11-23 10:50:00',14),(3243,4355546,'2008-11-23 10:55:00',20),(3244,4355565,'2008-11-23 11:00:00',19),(3245,4355583,'2008-11-23 11:05:00',18),(3246,4355600,'2008-11-23 11:10:00',17),(3247,4355615,'2008-11-23 11:15:00',15),(3248,4355628,'2008-11-23 11:20:00',13),(3249,4355639,'2008-11-23 11:25:00',11),(3250,4355651,'2008-11-23 11:30:00',12),(3251,4355663,'2008-11-23 11:35:00',12),(3252,4355676,'2008-11-23 11:40:00',13),(3253,4355687,'2008-11-23 11:45:00',11),(3254,4355699,'2008-11-23 11:50:00',12),(3255,4355711,'2008-11-23 11:55:00',12),(3256,4355722,'2008-11-23 12:00:00',11),(3257,4355735,'2008-11-23 12:05:00',13),(3258,4355747,'2008-11-23 12:10:00',12),(3259,4355759,'2008-11-23 12:15:00',12),(3260,4355810,'2008-11-23 12:20:00',51),(3261,4355866,'2008-11-23 12:25:00',56),(3262,4355879,'2008-11-23 12:30:00',13),(3263,4355890,'2008-11-23 12:35:00',11),(3264,4355902,'2008-11-23 12:40:00',12),(3265,4355914,'2008-11-23 12:45:00',12),(3266,4355925,'2008-11-23 12:50:00',11),(3267,4355938,'2008-11-23 12:55:00',13),(3268,4355950,'2008-11-23 13:00:00',12),(3269,4355962,'2008-11-23 13:05:00',12),(3270,4355973,'2008-11-23 13:10:00',11),(3271,4355987,'2008-11-23 13:15:00',14),(3272,4356007,'2008-11-23 13:20:00',20),(3273,4356026,'2008-11-23 13:25:00',19),(3274,4356042,'2008-11-23 13:30:00',16),(3275,4356061,'2008-11-23 13:35:00',19),(3276,4356077,'2008-11-23 13:40:00',16),(3277,4356088,'2008-11-23 13:45:00',11),(3278,4356100,'2008-11-23 13:50:00',12),(3279,4356113,'2008-11-23 13:55:00',13),(3280,4356125,'2008-11-23 14:00:00',12),(3281,4356139,'2008-11-23 14:05:00',14),(3282,4356157,'2008-11-23 14:10:00',18),(3283,4356174,'2008-11-23 14:15:00',17),(3284,4356190,'2008-11-23 14:20:00',16),(3285,4356205,'2008-11-23 14:25:00',15),(3286,4356220,'2008-11-23 14:30:00',15),(3287,4356237,'2008-11-23 14:35:00',17),(3288,4356253,'2008-11-23 14:40:00',16),(3289,4356269,'2008-11-23 14:45:00',16),(3290,4356283,'2008-11-23 14:50:00',14),(3291,4356294,'2008-11-23 14:55:00',11),(3292,4356306,'2008-11-23 15:00:00',12),(3293,4356319,'2008-11-23 15:05:00',13),(3294,4356331,'2008-11-23 15:10:00',12),(3295,4356342,'2008-11-23 15:15:00',11),(3296,4356355,'2008-11-23 15:20:00',13),(3297,4356367,'2008-11-23 15:25:00',12),(3298,4356378,'2008-11-23 15:30:00',11),(3299,4356391,'2008-11-23 15:35:00',13),(3300,4356403,'2008-11-23 15:40:00',12),(3301,4356422,'2008-11-23 15:45:00',19),(3302,4356440,'2008-11-23 15:50:00',18),(3303,4356459,'2008-11-23 15:55:00',19),(3304,4356561,'2008-11-23 16:00:00',102),(3305,4356579,'2008-11-23 16:05:00',18),(3306,4356591,'2008-11-23 16:10:00',12),(3307,4356603,'2008-11-23 16:15:00',12),(3308,4356616,'2008-11-23 16:20:00',13),(3309,4356630,'2008-11-23 16:25:00',14),(3310,4356648,'2008-11-23 16:30:00',18),(3311,4356665,'2008-11-23 16:35:00',17),(3312,4356682,'2008-11-23 16:40:00',17),(3313,4356695,'2008-11-23 16:45:00',13),(3314,4356711,'2008-11-23 16:50:00',16),(3315,4356728,'2008-11-23 16:55:00',17),(3316,4356743,'2008-11-23 17:00:00',15),(3317,4356760,'2008-11-23 17:05:00',17),(3318,4356774,'2008-11-23 17:10:00',14),(3319,4356786,'2008-11-23 17:15:00',12),(3320,4356798,'2008-11-23 17:20:00',12),(3321,4356811,'2008-11-23 17:25:00',13),(3322,4356829,'2008-11-23 17:30:00',18),(3323,4356844,'2008-11-23 17:35:00',15),(3324,4356858,'2008-11-23 17:40:00',14),(3325,4356871,'2008-11-23 17:45:00',13),(3326,4356885,'2008-11-23 17:50:00',14),(3327,4356901,'2008-11-23 17:55:00',16),(3328,4356918,'2008-11-23 18:00:00',17),(3329,4356932,'2008-11-23 18:05:00',14),(3330,4356948,'2008-11-23 18:10:00',16),(3331,4356970,'2008-11-23 18:15:00',22),(3332,4356995,'2008-11-23 18:20:00',25),(3333,4357018,'2008-11-23 18:25:00',23),(3334,4357036,'2008-11-23 18:30:00',18),(3335,4357052,'2008-11-23 18:35:00',16),(3336,4357065,'2008-11-23 18:40:00',13),(3337,4357077,'2008-11-23 18:45:00',12),(3338,4357090,'2008-11-23 18:50:00',13),(3339,4357103,'2008-11-23 18:55:00',13),(3340,4357117,'2008-11-23 19:00:00',14),(3341,4357128,'2008-11-23 19:05:00',11),(3342,4357141,'2008-11-23 19:10:00',13),(3343,4357155,'2008-11-23 19:15:00',14),(3344,4357166,'2008-11-23 19:20:00',11),(3345,4357180,'2008-11-23 19:25:00',14),(3346,4357193,'2008-11-23 19:30:00',13),(3347,4357223,'2008-11-23 19:35:00',30),(3348,4357307,'2008-11-23 19:40:00',84),(3349,4357338,'2008-11-23 19:45:00',31),(3350,4357378,'2008-11-23 19:50:00',40),(3351,4357413,'2008-11-23 19:55:00',35),(3352,4357473,'2008-11-23 20:00:00',60),(3353,4357564,'2008-11-23 20:05:00',91),(3354,4357674,'2008-11-23 20:15:00',110),(3355,4357719,'2008-11-23 20:40:00',45),(3356,4357994,'2008-11-23 20:45:00',275),(3357,4358067,'2008-11-23 20:50:00',73),(3358,4358113,'2008-11-23 20:55:00',46),(3359,4358160,'2008-11-23 21:00:00',47),(3360,4358210,'2008-11-23 21:05:00',50),(3361,4358268,'2008-11-23 21:10:00',58),(3362,4358326,'2008-11-23 21:15:00',58),(3363,4358384,'2008-11-23 21:20:00',58),(3364,4358436,'2008-11-23 21:25:00',52),(3365,4358491,'2008-11-23 21:30:00',55),(3366,4358548,'2008-11-23 21:35:00',57),(3367,4358599,'2008-11-23 21:40:00',51),(3368,4358635,'2008-11-23 21:45:00',36),(3369,4358662,'2008-11-23 21:50:00',27),(3370,4358690,'2008-11-23 21:55:00',28),(3371,4358714,'2008-11-23 22:00:00',24),(3372,4358741,'2008-11-23 22:05:00',27),(3373,4358768,'2008-11-23 22:10:00',27),(3374,4358792,'2008-11-23 22:15:00',24),(3375,4358819,'2008-11-23 22:20:00',27),(3376,4358879,'2008-11-23 22:30:00',60),(3377,4358975,'2008-11-23 22:45:00',96),(3378,4359007,'2008-11-23 22:50:00',32),(3379,4359058,'2008-11-23 23:00:00',51),(3380,4359101,'2008-11-23 23:10:00',43),(3381,4359122,'2008-11-23 23:15:00',21),(3382,4359143,'2008-11-23 23:20:00',21),(3383,4359248,'2008-11-23 23:25:00',105),(3384,4359266,'2008-11-23 23:30:00',18),(3385,4359287,'2008-11-23 23:35:00',21),(3386,4359308,'2008-11-23 23:40:00',21),(3387,4359327,'2008-11-23 23:45:00',19),(3388,4359369,'2008-11-23 23:55:00',42),(3389,4359428,'2008-11-24 00:10:00',59),(3390,4359451,'2008-11-24 00:15:00',23),(3391,4359472,'2008-11-24 00:20:00',21),(3392,4359512,'2008-11-24 00:30:00',40),(3393,4359538,'2008-11-24 00:35:00',26),(3394,4359563,'2008-11-24 00:40:00',25),(3395,4359592,'2008-11-24 00:45:00',29),(3396,4359618,'2008-11-24 00:50:00',26),(3397,4359637,'2008-11-24 00:55:00',19),(3398,4359652,'2008-11-24 01:00:00',15),(3399,4359665,'2008-11-24 01:05:00',13),(3400,4359678,'2008-11-24 01:10:00',13),(3401,4359689,'2008-11-24 01:15:00',11),(3402,4359702,'2008-11-24 01:20:00',13),(3403,4359715,'2008-11-24 01:25:00',13),(3404,4359728,'2008-11-24 01:30:00',13),(3405,4359740,'2008-11-24 01:35:00',12),(3406,4359753,'2008-11-24 01:40:00',13),(3407,4359766,'2008-11-24 01:45:00',13),(3408,4359779,'2008-11-24 01:50:00',13),(3409,4359791,'2008-11-24 01:55:00',12),(3410,4359804,'2008-11-24 02:00:00',13),(3411,4359817,'2008-11-24 02:05:00',13),(3412,4359829,'2008-11-24 02:10:00',12),(3413,4359841,'2008-11-24 02:15:00',12),(3414,4359855,'2008-11-24 02:20:00',14),(3415,4359868,'2008-11-24 02:25:00',13),(3416,4359880,'2008-11-24 02:30:00',12),(3417,4359893,'2008-11-24 02:35:00',13),(3418,4359906,'2008-11-24 02:40:00',13),(3419,4359918,'2008-11-24 02:45:00',12),(3420,4359935,'2008-11-24 02:50:00',17),(3421,4359955,'2008-11-24 02:55:00',20),(3422,4359975,'2008-11-24 03:00:00',20),(3423,4360074,'2008-11-24 03:05:00',99),(3424,4360093,'2008-11-24 03:10:00',19),(3425,4360110,'2008-11-24 03:15:00',17),(3426,4360123,'2008-11-24 03:20:00',13),(3427,4360135,'2008-11-24 03:25:00',12),(3428,4360148,'2008-11-24 03:30:00',13),(3429,4360161,'2008-11-24 03:35:00',13),(3430,4360173,'2008-11-24 03:40:00',12),(3431,4360186,'2008-11-24 03:45:00',13),(3432,4360199,'2008-11-24 03:50:00',13),(3433,4360212,'2008-11-24 03:55:00',13),(3434,4360224,'2008-11-24 04:00:00',12),(3435,4360237,'2008-11-24 04:05:00',13),(3436,4360250,'2008-11-24 04:10:00',13),(3437,4360262,'2008-11-24 04:15:00',12),(3438,4360275,'2008-11-24 04:20:00',13),(3439,4360288,'2008-11-24 04:25:00',13),(3440,4360301,'2008-11-24 04:30:00',13),(3441,4360313,'2008-11-24 04:35:00',12),(3442,4360326,'2008-11-24 04:40:00',13),(3443,4360339,'2008-11-24 04:45:00',13),(3444,4360351,'2008-11-24 04:50:00',12),(3445,4360364,'2008-11-24 04:55:00',13),(3446,4360377,'2008-11-24 05:00:00',13),(3447,4360390,'2008-11-24 05:05:00',13),(3448,4360402,'2008-11-24 05:10:00',12),(3449,4360423,'2008-11-24 05:15:00',21),(3450,4360443,'2008-11-24 05:20:00',20),(3451,4360462,'2008-11-24 05:25:00',19),(3452,4360479,'2008-11-24 05:30:00',17),(3453,4360498,'2008-11-24 05:35:00',19),(3454,4360511,'2008-11-24 05:40:00',13),(3455,4360523,'2008-11-24 05:45:00',12),(3456,4360536,'2008-11-24 05:50:00',13),(3457,4360549,'2008-11-24 05:55:00',13),(3458,4360563,'2008-11-24 06:00:00',14),(3459,4360574,'2008-11-24 06:05:00',11),(3460,4360588,'2008-11-24 06:10:00',14),(3461,4360601,'2008-11-24 06:15:00',13),(3462,4360613,'2008-11-24 06:20:00',12),(3463,4360626,'2008-11-24 06:25:00',13),(3464,4360639,'2008-11-24 06:30:00',13),(3465,4360652,'2008-11-24 06:35:00',13),(3466,4360746,'2008-11-24 06:40:00',94),(3467,4360759,'2008-11-24 06:45:00',13),(3468,4360773,'2008-11-24 06:50:00',14),(3469,4360785,'2008-11-24 06:55:00',12),(3470,4360800,'2008-11-24 07:00:00',15),(3471,4360815,'2008-11-24 07:05:00',15),(3472,4360828,'2008-11-24 07:10:00',13),(3473,4360843,'2008-11-24 07:15:00',15),(3474,4360858,'2008-11-24 07:20:00',15),(3475,4360873,'2008-11-24 07:25:00',15),(3476,4360888,'2008-11-24 07:30:00',15),(3477,4360902,'2008-11-24 07:35:00',14),(3478,4360925,'2008-11-24 07:40:00',23),(3479,4360948,'2008-11-24 07:45:00',23),(3480,4360971,'2008-11-24 07:50:00',23),(3481,4360995,'2008-11-24 07:55:00',24),(3482,4361024,'2008-11-24 08:00:00',29),(3483,4361050,'2008-11-24 08:05:00',26),(3484,4361069,'2008-11-24 08:10:00',19),(3485,4361098,'2008-11-24 08:15:00',29),(3486,4361126,'2008-11-24 08:20:00',28),(3487,4361151,'2008-11-24 08:25:00',25),(3488,4361172,'2008-11-24 08:30:00',21),(3489,4361184,'2008-11-24 08:35:00',12),(3490,4361197,'2008-11-24 08:40:00',13),(3491,4361208,'2008-11-24 08:45:00',11),(3492,4361221,'2008-11-24 08:50:00',13),(3493,4361233,'2008-11-24 08:55:00',12),(3494,4361244,'2008-11-24 09:00:00',11),(3495,4361257,'2008-11-24 09:05:00',13),(3496,4361269,'2008-11-24 09:10:00',12),(3497,4361282,'2008-11-24 09:15:00',13),(3498,4361293,'2008-11-24 09:20:00',11),(3499,4361308,'2008-11-24 09:25:00',15),(3500,4361326,'2008-11-24 09:30:00',18),(3501,4361343,'2008-11-24 09:35:00',17),(3502,4361359,'2008-11-24 09:40:00',16),(3503,4361376,'2008-11-24 09:45:00',17),(3504,4361394,'2008-11-24 09:50:00',18),(3505,4361409,'2008-11-24 09:55:00',15),(3506,4361443,'2008-11-24 10:05:00',34),(3507,4361545,'2008-11-24 10:10:00',102),(3508,4361577,'2008-11-24 10:15:00',32),(3509,4361596,'2008-11-24 10:20:00',19),(3510,4361615,'2008-11-24 10:25:00',19),(3511,4361630,'2008-11-24 10:30:00',15),(3512,4361642,'2008-11-24 10:35:00',12),(3513,4361655,'2008-11-24 10:40:00',13),(3514,4361667,'2008-11-24 10:45:00',12),(3515,4361679,'2008-11-24 10:50:00',12),(3516,4361691,'2008-11-24 10:55:00',12),(3517,4361704,'2008-11-24 11:00:00',13),(3518,4361715,'2008-11-24 11:05:00',11),(3519,4361727,'2008-11-24 11:10:00',12),(3520,4361740,'2008-11-24 11:15:00',13),(3521,4361752,'2008-11-24 11:20:00',12),(3522,4361764,'2008-11-24 11:25:00',12),(3523,4361778,'2008-11-24 11:30:00',14),(3524,4361796,'2008-11-24 11:35:00',18),(3525,4361811,'2008-11-24 11:40:00',15),(3526,4361829,'2008-11-24 11:45:00',18),(3527,4361846,'2008-11-24 11:50:00',17),(3528,4361862,'2008-11-24 11:55:00',16),(3529,4361878,'2008-11-24 12:00:00',16),(3530,4361895,'2008-11-24 12:05:00',17),(3531,4361912,'2008-11-24 12:10:00',17),(3532,4361925,'2008-11-24 12:15:00',13),(3533,4361938,'2008-11-24 12:20:00',13),(3534,4361951,'2008-11-24 12:25:00',13),(3535,4361963,'2008-11-24 12:30:00',12),(3536,4361982,'2008-11-24 12:35:00',19),(3537,4362001,'2008-11-24 12:40:00',19),(3538,4362056,'2008-11-24 12:55:00',55),(3539,4362069,'2008-11-24 13:00:00',13),(3540,4362082,'2008-11-24 13:05:00',13),(3541,4362093,'2008-11-24 13:10:00',11),(3542,4362106,'2008-11-24 13:15:00',13),(3543,4362118,'2008-11-24 13:20:00',12),(3544,4362129,'2008-11-24 13:25:00',11),(3545,4362142,'2008-11-24 13:30:00',13),(3546,4362154,'2008-11-24 13:35:00',12),(3547,4362167,'2008-11-24 13:40:00',13),(3548,4362178,'2008-11-24 13:45:00',11),(3549,4362190,'2008-11-24 13:50:00',12),(3550,4362203,'2008-11-24 13:55:00',13),(3551,4362310,'2008-11-24 14:00:00',107),(3552,4362323,'2008-11-24 14:05:00',13),(3553,4362335,'2008-11-24 14:10:00',12),(3554,4362348,'2008-11-24 14:15:00',13),(3555,4362359,'2008-11-24 14:20:00',11),(3556,4362371,'2008-11-24 14:25:00',12),(3557,4362384,'2008-11-24 14:30:00',13),(3558,4362396,'2008-11-24 14:35:00',12),(3559,4362407,'2008-11-24 14:40:00',11),(3560,4362420,'2008-11-24 14:45:00',13),(3561,4362432,'2008-11-24 14:50:00',12),(3562,4362444,'2008-11-24 14:55:00',12),(3563,4362460,'2008-11-24 15:00:00',16),(3564,4362480,'2008-11-24 15:05:00',20),(3565,4362499,'2008-11-24 15:10:00',19),(3566,4362516,'2008-11-24 15:15:00',17),(3567,4362535,'2008-11-24 15:20:00',19),(3568,4362551,'2008-11-24 15:25:00',16),(3569,4362562,'2008-11-24 15:30:00',11),(3570,4362576,'2008-11-24 15:35:00',14),(3571,4362594,'2008-11-24 15:40:00',18),(3572,4362612,'2008-11-24 15:45:00',18),(3573,4362628,'2008-11-24 15:50:00',16),(3574,4362649,'2008-11-24 15:55:00',21),(3575,4362721,'2008-11-24 16:00:00',72),(3576,4362800,'2008-11-24 16:05:00',79),(3577,4362839,'2008-11-24 16:10:00',39),(3578,4362880,'2008-11-24 16:15:00',41),(3579,4362918,'2008-11-24 16:20:00',38),(3580,4362954,'2008-11-24 16:25:00',36),(3581,4363031,'2008-11-24 16:35:00',77),(3582,4363067,'2008-11-24 16:40:00',36),(3583,4363105,'2008-11-24 16:45:00',38),(3584,4363182,'2008-11-24 16:55:00',77),(3585,4363216,'2008-11-24 17:00:00',34),(3586,4363260,'2008-11-24 17:05:00',44),(3587,4363310,'2008-11-24 17:10:00',50),(3588,4363368,'2008-11-24 17:15:00',58),(3589,4363421,'2008-11-24 17:20:00',53),(3590,4363479,'2008-11-24 17:25:00',58),(3591,4363538,'2008-11-24 17:30:00',59),(3592,4363588,'2008-11-24 17:35:00',50),(3593,4363642,'2008-11-24 17:40:00',54),(3594,4363691,'2008-11-24 17:45:00',49),(3595,4363740,'2008-11-24 17:50:00',49),(3596,4363792,'2008-11-24 17:55:00',52),(3597,4363849,'2008-11-24 18:00:00',57),(3598,4363906,'2008-11-24 18:05:00',57),(3599,4364049,'2008-11-24 18:10:00',143),(3600,4364106,'2008-11-24 18:15:00',57),(3601,4364163,'2008-11-24 18:20:00',57),(3602,4364288,'2008-11-24 18:25:00',125),(3603,4364369,'2008-11-24 18:30:00',81),(3604,4364437,'2008-11-24 18:35:00',68),(3605,4364504,'2008-11-24 18:40:00',67),(3606,4364560,'2008-11-24 18:45:00',56),(3607,4364625,'2008-11-24 18:50:00',65),(3608,4364690,'2008-11-24 18:55:00',65),(3609,4364757,'2008-11-24 19:00:00',67),(3610,4364817,'2008-11-24 19:05:00',60),(3611,4364883,'2008-11-24 19:10:00',66),(3612,4364931,'2008-11-24 19:15:00',48),(3613,4364979,'2008-11-24 19:20:00',48),(3614,4365031,'2008-11-24 19:25:00',52),(3615,4365083,'2008-11-24 19:30:00',52),(3616,4365121,'2008-11-24 19:35:00',38),(3617,4365146,'2008-11-24 19:40:00',25),(3618,4365170,'2008-11-24 19:45:00',24),(3619,4365194,'2008-11-24 19:50:00',24),(3620,4365217,'2008-11-24 19:55:00',23),(3621,4365238,'2008-11-24 20:00:00',21),(3622,4365262,'2008-11-24 20:05:00',24),(3623,4365285,'2008-11-24 20:10:00',23),(3624,4365306,'2008-11-24 20:15:00',21),(3625,4365330,'2008-11-24 20:20:00',24),(3626,4365354,'2008-11-24 20:25:00',24),(3627,4365377,'2008-11-24 20:30:00',23),(3628,4365399,'2008-11-24 20:35:00',22),(3629,4365425,'2008-11-24 20:40:00',26),(3630,4365451,'2008-11-24 20:45:00',26),(3631,4365475,'2008-11-24 20:50:00',24),(3632,4365502,'2008-11-24 20:55:00',27),(3633,4365528,'2008-11-24 21:00:00',26),(3634,4365554,'2008-11-24 21:05:00',26),(3635,4365578,'2008-11-24 21:10:00',24),(3636,4365604,'2008-11-24 21:15:00',26),(3637,4365636,'2008-11-24 21:20:00',32),(3638,4365669,'2008-11-24 21:25:00',33),(3639,4365698,'2008-11-24 21:30:00',29),(3640,4365731,'2008-11-24 21:35:00',33),(3641,4365764,'2008-11-24 21:40:00',33),(3642,4365789,'2008-11-24 21:45:00',25),(3643,4365815,'2008-11-24 21:50:00',26),(3644,4365840,'2008-11-24 21:55:00',25),(3645,4365865,'2008-11-24 22:00:00',25),(3646,4365888,'2008-11-24 22:05:00',23),(3647,4365913,'2008-11-24 22:10:00',25),(3648,4365938,'2008-11-24 22:15:00',25),(3649,4366040,'2008-11-24 22:20:00',102),(3650,4366059,'2008-11-24 22:25:00',19),(3651,4366077,'2008-11-24 22:30:00',18),(3652,4366095,'2008-11-24 22:35:00',18),(3653,4366111,'2008-11-24 22:40:00',16),(3654,4366129,'2008-11-24 22:45:00',18),(3655,4366148,'2008-11-24 22:50:00',19),(3656,4366164,'2008-11-24 22:55:00',16),(3657,4366186,'2008-11-24 23:00:00',22),(3658,4366207,'2008-11-24 23:05:00',21),(3659,4366224,'2008-11-24 23:10:00',17),(3660,4366240,'2008-11-24 23:15:00',16),(3661,4366262,'2008-11-24 23:20:00',22),(3662,4366286,'2008-11-24 23:25:00',24),(3663,4366307,'2008-11-24 23:30:00',21),(3664,4366330,'2008-11-24 23:35:00',23),(3665,4366353,'2008-11-24 23:40:00',23),(3666,4366372,'2008-11-24 23:45:00',19),(3667,4366387,'2008-11-24 23:50:00',15),(3668,4366404,'2008-11-24 23:55:00',17),(3669,4366421,'2008-11-25 00:00:00',17),(3670,4366438,'2008-11-25 00:05:00',17),(3671,4366453,'2008-11-25 00:10:00',15),(3672,4366467,'2008-11-25 00:15:00',14),(3673,4366481,'2008-11-25 00:20:00',14),(3674,4366493,'2008-11-25 00:25:00',12),(3675,4366506,'2008-11-25 00:30:00',13),(3676,4366519,'2008-11-25 00:35:00',13),(3677,4366532,'2008-11-25 00:40:00',13),(3678,4366544,'2008-11-25 00:45:00',12),(3679,4366557,'2008-11-25 00:50:00',13),(3680,4366570,'2008-11-25 00:55:00',13),(3681,4366583,'2008-11-25 01:00:00',13),(3682,4366595,'2008-11-25 01:05:00',12),(3683,4366608,'2008-11-25 01:10:00',13),(3684,4366621,'2008-11-25 01:15:00',13),(3685,4366633,'2008-11-25 01:20:00',12),(3686,4366653,'2008-11-25 01:25:00',20),(3687,4366673,'2008-11-25 01:30:00',20),(3688,4366692,'2008-11-25 01:35:00',19),(3689,4366710,'2008-11-25 01:40:00',18),(3690,4366729,'2008-11-25 01:45:00',19),(3691,4366742,'2008-11-25 01:50:00',13),(3692,4366754,'2008-11-25 01:55:00',12),(3693,4366768,'2008-11-25 02:00:00',14),(3694,4366865,'2008-11-25 02:05:00',97),(3695,4366878,'2008-11-25 02:10:00',13),(3696,4366890,'2008-11-25 02:15:00',12),(3697,4366904,'2008-11-25 02:20:00',14),(3698,4366917,'2008-11-25 02:25:00',13),(3699,4366930,'2008-11-25 02:30:00',13),(3700,4366942,'2008-11-25 02:35:00',12),(3701,4366955,'2008-11-25 02:40:00',13),(3702,4366968,'2008-11-25 02:45:00',13),(3703,4366980,'2008-11-25 02:50:00',12),(3704,4366993,'2008-11-25 02:55:00',13),(3705,4367006,'2008-11-25 03:00:00',13),(3706,4367019,'2008-11-25 03:05:00',13),(3707,4367031,'2008-11-25 03:10:00',12),(3708,4367044,'2008-11-25 03:15:00',13),(3709,4367057,'2008-11-25 03:20:00',13),(3710,4367069,'2008-11-25 03:25:00',12),(3711,4367082,'2008-11-25 03:30:00',13),(3712,4367098,'2008-11-25 03:35:00',16),(3713,4367118,'2008-11-25 03:40:00',20),(3714,4367136,'2008-11-25 03:45:00',18),(3715,4367155,'2008-11-25 03:50:00',19),(3716,4367175,'2008-11-25 03:55:00',20),(3717,4367192,'2008-11-25 04:00:00',17),(3718,4367203,'2008-11-25 04:05:00',11),(3719,4367217,'2008-11-25 04:10:00',14),(3720,4367230,'2008-11-25 04:15:00',13),(3721,4367242,'2008-11-25 04:20:00',12),(3722,4367255,'2008-11-25 04:25:00',13),(3723,4367268,'2008-11-25 04:30:00',13),(3724,4367281,'2008-11-25 04:35:00',13),(3725,4367293,'2008-11-25 04:40:00',12),(3726,4367306,'2008-11-25 04:45:00',13),(3727,4367320,'2008-11-25 04:50:00',14),(3728,4367332,'2008-11-25 04:55:00',12),(3729,4367346,'2008-11-25 05:00:00',14),(3730,4367360,'2008-11-25 05:05:00',14),(3731,4367375,'2008-11-25 05:10:00',15),(3732,4367388,'2008-11-25 05:15:00',13),(3733,4367417,'2008-11-25 05:20:00',29),(3734,4367446,'2008-11-25 05:25:00',29),(3735,4367468,'2008-11-25 05:30:00',22),(3736,4367500,'2008-11-25 05:35:00',32),(3737,4367524,'2008-11-25 05:40:00',24),(3738,4367621,'2008-11-25 05:45:00',97),(3739,4367632,'2008-11-25 05:50:00',11),(3740,4367650,'2008-11-25 05:55:00',18),(3741,4367671,'2008-11-25 06:00:00',21),(3742,4367690,'2008-11-25 06:05:00',19),(3743,4367707,'2008-11-25 06:10:00',17),(3744,4367726,'2008-11-25 06:15:00',19),(3745,4367741,'2008-11-25 06:20:00',15),(3746,4367753,'2008-11-25 06:25:00',12),(3747,4367766,'2008-11-25 06:30:00',13),(3748,4367779,'2008-11-25 06:35:00',13),(3749,4367791,'2008-11-25 06:40:00',12),(3750,4367802,'2008-11-25 06:45:00',11),(3751,4367815,'2008-11-25 06:50:00',13),(3752,4367828,'2008-11-25 06:55:00',13),(3753,4367839,'2008-11-25 07:00:00',11),(3754,4367852,'2008-11-25 07:05:00',13),(3755,4367864,'2008-11-25 07:10:00',12),(3756,4367877,'2008-11-25 07:15:00',13),(3757,4367888,'2008-11-25 07:20:00',11),(3758,4367901,'2008-11-25 07:25:00',13),(3759,4367913,'2008-11-25 07:30:00',12),(3760,4367925,'2008-11-25 07:35:00',12),(3761,4367937,'2008-11-25 07:40:00',12),(3762,4367950,'2008-11-25 07:45:00',13),(3763,4367962,'2008-11-25 07:50:00',12),(3764,4367974,'2008-11-25 07:55:00',12),(3765,4367986,'2008-11-25 08:00:00',12),(3766,4367999,'2008-11-25 08:05:00',13),(3767,4368011,'2008-11-25 08:10:00',12),(3768,4368025,'2008-11-25 08:15:00',14),(3769,4368045,'2008-11-25 08:20:00',20),(3770,4368065,'2008-11-25 08:25:00',20),(3771,4368082,'2008-11-25 08:30:00',17),(3772,4368100,'2008-11-25 08:35:00',18),(3773,4368116,'2008-11-25 08:40:00',16),(3774,4368128,'2008-11-25 08:45:00',12),(3775,4368140,'2008-11-25 08:50:00',12),(3776,4368153,'2008-11-25 08:55:00',13),(3777,4368165,'2008-11-25 09:00:00',12),(3778,4368177,'2008-11-25 09:05:00',12),(3779,4368189,'2008-11-25 09:10:00',12),(3780,4368202,'2008-11-25 09:15:00',13),(3781,4368298,'2008-11-25 09:20:00',96),(3782,4368309,'2008-11-25 09:25:00',11),(3783,4368322,'2008-11-25 09:30:00',13),(3784,4368334,'2008-11-25 09:35:00',12),(3785,4368346,'2008-11-25 09:40:00',12),(3786,4368358,'2008-11-25 09:45:00',12),(3787,4368371,'2008-11-25 09:50:00',13),(3788,4368384,'2008-11-25 09:55:00',13),(3789,4368395,'2008-11-25 10:00:00',11),(3790,4368408,'2008-11-25 10:05:00',13),(3791,4368420,'2008-11-25 10:10:00',12),(3792,4368432,'2008-11-25 10:15:00',12),(3793,4368444,'2008-11-25 10:20:00',12),(3794,4368457,'2008-11-25 10:25:00',13),(3795,4368469,'2008-11-25 10:30:00',12),(3796,4368480,'2008-11-25 10:35:00',11),(3797,4368498,'2008-11-25 10:40:00',18),(3798,4368517,'2008-11-25 10:45:00',19),(3799,4368535,'2008-11-25 10:50:00',18),(3800,4368553,'2008-11-25 10:55:00',18),(3801,4368572,'2008-11-25 11:00:00',19),(3802,4368586,'2008-11-25 11:05:00',14),(3803,4368597,'2008-11-25 11:10:00',11),(3804,4368610,'2008-11-25 11:15:00',13),(3805,4368622,'2008-11-25 11:20:00',12),(3806,4368635,'2008-11-25 11:25:00',13),(3807,4368648,'2008-11-25 11:30:00',13),(3808,4368666,'2008-11-25 11:35:00',18),(3809,4368684,'2008-11-25 11:40:00',18),(3810,4368699,'2008-11-25 11:45:00',15),(3811,4368715,'2008-11-25 11:50:00',16),(3812,4368730,'2008-11-25 11:55:00',15),(3813,4368748,'2008-11-25 12:00:00',18),(3814,4368764,'2008-11-25 12:05:00',16),(3815,4368780,'2008-11-25 12:10:00',16),(3816,4368792,'2008-11-25 12:15:00',12),(3817,4368804,'2008-11-25 12:20:00',12),(3818,4368816,'2008-11-25 12:25:00',12),(3819,4368829,'2008-11-25 12:30:00',13),(3820,4368842,'2008-11-25 12:35:00',13),(3821,4368853,'2008-11-25 12:40:00',11),(3822,4368865,'2008-11-25 12:45:00',12),(3823,4368878,'2008-11-25 12:50:00',13),(3824,4368973,'2008-11-25 12:55:00',95),(3825,4368986,'2008-11-25 13:00:00',13),(3826,4369006,'2008-11-25 13:05:00',20),(3827,4369025,'2008-11-25 13:10:00',19),(3828,4369042,'2008-11-25 13:15:00',17),(3829,4369060,'2008-11-25 13:20:00',18),(3830,4369078,'2008-11-25 13:25:00',18),(3831,4369090,'2008-11-25 13:30:00',12),(3832,4369102,'2008-11-25 13:35:00',12),(3833,4369114,'2008-11-25 13:40:00',12),(3834,4369127,'2008-11-25 13:45:00',13),(3835,4369138,'2008-11-25 13:50:00',11),(3836,4369150,'2008-11-25 13:55:00',12),(3837,4369163,'2008-11-25 14:00:00',13),(3838,4369174,'2008-11-25 14:05:00',11),(3839,4369187,'2008-11-25 14:10:00',13),(3840,4369199,'2008-11-25 14:15:00',12),(3841,4369212,'2008-11-25 14:20:00',13),(3842,4369223,'2008-11-25 14:25:00',11),(3843,4369235,'2008-11-25 14:30:00',12),(3844,4369248,'2008-11-25 14:35:00',13),(3845,4369259,'2008-11-25 14:40:00',11),(3846,4369272,'2008-11-25 14:45:00',13),(3847,4369284,'2008-11-25 14:50:00',12),(3848,4369297,'2008-11-25 14:55:00',13),(3849,4369308,'2008-11-25 15:00:00',11),(3850,4369321,'2008-11-25 15:05:00',13),(3851,4369333,'2008-11-25 15:10:00',12),(3852,4369346,'2008-11-25 15:15:00',13),(3853,4369357,'2008-11-25 15:20:00',11),(3854,4369372,'2008-11-25 15:25:00',15),(3855,4369392,'2008-11-25 15:30:00',20),(3856,4369410,'2008-11-25 15:35:00',18),(3857,4369428,'2008-11-25 15:40:00',18),(3858,4369447,'2008-11-25 15:45:00',19),(3859,4369463,'2008-11-25 15:50:00',16),(3860,4369474,'2008-11-25 15:55:00',11),(3861,4369487,'2008-11-25 16:00:00',13),(3862,4369499,'2008-11-25 16:05:00',12),(3863,4369510,'2008-11-25 16:10:00',11),(3864,4369528,'2008-11-25 16:15:00',18),(3865,4369546,'2008-11-25 16:20:00',18),(3866,4369563,'2008-11-25 16:25:00',17),(3867,4369591,'2008-11-25 16:30:00',28),(3868,4369681,'2008-11-25 16:35:00',90),(3869,4369696,'2008-11-25 16:40:00',15),(3870,4369711,'2008-11-25 16:45:00',15),(3871,4369729,'2008-11-25 16:50:00',18),(3872,4369745,'2008-11-25 16:55:00',16),(3873,4369758,'2008-11-25 17:00:00',13),(3874,4369770,'2008-11-25 17:05:00',12),(3875,4369782,'2008-11-25 17:10:00',12),(3876,4369794,'2008-11-25 17:15:00',12),(3877,4369806,'2008-11-25 17:20:00',12),(3878,4369818,'2008-11-25 17:25:00',12),(3879,4369830,'2008-11-25 17:30:00',12),(3880,4369843,'2008-11-25 17:35:00',13),(3881,4369854,'2008-11-25 17:40:00',11),(3882,4369867,'2008-11-25 17:45:00',13),(3883,4369884,'2008-11-25 17:50:00',17),(3884,4369901,'2008-11-25 17:55:00',17),(3885,4369921,'2008-11-25 18:00:00',20),(3886,4369940,'2008-11-25 18:05:00',19),(3887,4369959,'2008-11-25 18:10:00',19),(3888,4369973,'2008-11-25 18:15:00',14),(3889,4369986,'2008-11-25 18:20:00',13),(3890,4369999,'2008-11-25 18:25:00',13),(3891,4370014,'2008-11-25 18:30:00',15),(3892,4370032,'2008-11-25 18:35:00',18),(3893,4370050,'2008-11-25 18:40:00',18),(3894,4370067,'2008-11-25 18:45:00',17),(3895,4370081,'2008-11-25 18:50:00',14),(3896,4370097,'2008-11-25 18:55:00',16),(3897,4370116,'2008-11-25 19:00:00',19),(3898,4370133,'2008-11-25 19:05:00',17),(3899,4370149,'2008-11-25 19:10:00',16),(3900,4370164,'2008-11-25 19:15:00',15),(3901,4370177,'2008-11-25 19:20:00',13),(3902,4370188,'2008-11-25 19:25:00',11),(3903,4370201,'2008-11-25 19:30:00',13),(3904,4370215,'2008-11-25 19:35:00',14),(3905,4370233,'2008-11-25 19:40:00',18),(3906,4370249,'2008-11-25 19:45:00',16),(3907,4370264,'2008-11-25 19:50:00',15),(3908,4370277,'2008-11-25 19:55:00',13),(3909,4370289,'2008-11-25 20:00:00',12),(3910,4370302,'2008-11-25 20:05:00',13),(3911,4370315,'2008-11-25 20:10:00',13),(3912,4370403,'2008-11-25 20:15:00',88),(3913,4370442,'2008-11-25 20:20:00',39),(3914,4370462,'2008-11-25 20:25:00',20),(3915,4370481,'2008-11-25 20:30:00',19),(3916,4370499,'2008-11-25 20:35:00',18),(3917,4370512,'2008-11-25 20:40:00',13),(3918,4370540,'2008-11-25 20:45:00',28),(3919,4370592,'2008-11-25 20:50:00',52),(3920,4370660,'2008-11-25 20:55:00',68),(3921,4370751,'2008-11-25 21:00:00',91),(3922,4370937,'2008-11-25 21:05:00',186),(3923,4371103,'2008-11-25 21:10:00',166),(3924,4371290,'2008-11-25 21:15:00',187),(3925,4371360,'2008-11-25 21:20:00',70),(3926,4371389,'2008-11-25 21:25:00',29),(3927,4371414,'2008-11-25 21:30:00',25),(3928,4371492,'2008-11-25 21:35:00',78),(3929,4371525,'2008-11-25 21:40:00',33),(3930,4371554,'2008-11-25 21:45:00',29),(3931,4371586,'2008-11-25 21:50:00',32),(3932,4371612,'2008-11-25 21:55:00',26),(3933,4371648,'2008-11-25 22:00:00',36),(3934,4371681,'2008-11-25 22:05:00',33),(3935,4371719,'2008-11-25 22:10:00',38),(3936,4371753,'2008-11-25 22:15:00',34),(3937,4424660,'2008-12-02 21:00:00',52907),(3938,4424702,'2008-12-02 21:05:00',42),(3939,4424744,'2008-12-02 21:10:00',42),(3940,4424781,'2008-12-02 21:15:00',37),(3941,4424821,'2008-12-02 21:20:00',40),(3942,4424862,'2008-12-02 21:25:00',41),(3943,4424905,'2008-12-02 21:30:00',43),(3944,4424943,'2008-12-02 21:35:00',38),(3945,4424983,'2008-12-02 21:40:00',40),(3946,4425020,'2008-12-02 21:45:00',37),(3947,4425054,'2008-12-02 21:50:00',34),(3948,4425091,'2008-12-02 21:55:00',37),(3949,4425130,'2008-12-02 22:00:00',39),(3950,4425169,'2008-12-02 22:05:00',39),(3951,4425210,'2008-12-02 22:10:00',41),(3952,4425256,'2008-12-02 22:15:00',46),(3953,4425302,'2008-12-02 22:20:00',46),(3954,4425347,'2008-12-02 22:25:00',45),(3955,4425387,'2008-12-02 22:30:00',40),(3956,4425428,'2008-12-02 22:35:00',41),(3957,4425466,'2008-12-02 22:40:00',38),(3958,4425490,'2008-12-02 22:45:00',24),(3959,4425511,'2008-12-02 22:50:00',21),(3960,4425531,'2008-12-02 22:55:00',20),(3961,4425552,'2008-12-02 23:00:00',21),(3962,4425571,'2008-12-02 23:05:00',19),(3963,4425592,'2008-12-02 23:10:00',21),(3964,4425612,'2008-12-02 23:15:00',20),(3965,4425631,'2008-12-02 23:20:00',19),(3966,4425652,'2008-12-02 23:25:00',21),(3967,4425672,'2008-12-02 23:30:00',20),(3968,4425693,'2008-12-02 23:35:00',21),(3969,4425712,'2008-12-02 23:40:00',19),(3970,4425733,'2008-12-02 23:45:00',21),(3971,4425753,'2008-12-02 23:50:00',20),(3972,4425774,'2008-12-02 23:55:00',21),(3973,4425792,'2008-12-03 00:00:00',18),(3974,4425813,'2008-12-03 00:05:00',21),(3975,4425917,'2008-12-03 00:10:00',104),(3976,4425997,'2008-12-03 00:25:00',80),(3977,4426024,'2008-12-03 00:30:00',27),(3978,4426111,'2008-12-03 00:50:00',87),(3979,4426131,'2008-12-03 00:55:00',20),(3980,4426149,'2008-12-03 01:00:00',18),(3981,4426232,'2008-12-03 01:25:00',83),(3982,4426232,'2008-12-03 01:40:00',0),(3983,4426346,'2008-12-03 02:00:00',114),(3984,4426434,'2008-12-03 02:25:00',88),(3985,4426454,'2008-12-03 02:30:00',20),(3986,4426474,'2008-12-03 02:35:00',20),(3987,4426491,'2008-12-03 02:40:00',17),(3988,4426509,'2008-12-03 02:45:00',18),(3989,4426522,'2008-12-03 02:50:00',13),(3990,4426535,'2008-12-03 02:55:00',13),(3991,4426547,'2008-12-03 03:00:00',12),(3992,4426560,'2008-12-03 03:05:00',13),(3993,4426572,'2008-12-03 03:10:00',12),(3994,4426585,'2008-12-03 03:15:00',13),(3995,4426598,'2008-12-03 03:20:00',13),(3996,4426611,'2008-12-03 03:25:00',13),(3997,4426624,'2008-12-03 03:30:00',13),(3998,4426636,'2008-12-03 03:35:00',12),(3999,4426649,'2008-12-03 03:40:00',13),(4000,4426662,'2008-12-03 03:45:00',13),(4001,4426674,'2008-12-03 03:50:00',12),(4002,4426775,'2008-12-03 03:55:00',101),(4003,4426788,'2008-12-03 04:00:00',13),(4004,4426801,'2008-12-03 04:05:00',13),(4005,4426813,'2008-12-03 04:10:00',12),(4006,4426826,'2008-12-03 04:15:00',13),(4007,4426839,'2008-12-03 04:20:00',13),(4008,4426852,'2008-12-03 04:25:00',13),(4009,4426864,'2008-12-03 04:30:00',12),(4010,4426883,'2008-12-03 04:35:00',19),(4011,4426903,'2008-12-03 04:40:00',20),(4012,4426921,'2008-12-03 04:45:00',18),(4013,4426940,'2008-12-03 04:50:00',19),(4014,4426959,'2008-12-03 04:55:00',19),(4015,4426973,'2008-12-03 05:00:00',14),(4016,4426985,'2008-12-03 05:05:00',12),(4017,4426998,'2008-12-03 05:10:00',13),(4018,4427011,'2008-12-03 05:15:00',13),(4019,4427022,'2008-12-03 05:20:00',11),(4020,4427035,'2008-12-03 05:25:00',13),(4021,4427855,'2008-12-03 09:25:00',820),(4022,4427861,'2008-12-03 09:30:00',6),(4023,4427916,'2008-12-03 10:25:00',55),(4024,4428302,'2008-12-03 11:40:00',386),(4025,4428321,'2008-12-03 11:45:00',19),(4026,4428328,'2008-12-03 11:50:00',7),(4027,4428328,'2008-12-03 11:55:00',0),(4028,4428328,'2008-12-03 12:00:00',0),(4029,4428328,'2008-12-03 12:05:00',0),(4030,4428328,'2008-12-03 12:10:00',0),(4031,4428397,'2008-12-03 12:15:00',69),(4032,4428410,'2008-12-03 12:20:00',13),(4033,4428423,'2008-12-03 12:25:00',13),(4034,4428435,'2008-12-03 12:30:00',12),(4035,4428448,'2008-12-03 12:35:00',13),(4036,4428461,'2008-12-03 12:40:00',13),(4037,4428472,'2008-12-03 12:45:00',11),(4038,4428485,'2008-12-03 12:50:00',13),(4039,4428499,'2008-12-03 12:55:00',14),(4040,4428512,'2008-12-03 13:00:00',13),(4041,4428524,'2008-12-03 13:05:00',12),(4042,4428537,'2008-12-03 13:10:00',13),(4043,4428550,'2008-12-03 13:15:00',13),(4044,4428561,'2008-12-03 13:20:00',11),(4045,4428574,'2008-12-03 13:25:00',13),(4046,4428587,'2008-12-03 13:30:00',13),(4047,4428600,'2008-12-03 13:35:00',13),(4048,4428612,'2008-12-03 13:40:00',12),(4049,4428629,'2008-12-03 13:45:00',17),(4050,4428649,'2008-12-03 13:50:00',20),(4051,4428667,'2008-12-03 13:55:00',18),(4052,4428686,'2008-12-03 14:00:00',19),(4053,4428705,'2008-12-03 14:05:00',19),(4054,4428721,'2008-12-03 14:10:00',16),(4055,4428733,'2008-12-03 14:15:00',12),(4056,4428746,'2008-12-03 14:20:00',13),(4057,4428759,'2008-12-03 14:25:00',13),(4058,4428772,'2008-12-03 14:30:00',13),(4059,4428784,'2008-12-03 14:35:00',12),(4060,4428797,'2008-12-03 14:40:00',13),(4061,4428810,'2008-12-03 14:45:00',13),(4062,4428821,'2008-12-03 14:50:00',11),(4063,4428834,'2008-12-03 14:55:00',13),(4064,4428848,'2008-12-03 15:00:00',14),(4065,4428861,'2008-12-03 15:05:00',13),(4066,4428872,'2008-12-03 15:10:00',11),(4067,4428963,'2008-12-03 15:15:00',91),(4068,4428982,'2008-12-03 15:20:00',19),(4069,4428994,'2008-12-03 15:25:00',12),(4070,4429007,'2008-12-03 15:30:00',13),(4071,4429020,'2008-12-03 15:35:00',13),(4072,4429033,'2008-12-03 15:40:00',13),(4073,4429045,'2008-12-03 15:45:00',12),(4074,4429058,'2008-12-03 15:50:00',13),(4075,4429071,'2008-12-03 15:55:00',13),(4076,4429083,'2008-12-03 16:00:00',12),(4077,4429099,'2008-12-03 16:05:00',16),(4078,4429119,'2008-12-03 16:10:00',20),(4079,4429139,'2008-12-03 16:15:00',20),(4080,4429157,'2008-12-03 16:20:00',18),(4081,4429176,'2008-12-03 16:25:00',19),(4082,4429193,'2008-12-03 16:30:00',17),(4083,4429205,'2008-12-03 16:35:00',12),(4084,4429218,'2008-12-03 16:40:00',13),(4085,4429231,'2008-12-03 16:45:00',13),(4086,4429244,'2008-12-03 16:50:00',13),(4087,4429256,'2008-12-03 16:55:00',12),(4088,4429268,'2008-12-03 17:00:00',12),(4089,4429281,'2008-12-03 17:05:00',13),(4090,4429293,'2008-12-03 17:10:00',12),(4091,4429305,'2008-12-03 17:15:00',12),(4092,4429318,'2008-12-03 17:20:00',13),(4093,4429331,'2008-12-03 17:25:00',13),(4094,4429342,'2008-12-03 17:30:00',11),(4095,4429355,'2008-12-03 17:35:00',13),(4096,4429367,'2008-12-03 17:40:00',12),(4097,4429379,'2008-12-03 17:45:00',12),(4098,4429392,'2008-12-03 17:50:00',13),(4099,4429403,'2008-12-03 17:55:00',11),(4100,4429418,'2008-12-03 18:00:00',15),(4101,4429429,'2008-12-03 18:05:00',11),(4102,4429442,'2008-12-03 18:10:00',13),(4103,4429455,'2008-12-03 18:15:00',13),(4104,4429468,'2008-12-03 18:20:00',13),(4105,4429479,'2008-12-03 18:25:00',11),(4106,4429496,'2008-12-03 18:30:00',17),(4107,4429517,'2008-12-03 18:35:00',21),(4108,4429534,'2008-12-03 18:40:00',17),(4109,4429553,'2008-12-03 18:45:00',19),(4110,4429574,'2008-12-03 18:50:00',21),(4111,4429875,'2008-12-03 18:55:00',301),(4112,4430048,'2008-12-03 19:00:00',173),(4113,4430234,'2008-12-03 19:05:00',186),(4114,4430395,'2008-12-03 19:10:00',161),(4115,4430497,'2008-12-03 19:15:00',102),(4116,4430578,'2008-12-03 19:20:00',81),(4117,4430681,'2008-12-03 19:25:00',103),(4118,4430748,'2008-12-03 19:30:00',67),(4119,4430863,'2008-12-03 19:35:00',115),(4120,4430926,'2008-12-03 19:40:00',63),(4121,4430988,'2008-12-03 19:45:00',62),(4122,4431044,'2008-12-03 19:50:00',56),(4123,4431106,'2008-12-03 19:55:00',62),(4124,4431163,'2008-12-03 20:00:00',57),(4125,4431221,'2008-12-03 20:05:00',58),(4126,4431273,'2008-12-03 20:10:00',52),(4127,4431342,'2008-12-03 20:15:00',69),(4128,4431394,'2008-12-03 20:20:00',52),(4129,4431446,'2008-12-03 20:25:00',52),(4130,4431509,'2008-12-03 20:30:00',63),(4131,4431572,'2008-12-03 20:35:00',63),(4132,4431634,'2008-12-03 20:40:00',62),(4133,4431689,'2008-12-03 20:45:00',55),(4134,4431842,'2008-12-03 21:00:00',153),(4135,4431907,'2008-12-03 21:05:00',65),(4136,4432066,'2008-12-03 21:20:00',159),(4137,4432323,'2008-12-03 21:45:00',257),(4138,4432376,'2008-12-03 21:50:00',53),(4139,4432414,'2008-12-03 22:05:00',38),(4140,4432629,'2008-12-03 22:15:00',215),(4141,4432743,'2008-12-03 22:25:00',114),(4142,4432854,'2008-12-03 22:35:00',111),(4143,4432913,'2008-12-03 22:40:00',59),(4144,4433059,'2008-12-03 22:45:00',146),(4145,4433105,'2008-12-03 22:50:00',46),(4146,4433471,'2008-12-03 23:30:00',366),(4147,4433518,'2008-12-03 23:35:00',47),(4148,4433540,'2008-12-03 23:40:00',22),(4149,4433560,'2008-12-03 23:45:00',20),(4150,4433579,'2008-12-03 23:50:00',19),(4151,4433598,'2008-12-03 23:55:00',19),(4152,4433615,'2008-12-04 00:00:00',17),(4153,4433635,'2008-12-04 00:05:00',20),(4154,4433769,'2008-12-04 00:35:00',134),(4155,4433795,'2008-12-04 00:40:00',26),(4156,4433819,'2008-12-04 00:45:00',24),(4157,4433840,'2008-12-04 00:50:00',21),(4158,4433853,'2008-12-04 00:55:00',13),(4159,4433866,'2008-12-04 01:00:00',13),(4160,4433879,'2008-12-04 01:05:00',13),(4161,4433891,'2008-12-04 01:10:00',12),(4162,4433904,'2008-12-04 01:15:00',13),(4163,4433917,'2008-12-04 01:20:00',13),(4164,4433930,'2008-12-04 01:25:00',13),(4165,4433942,'2008-12-04 01:30:00',12),(4166,4433955,'2008-12-04 01:35:00',13),(4167,4433969,'2008-12-04 01:40:00',14),(4168,4433981,'2008-12-04 01:45:00',12),(4169,4433994,'2008-12-04 01:50:00',13),(4170,4434007,'2008-12-04 01:55:00',13),(4171,4434020,'2008-12-04 02:00:00',13),(4172,4434032,'2008-12-04 02:05:00',12),(4173,4434045,'2008-12-04 02:10:00',13),(4174,4434058,'2008-12-04 02:15:00',13),(4175,4434069,'2008-12-04 02:20:00',11),(4176,4434082,'2008-12-04 02:25:00',13),(4177,4434100,'2008-12-04 02:30:00',18),(4178,4434120,'2008-12-04 02:35:00',20),(4179,4434217,'2008-12-04 02:40:00',97),(4180,4434246,'2008-12-04 02:45:00',29),(4181,4434264,'2008-12-04 02:50:00',18),(4182,4434280,'2008-12-04 02:55:00',16),(4183,4434291,'2008-12-04 03:00:00',11),(4184,4434304,'2008-12-04 03:05:00',13),(4185,4434317,'2008-12-04 03:10:00',13),(4186,4434329,'2008-12-04 03:15:00',12),(4187,4434342,'2008-12-04 03:20:00',13),(4188,4434355,'2008-12-04 03:25:00',13),(4189,4434368,'2008-12-04 03:30:00',13),(4190,4434379,'2008-12-04 03:35:00',11),(4191,4434392,'2008-12-04 03:40:00',13),(4192,4434405,'2008-12-04 03:45:00',13),(4193,4434417,'2008-12-04 03:50:00',12),(4194,4434430,'2008-12-04 03:55:00',13),(4195,4434443,'2008-12-04 04:00:00',13),(4196,4434456,'2008-12-04 04:05:00',13),(4197,4434467,'2008-12-04 04:10:00',11),(4198,4434480,'2008-12-04 04:15:00',13),(4199,4434493,'2008-12-04 04:20:00',13),(4200,4434505,'2008-12-04 04:25:00',12),(4201,4434518,'2008-12-04 04:30:00',13),(4202,4434531,'2008-12-04 04:35:00',13),(4203,4434544,'2008-12-04 04:40:00',13),(4204,4434561,'2008-12-04 04:45:00',17),(4205,4434581,'2008-12-04 04:50:00',20),(4206,4434600,'2008-12-04 04:55:00',19),(4207,4434617,'2008-12-04 05:00:00',17),(4208,4434636,'2008-12-04 05:05:00',19),(4209,4434651,'2008-12-04 05:10:00',15),(4210,4434664,'2008-12-04 05:15:00',13),(4211,4434676,'2008-12-04 05:20:00',12),(4212,4434689,'2008-12-04 05:25:00',13),(4213,4434702,'2008-12-04 05:30:00',13),(4214,4434714,'2008-12-04 05:35:00',12),(4215,4434727,'2008-12-04 05:40:00',13),(4216,4434739,'2008-12-04 05:45:00',12),(4217,4434752,'2008-12-04 05:50:00',13),(4218,4434764,'2008-12-04 05:55:00',12),(4219,4434777,'2008-12-04 06:00:00',13),(4220,4434790,'2008-12-04 06:05:00',13),(4221,4434801,'2008-12-04 06:10:00',11),(4222,4434814,'2008-12-04 06:15:00',13),(4223,4434827,'2008-12-04 06:20:00',13),(4224,4434841,'2008-12-04 06:25:00',14),(4225,4434874,'2008-12-04 06:30:00',33),(4226,4434948,'2008-12-04 06:35:00',74),(4227,4434961,'2008-12-04 06:40:00',13),(4228,4434972,'2008-12-04 06:45:00',11),(4229,4434985,'2008-12-04 06:50:00',13),(4230,4434998,'2008-12-04 06:55:00',13),(4231,4435011,'2008-12-04 07:00:00',13),(4232,4435028,'2008-12-04 07:05:00',17),(4233,4435049,'2008-12-04 07:10:00',21),(4234,4435070,'2008-12-04 07:15:00',21),(4235,4435091,'2008-12-04 07:20:00',21),(4236,4435110,'2008-12-04 07:25:00',19),(4237,4435131,'2008-12-04 07:30:00',21),(4238,4435146,'2008-12-04 07:35:00',15),(4239,4435160,'2008-12-04 07:40:00',14),(4240,4435184,'2008-12-04 07:45:00',24),(4241,4435209,'2008-12-04 07:50:00',25),(4242,4435226,'2008-12-04 07:55:00',17),(4243,4435237,'2008-12-04 08:00:00',11),(4244,4435250,'2008-12-04 08:05:00',13),(4245,4435262,'2008-12-04 08:10:00',12),(4246,4435273,'2008-12-04 08:15:00',11),(4247,4435285,'2008-12-04 08:20:00',12),(4248,4435298,'2008-12-04 08:25:00',13),(4249,4435310,'2008-12-04 08:30:00',12),(4250,4435321,'2008-12-04 08:35:00',11),(4251,4435333,'2008-12-04 08:40:00',12),(4252,4435346,'2008-12-04 08:45:00',13),(4253,4435357,'2008-12-04 08:50:00',11),(4254,4435369,'2008-12-04 08:55:00',12),(4255,4435382,'2008-12-04 09:00:00',13),(4256,4435394,'2008-12-04 09:05:00',12),(4257,4435405,'2008-12-04 09:10:00',11),(4258,4435418,'2008-12-04 09:15:00',13),(4259,4435430,'2008-12-04 09:20:00',12),(4260,4435442,'2008-12-04 09:25:00',12),(4261,4435462,'2008-12-04 09:30:00',20),(4262,4435517,'2008-12-04 09:45:00',55),(4263,4435539,'2008-12-04 10:00:00',22),(4264,4435571,'2008-12-04 10:05:00',32),(4265,4435666,'2008-12-04 10:10:00',95),(4266,4435679,'2008-12-04 10:15:00',13),(4267,4436131,'2008-12-04 13:30:00',452),(4268,4436213,'2008-12-04 13:40:00',82),(4269,4436331,'2008-12-04 13:45:00',118),(4270,4436341,'2008-12-04 13:50:00',10),(4271,4436377,'2008-12-04 14:05:00',36),(4272,4436389,'2008-12-04 14:10:00',12),(4273,4436480,'2008-12-04 14:40:00',91),(4274,4436499,'2008-12-04 14:45:00',19),(4275,4436516,'2008-12-04 14:50:00',17),(4276,4436529,'2008-12-04 14:55:00',13),(4277,4436610,'2008-12-04 15:25:00',81),(4278,4436637,'2008-12-04 15:30:00',27),(4279,4436653,'2008-12-04 15:35:00',16),(4280,4436812,'2008-12-04 16:40:00',159),(4281,4436824,'2008-12-04 16:45:00',12),(4282,4436885,'2008-12-04 17:05:00',61),(4283,4436904,'2008-12-04 17:10:00',19),(4284,4436915,'2008-12-04 17:20:00',11),(4285,4437049,'2008-12-04 17:25:00',134),(4286,4437063,'2008-12-04 17:30:00',14),(4287,4437082,'2008-12-04 17:35:00',19),(4288,4437099,'2008-12-04 17:40:00',17),(4289,4437128,'2008-12-04 17:50:00',29),(4290,4437139,'2008-12-04 17:55:00',11),(4291,4437151,'2008-12-04 18:00:00',12),(4292,4437168,'2008-12-04 18:05:00',17),(4293,4437184,'2008-12-04 18:10:00',16),(4294,4437200,'2008-12-04 18:15:00',16),(4295,4437213,'2008-12-04 18:20:00',13),(4296,4437226,'2008-12-04 18:25:00',13),(4297,4437399,'2008-12-04 18:30:00',173),(4298,4437593,'2008-12-04 18:35:00',194),(4299,4437793,'2008-12-04 18:40:00',200),(4300,4437961,'2008-12-04 18:45:00',168),(4301,4438104,'2008-12-04 18:50:00',143),(4302,4438146,'2008-12-04 18:55:00',42),(4303,4438187,'2008-12-04 19:00:00',41),(4304,4438214,'2008-12-04 19:05:00',27),(4305,4438250,'2008-12-04 19:10:00',36),(4306,4438291,'2008-12-04 19:15:00',41),(4307,4438312,'2008-12-04 19:20:00',21),(4308,4438374,'2008-12-04 19:25:00',62),(4309,4438426,'2008-12-04 19:30:00',52),(4310,4438491,'2008-12-04 19:35:00',65),(4311,4438549,'2008-12-04 19:40:00',58),(4312,4438609,'2008-12-04 19:45:00',60),(4313,4438661,'2008-12-04 19:50:00',52),(4314,4438699,'2008-12-04 19:55:00',38),(4315,4438741,'2008-12-04 20:00:00',42),(4316,4438786,'2008-12-04 20:05:00',45),(4317,4438832,'2008-12-04 20:10:00',46),(4318,4438872,'2008-12-04 20:15:00',40),(4319,4438887,'2008-12-04 20:20:00',15),(4320,4438900,'2008-12-04 20:25:00',13),(4321,4438912,'2008-12-04 20:30:00',12),(4322,4438925,'2008-12-04 20:35:00',13),(4323,4438938,'2008-12-04 20:40:00',13),(4324,4438951,'2008-12-04 20:45:00',13),(4325,4438962,'2008-12-04 20:50:00',11),(4326,4438975,'2008-12-04 20:55:00',13),(4327,4438988,'2008-12-04 21:00:00',13),(4328,4439000,'2008-12-04 21:05:00',12),(4329,4439013,'2008-12-04 21:10:00',13),(4330,4439026,'2008-12-04 21:15:00',13),(4331,4439040,'2008-12-04 21:20:00',14),(4332,4439138,'2008-12-04 21:25:00',98),(4333,4439151,'2008-12-04 21:30:00',13),(4334,4439164,'2008-12-04 21:35:00',13),(4335,4439176,'2008-12-04 21:40:00',12),(4336,4439190,'2008-12-04 21:45:00',14),(4337,4439211,'2008-12-04 21:50:00',21),(4338,4439231,'2008-12-04 21:55:00',20),(4339,4439249,'2008-12-04 22:00:00',18),(4340,4439268,'2008-12-04 22:05:00',19),(4341,4439286,'2008-12-04 22:10:00',18),(4342,4439299,'2008-12-04 22:15:00',13),(4343,4439312,'2008-12-04 22:20:00',13),(4344,4439325,'2008-12-04 22:25:00',13),(4345,4439338,'2008-12-04 22:30:00',13),(4346,4439350,'2008-12-04 22:35:00',12),(4347,4439363,'2008-12-04 22:40:00',13),(4348,4439377,'2008-12-04 22:45:00',14),(4349,4439389,'2008-12-04 22:50:00',12),(4350,4439402,'2008-12-04 22:55:00',13),(4351,4439415,'2008-12-04 23:00:00',13),(4352,4439428,'2008-12-04 23:05:00',13),(4353,4439440,'2008-12-04 23:10:00',12),(4354,4439453,'2008-12-04 23:15:00',13),(4355,4439467,'2008-12-04 23:20:00',14),(4356,4439478,'2008-12-04 23:25:00',11),(4357,4439492,'2008-12-04 23:30:00',14),(4358,4439505,'2008-12-04 23:35:00',13),(4359,4439518,'2008-12-04 23:40:00',13),(4360,4439529,'2008-12-04 23:45:00',11),(4361,4439542,'2008-12-04 23:50:00',13),(4362,4439555,'2008-12-04 23:55:00',13),(4363,4439567,'2008-12-05 00:00:00',12),(4364,4439580,'2008-12-05 00:05:00',13),(4365,4439593,'2008-12-05 00:10:00',13),(4366,4439609,'2008-12-05 00:15:00',16),(4367,4439627,'2008-12-05 00:20:00',18),(4368,4439647,'2008-12-05 00:25:00',20),(4369,4439667,'2008-12-05 00:30:00',20),(4370,4439684,'2008-12-05 00:35:00',17),(4371,4439703,'2008-12-05 00:40:00',19),(4372,4439716,'2008-12-05 00:45:00',13),(4373,4439730,'2008-12-05 00:50:00',14),(4374,4439742,'2008-12-05 00:55:00',12),(4375,4439755,'2008-12-05 01:00:00',13),(4376,4439800,'2008-12-05 01:05:00',45),(4377,4439870,'2008-12-05 01:10:00',70),(4378,4439883,'2008-12-05 01:15:00',13),(4379,4439897,'2008-12-05 01:20:00',14),(4380,4439910,'2008-12-05 01:25:00',13),(4381,4439922,'2008-12-05 01:30:00',12),(4382,4439935,'2008-12-05 01:35:00',13),(4383,4439948,'2008-12-05 01:40:00',13),(4384,4439960,'2008-12-05 01:45:00',12),(4385,4439973,'2008-12-05 01:50:00',13),(4386,4439987,'2008-12-05 01:55:00',14),(4387,4439998,'2008-12-05 02:00:00',11),(4388,4440012,'2008-12-05 02:05:00',14),(4389,4440025,'2008-12-05 02:10:00',13),(4390,4440038,'2008-12-05 02:15:00',13),(4391,4440050,'2008-12-05 02:20:00',12),(4392,4440064,'2008-12-05 02:25:00',14),(4393,4440077,'2008-12-05 02:30:00',13),(4394,4440089,'2008-12-05 02:35:00',12),(4395,4440102,'2008-12-05 02:40:00',13),(4396,4440116,'2008-12-05 02:45:00',14),(4397,4440135,'2008-12-05 02:50:00',19),(4398,4440154,'2008-12-05 02:55:00',19),(4399,4440173,'2008-12-05 03:00:00',19),(4400,4440193,'2008-12-05 03:05:00',20),(4401,4440212,'2008-12-05 03:10:00',19),(4402,4440225,'2008-12-05 03:15:00',13),(4403,4440238,'2008-12-05 03:20:00',13),(4404,4440252,'2008-12-05 03:25:00',14),(4405,4440264,'2008-12-05 03:30:00',12),(4406,4440277,'2008-12-05 03:35:00',13),(4407,4440290,'2008-12-05 03:40:00',13),(4408,4440304,'2008-12-05 03:45:00',14),(4409,4440316,'2008-12-05 03:50:00',12),(4410,4440329,'2008-12-05 03:55:00',13),(4411,4440342,'2008-12-05 04:00:00',13),(4412,4440354,'2008-12-05 04:05:00',12),(4413,4440368,'2008-12-05 04:10:00',14),(4414,4440381,'2008-12-05 04:15:00',13),(4415,4440394,'2008-12-05 04:20:00',13),(4416,4440406,'2008-12-05 04:25:00',12),(4417,4440420,'2008-12-05 04:30:00',14),(4418,4440433,'2008-12-05 04:35:00',13),(4419,4440445,'2008-12-05 04:40:00',12),(4420,4440458,'2008-12-05 04:45:00',13),(4421,4440471,'2008-12-05 04:50:00',13),(4422,4440483,'2008-12-05 04:55:00',12),(4423,4440586,'2008-12-05 05:00:00',103),(4424,4440599,'2008-12-05 05:05:00',13),(4425,4440612,'2008-12-05 05:10:00',13),(4426,4440628,'2008-12-05 05:15:00',16),(4427,4440646,'2008-12-05 05:20:00',18),(4428,4440666,'2008-12-05 05:25:00',20),(4429,4440685,'2008-12-05 05:30:00',19),(4430,4440703,'2008-12-05 05:35:00',18),(4431,4440720,'2008-12-05 05:40:00',17),(4432,4440733,'2008-12-05 05:45:00',13),(4433,4440746,'2008-12-05 05:50:00',13),(4434,4440758,'2008-12-05 05:55:00',12),(4435,4440771,'2008-12-05 06:00:00',13),(4436,4440784,'2008-12-05 06:05:00',13),(4437,4440796,'2008-12-05 06:10:00',12),(4438,4440809,'2008-12-05 06:15:00',13),(4439,4440824,'2008-12-05 06:20:00',15),(4440,4440839,'2008-12-05 06:25:00',15),(4441,4440851,'2008-12-05 06:30:00',12),(4442,4440863,'2008-12-05 06:35:00',12),(4443,4440874,'2008-12-05 06:40:00',11),(4444,4440888,'2008-12-05 06:45:00',14),(4445,4440901,'2008-12-05 06:50:00',13),(4446,4440915,'2008-12-05 06:55:00',14),(4447,4440929,'2008-12-05 07:00:00',14),(4448,4440942,'2008-12-05 07:05:00',13),(4449,4440956,'2008-12-05 07:10:00',14),(4450,4440972,'2008-12-05 07:15:00',16),(4451,4440986,'2008-12-05 07:20:00',14),(4452,4441001,'2008-12-05 07:25:00',15),(4453,4441017,'2008-12-05 07:30:00',16),(4454,4441034,'2008-12-05 07:35:00',17),(4455,4441055,'2008-12-05 07:40:00',21),(4456,4441077,'2008-12-05 07:45:00',22),(4457,4441099,'2008-12-05 07:50:00',22),(4458,4441119,'2008-12-05 07:55:00',20),(4459,4441140,'2008-12-05 08:00:00',21),(4460,4441155,'2008-12-05 08:05:00',15),(4461,4441170,'2008-12-05 08:10:00',15),(4462,4441183,'2008-12-05 08:15:00',13),(4463,4441198,'2008-12-05 08:20:00',15),(4464,4441213,'2008-12-05 08:25:00',15),(4465,4441227,'2008-12-05 08:30:00',14),(4466,4441242,'2008-12-05 08:35:00',15),(4467,4441257,'2008-12-05 08:40:00',15),(4468,4441337,'2008-12-05 08:45:00',80),(4469,4441367,'2008-12-05 08:50:00',30),(4470,4441380,'2008-12-05 08:55:00',13),(4471,4441393,'2008-12-05 09:00:00',13),(4472,4441406,'2008-12-05 09:05:00',13),(4473,4441418,'2008-12-05 09:10:00',12),(4474,4441431,'2008-12-05 09:15:00',13),(4475,4441444,'2008-12-05 09:20:00',13),(4476,4441456,'2008-12-05 09:25:00',12),(4477,4441469,'2008-12-05 09:30:00',13),(4478,4441482,'2008-12-05 09:35:00',13),(4479,4441502,'2008-12-05 09:40:00',20),(4480,4441520,'2008-12-05 09:45:00',18),(4481,4441545,'2008-12-05 09:50:00',25),(4482,4441572,'2008-12-05 09:55:00',27),(4483,4441595,'2008-12-05 10:00:00',23),(4484,4441621,'2008-12-05 10:05:00',26),(4485,4441645,'2008-12-05 10:10:00',24),(4486,4441663,'2008-12-05 10:15:00',18),(4487,4441679,'2008-12-05 10:20:00',16),(4488,4441696,'2008-12-05 10:25:00',17),(4489,4441713,'2008-12-05 10:30:00',17),(4490,4441724,'2008-12-05 10:35:00',11),(4491,4441736,'2008-12-05 10:40:00',12),(4492,4441749,'2008-12-05 10:45:00',13),(4493,4441761,'2008-12-05 10:50:00',12),(4494,4441772,'2008-12-05 10:55:00',11),(4495,4441785,'2008-12-05 11:00:00',13),(4496,4441797,'2008-12-05 11:05:00',12),(4497,4441808,'2008-12-05 11:10:00',11),(4498,4441821,'2008-12-05 11:15:00',13),(4499,4441833,'2008-12-05 11:20:00',12),(4500,4441846,'2008-12-05 11:25:00',13),(4501,4441857,'2008-12-05 11:30:00',11),(4502,4441872,'2008-12-05 11:35:00',15),(4503,4441889,'2008-12-05 11:40:00',17),(4504,4441905,'2008-12-05 11:45:00',16),(4505,4441922,'2008-12-05 11:50:00',17),(4506,4441938,'2008-12-05 11:55:00',16),(4507,4441951,'2008-12-05 12:00:00',13),(4508,4441974,'2008-12-05 12:05:00',23),(4509,4441999,'2008-12-05 12:10:00',25),(4510,4442022,'2008-12-05 12:15:00',23),(4511,4442039,'2008-12-05 12:20:00',17),(4512,4442057,'2008-12-05 12:25:00',18),(4513,4442155,'2008-12-05 12:30:00',98),(4514,4442168,'2008-12-05 12:35:00',13),(4515,4442179,'2008-12-05 12:40:00',11),(4516,4442192,'2008-12-05 12:45:00',13),(4517,4442205,'2008-12-05 12:50:00',13),(4518,4442216,'2008-12-05 12:55:00',11),(4519,4442229,'2008-12-05 13:00:00',13),(4520,4442241,'2008-12-05 13:05:00',12),(4521,4442254,'2008-12-05 13:10:00',13),(4522,4442265,'2008-12-05 13:15:00',11),(4523,4442278,'2008-12-05 13:20:00',13),(4524,4442296,'2008-12-05 13:25:00',18),(4525,4442327,'2008-12-05 13:30:00',31),(4526,4442368,'2008-12-05 13:35:00',41),(4527,4442405,'2008-12-05 13:40:00',37),(4528,4442450,'2008-12-05 13:45:00',45),(4529,4442483,'2008-12-05 13:50:00',33),(4530,4442518,'2008-12-05 13:55:00',35),(4531,4442553,'2008-12-05 14:00:00',35),(4532,4442581,'2008-12-05 14:05:00',28),(4533,4442607,'2008-12-05 14:10:00',26),(4534,4442637,'2008-12-05 14:15:00',30),(4535,4442669,'2008-12-05 14:20:00',32),(4536,4442695,'2008-12-05 14:25:00',26),(4537,4442730,'2008-12-05 14:30:00',35),(4538,4442753,'2008-12-05 14:35:00',23),(4539,4442771,'2008-12-05 14:40:00',18),(4540,4442787,'2008-12-05 14:45:00',16),(4541,4442803,'2008-12-05 14:50:00',16),(4542,4442820,'2008-12-05 14:55:00',17),(4543,4442836,'2008-12-05 15:00:00',16),(4544,4442854,'2008-12-05 15:05:00',18),(4545,4442871,'2008-12-05 15:10:00',17),(4546,4442889,'2008-12-05 15:15:00',18),(4547,4442903,'2008-12-05 15:20:00',14),(4548,4442919,'2008-12-05 15:25:00',16),(4549,4442936,'2008-12-05 15:30:00',17),(4550,4442950,'2008-12-05 15:35:00',14),(4551,4442963,'2008-12-05 15:40:00',13),(4552,4442979,'2008-12-05 15:45:00',16),(4553,4442996,'2008-12-05 15:50:00',17),(4554,4443011,'2008-12-05 15:55:00',15),(4555,4443025,'2008-12-05 16:00:00',14),(4556,4443038,'2008-12-05 16:05:00',13),(4557,4443049,'2008-12-05 16:10:00',11),(4558,4443149,'2008-12-05 16:15:00',100),(4559,4443162,'2008-12-05 16:20:00',13),(4560,4443175,'2008-12-05 16:25:00',13),(4561,4443186,'2008-12-05 16:30:00',11),(4562,4443198,'2008-12-05 16:35:00',12),(4563,4443211,'2008-12-05 16:40:00',13),(4564,4443229,'2008-12-05 16:45:00',18),(4565,4443249,'2008-12-05 16:50:00',20),(4566,4443268,'2008-12-05 16:55:00',19),(4567,4443286,'2008-12-05 17:00:00',18),(4568,4443303,'2008-12-05 17:05:00',17),(4569,4443315,'2008-12-05 17:10:00',12),(4570,4443328,'2008-12-05 17:15:00',13),(4571,4443339,'2008-12-05 17:20:00',11),(4572,4443351,'2008-12-05 17:25:00',12),(4573,4443367,'2008-12-05 17:30:00',16),(4574,4443385,'2008-12-05 17:35:00',18),(4575,4443400,'2008-12-05 17:40:00',15),(4576,4443418,'2008-12-05 17:45:00',18),(4577,4443435,'2008-12-05 17:50:00',17),(4578,4443450,'2008-12-05 17:55:00',15),(4579,4443464,'2008-12-05 18:00:00',14),(4580,4443482,'2008-12-05 18:05:00',18),(4581,4443500,'2008-12-05 18:10:00',18),(4582,4443515,'2008-12-05 18:15:00',15),(4583,4443528,'2008-12-05 18:20:00',13),(4584,4443541,'2008-12-05 18:25:00',13),(4585,4443554,'2008-12-05 18:30:00',13),(4586,4443566,'2008-12-05 18:35:00',12),(4587,4443579,'2008-12-05 18:40:00',13),(4588,4443592,'2008-12-05 18:45:00',13),(4589,4443603,'2008-12-05 18:50:00',11),(4590,4443616,'2008-12-05 18:55:00',13),(4591,4443629,'2008-12-05 19:00:00',13),(4592,4443648,'2008-12-05 19:05:00',19),(4593,4443666,'2008-12-05 19:10:00',18),(4594,4443686,'2008-12-05 19:15:00',20),(4595,4443705,'2008-12-05 19:20:00',19),(4596,4443722,'2008-12-05 19:25:00',17),(4597,4443737,'2008-12-05 19:30:00',15),(4598,4443750,'2008-12-05 19:35:00',13),(4599,4443763,'2008-12-05 19:40:00',13),(4600,4443774,'2008-12-05 19:45:00',11),(4601,4443789,'2008-12-05 19:50:00',15),(4602,4443807,'2008-12-05 19:55:00',18),(4603,4443824,'2008-12-05 20:00:00',17),(4604,4443924,'2008-12-05 20:05:00',100),(4605,4443942,'2008-12-05 20:10:00',18),(4606,4443957,'2008-12-05 20:15:00',15),(4607,4443973,'2008-12-05 20:20:00',16),(4608,4443991,'2008-12-05 20:25:00',18),(4609,4444009,'2008-12-05 20:30:00',18),(4610,4444025,'2008-12-05 20:35:00',16),(4611,4444038,'2008-12-05 20:40:00',13),(4612,4444051,'2008-12-05 20:45:00',13),(4613,4444064,'2008-12-05 20:50:00',13),(4614,4444076,'2008-12-05 20:55:00',12),(4615,4444089,'2008-12-05 21:00:00',13),(4616,4444102,'2008-12-05 21:05:00',13),(4617,4444114,'2008-12-05 21:10:00',12),(4618,4444128,'2008-12-05 21:15:00',14),(4619,4444141,'2008-12-05 21:20:00',13),(4620,4444158,'2008-12-05 21:25:00',17),(4621,4444177,'2008-12-05 21:30:00',19),(4622,4444197,'2008-12-05 21:35:00',20),(4623,4444216,'2008-12-05 21:40:00',19),(4624,4444233,'2008-12-05 21:45:00',17),(4625,4444250,'2008-12-05 21:50:00',17),(4626,4444263,'2008-12-05 21:55:00',13),(4627,4444277,'2008-12-05 22:00:00',14),(4628,4444289,'2008-12-05 22:05:00',12),(4629,4444302,'2008-12-05 22:10:00',13),(4630,4444315,'2008-12-05 22:15:00',13),(4631,4444327,'2008-12-05 22:20:00',12),(4632,4444341,'2008-12-05 22:25:00',14),(4633,4444354,'2008-12-05 22:30:00',13),(4634,4444367,'2008-12-05 22:35:00',13),(4635,4444379,'2008-12-05 22:40:00',12),(4636,4444393,'2008-12-05 22:45:00',14),(4637,4444406,'2008-12-05 22:50:00',13),(4638,4444419,'2008-12-05 22:55:00',13),(4639,4444431,'2008-12-05 23:00:00',12),(4640,4444444,'2008-12-05 23:05:00',13),(4641,4444458,'2008-12-05 23:10:00',14),(4642,4444470,'2008-12-05 23:15:00',12),(4643,4444483,'2008-12-05 23:20:00',13),(4644,4444496,'2008-12-05 23:25:00',13),(4645,4444509,'2008-12-05 23:30:00',13),(4646,4444521,'2008-12-05 23:35:00',12),(4647,4444617,'2008-12-05 23:40:00',96),(4648,4444630,'2008-12-05 23:45:00',13),(4649,4444648,'2008-12-05 23:50:00',18),(4650,4444668,'2008-12-05 23:55:00',20),(4651,4444688,'2008-12-06 00:00:00',20),(4652,4444707,'2008-12-06 00:05:00',19),(4653,4444723,'2008-12-06 00:10:00',16),(4654,4444737,'2008-12-06 00:15:00',14),(4655,4444750,'2008-12-06 00:20:00',13),(4656,4444762,'2008-12-06 00:25:00',12),(4657,4444775,'2008-12-06 00:30:00',13),(4658,4444788,'2008-12-06 00:35:00',13),(4659,4444801,'2008-12-06 00:40:00',13),(4660,4444813,'2008-12-06 00:45:00',12),(4661,4444826,'2008-12-06 00:50:00',13),(4662,4444839,'2008-12-06 00:55:00',13),(4663,4444850,'2008-12-06 01:00:00',11),(4664,4444863,'2008-12-06 01:05:00',13),(4665,4444875,'2008-12-06 01:10:00',12),(4666,4444889,'2008-12-06 01:15:00',14),(4667,4444901,'2008-12-06 01:20:00',12),(4668,4444914,'2008-12-06 01:25:00',13),(4669,4444927,'2008-12-06 01:30:00',13),(4670,4444939,'2008-12-06 01:35:00',12),(4671,4444952,'2008-12-06 01:40:00',13),(4672,4444965,'2008-12-06 01:45:00',13),(4673,4444979,'2008-12-06 01:50:00',14),(4674,4444990,'2008-12-06 01:55:00',11),(4675,4445004,'2008-12-06 02:00:00',14),(4676,4445017,'2008-12-06 02:05:00',13),(4677,4445033,'2008-12-06 02:10:00',16),(4678,4445051,'2008-12-06 02:15:00',18),(4679,4445072,'2008-12-06 02:20:00',21),(4680,4445092,'2008-12-06 02:25:00',20),(4681,4445109,'2008-12-06 02:30:00',17),(4682,4445128,'2008-12-06 02:35:00',19),(4683,4445143,'2008-12-06 02:40:00',15),(4684,4445155,'2008-12-06 02:45:00',12),(4685,4445169,'2008-12-06 02:50:00',14),(4686,4445182,'2008-12-06 02:55:00',13),(4687,4445195,'2008-12-06 03:00:00',13),(4688,4445207,'2008-12-06 03:05:00',12),(4689,4445220,'2008-12-06 03:10:00',13),(4690,4445316,'2008-12-06 03:15:00',96),(4691,4445330,'2008-12-06 03:20:00',14),(4692,4445341,'2008-12-06 03:25:00',11),(4693,4445355,'2008-12-06 03:30:00',14),(4694,4445368,'2008-12-06 03:35:00',13),(4695,4445380,'2008-12-06 03:40:00',12),(4696,4445393,'2008-12-06 03:45:00',13),(4697,4445406,'2008-12-06 03:50:00',13),(4698,4445419,'2008-12-06 03:55:00',13),(4699,4445431,'2008-12-06 04:00:00',12),(4700,4445444,'2008-12-06 04:05:00',13),(4701,4445457,'2008-12-06 04:10:00',13),(4702,4445469,'2008-12-06 04:15:00',12),(4703,4445482,'2008-12-06 04:20:00',13),(4704,4445495,'2008-12-06 04:25:00',13),(4705,4445509,'2008-12-06 04:30:00',14),(4706,4445521,'2008-12-06 04:35:00',12),(4707,4445533,'2008-12-06 04:40:00',12),(4708,4445556,'2008-12-06 04:45:00',23),(4709,4445574,'2008-12-06 04:50:00',18),(4710,4445593,'2008-12-06 04:55:00',19),(4711,4445613,'2008-12-06 05:00:00',20),(4712,4445630,'2008-12-06 05:05:00',17),(4713,4445642,'2008-12-06 05:10:00',12),(4714,4445655,'2008-12-06 05:15:00',13),(4715,4445668,'2008-12-06 05:20:00',13),(4716,4445680,'2008-12-06 05:25:00',12),(4717,4445693,'2008-12-06 05:30:00',13),(4718,4445707,'2008-12-06 05:35:00',14),(4719,4445720,'2008-12-06 05:40:00',13),(4720,4445732,'2008-12-06 05:45:00',12),(4721,4445745,'2008-12-06 05:50:00',13),(4722,4445758,'2008-12-06 05:55:00',13),(4723,4445770,'2008-12-06 06:00:00',12),(4724,4445783,'2008-12-06 06:05:00',13),(4725,4445796,'2008-12-06 06:10:00',13),(4726,4445809,'2008-12-06 06:15:00',13),(4727,4445822,'2008-12-06 06:20:00',13),(4728,4445835,'2008-12-06 06:25:00',13),(4729,4445849,'2008-12-06 06:30:00',14),(4730,4445861,'2008-12-06 06:35:00',12),(4731,4445874,'2008-12-06 06:40:00',13),(4732,4445887,'2008-12-06 06:45:00',13),(4733,4445990,'2008-12-06 06:50:00',103),(4734,4446002,'2008-12-06 06:55:00',12),(4735,4446016,'2008-12-06 07:00:00',14),(4736,4446036,'2008-12-06 07:05:00',20),(4737,4446055,'2008-12-06 07:10:00',19),(4738,4446077,'2008-12-06 07:15:00',22),(4739,4446099,'2008-12-06 07:20:00',22),(4740,4446120,'2008-12-06 07:25:00',21),(4741,4446135,'2008-12-06 07:30:00',15),(4742,4446150,'2008-12-06 07:35:00',15),(4743,4446165,'2008-12-06 07:40:00',15),(4744,4446179,'2008-12-06 07:45:00',14),(4745,4446194,'2008-12-06 07:50:00',15),(4746,4446209,'2008-12-06 07:55:00',15),(4747,4446223,'2008-12-06 08:00:00',14),(4748,4446238,'2008-12-06 08:05:00',15),(4749,4446260,'2008-12-06 08:10:00',22),(4750,4446282,'2008-12-06 08:15:00',22),(4751,4446302,'2008-12-06 08:20:00',20),(4752,4446324,'2008-12-06 08:25:00',22),(4753,4446346,'2008-12-06 08:30:00',22),(4754,4446368,'2008-12-06 08:35:00',22),(4755,4446387,'2008-12-06 08:40:00',19),(4756,4446406,'2008-12-06 08:45:00',19),(4757,4446424,'2008-12-06 08:50:00',18),(4758,4446440,'2008-12-06 08:55:00',16),(4759,4446456,'2008-12-06 09:00:00',16),(4760,4446470,'2008-12-06 09:05:00',14),(4761,4446482,'2008-12-06 09:10:00',12),(4762,4446494,'2008-12-06 09:15:00',12),(4763,4446507,'2008-12-06 09:20:00',13),(4764,4446527,'2008-12-06 09:25:00',20),(4765,4446545,'2008-12-06 09:30:00',18),(4766,4446564,'2008-12-06 09:35:00',19),(4767,4446582,'2008-12-06 09:40:00',18),(4768,4446600,'2008-12-06 09:45:00',18),(4769,4446611,'2008-12-06 09:50:00',11),(4770,4446624,'2008-12-06 09:55:00',13),(4771,4446636,'2008-12-06 10:00:00',12),(4772,4446647,'2008-12-06 10:05:00',11),(4773,4446661,'2008-12-06 10:10:00',14),(4774,4446679,'2008-12-06 10:15:00',18),(4775,4446696,'2008-12-06 10:20:00',17),(4776,4446712,'2008-12-06 10:25:00',16),(4777,4446728,'2008-12-06 10:30:00',16),(4778,4446742,'2008-12-06 10:35:00',14),(4779,4446757,'2008-12-06 10:40:00',15),(4780,4446859,'2008-12-06 10:45:00',102),(4781,4446876,'2008-12-06 10:50:00',17),(4782,4446890,'2008-12-06 10:55:00',14),(4783,4446901,'2008-12-06 11:00:00',11),(4784,4446913,'2008-12-06 11:05:00',12),(4785,4446926,'2008-12-06 11:10:00',13),(4786,4446937,'2008-12-06 11:15:00',11),(4787,4446950,'2008-12-06 11:20:00',13),(4788,4446962,'2008-12-06 11:25:00',12),(4789,4446975,'2008-12-06 11:30:00',13),(4790,4446986,'2008-12-06 11:35:00',11),(4791,4447000,'2008-12-06 11:40:00',14),(4792,4447020,'2008-12-06 11:45:00',20),(4793,4447040,'2008-12-06 11:50:00',20),(4794,4447057,'2008-12-06 11:55:00',17),(4795,4447075,'2008-12-06 12:00:00',18),(4796,4447092,'2008-12-06 12:05:00',17),(4797,4447104,'2008-12-06 12:10:00',12),(4798,4447116,'2008-12-06 12:15:00',12),(4799,4447129,'2008-12-06 12:20:00',13),(4800,4447141,'2008-12-06 12:25:00',12),(4801,4447152,'2008-12-06 12:30:00',11),(4802,4447165,'2008-12-06 12:35:00',13),(4803,4447178,'2008-12-06 12:40:00',13),(4804,4447194,'2008-12-06 12:45:00',16),(4805,4447211,'2008-12-06 12:50:00',17),(4806,4447229,'2008-12-06 12:55:00',18),(4807,4447246,'2008-12-06 13:00:00',17),(4808,4447262,'2008-12-06 13:05:00',16),(4809,4447279,'2008-12-06 13:10:00',17),(4810,4447296,'2008-12-06 13:15:00',17),(4811,4447309,'2008-12-06 13:20:00',13),(4812,4447321,'2008-12-06 13:25:00',12),(4813,4447334,'2008-12-06 13:30:00',13),(4814,4447346,'2008-12-06 13:35:00',12),(4815,4447358,'2008-12-06 13:40:00',12),(4816,4447370,'2008-12-06 13:45:00',12),(4817,4447383,'2008-12-06 13:50:00',13),(4818,4447394,'2008-12-06 13:55:00',11),(4819,4447410,'2008-12-06 14:00:00',16),(4820,4447430,'2008-12-06 14:05:00',20),(4821,4447449,'2008-12-06 14:10:00',19),(4822,4447466,'2008-12-06 14:15:00',17),(4823,4447485,'2008-12-06 14:20:00',19),(4824,4447501,'2008-12-06 14:25:00',16),(4825,4447595,'2008-12-06 14:30:00',94),(4826,4447608,'2008-12-06 14:35:00',13),(4827,4447621,'2008-12-06 14:40:00',13),(4828,4447633,'2008-12-06 14:45:00',12),(4829,4447645,'2008-12-06 14:50:00',12),(4830,4447657,'2008-12-06 14:55:00',12),(4831,4447670,'2008-12-06 15:00:00',13),(4832,4447681,'2008-12-06 15:05:00',11),(4833,4447694,'2008-12-06 15:10:00',13),(4834,4447707,'2008-12-06 15:15:00',13),(4835,4447719,'2008-12-06 15:20:00',12),(4836,4447731,'2008-12-06 15:25:00',12),(4837,4447744,'2008-12-06 15:30:00',13),(4838,4447756,'2008-12-06 15:35:00',12),(4839,4447768,'2008-12-06 15:40:00',12),(4840,4447780,'2008-12-06 15:45:00',12),(4841,4447793,'2008-12-06 15:50:00',13),(4842,4447806,'2008-12-06 15:55:00',13),(4843,4447817,'2008-12-06 16:00:00',11),(4844,4447833,'2008-12-06 16:05:00',16),(4845,4447851,'2008-12-06 16:10:00',18),(4846,4447867,'2008-12-06 16:15:00',16),(4847,4447891,'2008-12-06 16:20:00',24),(4848,4447916,'2008-12-06 16:25:00',25),(4849,4447940,'2008-12-06 16:30:00',24),(4850,4447960,'2008-12-06 16:35:00',20),(4851,4447981,'2008-12-06 16:40:00',21),(4852,4447997,'2008-12-06 16:45:00',16),(4853,4448009,'2008-12-06 16:50:00',12),(4854,4448023,'2008-12-06 16:55:00',14),(4855,4448041,'2008-12-06 17:00:00',18),(4856,4448058,'2008-12-06 17:05:00',17),(4857,4448071,'2008-12-06 17:10:00',13),(4858,4448083,'2008-12-06 17:15:00',12),(4859,4448096,'2008-12-06 17:20:00',13),(4860,4448107,'2008-12-06 17:25:00',11),(4861,4448119,'2008-12-06 17:30:00',12),(4862,4448132,'2008-12-06 17:35:00',13),(4863,4448144,'2008-12-06 17:40:00',12),(4864,4448155,'2008-12-06 17:45:00',11),(4865,4448168,'2008-12-06 17:50:00',13),(4866,4448180,'2008-12-06 17:55:00',12),(4867,4448191,'2008-12-06 18:00:00',11),(4868,4448207,'2008-12-06 18:05:00',16),(4869,4448300,'2008-12-06 18:10:00',93),(4870,4448313,'2008-12-06 18:15:00',13),(4871,4448325,'2008-12-06 18:20:00',12),(4872,4448338,'2008-12-06 18:25:00',13),(4873,4448351,'2008-12-06 18:30:00',13),(4874,4448367,'2008-12-06 18:35:00',16),(4875,4448389,'2008-12-06 18:40:00',22),(4876,4448414,'2008-12-06 18:45:00',25),(4877,4448438,'2008-12-06 18:50:00',24),(4878,4448460,'2008-12-06 18:55:00',22),(4879,4448479,'2008-12-06 19:00:00',19),(4880,4448493,'2008-12-06 19:05:00',14),(4881,4448505,'2008-12-06 19:10:00',12),(4882,4448518,'2008-12-06 19:15:00',13),(4883,4448532,'2008-12-06 19:20:00',14),(4884,4448545,'2008-12-06 19:25:00',13),(4885,4448560,'2008-12-06 19:30:00',15),(4886,4448578,'2008-12-06 19:35:00',18),(4887,4448595,'2008-12-06 19:40:00',17),(4888,4448609,'2008-12-06 19:45:00',14),(4889,4448621,'2008-12-06 19:50:00',12),(4890,4448634,'2008-12-06 19:55:00',13),(4891,4448650,'2008-12-06 20:00:00',16),(4892,4448666,'2008-12-06 20:05:00',16),(4893,4448684,'2008-12-06 20:10:00',18),(4894,4448698,'2008-12-06 20:15:00',14),(4895,4448711,'2008-12-06 20:20:00',13),(4896,4448723,'2008-12-06 20:25:00',12),(4897,4448737,'2008-12-06 20:30:00',14),(4898,4448756,'2008-12-06 20:35:00',19),(4899,4448771,'2008-12-06 20:40:00',15),(4900,4448785,'2008-12-06 20:45:00',14),(4901,4448800,'2008-12-06 20:50:00',15),(4902,4448820,'2008-12-06 20:55:00',20),(4903,4448838,'2008-12-06 21:00:00',18),(4904,4448863,'2008-12-06 21:05:00',25),(4905,4448887,'2008-12-06 21:10:00',24),(4906,4448905,'2008-12-06 21:15:00',18),(4907,4448918,'2008-12-06 21:20:00',13),(4908,4448931,'2008-12-06 21:25:00',13),(4909,4448945,'2008-12-06 21:30:00',14),(4910,4448960,'2008-12-06 21:35:00',15),(4911,4448974,'2008-12-06 21:40:00',14),(4912,4449069,'2008-12-06 21:45:00',95),(4913,4449082,'2008-12-06 21:50:00',13),(4914,4449095,'2008-12-06 21:55:00',13),(4915,4449108,'2008-12-06 22:00:00',13),(4916,4449121,'2008-12-06 22:05:00',13),(4917,4449132,'2008-12-06 22:10:00',11),(4918,4449146,'2008-12-06 22:15:00',14),(4919,4449159,'2008-12-06 22:20:00',13),(4920,4449171,'2008-12-06 22:25:00',12),(4921,4449184,'2008-12-06 22:30:00',13),(4922,4449197,'2008-12-06 22:35:00',13),(4923,4449210,'2008-12-06 22:40:00',13),(4924,4449222,'2008-12-06 22:45:00',12),(4925,4449235,'2008-12-06 22:50:00',13),(4926,4449248,'2008-12-06 22:55:00',13),(4927,4449260,'2008-12-06 23:00:00',12),(4928,4449273,'2008-12-06 23:05:00',13),(4929,4449291,'2008-12-06 23:10:00',18),(4930,4449312,'2008-12-06 23:15:00',21),(4931,4449329,'2008-12-06 23:20:00',17),(4932,4449348,'2008-12-06 23:25:00',19),(4933,4449367,'2008-12-06 23:30:00',19),(4934,4449382,'2008-12-06 23:35:00',15),(4935,4449393,'2008-12-06 23:40:00',11),(4936,4449406,'2008-12-06 23:45:00',13),(4937,4449420,'2008-12-06 23:50:00',14),(4938,4449431,'2008-12-06 23:55:00',11),(4939,4449444,'2008-12-07 00:00:00',13),(4940,4449458,'2008-12-07 00:05:00',14),(4941,4449471,'2008-12-07 00:10:00',13),(4942,4449483,'2008-12-07 00:15:00',12),(4943,4449496,'2008-12-07 00:20:00',13),(4944,4449509,'2008-12-07 00:25:00',13),(4945,4449521,'2008-12-07 00:30:00',12),(4946,4449534,'2008-12-07 00:35:00',13),(4947,4449547,'2008-12-07 00:40:00',13),(4948,4449560,'2008-12-07 00:45:00',13),(4949,4449572,'2008-12-07 00:50:00',12),(4950,4449585,'2008-12-07 00:55:00',13),(4951,4449598,'2008-12-07 01:00:00',13),(4952,4449610,'2008-12-07 01:05:00',12),(4953,4449623,'2008-12-07 01:10:00',13),(4954,4449636,'2008-12-07 01:15:00',13),(4955,4449729,'2008-12-07 01:20:00',93),(4956,4449742,'2008-12-07 01:25:00',13),(4957,4449760,'2008-12-07 01:30:00',18),(4958,4449780,'2008-12-07 01:35:00',20),(4959,4449798,'2008-12-07 01:40:00',18),(4960,4449817,'2008-12-07 01:45:00',19),(4961,4449836,'2008-12-07 01:50:00',19),(4962,4449851,'2008-12-07 01:55:00',15),(4963,4449862,'2008-12-07 02:00:00',11),(4964,4449875,'2008-12-07 02:05:00',13),(4965,4449888,'2008-12-07 02:10:00',13),(4966,4449900,'2008-12-07 02:15:00',12),(4967,4449913,'2008-12-07 02:20:00',13),(4968,4449926,'2008-12-07 02:25:00',13),(4969,4449939,'2008-12-07 02:30:00',13),(4970,4449951,'2008-12-07 02:35:00',12),(4971,4449964,'2008-12-07 02:40:00',13),(4972,4449977,'2008-12-07 02:45:00',13),(4973,4449989,'2008-12-07 02:50:00',12),(4974,4450002,'2008-12-07 02:55:00',13),(4975,4450015,'2008-12-07 03:00:00',13),(4976,4450028,'2008-12-07 03:05:00',13),(4977,4450040,'2008-12-07 03:10:00',12),(4978,4450053,'2008-12-07 03:15:00',13),(4979,4450066,'2008-12-07 03:20:00',13),(4980,4450078,'2008-12-07 03:25:00',12),(4981,4450091,'2008-12-07 03:30:00',13),(4982,4450104,'2008-12-07 03:35:00',13),(4983,4450117,'2008-12-07 03:40:00',13),(4984,4450129,'2008-12-07 03:45:00',12),(4985,4450143,'2008-12-07 03:50:00',14),(4986,4450164,'2008-12-07 03:55:00',21),(4987,4450182,'2008-12-07 04:00:00',18),(4988,4450201,'2008-12-07 04:05:00',19),(4989,4450221,'2008-12-07 04:10:00',20),(4990,4450238,'2008-12-07 04:15:00',17),(4991,4450250,'2008-12-07 04:20:00',12),(4992,4450263,'2008-12-07 04:25:00',13),(4993,4450276,'2008-12-07 04:30:00',13),(4994,4450288,'2008-12-07 04:35:00',12),(4995,4450301,'2008-12-07 04:40:00',13),(4996,4450314,'2008-12-07 04:45:00',13),(4997,4450334,'2008-12-07 04:50:00',20),(4998,4450421,'2008-12-07 04:55:00',87),(4999,4450435,'2008-12-07 05:00:00',14),(5000,4450448,'2008-12-07 05:05:00',13),(5001,4450458,'2008-12-07 05:10:00',10),(5002,4450473,'2008-12-07 05:15:00',15),(5003,4450486,'2008-12-07 05:20:00',13),(5004,4450499,'2008-12-07 05:25:00',13),(5005,4450511,'2008-12-07 05:30:00',12),(5006,4450524,'2008-12-07 05:35:00',13),(5007,4450537,'2008-12-07 05:40:00',13),(5008,4450549,'2008-12-07 05:45:00',12),(5009,4450562,'2008-12-07 05:50:00',13),(5010,4450575,'2008-12-07 05:55:00',13),(5011,4450588,'2008-12-07 06:00:00',13),(5012,4450600,'2008-12-07 06:05:00',12),(5013,4450613,'2008-12-07 06:10:00',13),(5014,4450628,'2008-12-07 06:15:00',15),(5015,4450649,'2008-12-07 06:20:00',21),(5016,4450667,'2008-12-07 06:25:00',18),(5017,4450686,'2008-12-07 06:30:00',19),(5018,4450705,'2008-12-07 06:35:00',19),(5019,4450719,'2008-12-07 06:40:00',14),(5020,4450732,'2008-12-07 06:45:00',13),(5021,4450745,'2008-12-07 06:50:00',13),(5022,4450758,'2008-12-07 06:55:00',13),(5023,4450769,'2008-12-07 07:00:00',11),(5024,4450783,'2008-12-07 07:05:00',14),(5025,4450797,'2008-12-07 07:10:00',14),(5026,4450810,'2008-12-07 07:15:00',13),(5027,4450825,'2008-12-07 07:20:00',15),(5028,4450841,'2008-12-07 07:25:00',16),(5029,4450856,'2008-12-07 07:30:00',15),(5030,4450874,'2008-12-07 07:35:00',18),(5031,4450889,'2008-12-07 07:40:00',15),(5032,4450905,'2008-12-07 07:45:00',16),(5033,4450919,'2008-12-07 07:50:00',14),(5034,4450934,'2008-12-07 07:55:00',15),(5035,4450950,'2008-12-07 08:00:00',16),(5036,4450965,'2008-12-07 08:05:00',15),(5037,4450980,'2008-12-07 08:10:00',15),(5038,4450995,'2008-12-07 08:15:00',15),(5039,4451011,'2008-12-07 08:20:00',16),(5040,4451112,'2008-12-07 08:25:00',101),(5041,4451131,'2008-12-07 08:30:00',19),(5042,4451154,'2008-12-07 08:35:00',23),(5043,4451176,'2008-12-07 08:40:00',22),(5044,4451194,'2008-12-07 08:45:00',18),(5045,4451213,'2008-12-07 08:50:00',19),(5046,4451229,'2008-12-07 08:55:00',16),(5047,4451241,'2008-12-07 09:00:00',12),(5048,4451254,'2008-12-07 09:05:00',13),(5049,4451267,'2008-12-07 09:10:00',13),(5050,4451279,'2008-12-07 09:15:00',12),(5051,4451292,'2008-12-07 09:20:00',13),(5052,4451305,'2008-12-07 09:25:00',13),(5053,4451326,'2008-12-07 09:30:00',21),(5054,4451344,'2008-12-07 09:35:00',18),(5055,4451364,'2008-12-07 09:40:00',20),(5056,4451384,'2008-12-07 09:45:00',20),(5057,4451402,'2008-12-07 09:50:00',18),(5058,4451420,'2008-12-07 09:55:00',18),(5059,4451438,'2008-12-07 10:00:00',18),(5060,4451456,'2008-12-07 10:05:00',18),(5061,4451472,'2008-12-07 10:10:00',16),(5062,4451489,'2008-12-07 10:15:00',17),(5063,4451507,'2008-12-07 10:20:00',18),(5064,4451522,'2008-12-07 10:25:00',15),(5065,4451538,'2008-12-07 10:30:00',16),(5066,4451558,'2008-12-07 10:35:00',20),(5067,4451578,'2008-12-07 10:40:00',20),(5068,4451595,'2008-12-07 10:45:00',17),(5069,4451613,'2008-12-07 10:50:00',18),(5070,4451629,'2008-12-07 10:55:00',16),(5071,4451640,'2008-12-07 11:00:00',11),(5072,4451653,'2008-12-07 11:05:00',13),(5073,4451666,'2008-12-07 11:10:00',13),(5074,4451678,'2008-12-07 11:15:00',12),(5075,4451689,'2008-12-07 11:20:00',11),(5076,4451702,'2008-12-07 11:25:00',13),(5077,4451714,'2008-12-07 11:30:00',12),(5078,4451726,'2008-12-07 11:35:00',12),(5079,4451738,'2008-12-07 11:40:00',12),(5080,4451756,'2008-12-07 11:45:00',18),(5081,4451773,'2008-12-07 11:50:00',17),(5082,4451789,'2008-12-07 11:55:00',16),(5083,4451806,'2008-12-07 12:00:00',17),(5084,4451820,'2008-12-07 12:05:00',14),(5085,4451882,'2008-12-07 12:10:00',62),(5086,4451936,'2008-12-07 12:15:00',54),(5087,4451952,'2008-12-07 12:20:00',16),(5088,4451967,'2008-12-07 12:25:00',15),(5089,4451977,'2008-12-07 12:30:00',10),(5090,4451990,'2008-12-07 12:35:00',13),(5091,4452003,'2008-12-07 12:40:00',13),(5092,4452021,'2008-12-07 12:45:00',18),(5093,4452040,'2008-12-07 12:50:00',19),(5094,4452059,'2008-12-07 12:55:00',19),(5095,4452078,'2008-12-07 13:00:00',19),(5096,4452094,'2008-12-07 13:05:00',16),(5097,4452107,'2008-12-07 13:10:00',13),(5098,4452120,'2008-12-07 13:15:00',13),(5099,4452131,'2008-12-07 13:20:00',11),(5100,4452143,'2008-12-07 13:25:00',12),(5101,4452156,'2008-12-07 13:30:00',13),(5102,4452168,'2008-12-07 13:35:00',12),(5103,4452179,'2008-12-07 13:40:00',11),(5104,4452192,'2008-12-07 13:45:00',13),(5105,4452204,'2008-12-07 13:50:00',12),(5106,4452215,'2008-12-07 13:55:00',11),(5107,4452228,'2008-12-07 14:00:00',13),(5108,4452240,'2008-12-07 14:05:00',12),(5109,4452253,'2008-12-07 14:10:00',13),(5110,4452264,'2008-12-07 14:15:00',11),(5111,4452276,'2008-12-07 14:20:00',12),(5112,4452289,'2008-12-07 14:25:00',13),(5113,4452300,'2008-12-07 14:30:00',11),(5114,4452313,'2008-12-07 14:35:00',13),(5115,4452325,'2008-12-07 14:40:00',12),(5116,4452338,'2008-12-07 14:45:00',13),(5117,4452349,'2008-12-07 14:50:00',11),(5118,4452361,'2008-12-07 14:55:00',12),(5119,4452380,'2008-12-07 15:00:00',19),(5120,4452398,'2008-12-07 15:05:00',18),(5121,4452417,'2008-12-07 15:10:00',19),(5122,4452436,'2008-12-07 15:15:00',19),(5123,4452454,'2008-12-07 15:20:00',18),(5124,4452466,'2008-12-07 15:25:00',12),(5125,4452479,'2008-12-07 15:30:00',13),(5126,4452491,'2008-12-07 15:35:00',12),(5127,4452503,'2008-12-07 15:40:00',12),(5128,4452515,'2008-12-07 15:45:00',12),(5129,4452526,'2008-12-07 15:50:00',11),(5130,4452622,'2008-12-07 15:55:00',96),(5131,4452634,'2008-12-07 16:00:00',12),(5132,4452649,'2008-12-07 16:05:00',15),(5133,4452666,'2008-12-07 16:10:00',17),(5134,4452682,'2008-12-07 16:15:00',16),(5135,4452699,'2008-12-07 16:20:00',17),(5136,4452717,'2008-12-07 16:25:00',18),(5137,4452734,'2008-12-07 16:30:00',17),(5138,4452750,'2008-12-07 16:35:00',16),(5139,4452766,'2008-12-07 16:40:00',16),(5140,4452782,'2008-12-07 16:45:00',16),(5141,4452799,'2008-12-07 16:50:00',17),(5142,4452811,'2008-12-07 16:55:00',12),(5143,4452823,'2008-12-07 17:00:00',12),(5144,4452836,'2008-12-07 17:05:00',13),(5145,4452847,'2008-12-07 17:10:00',11),(5146,4452862,'2008-12-07 17:15:00',15),(5147,4452882,'2008-12-07 17:20:00',20),(5148,4452901,'2008-12-07 17:25:00',19),(5149,4452918,'2008-12-07 17:30:00',17),(5150,4452936,'2008-12-07 17:35:00',18),(5151,4452951,'2008-12-07 17:40:00',15),(5152,4452963,'2008-12-07 17:45:00',12),(5153,4452975,'2008-12-07 17:50:00',12),(5154,4452987,'2008-12-07 17:55:00',12),(5155,4453000,'2008-12-07 18:00:00',13),(5156,4453011,'2008-12-07 18:05:00',11),(5157,4453024,'2008-12-07 18:10:00',13),(5158,4453037,'2008-12-07 18:15:00',13),(5159,4453049,'2008-12-07 18:20:00',12),(5160,4453062,'2008-12-07 18:25:00',13),(5161,4453079,'2008-12-07 18:30:00',17),(5162,4453097,'2008-12-07 18:35:00',18),(5163,4453113,'2008-12-07 18:40:00',16),(5164,4453130,'2008-12-07 18:45:00',17),(5165,4453147,'2008-12-07 18:50:00',17),(5166,4453161,'2008-12-07 18:55:00',14),(5167,4453179,'2008-12-07 19:00:00',18),(5168,4453197,'2008-12-07 19:05:00',18),(5169,4453214,'2008-12-07 19:10:00',17),(5170,4453229,'2008-12-07 19:15:00',15),(5171,4453242,'2008-12-07 19:20:00',13),(5172,4453257,'2008-12-07 19:25:00',15),(5173,4453357,'2008-12-07 19:30:00',100),(5174,4453449,'2008-12-07 19:35:00',92),(5175,4453529,'2008-12-07 19:40:00',80),(5176,4453674,'2008-12-07 19:45:00',145),(5177,4453865,'2008-12-07 19:50:00',191),(5178,4454076,'2008-12-07 19:55:00',211),(5179,4454271,'2008-12-07 20:00:00',195),(5180,4454325,'2008-12-07 20:05:00',54),(5181,4454384,'2008-12-07 20:10:00',59),(5182,4454464,'2008-12-07 20:15:00',80),(5183,4454533,'2008-12-07 20:20:00',69),(5184,4454585,'2008-12-07 20:25:00',52),(5185,4454662,'2008-12-07 20:30:00',77),(5186,4454740,'2008-12-07 20:35:00',78),(5187,4454969,'2008-12-07 20:40:00',229),(5188,4455269,'2008-12-07 20:45:00',300),(5189,4455570,'2008-12-07 20:50:00',301),(5190,4455743,'2008-12-07 20:55:00',173),(5191,4455805,'2008-12-07 21:00:00',62),(5192,4455868,'2008-12-07 21:05:00',63),(5193,4455924,'2008-12-07 21:10:00',56),(5194,4455963,'2008-12-07 21:15:00',39),(5195,4456204,'2008-12-07 21:20:00',241),(5196,4456480,'2008-12-07 21:25:00',276),(5197,4456692,'2008-12-07 21:30:00',212),(5198,4456778,'2008-12-07 21:35:00',86),(5199,4456837,'2008-12-07 21:40:00',59),(5200,4456892,'2008-12-07 21:45:00',55),(5201,4456925,'2008-12-07 21:50:00',33),(5202,4456955,'2008-12-07 21:55:00',30),(5203,4457114,'2008-12-07 22:25:00',159),(5204,4457648,'2008-12-08 00:00:00',534),(5205,4457669,'2008-12-08 00:05:00',21),(5206,4457690,'2008-12-08 00:10:00',21),(5207,4457710,'2008-12-08 00:15:00',20),(5208,4457729,'2008-12-08 00:20:00',19),(5209,4457750,'2008-12-08 00:25:00',21),(5210,4457770,'2008-12-08 00:30:00',20),(5211,4457791,'2008-12-08 00:35:00',21),(5212,4457810,'2008-12-08 00:40:00',19),(5213,4457830,'2008-12-08 00:45:00',20),(5214,4457850,'2008-12-08 00:50:00',20),(5215,4457868,'2008-12-08 00:55:00',18),(5216,4457888,'2008-12-08 01:00:00',20),(5217,4457908,'2008-12-08 01:05:00',20),(5218,4457929,'2008-12-08 01:10:00',21),(5219,4457947,'2008-12-08 01:15:00',18),(5220,4457968,'2008-12-08 01:20:00',21),(5221,4457988,'2008-12-08 01:25:00',20),(5222,4458008,'2008-12-08 01:30:00',20),(5223,4458026,'2008-12-08 01:35:00',18),(5224,4458055,'2008-12-08 01:40:00',29),(5225,4458082,'2008-12-08 01:45:00',27),(5226,4458105,'2008-12-08 01:50:00',23),(5227,4458130,'2008-12-08 01:55:00',25),(5228,4458148,'2008-12-08 02:00:00',18),(5229,4458161,'2008-12-08 02:05:00',13),(5230,4458173,'2008-12-08 02:10:00',12),(5231,4458185,'2008-12-08 02:15:00',12),(5232,4458198,'2008-12-08 02:20:00',13),(5233,4458210,'2008-12-08 02:25:00',12),(5234,4458221,'2008-12-08 02:30:00',11),(5235,4458234,'2008-12-08 02:35:00',13),(5236,4458246,'2008-12-08 02:40:00',12),(5237,4458257,'2008-12-08 02:45:00',11),(5238,4458270,'2008-12-08 02:50:00',13),(5239,4458297,'2008-12-08 02:55:00',27),(5240,4458378,'2008-12-08 03:00:00',81),(5241,4458390,'2008-12-08 03:05:00',12),(5242,4458402,'2008-12-08 03:10:00',12),(5243,4458415,'2008-12-08 03:15:00',13),(5244,4458426,'2008-12-08 03:20:00',11),(5245,4458438,'2008-12-08 03:25:00',12),(5246,4458451,'2008-12-08 03:30:00',13),(5247,4458463,'2008-12-08 03:35:00',12),(5248,4458474,'2008-12-08 03:40:00',11),(5249,4458487,'2008-12-08 03:45:00',13),(5250,4458507,'2008-12-08 03:50:00',20),(5251,4458526,'2008-12-08 03:55:00',19),(5252,4458543,'2008-12-08 04:00:00',17),(5253,4458562,'2008-12-08 04:05:00',19),(5254,4458579,'2008-12-08 04:10:00',17),(5255,4458590,'2008-12-08 04:15:00',11),(5256,4458603,'2008-12-08 04:20:00',13),(5257,4458615,'2008-12-08 04:25:00',12),(5258,4458627,'2008-12-08 04:30:00',12),(5259,4458639,'2008-12-08 04:35:00',12),(5260,4458651,'2008-12-08 04:40:00',12),(5261,4458663,'2008-12-08 04:45:00',12),(5262,4458676,'2008-12-08 04:50:00',13),(5263,4458687,'2008-12-08 04:55:00',11),(5264,4458700,'2008-12-08 05:00:00',13),(5265,4458712,'2008-12-08 05:05:00',12),(5266,4458723,'2008-12-08 05:10:00',11),(5267,4458736,'2008-12-08 05:15:00',13),(5268,4458748,'2008-12-08 05:20:00',12),(5269,4458761,'2008-12-08 05:25:00',13),(5270,4458772,'2008-12-08 05:30:00',11),(5271,4458784,'2008-12-08 05:35:00',12),(5272,4458797,'2008-12-08 05:40:00',13),(5273,4458809,'2008-12-08 05:45:00',12),(5274,4458820,'2008-12-08 05:50:00',11),(5275,4458833,'2008-12-08 05:55:00',13),(5276,4458847,'2008-12-08 06:00:00',14),(5277,4458865,'2008-12-08 06:05:00',18),(5278,4458884,'2008-12-08 06:10:00',19),(5279,4458903,'2008-12-08 06:15:00',19),(5280,4458922,'2008-12-08 06:20:00',19),(5281,4458936,'2008-12-08 06:25:00',14),(5282,4458948,'2008-12-08 06:30:00',12),(5283,4459040,'2008-12-08 06:35:00',92),(5284,4459066,'2008-12-08 06:40:00',26),(5285,4459078,'2008-12-08 06:45:00',12),(5286,4459090,'2008-12-08 06:50:00',12),(5287,4459103,'2008-12-08 06:55:00',13),(5288,4459114,'2008-12-08 07:00:00',11),(5289,4459127,'2008-12-08 07:05:00',13),(5290,4459140,'2008-12-08 07:10:00',13),(5291,4459155,'2008-12-08 07:15:00',15),(5292,4459168,'2008-12-08 07:20:00',13),(5293,4459187,'2008-12-08 07:25:00',19),(5294,4459217,'2008-12-08 07:30:00',30),(5295,4459242,'2008-12-08 07:35:00',25),(5296,4459266,'2008-12-08 07:40:00',24),(5297,4459290,'2008-12-08 07:45:00',24),(5298,4459302,'2008-12-08 07:50:00',12),(5299,4459312,'2008-12-08 07:55:00',10),(5300,4459324,'2008-12-08 08:00:00',12),(5301,4459336,'2008-12-08 08:05:00',12),(5302,4459347,'2008-12-08 08:10:00',11),(5303,4459361,'2008-12-08 08:15:00',14),(5304,4459381,'2008-12-08 08:20:00',20),(5305,4459399,'2008-12-08 08:25:00',18),(5306,4459416,'2008-12-08 08:30:00',17),(5307,4459433,'2008-12-08 08:35:00',17),(5308,4459448,'2008-12-08 08:40:00',15),(5309,4459460,'2008-12-08 08:45:00',12),(5310,4459471,'2008-12-08 08:50:00',11),(5311,4459483,'2008-12-08 08:55:00',12),(5312,4459495,'2008-12-08 09:00:00',12),(5313,4459506,'2008-12-08 09:05:00',11),(5314,4459517,'2008-12-08 09:10:00',11),(5315,4459529,'2008-12-08 09:15:00',12),(5316,4459541,'2008-12-08 09:20:00',12),(5317,4459552,'2008-12-08 09:25:00',11),(5318,4459564,'2008-12-08 09:30:00',12),(5319,4459576,'2008-12-08 09:35:00',12),(5320,4459586,'2008-12-08 09:40:00',10),(5321,4459598,'2008-12-08 09:45:00',12),(5322,4459610,'2008-12-08 09:50:00',12),(5323,4459622,'2008-12-08 09:55:00',12),(5324,4459633,'2008-12-08 10:00:00',11),(5325,4459645,'2008-12-08 10:05:00',12),(5326,4459657,'2008-12-08 10:10:00',12),(5327,4459672,'2008-12-08 10:15:00',15),(5328,4459687,'2008-12-08 10:20:00',15),(5329,4459704,'2008-12-08 10:25:00',17),(5330,4459720,'2008-12-08 10:30:00',16),(5331,4459738,'2008-12-08 10:35:00',18),(5332,4459841,'2008-12-08 10:40:00',103),(5333,4459865,'2008-12-08 10:45:00',24),(5334,4459887,'2008-12-08 10:50:00',22),(5335,4459907,'2008-12-08 10:55:00',20),(5336,4459920,'2008-12-08 11:00:00',13),(5337,4459932,'2008-12-08 11:05:00',12),(5338,4459943,'2008-12-08 11:10:00',11),(5339,4459955,'2008-12-08 11:15:00',12),(5340,4459967,'2008-12-08 11:20:00',12),(5341,4459978,'2008-12-08 11:25:00',11),(5342,4459989,'2008-12-08 11:30:00',11),(5343,4460001,'2008-12-08 11:35:00',12),(5344,4460012,'2008-12-08 11:40:00',11),(5345,4460023,'2008-12-08 11:45:00',11),(5346,4460035,'2008-12-08 11:50:00',12),(5347,4460047,'2008-12-08 11:55:00',12),(5348,4460058,'2008-12-08 12:00:00',11),(5349,4460069,'2008-12-08 12:05:00',11),(5350,4460081,'2008-12-08 12:10:00',12),(5351,4460093,'2008-12-08 12:15:00',12),(5352,4460105,'2008-12-08 12:20:00',12),(5353,4460116,'2008-12-08 12:25:00',11),(5354,4460127,'2008-12-08 12:30:00',11),(5355,4460139,'2008-12-08 12:35:00',12),(5356,4460150,'2008-12-08 12:40:00',11),(5357,4460162,'2008-12-08 12:45:00',12),(5358,4460176,'2008-12-08 12:50:00',14),(5359,4460195,'2008-12-08 12:55:00',19),(5360,4460215,'2008-12-08 13:00:00',20),(5361,4460239,'2008-12-08 13:05:00',24),(5362,4460262,'2008-12-08 13:10:00',23),(5363,4460281,'2008-12-08 13:15:00',19),(5364,4460297,'2008-12-08 13:20:00',16),(5365,4460311,'2008-12-08 13:25:00',14),(5366,4460328,'2008-12-08 13:30:00',17),(5367,4460343,'2008-12-08 13:35:00',15),(5368,4460359,'2008-12-08 13:40:00',16),(5369,4460375,'2008-12-08 13:45:00',16),(5370,4460386,'2008-12-08 13:50:00',11),(5371,4460398,'2008-12-08 13:55:00',12),(5372,4460409,'2008-12-08 14:00:00',11),(5373,4460421,'2008-12-08 14:05:00',12),(5374,4460432,'2008-12-08 14:10:00',11),(5375,4460528,'2008-12-08 14:15:00',96),(5376,4460540,'2008-12-08 14:20:00',12),(5377,4460550,'2008-12-08 14:25:00',10),(5378,4460562,'2008-12-08 14:30:00',12),(5379,4460574,'2008-12-08 14:35:00',12),(5380,4460586,'2008-12-08 14:40:00',12),(5381,4460596,'2008-12-08 14:45:00',10),(5382,4460608,'2008-12-08 14:50:00',12),(5383,4460620,'2008-12-08 14:55:00',12),(5384,4460632,'2008-12-08 15:00:00',12),(5385,4460642,'2008-12-08 15:05:00',10),(5386,4460659,'2008-12-08 15:10:00',17),(5387,4460680,'2008-12-08 15:15:00',21),(5388,4460701,'2008-12-08 15:20:00',21),(5389,4460724,'2008-12-08 15:25:00',23),(5390,4460747,'2008-12-08 15:30:00',23),(5391,4460763,'2008-12-08 15:35:00',16),(5392,4460777,'2008-12-08 15:40:00',14),(5393,4460794,'2008-12-08 15:45:00',17),(5394,4460811,'2008-12-08 15:50:00',17),(5395,4460826,'2008-12-08 15:55:00',15),(5396,4460839,'2008-12-08 16:00:00',13),(5397,4460851,'2008-12-08 16:05:00',12),(5398,4460862,'2008-12-08 16:10:00',11),(5399,4460873,'2008-12-08 16:15:00',11),(5400,4460885,'2008-12-08 16:20:00',12),(5401,4460897,'2008-12-08 16:25:00',12),(5402,4460908,'2008-12-08 16:30:00',11),(5403,4460919,'2008-12-08 16:35:00',11),(5404,4460931,'2008-12-08 16:40:00',12),(5405,4460943,'2008-12-08 16:45:00',12),(5406,4460953,'2008-12-08 16:50:00',10),(5407,4460965,'2008-12-08 16:55:00',12),(5408,4460976,'2008-12-08 17:00:00',11),(5409,4460992,'2008-12-08 17:05:00',16),(5410,4461007,'2008-12-08 17:10:00',15),(5411,4461024,'2008-12-08 17:15:00',17),(5412,4461040,'2008-12-08 17:20:00',16),(5413,4461055,'2008-12-08 17:25:00',15),(5414,4461076,'2008-12-08 17:30:00',21),(5415,4461100,'2008-12-08 17:35:00',24),(5416,4461123,'2008-12-08 17:40:00',23),(5417,4461143,'2008-12-08 17:45:00',20),(5418,4461162,'2008-12-08 17:50:00',19),(5419,4461260,'2008-12-08 17:55:00',98),(5420,4461272,'2008-12-08 18:00:00',12),(5421,4461283,'2008-12-08 18:05:00',11),(5422,4461296,'2008-12-08 18:10:00',13),(5423,4461308,'2008-12-08 18:15:00',12),(5424,4461320,'2008-12-08 18:20:00',12),(5425,4461332,'2008-12-08 18:25:00',12),(5426,4461345,'2008-12-08 18:30:00',13),(5427,4461462,'2008-12-08 18:35:00',117),(5428,4461589,'2008-12-08 18:40:00',127),(5429,4461674,'2008-12-08 18:45:00',85),(5430,4461879,'2008-12-08 18:50:00',205),(5431,4462062,'2008-12-08 18:55:00',183),(5432,4462253,'2008-12-08 19:00:00',191),(5433,4462435,'2008-12-08 19:05:00',182),(5434,4462498,'2008-12-08 19:10:00',63),(5435,4462552,'2008-12-08 19:15:00',54),(5436,4462610,'2008-12-08 19:20:00',58),(5437,4462670,'2008-12-08 19:25:00',60),(5438,4462723,'2008-12-08 19:30:00',53),(5439,4462784,'2008-12-08 19:35:00',61),(5440,4462850,'2008-12-08 19:40:00',66),(5441,4462918,'2008-12-08 19:45:00',68),(5442,4462979,'2008-12-08 19:50:00',61),(5443,4463039,'2008-12-08 19:55:00',60),(5444,4463146,'2008-12-08 20:00:00',107),(5445,4463198,'2008-12-08 20:05:00',52),(5446,4463237,'2008-12-08 20:10:00',39),(5447,4463263,'2008-12-08 20:15:00',26),(5448,4463289,'2008-12-08 20:20:00',26),(5449,4463315,'2008-12-08 20:25:00',26),(5450,4463342,'2008-12-08 20:30:00',27),(5451,4463367,'2008-12-08 20:35:00',25),(5452,4463392,'2008-12-08 20:40:00',25),(5453,4463415,'2008-12-08 20:45:00',23),(5454,4463441,'2008-12-08 20:50:00',26),(5455,4463466,'2008-12-08 20:55:00',25),(5456,4463489,'2008-12-08 21:00:00',23),(5457,4463514,'2008-12-08 21:05:00',25),(5458,4463539,'2008-12-08 21:10:00',25),(5459,4463564,'2008-12-08 21:15:00',25),(5460,4463587,'2008-12-08 21:20:00',23),(5461,4463612,'2008-12-08 21:25:00',25),(5462,4463638,'2008-12-08 21:30:00',26),(5463,4463667,'2008-12-08 21:35:00',29),(5464,4463696,'2008-12-08 21:40:00',29),(5465,4463730,'2008-12-08 21:45:00',34),(5466,4463841,'2008-12-08 21:50:00',111),(5467,4463869,'2008-12-08 21:55:00',28),(5468,4463898,'2008-12-08 22:00:00',29),(5469,4463924,'2008-12-08 22:05:00',26),(5470,4463949,'2008-12-08 22:10:00',25),(5471,4463973,'2008-12-08 22:15:00',24),(5472,4463998,'2008-12-08 22:20:00',25),(5473,4464024,'2008-12-08 22:25:00',26),(5474,4464047,'2008-12-08 22:30:00',23),(5475,4464072,'2008-12-08 22:35:00',25),(5476,4464097,'2008-12-08 22:40:00',25),(5477,4464123,'2008-12-08 22:45:00',26),(5478,4464145,'2008-12-08 22:50:00',22),(5479,4464171,'2008-12-08 22:55:00',26),(5480,4464196,'2008-12-08 23:00:00',25),(5481,4464221,'2008-12-08 23:05:00',25),(5482,4464240,'2008-12-08 23:10:00',19),(5483,4464260,'2008-12-08 23:15:00',20),(5484,4464280,'2008-12-08 23:20:00',20),(5485,4464299,'2008-12-08 23:25:00',19),(5486,4464319,'2008-12-08 23:30:00',20),(5487,4464347,'2008-12-08 23:35:00',28),(5488,4464373,'2008-12-08 23:40:00',26),(5489,4464397,'2008-12-08 23:45:00',24),(5490,4464419,'2008-12-08 23:50:00',22),(5491,4464437,'2008-12-08 23:55:00',18),(5492,4464449,'2008-12-09 00:00:00',12),(5493,4464461,'2008-12-09 00:05:00',12),(5494,4464474,'2008-12-09 00:10:00',13),(5495,4464486,'2008-12-09 00:15:00',12),(5496,4464497,'2008-12-09 00:20:00',11),(5497,4464510,'2008-12-09 00:25:00',13),(5498,4464523,'2008-12-09 00:30:00',13),(5499,4464534,'2008-12-09 00:35:00',11),(5500,4464547,'2008-12-09 00:40:00',13),(5501,4464559,'2008-12-09 00:45:00',12),(5502,4464572,'2008-12-09 00:50:00',13),(5503,4464583,'2008-12-09 00:55:00',11),(5504,4464596,'2008-12-09 01:00:00',13),(5505,4464608,'2008-12-09 01:05:00',12),(5506,4464621,'2008-12-09 01:10:00',13),(5507,4464632,'2008-12-09 01:15:00',11),(5508,4464644,'2008-12-09 01:20:00',12),(5509,4464657,'2008-12-09 01:25:00',13),(5510,4464696,'2008-12-09 01:30:00',39),(5511,4464766,'2008-12-09 01:35:00',70),(5512,4464785,'2008-12-09 01:40:00',19),(5513,4464805,'2008-12-09 01:45:00',20),(5514,4464822,'2008-12-09 01:50:00',17),(5515,4464841,'2008-12-09 01:55:00',19),(5516,4464859,'2008-12-09 02:00:00',18),(5517,4464871,'2008-12-09 02:05:00',12),(5518,4464883,'2008-12-09 02:10:00',12),(5519,4464896,'2008-12-09 02:15:00',13),(5520,4464908,'2008-12-09 02:20:00',12),(5521,4464919,'2008-12-09 02:25:00',11),(5522,4464932,'2008-12-09 02:30:00',13),(5523,4464944,'2008-12-09 02:35:00',12),(5524,4464957,'2008-12-09 02:40:00',13),(5525,4464968,'2008-12-09 02:45:00',11),(5526,4464981,'2008-12-09 02:50:00',13),(5527,4464993,'2008-12-09 02:55:00',12),(5528,4465005,'2008-12-09 03:00:00',12),(5529,4465017,'2008-12-09 03:05:00',12),(5530,4465030,'2008-12-09 03:10:00',13),(5531,4465042,'2008-12-09 03:15:00',12),(5532,4465054,'2008-12-09 03:20:00',12),(5533,4465066,'2008-12-09 03:25:00',12),(5534,4465079,'2008-12-09 03:30:00',13),(5535,4465091,'2008-12-09 03:35:00',12),(5536,4465103,'2008-12-09 03:40:00',12),(5537,4465115,'2008-12-09 03:45:00',12),(5538,4465132,'2008-12-09 03:50:00',17),(5539,4465150,'2008-12-09 03:55:00',18),(5540,4465169,'2008-12-09 04:00:00',19),(5541,4465188,'2008-12-09 04:05:00',19),(5542,4465206,'2008-12-09 04:10:00',18),(5543,4465220,'2008-12-09 04:15:00',14),(5544,4465232,'2008-12-09 04:20:00',12),(5545,4465245,'2008-12-09 04:25:00',13),(5546,4465256,'2008-12-09 04:30:00',11),(5547,4465269,'2008-12-09 04:35:00',13),(5548,4465281,'2008-12-09 04:40:00',12),(5549,4465294,'2008-12-09 04:45:00',13),(5550,4465305,'2008-12-09 04:50:00',11),(5551,4465318,'2008-12-09 04:55:00',13),(5552,4465330,'2008-12-09 05:00:00',12),(5553,4465343,'2008-12-09 05:05:00',13),(5554,4465354,'2008-12-09 05:10:00',11),(5555,4465449,'2008-12-09 05:15:00',95),(5556,4465461,'2008-12-09 05:20:00',12),(5557,4465472,'2008-12-09 05:25:00',11),(5558,4465485,'2008-12-09 05:30:00',13),(5559,4465497,'2008-12-09 05:35:00',12),(5560,4465510,'2008-12-09 05:40:00',13),(5561,4465521,'2008-12-09 05:45:00',11),(5562,4465533,'2008-12-09 05:50:00',12),(5563,4465546,'2008-12-09 05:55:00',13),(5564,4465557,'2008-12-09 06:00:00',11),(5565,4465571,'2008-12-09 06:05:00',14),(5566,4465591,'2008-12-09 06:10:00',20),(5567,4465610,'2008-12-09 06:15:00',19),(5568,4465627,'2008-12-09 06:20:00',17),(5569,4465646,'2008-12-09 06:25:00',19),(5570,4465662,'2008-12-09 06:30:00',16),(5571,4465674,'2008-12-09 06:35:00',12),(5572,4465684,'2008-12-09 06:40:00',10),(5573,4465697,'2008-12-09 06:45:00',13),(5574,4465709,'2008-12-09 06:50:00',12),(5575,4465720,'2008-12-09 06:55:00',11),(5576,4465733,'2008-12-09 07:00:00',13),(5577,4465746,'2008-12-09 07:05:00',13),(5578,4465759,'2008-12-09 07:10:00',13),(5579,4465772,'2008-12-09 07:15:00',13),(5580,4465787,'2008-12-09 07:20:00',15),(5581,4465801,'2008-12-09 07:25:00',14),(5582,4465816,'2008-12-09 07:30:00',15),(5583,4465845,'2008-12-09 07:35:00',29),(5584,4465872,'2008-12-09 07:40:00',27),(5585,4465892,'2008-12-09 07:45:00',20),(5586,4465904,'2008-12-09 07:50:00',12),(5587,4465916,'2008-12-09 07:55:00',12),(5588,4465928,'2008-12-09 08:00:00',12),(5589,4465939,'2008-12-09 08:05:00',11),(5590,4465951,'2008-12-09 08:10:00',12),(5591,4465963,'2008-12-09 08:15:00',12),(5592,4465975,'2008-12-09 08:20:00',12),(5593,4465989,'2008-12-09 08:25:00',14),(5594,4466008,'2008-12-09 08:30:00',19),(5595,4466026,'2008-12-09 08:35:00',18),(5596,4466044,'2008-12-09 08:40:00',18),(5597,4466144,'2008-12-09 08:45:00',100),(5598,4466158,'2008-12-09 08:50:00',14),(5599,4466170,'2008-12-09 08:55:00',12),(5600,4466181,'2008-12-09 09:00:00',11),(5601,4466193,'2008-12-09 09:05:00',12),(5602,4466204,'2008-12-09 09:10:00',11),(5603,4466216,'2008-12-09 09:15:00',12),(5604,4466227,'2008-12-09 09:20:00',11),(5605,4466239,'2008-12-09 09:25:00',12),(5606,4466251,'2008-12-09 09:30:00',12),(5607,4466261,'2008-12-09 09:35:00',10),(5608,4466277,'2008-12-09 09:40:00',16),(5609,4466294,'2008-12-09 09:45:00',17),(5610,4466310,'2008-12-09 09:50:00',16),(5611,4466325,'2008-12-09 09:55:00',15),(5612,4466342,'2008-12-09 10:00:00',17),(5613,4466359,'2008-12-09 10:05:00',17),(5614,4466373,'2008-12-09 10:10:00',14),(5615,4466387,'2008-12-09 10:15:00',14),(5616,4466404,'2008-12-09 10:20:00',17),(5617,4466420,'2008-12-09 10:25:00',16),(5618,4466430,'2008-12-09 10:30:00',10),(5619,4466442,'2008-12-09 10:35:00',12),(5620,4466454,'2008-12-09 10:40:00',12),(5621,4466465,'2008-12-09 10:45:00',11),(5622,4466485,'2008-12-09 10:50:00',20),(5623,4466503,'2008-12-09 10:55:00',18),(5624,4466521,'2008-12-09 11:00:00',18),(5625,4466537,'2008-12-09 11:05:00',16),(5626,4466553,'2008-12-09 11:10:00',16),(5627,4466565,'2008-12-09 11:15:00',12),(5628,4466577,'2008-12-09 11:20:00',12),(5629,4466587,'2008-12-09 11:25:00',10),(5630,4466599,'2008-12-09 11:30:00',12),(5631,4466611,'2008-12-09 11:35:00',12),(5632,4466622,'2008-12-09 11:40:00',11),(5633,4466634,'2008-12-09 11:45:00',12),(5634,4466646,'2008-12-09 11:50:00',12),(5635,4466658,'2008-12-09 11:55:00',12),(5636,4466668,'2008-12-09 12:00:00',10),(5637,4466680,'2008-12-09 12:05:00',12),(5638,4466697,'2008-12-09 12:10:00',17),(5639,4466712,'2008-12-09 12:15:00',15),(5640,4466755,'2008-12-09 12:20:00',43),(5641,4466829,'2008-12-09 12:25:00',74),(5642,4466843,'2008-12-09 12:30:00',14),(5643,4466859,'2008-12-09 12:35:00',16),(5644,4466876,'2008-12-09 12:40:00',17),(5645,4466892,'2008-12-09 12:45:00',16),(5646,4466905,'2008-12-09 12:50:00',13),(5647,4466916,'2008-12-09 12:55:00',11),(5648,4466928,'2008-12-09 13:00:00',12),(5649,4466940,'2008-12-09 13:05:00',12),(5650,4466958,'2008-12-09 13:10:00',18),(5651,4466977,'2008-12-09 13:15:00',19),(5652,4466995,'2008-12-09 13:20:00',18),(5653,4467013,'2008-12-09 13:25:00',18),(5654,4467028,'2008-12-09 13:30:00',15),(5655,4467040,'2008-12-09 13:35:00',12),(5656,4467052,'2008-12-09 13:40:00',12),(5657,4467062,'2008-12-09 13:45:00',10),(5658,4467074,'2008-12-09 13:50:00',12),(5659,4467086,'2008-12-09 13:55:00',12),(5660,4467098,'2008-12-09 14:00:00',12),(5661,4467109,'2008-12-09 14:05:00',11),(5662,4467121,'2008-12-09 14:10:00',12),(5663,4467132,'2008-12-09 14:15:00',11),(5664,4467143,'2008-12-09 14:20:00',11),(5665,4467155,'2008-12-09 14:25:00',12),(5666,4467167,'2008-12-09 14:30:00',12),(5667,4467179,'2008-12-09 14:35:00',12),(5668,4467190,'2008-12-09 14:40:00',11),(5669,4467201,'2008-12-09 14:45:00',11),(5670,4467213,'2008-12-09 14:50:00',12),(5671,4467224,'2008-12-09 14:55:00',11),(5672,4467236,'2008-12-09 15:00:00',12),(5673,4467248,'2008-12-09 15:05:00',12),(5674,4467263,'2008-12-09 15:10:00',15),(5675,4467278,'2008-12-09 15:15:00',15),(5676,4467295,'2008-12-09 15:20:00',17),(5677,4467312,'2008-12-09 15:25:00',17),(5678,4467333,'2008-12-09 15:30:00',21),(5679,4467352,'2008-12-09 15:35:00',19),(5680,4467375,'2008-12-09 15:40:00',23),(5681,4467398,'2008-12-09 15:45:00',23),(5682,4467418,'2008-12-09 15:50:00',20),(5683,4467433,'2008-12-09 15:55:00',15),(5684,4467529,'2008-12-09 16:00:00',96),(5685,4467541,'2008-12-09 16:05:00',12),(5686,4467552,'2008-12-09 16:10:00',11),(5687,4467564,'2008-12-09 16:15:00',12),(5688,4467576,'2008-12-09 16:20:00',12),(5689,4467586,'2008-12-09 16:25:00',10),(5690,4467598,'2008-12-09 16:30:00',12),(5691,4467610,'2008-12-09 16:35:00',12),(5692,4467622,'2008-12-09 16:40:00',12),(5693,4467632,'2008-12-09 16:45:00',10),(5694,4467644,'2008-12-09 16:50:00',12),(5695,4467656,'2008-12-09 16:55:00',12),(5696,4467666,'2008-12-09 17:00:00',10),(5697,4467677,'2008-12-09 17:05:00',11),(5698,4467690,'2008-12-09 17:10:00',13),(5699,4467707,'2008-12-09 17:15:00',17),(5700,4467722,'2008-12-09 17:20:00',15),(5701,4467738,'2008-12-09 17:25:00',16),(5702,4467754,'2008-12-09 17:30:00',16),(5703,4467765,'2008-12-09 17:35:00',11),(5704,4467782,'2008-12-09 17:40:00',17),(5705,4467799,'2008-12-09 17:45:00',17),(5706,4467819,'2008-12-09 17:50:00',20),(5707,4467840,'2008-12-09 17:55:00',21),(5708,4467858,'2008-12-09 18:00:00',18),(5709,4467877,'2008-12-09 18:05:00',19),(5710,4467893,'2008-12-09 18:10:00',16),(5711,4467908,'2008-12-09 18:15:00',15),(5712,4467921,'2008-12-09 18:20:00',13),(5713,4467933,'2008-12-09 18:25:00',12),(5714,4467944,'2008-12-09 18:30:00',11),(5715,4467957,'2008-12-09 18:35:00',13),(5716,4467969,'2008-12-09 18:40:00',12),(5717,4467980,'2008-12-09 18:45:00',11),(5718,4467993,'2008-12-09 18:50:00',13),(5719,4468006,'2008-12-09 18:55:00',13),(5720,4468046,'2008-12-09 19:00:00',40),(5721,4468088,'2008-12-09 19:05:00',42),(5722,4468148,'2008-12-09 19:10:00',60),(5723,4468206,'2008-12-09 19:15:00',58),(5724,4468265,'2008-12-09 19:20:00',59),(5725,4468317,'2008-12-09 19:25:00',52),(5726,4468376,'2008-12-09 19:30:00',59),(5727,4468435,'2008-12-09 19:35:00',59),(5728,4468571,'2008-12-09 19:40:00',136),(5729,4468630,'2008-12-09 19:45:00',59),(5730,4468688,'2008-12-09 19:50:00',58),(5731,4468746,'2008-12-09 19:55:00',58),(5732,4468798,'2008-12-09 20:00:00',52),(5733,4468864,'2008-12-09 20:05:00',66),(5734,4468929,'2008-12-09 20:10:00',65),(5735,4468987,'2008-12-09 20:15:00',58),(5736,4469051,'2008-12-09 20:20:00',64),(5737,4469113,'2008-12-09 20:25:00',62),(5738,4469171,'2008-12-09 20:30:00',58),(5739,4469223,'2008-12-09 20:35:00',52),(5740,4469280,'2008-12-09 20:40:00',57),(5741,4469337,'2008-12-09 20:45:00',57),(5742,4469389,'2008-12-09 20:50:00',52),(5743,4469479,'2008-12-09 20:55:00',90),(5744,4469539,'2008-12-09 21:00:00',60),(5745,4469598,'2008-12-09 21:05:00',59),(5746,4469651,'2008-12-09 21:10:00',53),(5747,4469710,'2008-12-09 21:15:00',59),(5748,4469770,'2008-12-09 21:20:00',60),(5749,4469829,'2008-12-09 21:25:00',59),(5750,4469882,'2008-12-09 21:30:00',53),(5751,4469950,'2008-12-09 21:35:00',68),(5752,4470000,'2008-12-09 21:40:00',50),(5753,4470043,'2008-12-09 21:45:00',43),(5754,4470091,'2008-12-09 21:50:00',48),(5755,4470139,'2008-12-09 21:55:00',48),(5756,4470187,'2008-12-09 22:00:00',48),(5757,4470235,'2008-12-09 22:05:00',48),(5758,4470290,'2008-12-09 22:10:00',55),(5759,4470344,'2008-12-09 22:15:00',54),(5760,4470393,'2008-12-09 22:20:00',49),(5761,4470450,'2008-12-09 22:25:00',57),(5762,4470507,'2008-12-09 22:30:00',57),(5763,4470564,'2008-12-09 22:35:00',57),(5764,4470615,'2008-12-09 22:40:00',51),(5765,4470672,'2008-12-09 22:45:00',57),(5766,4470742,'2008-12-09 22:50:00',70),(5767,4470795,'2008-12-09 22:55:00',53),(5768,4470853,'2008-12-09 23:00:00',58),(5769,4470910,'2008-12-09 23:05:00',57),(5770,4470977,'2008-12-09 23:10:00',67),(5771,4471024,'2008-12-09 23:15:00',47),(5772,4471071,'2008-12-09 23:20:00',47),(5773,4471123,'2008-12-09 23:25:00',52),(5774,4471175,'2008-12-09 23:30:00',52),(5775,4471308,'2008-12-09 23:35:00',133),(5776,4471360,'2008-12-09 23:40:00',52),(5777,4471412,'2008-12-09 23:45:00',52),(5778,4471447,'2008-12-09 23:50:00',35),(5779,4471468,'2008-12-09 23:55:00',21),(5780,4471488,'2008-12-10 00:00:00',20),(5781,4471513,'2008-12-10 00:05:00',25),(5782,4471538,'2008-12-10 00:10:00',25),(5783,4471565,'2008-12-10 00:15:00',27),(5784,4471592,'2008-12-10 00:20:00',27),(5785,4471615,'2008-12-10 00:25:00',23),(5786,4471638,'2008-12-10 00:30:00',23),(5787,4471659,'2008-12-10 00:35:00',21),(5788,4471679,'2008-12-10 00:40:00',20),(5789,4471697,'2008-12-10 00:45:00',18),(5790,4471718,'2008-12-10 00:50:00',21),(5791,4471738,'2008-12-10 00:55:00',20),(5792,4471756,'2008-12-10 01:00:00',18),(5793,4471777,'2008-12-10 01:05:00',21),(5794,4471798,'2008-12-10 01:10:00',21),(5795,4471820,'2008-12-10 01:15:00',22),(5796,4471838,'2008-12-10 01:20:00',18),(5797,4471859,'2008-12-10 01:25:00',21),(5798,4471879,'2008-12-10 01:30:00',20),(5799,4471900,'2008-12-10 01:35:00',21),(5800,4471918,'2008-12-10 01:40:00',18),(5801,4471939,'2008-12-10 01:45:00',21),(5802,4471960,'2008-12-10 01:50:00',21),(5803,4471978,'2008-12-10 01:55:00',18),(5804,4471999,'2008-12-10 02:00:00',21),(5805,4472019,'2008-12-10 02:05:00',20),(5806,4472040,'2008-12-10 02:10:00',21),(5807,4472065,'2008-12-10 02:15:00',25),(5808,4472093,'2008-12-10 02:20:00',28),(5809,4472119,'2008-12-10 02:25:00',26),(5810,4472168,'2008-12-10 02:35:00',49),(5811,4472181,'2008-12-10 02:40:00',13),(5812,4472193,'2008-12-10 02:45:00',12),(5813,4472204,'2008-12-10 02:50:00',11),(5814,4472217,'2008-12-10 02:55:00',13),(5815,4472229,'2008-12-10 03:00:00',12),(5816,4472240,'2008-12-10 03:05:00',11),(5817,4472253,'2008-12-10 03:10:00',13),(5818,4472271,'2008-12-10 03:15:00',18),(5819,4472364,'2008-12-10 03:20:00',93),(5820,4472375,'2008-12-10 03:25:00',11),(5821,4472387,'2008-12-10 03:30:00',12),(5822,4472400,'2008-12-10 03:35:00',13),(5823,4472411,'2008-12-10 03:40:00',11),(5824,4472423,'2008-12-10 03:45:00',12),(5825,4472436,'2008-12-10 03:50:00',13),(5826,4472448,'2008-12-10 03:55:00',12),(5827,4472459,'2008-12-10 04:00:00',11),(5828,4472472,'2008-12-10 04:05:00',13),(5829,4472484,'2008-12-10 04:10:00',12),(5830,4472497,'2008-12-10 04:15:00',13),(5831,4472508,'2008-12-10 04:20:00',11),(5832,4472521,'2008-12-10 04:25:00',13),(5833,4472540,'2008-12-10 04:30:00',19),(5834,4472557,'2008-12-10 04:35:00',17),(5835,4472576,'2008-12-10 04:40:00',19),(5836,4472595,'2008-12-10 04:45:00',19),(5837,4472613,'2008-12-10 04:50:00',18),(5838,4472624,'2008-12-10 04:55:00',11),(5839,4472637,'2008-12-10 05:00:00',13),(5840,4472649,'2008-12-10 05:05:00',12),(5841,4472660,'2008-12-10 05:10:00',11),(5842,4472673,'2008-12-10 05:15:00',13),(5843,4472685,'2008-12-10 05:20:00',12),(5844,4472698,'2008-12-10 05:25:00',13),(5845,4472709,'2008-12-10 05:30:00',11),(5846,4472721,'2008-12-10 05:35:00',12),(5847,4472734,'2008-12-10 05:40:00',13),(5848,4472745,'2008-12-10 05:45:00',11),(5849,4472758,'2008-12-10 05:50:00',13),(5850,4472770,'2008-12-10 05:55:00',12),(5851,4472782,'2008-12-10 06:00:00',12),(5852,4472794,'2008-12-10 06:05:00',12),(5853,4472806,'2008-12-10 06:10:00',12),(5854,4472818,'2008-12-10 06:15:00',12),(5855,4472830,'2008-12-10 06:20:00',12),(5856,4472842,'2008-12-10 06:25:00',12),(5857,4472854,'2008-12-10 06:30:00',12),(5858,4472866,'2008-12-10 06:35:00',12),(5859,4472877,'2008-12-10 06:40:00',11),(5860,4472889,'2008-12-10 06:45:00',12),(5861,4472909,'2008-12-10 06:50:00',20),(5862,4472926,'2008-12-10 06:55:00',17),(5863,4473029,'2008-12-10 07:00:00',103),(5864,4473047,'2008-12-10 07:05:00',18),(5865,4473065,'2008-12-10 07:10:00',18),(5866,4473078,'2008-12-10 07:15:00',13),(5867,4473093,'2008-12-10 07:20:00',15),(5868,4473119,'2008-12-10 07:25:00',26),(5869,4473146,'2008-12-10 07:30:00',27),(5870,4473168,'2008-12-10 07:35:00',22),(5871,4473195,'2008-12-10 07:40:00',27),(5872,4473221,'2008-12-10 07:45:00',26),(5873,4473254,'2008-12-10 07:50:00',33),(5874,4473275,'2008-12-10 07:55:00',21),(5875,4473287,'2008-12-10 08:00:00',12),(5876,4473299,'2008-12-10 08:05:00',12),(5877,4473310,'2008-12-10 08:10:00',11),(5878,4473322,'2008-12-10 08:15:00',12),(5879,4473334,'2008-12-10 08:20:00',12),(5880,4473345,'2008-12-10 08:25:00',11),(5881,4473357,'2008-12-10 08:30:00',12),(5882,4473369,'2008-12-10 08:35:00',12),(5883,4473381,'2008-12-10 08:40:00',12),(5884,4473392,'2008-12-10 08:45:00',11),(5885,4473404,'2008-12-10 08:50:00',12),(5886,4473416,'2008-12-10 08:55:00',12),(5887,4473430,'2008-12-10 09:00:00',14),(5888,4473446,'2008-12-10 09:05:00',16),(5889,4473470,'2008-12-10 09:10:00',24),(5890,4473494,'2008-12-10 09:15:00',24),(5891,4473516,'2008-12-10 09:20:00',22),(5892,4473539,'2008-12-10 09:25:00',23),(5893,4473560,'2008-12-10 09:30:00',21),(5894,4473575,'2008-12-10 09:35:00',15),(5895,4473591,'2008-12-10 09:40:00',16),(5896,4473606,'2008-12-10 09:45:00',15),(5897,4473618,'2008-12-10 09:50:00',12),(5898,4473629,'2008-12-10 09:55:00',11),(5899,4473641,'2008-12-10 10:00:00',12),(5900,4473653,'2008-12-10 10:05:00',12),(5901,4473665,'2008-12-10 10:10:00',12),(5902,4473676,'2008-12-10 10:15:00',11),(5903,4473688,'2008-12-10 10:20:00',12),(5904,4473700,'2008-12-10 10:25:00',12),(5905,4473711,'2008-12-10 10:30:00',11),(5906,4473810,'2008-12-10 10:35:00',99),(5907,4473822,'2008-12-10 10:40:00',12),(5908,4473834,'2008-12-10 10:45:00',12),(5909,4473845,'2008-12-10 10:50:00',11),(5910,4473857,'2008-12-10 10:55:00',12),(5911,4473868,'2008-12-10 11:00:00',11),(5912,4473880,'2008-12-10 11:05:00',12),(5913,4473891,'2008-12-10 11:10:00',11),(5914,4473903,'2008-12-10 11:15:00',12),(5915,4473915,'2008-12-10 11:20:00',12),(5916,4473930,'2008-12-10 11:25:00',15),(5917,4473950,'2008-12-10 11:30:00',20),(5918,4473977,'2008-12-10 11:35:00',27),(5919,4474000,'2008-12-10 11:40:00',23),(5920,4474020,'2008-12-10 11:45:00',20),(5921,4474038,'2008-12-10 11:50:00',18),(5922,4474051,'2008-12-10 11:55:00',13),(5923,4474061,'2008-12-10 12:00:00',10),(5924,4474073,'2008-12-10 12:05:00',12),(5925,4474085,'2008-12-10 12:10:00',12),(5926,4474097,'2008-12-10 12:15:00',12),(5927,4474108,'2008-12-10 12:20:00',11),(5928,4474120,'2008-12-10 12:25:00',12),(5929,4474132,'2008-12-10 12:30:00',12),(5930,4474144,'2008-12-10 12:35:00',12),(5931,4474155,'2008-12-10 12:40:00',11),(5932,4474167,'2008-12-10 12:45:00',12),(5933,4474178,'2008-12-10 12:50:00',11),(5934,4474189,'2008-12-10 12:55:00',11),(5935,4474201,'2008-12-10 13:00:00',12),(5936,4474213,'2008-12-10 13:05:00',12),(5937,4474225,'2008-12-10 13:10:00',12),(5938,4474236,'2008-12-10 13:15:00',11),(5939,4474247,'2008-12-10 13:20:00',11),(5940,4474259,'2008-12-10 13:25:00',12),(5941,4474270,'2008-12-10 13:30:00',11),(5942,4474282,'2008-12-10 13:35:00',12),(5943,4474298,'2008-12-10 13:40:00',16),(5944,4474315,'2008-12-10 13:45:00',17),(5945,4474335,'2008-12-10 13:50:00',20),(5946,4474358,'2008-12-10 13:55:00',23),(5947,4474377,'2008-12-10 14:00:00',19),(5948,4474398,'2008-12-10 14:05:00',21),(5949,4474420,'2008-12-10 14:10:00',22),(5950,4474433,'2008-12-10 14:15:00',13),(5951,4474495,'2008-12-10 14:20:00',62),(5952,4474549,'2008-12-10 14:25:00',54),(5953,4474561,'2008-12-10 14:30:00',12),(5954,4474573,'2008-12-10 14:35:00',12),(5955,4474584,'2008-12-10 14:40:00',11),(5956,4474595,'2008-12-10 14:45:00',11),(5957,4474768,'2008-12-10 16:00:00',173),(5958,4474833,'2008-12-10 16:20:00',65),(5959,4474956,'2008-12-10 16:55:00',123),(5960,4474972,'2008-12-10 17:10:00',16),(5961,4475018,'2008-12-10 17:15:00',46),(5962,4475032,'2008-12-10 17:20:00',14),(5963,4475042,'2008-12-10 17:25:00',10),(5964,4475066,'2008-12-10 17:35:00',24),(5965,4475077,'2008-12-10 17:40:00',11),(5966,4475090,'2008-12-10 17:50:00',13),(5967,4475112,'2008-12-10 17:55:00',22),(5968,4475123,'2008-12-10 18:00:00',11),(5969,4475136,'2008-12-10 18:05:00',13),(5970,4475148,'2008-12-10 18:10:00',12),(5971,4475160,'2008-12-10 18:15:00',12),(5972,4475195,'2008-12-10 18:20:00',35),(5973,4475269,'2008-12-10 18:25:00',74),(5974,4475305,'2008-12-10 18:30:00',36),(5975,4475360,'2008-12-10 18:35:00',55),(5976,4475428,'2008-12-10 18:40:00',68),(5977,4475496,'2008-12-10 18:45:00',68),(5978,4475562,'2008-12-10 18:50:00',66),(5979,4475619,'2008-12-10 18:55:00',57),(5980,4475680,'2008-12-10 19:00:00',61),(5981,4475763,'2008-12-10 19:05:00',83),(5982,4475914,'2008-12-10 19:10:00',151),(5983,4476120,'2008-12-10 19:15:02',206),(5984,4476333,'2008-12-10 19:20:00',213),(5985,4476466,'2008-12-10 19:25:00',133),(5986,4476533,'2008-12-10 19:30:00',67),(5987,4476604,'2008-12-10 19:35:00',71),(5988,4476636,'2008-12-10 19:40:00',32),(5989,4476664,'2008-12-10 19:45:00',28),(5990,4476700,'2008-12-10 19:50:00',36),(5991,4476736,'2008-12-10 19:55:00',36),(5992,4476767,'2008-12-10 20:00:00',31),(5993,4476802,'2008-12-10 20:05:00',35),(5994,4476837,'2008-12-10 20:10:00',35),(5995,4476875,'2008-12-10 20:15:00',38),(5996,4476906,'2008-12-10 20:20:00',31),(5997,4476936,'2008-12-10 20:25:00',30),(5998,4477029,'2008-12-10 20:35:00',93),(5999,4477124,'2008-12-10 20:50:00',95),(6000,4477312,'2008-12-10 21:25:00',188),(6001,4477562,'2008-12-10 22:15:00',250),(6002,4477587,'2008-12-10 22:20:00',25),(6003,4477613,'2008-12-10 22:25:00',26),(6004,4477636,'2008-12-10 22:30:00',23),(6005,4477662,'2008-12-10 22:35:00',26),(6006,4477692,'2008-12-10 22:40:00',30),(6007,4477722,'2008-12-10 22:45:00',30),(6008,4477755,'2008-12-10 22:50:00',33),(6009,4477787,'2008-12-10 22:55:00',32),(6010,4477819,'2008-12-10 23:00:00',32),(6011,4477844,'2008-12-10 23:05:00',25),(6012,4477866,'2008-12-10 23:10:00',22),(6013,4477887,'2008-12-10 23:15:00',21),(6014,4477906,'2008-12-10 23:20:00',19),(6015,4477927,'2008-12-10 23:25:00',21),(6016,4477948,'2008-12-10 23:30:00',21),(6017,4477969,'2008-12-10 23:35:00',21),(6018,4477988,'2008-12-10 23:40:00',19),(6019,4478009,'2008-12-10 23:45:00',21),(6020,4478029,'2008-12-10 23:50:00',20),(6021,4478050,'2008-12-10 23:55:00',21),(6022,4478069,'2008-12-11 00:00:00',19),(6023,4478089,'2008-12-11 00:05:00',20),(6024,4478110,'2008-12-11 00:10:00',21),(6025,4478128,'2008-12-11 00:15:00',18),(6026,4478149,'2008-12-11 00:20:00',21),(6027,4478170,'2008-12-11 00:25:00',21),(6028,4478191,'2008-12-11 00:30:00',21),(6029,4478210,'2008-12-11 00:35:00',19),(6030,4478228,'2008-12-11 00:40:00',18),(6031,4478257,'2008-12-11 00:45:00',29),(6032,4478282,'2008-12-11 00:50:00',25),(6033,4478310,'2008-12-11 00:55:00',28),(6034,4478339,'2008-12-11 01:00:00',29),(6035,4478366,'2008-12-11 01:05:00',27),(6036,4478387,'2008-12-11 01:10:00',21),(6037,4478409,'2008-12-11 01:15:00',22),(6038,4478433,'2008-12-11 01:20:00',24),(6039,4478452,'2008-12-11 01:25:00',19),(6040,4478466,'2008-12-11 01:30:00',14),(6041,4478479,'2008-12-11 01:35:00',13),(6042,4478492,'2008-12-11 01:40:00',13),(6043,4478503,'2008-12-11 01:45:00',11),(6044,4478516,'2008-12-11 01:50:00',13),(6045,4478528,'2008-12-11 01:55:00',12),(6046,4478541,'2008-12-11 02:00:00',13),(6047,4478552,'2008-12-11 02:05:00',11),(6048,4478565,'2008-12-11 02:10:00',13),(6049,4478578,'2008-12-11 02:15:00',13),(6050,4478589,'2008-12-11 02:20:00',11),(6051,4478602,'2008-12-11 02:25:00',13),(6052,4478615,'2008-12-11 02:30:00',13),(6053,4478628,'2008-12-11 02:35:00',13),(6054,4478639,'2008-12-11 02:40:00',11),(6055,4478652,'2008-12-11 02:45:00',13),(6056,4478665,'2008-12-11 02:50:00',13),(6057,4478679,'2008-12-11 02:55:00',14),(6058,4478700,'2008-12-11 03:00:00',21),(6059,4478719,'2008-12-11 03:05:00',19),(6060,4478738,'2008-12-11 03:10:00',19),(6061,4478755,'2008-12-11 03:15:00',17),(6062,4478771,'2008-12-11 03:20:00',16),(6063,4478784,'2008-12-11 03:25:00',13),(6064,4478797,'2008-12-11 03:30:00',13),(6065,4478809,'2008-12-11 03:35:00',12),(6066,4478821,'2008-12-11 03:40:00',12),(6067,4478834,'2008-12-11 03:45:00',13),(6068,4478845,'2008-12-11 03:50:00',11),(6069,4478859,'2008-12-11 03:55:00',14),(6070,4478872,'2008-12-11 04:00:00',13),(6071,4478885,'2008-12-11 04:05:00',13),(6072,4478896,'2008-12-11 04:10:00',11),(6073,4478909,'2008-12-11 04:15:00',13),(6074,4478922,'2008-12-11 04:20:00',13),(6075,4478934,'2008-12-11 04:25:00',12),(6076,4478947,'2008-12-11 04:30:00',13),(6077,4478959,'2008-12-11 04:35:00',12),(6078,4478972,'2008-12-11 04:40:00',13),(6079,4478984,'2008-12-11 04:45:00',12),(6080,4478997,'2008-12-11 04:50:00',13),(6081,4479010,'2008-12-11 04:55:00',13),(6082,4479021,'2008-12-11 05:00:00',11),(6083,4479034,'2008-12-11 05:05:00',13),(6084,4479048,'2008-12-11 05:10:00',14),(6085,4479068,'2008-12-11 05:15:00',20),(6086,4479086,'2008-12-11 05:20:00',18),(6087,4479105,'2008-12-11 05:25:00',19),(6088,4479123,'2008-12-11 05:30:00',18),(6089,4479140,'2008-12-11 05:35:00',17),(6090,4479152,'2008-12-11 05:40:00',12),(6091,4479164,'2008-12-11 05:45:00',12),(6092,4479177,'2008-12-11 05:50:00',13),(6093,4479189,'2008-12-11 05:55:00',12),(6094,4479201,'2008-12-11 06:00:00',12),(6095,4479214,'2008-12-11 06:05:00',13),(6096,4479226,'2008-12-11 06:10:00',12),(6097,4479238,'2008-12-11 06:15:00',12),(6098,4479250,'2008-12-11 06:20:00',12),(6099,4479261,'2008-12-11 06:25:00',11),(6100,4479274,'2008-12-11 06:30:00',13),(6101,4479285,'2008-12-11 06:35:00',11),(6102,4479298,'2008-12-11 06:40:00',13),(6103,4479310,'2008-12-11 06:45:00',12),(6104,4479322,'2008-12-11 06:50:00',12),(6105,4479334,'2008-12-11 06:55:00',12),(6106,4479347,'2008-12-11 07:00:00',13),(6107,4479359,'2008-12-11 07:05:00',12),(6108,4479373,'2008-12-11 07:10:00',14),(6109,4479389,'2008-12-11 07:15:00',16),(6110,4479404,'2008-12-11 07:20:00',15),(6111,4479418,'2008-12-11 07:25:00',14),(6112,4479435,'2008-12-11 07:30:00',17),(6113,4479463,'2008-12-11 07:35:00',28),(6114,4479490,'2008-12-11 07:40:00',27),(6115,4479527,'2008-12-11 07:45:00',37),(6116,4479555,'2008-12-11 07:50:00',28),(6117,4479582,'2008-12-11 07:55:00',27),(6118,4479600,'2008-12-11 08:00:00',18),(6119,4479614,'2008-12-11 08:05:00',14),(6120,4479627,'2008-12-11 08:10:00',13),(6121,4479640,'2008-12-11 08:15:00',13),(6122,4479652,'2008-12-11 08:20:00',12),(6123,4479664,'2008-12-11 08:25:00',12),(6124,4479676,'2008-12-11 08:30:00',12),(6125,4479687,'2008-12-11 08:35:00',11),(6126,4479699,'2008-12-11 08:40:00',12),(6127,4479711,'2008-12-11 08:45:00',12),(6128,4479723,'2008-12-11 08:50:00',12),(6129,4479734,'2008-12-11 08:55:00',11),(6130,4479745,'2008-12-11 09:00:00',11),(6131,4479758,'2008-12-11 09:05:00',13),(6132,4479769,'2008-12-11 09:10:00',11),(6133,4479781,'2008-12-11 09:15:00',12),(6134,4479793,'2008-12-11 09:20:00',12),(6135,4479805,'2008-12-11 09:25:00',12),(6136,4479816,'2008-12-11 09:30:00',11),(6137,4479828,'2008-12-11 09:35:00',12),(6138,4479845,'2008-12-11 09:40:00',17),(6139,4480006,'2008-12-11 10:25:00',161),(6140,4480257,'2008-12-11 12:10:00',251),(6141,4480278,'2008-12-11 12:15:00',21),(6142,4480303,'2008-12-11 12:20:00',25),(6143,4480320,'2008-12-11 12:25:00',17),(6144,4480343,'2008-12-11 12:30:00',23),(6145,4480366,'2008-12-11 12:35:00',23),(6146,4480383,'2008-12-11 12:40:00',17),(6147,4480397,'2008-12-11 12:45:00',14),(6148,4480409,'2008-12-11 12:50:00',12),(6149,4480421,'2008-12-11 12:55:00',12),(6150,4480432,'2008-12-11 13:00:00',11),(6151,4480444,'2008-12-11 13:05:00',12),(6152,4480456,'2008-12-11 13:10:00',12),(6153,4480468,'2008-12-11 13:15:00',12),(6154,4480479,'2008-12-11 13:20:00',11),(6155,4480491,'2008-12-11 13:25:00',12),(6156,4480503,'2008-12-11 13:30:00',12),(6157,4480514,'2008-12-11 13:35:00',11),(6158,4481023,'2008-12-11 16:45:00',509),(6159,4481034,'2008-12-11 16:50:00',11),(6160,4481050,'2008-12-11 16:55:00',16),(6161,4481069,'2008-12-11 17:00:00',19),(6162,4481089,'2008-12-11 17:05:00',20),(6163,4481112,'2008-12-11 17:10:00',23),(6164,4481134,'2008-12-11 17:15:00',22),(6165,4481152,'2008-12-11 17:20:00',18),(6166,4481164,'2008-12-11 17:25:00',12),(6167,4481180,'2008-12-11 17:30:00',16),(6168,4481197,'2008-12-11 17:35:00',17),(6169,4481213,'2008-12-11 17:40:00',16),(6170,4481226,'2008-12-11 17:45:00',13),(6171,4481238,'2008-12-11 17:50:00',12),(6172,4481250,'2008-12-11 17:55:00',12),(6173,4481260,'2008-12-11 18:00:00',10),(6174,4481278,'2008-12-11 18:05:00',18),(6175,4481295,'2008-12-11 18:10:00',17),(6176,4481309,'2008-12-11 18:15:00',14),(6177,4481320,'2008-12-11 18:20:00',11),(6178,4481333,'2008-12-11 18:25:00',13),(6179,4481345,'2008-12-11 18:30:00',12),(6180,4481356,'2008-12-11 18:35:00',11),(6181,4481369,'2008-12-11 18:40:00',13),(6182,4481399,'2008-12-11 18:45:00',30),(6183,4481610,'2008-12-11 18:50:00',211),(6184,4481767,'2008-12-11 18:55:00',157),(6185,4481963,'2008-12-11 19:00:00',196),(6186,4482017,'2008-12-11 19:05:00',54),(6187,4482069,'2008-12-11 19:10:00',52),(6188,4482135,'2008-12-11 19:15:00',66),(6189,4482201,'2008-12-11 19:20:00',66),(6190,4482265,'2008-12-11 19:25:00',64),(6191,4482323,'2008-12-11 19:30:00',58),(6192,4482381,'2008-12-11 19:35:00',58),(6193,4482440,'2008-12-11 19:40:00',59),(6194,4482472,'2008-12-11 19:45:00',32),(6195,4482499,'2008-12-11 19:50:00',27),(6196,4482528,'2008-12-11 19:55:00',29),(6197,4482555,'2008-12-11 20:00:00',27),(6198,4482588,'2008-12-11 20:05:00',33),(6199,4482620,'2008-12-11 20:10:00',32),(6200,4482638,'2008-12-11 20:15:00',18),(6201,4482653,'2008-12-11 20:20:00',15),(6202,4482671,'2008-12-11 20:25:00',18),(6203,4482688,'2008-12-11 20:30:00',17),(6204,4482705,'2008-12-11 20:35:00',17),(6205,4482720,'2008-12-11 20:40:00',15),(6206,4482737,'2008-12-11 20:45:00',17),(6207,4482754,'2008-12-11 20:50:00',17),(6208,4482771,'2008-12-11 20:55:00',17),(6209,4482787,'2008-12-11 21:00:00',16),(6210,4482804,'2008-12-11 21:05:00',17),(6211,4482821,'2008-12-11 21:10:00',17),(6212,4482837,'2008-12-11 21:15:00',16),(6213,4482860,'2008-12-11 21:20:00',23),(6214,4482885,'2008-12-11 21:25:00',25),(6215,4482909,'2008-12-11 21:30:00',24),(6216,4482930,'2008-12-11 21:35:00',21),(6217,4482953,'2008-12-11 21:40:00',23),(6218,4482972,'2008-12-11 21:45:00',19),(6219,4482988,'2008-12-11 21:50:00',16),(6220,4483005,'2008-12-11 21:55:00',17),(6221,4483023,'2008-12-11 22:00:00',18),(6222,4483041,'2008-12-11 22:05:00',18),(6223,4483057,'2008-12-11 22:10:00',16),(6224,4483075,'2008-12-11 22:15:00',18),(6225,4483092,'2008-12-11 22:20:00',17),(6226,4483110,'2008-12-11 22:25:00',18),(6227,4483126,'2008-12-11 22:30:00',16),(6228,4483141,'2008-12-11 22:35:00',15),(6229,4483161,'2008-12-11 22:40:00',20),(6230,4483177,'2008-12-11 22:45:00',16),(6231,4483194,'2008-12-11 22:50:00',17),(6232,4483212,'2008-12-11 22:55:00',18),(6233,4483228,'2008-12-11 23:00:00',16),(6234,4483245,'2008-12-11 23:05:00',17),(6235,4483259,'2008-12-11 23:10:00',14),(6236,4483271,'2008-12-11 23:15:00',12),(6237,4483287,'2008-12-11 23:20:00',16),(6238,4483307,'2008-12-11 23:25:00',20),(6239,4483326,'2008-12-11 23:30:00',19),(6240,4483345,'2008-12-11 23:35:00',19),(6241,4483361,'2008-12-11 23:40:00',16),(6242,4483376,'2008-12-11 23:45:00',15),(6243,4483388,'2008-12-11 23:50:00',12),(6244,4483401,'2008-12-11 23:55:00',13),(6245,4483412,'2008-12-12 00:00:00',11),(6246,4483425,'2008-12-12 00:05:00',13),(6247,4483437,'2008-12-12 00:10:00',12),(6248,4483449,'2008-12-12 00:15:00',12),(6249,4483461,'2008-12-12 00:20:00',12),(6250,4483474,'2008-12-12 00:25:00',13),(6251,4483487,'2008-12-12 00:30:00',13),(6252,4483498,'2008-12-12 00:35:00',11),(6253,4483511,'2008-12-12 00:40:00',13),(6254,4483523,'2008-12-12 00:45:00',12),(6255,4483535,'2008-12-12 00:50:00',12),(6256,4483547,'2008-12-12 00:55:00',12),(6257,4483560,'2008-12-12 01:00:00',13),(6258,4483572,'2008-12-12 01:05:00',12),(6259,4483584,'2008-12-12 01:10:00',12),(6260,4483595,'2008-12-12 01:15:00',11),(6261,4483608,'2008-12-12 01:20:00',13),(6262,4483620,'2008-12-12 01:25:00',12),(6263,4483640,'2008-12-12 01:30:00',20),(6264,4483660,'2008-12-12 01:35:00',20),(6265,4483678,'2008-12-12 01:40:00',18),(6266,4483695,'2008-12-12 01:45:00',17),(6267,4483713,'2008-12-12 01:50:00',18),(6268,4483726,'2008-12-12 01:55:00',13),(6269,4483738,'2008-12-12 02:00:00',12),(6270,4483750,'2008-12-12 02:05:00',12),(6271,4483762,'2008-12-12 02:10:00',12),(6272,4483775,'2008-12-12 02:15:00',13),(6273,4483786,'2008-12-12 02:20:00',11),(6274,4483799,'2008-12-12 02:25:00',13),(6275,4483812,'2008-12-12 02:30:00',13),(6276,4483824,'2008-12-12 02:35:00',12),(6277,4483836,'2008-12-12 02:40:00',12),(6278,4483848,'2008-12-12 02:45:00',12),(6279,4483861,'2008-12-12 02:50:00',13),(6280,4483873,'2008-12-12 02:55:00',12),(6281,4483885,'2008-12-12 03:00:00',12),(6282,4483898,'2008-12-12 03:05:00',13),(6283,4483911,'2008-12-12 03:10:00',13),(6284,4483922,'2008-12-12 03:15:00',11),(6285,4483935,'2008-12-12 03:20:00',13),(6286,4483948,'2008-12-12 03:25:00',13),(6287,4483959,'2008-12-12 03:30:00',11),(6288,4483972,'2008-12-12 03:35:00',13),(6289,4483984,'2008-12-12 03:40:00',12),(6290,4484004,'2008-12-12 03:45:00',20),(6291,4484022,'2008-12-12 03:50:00',18),(6292,4484041,'2008-12-12 03:55:00',19),(6293,4484060,'2008-12-12 04:00:00',19),(6294,4484076,'2008-12-12 04:05:00',16),(6295,4484090,'2008-12-12 04:10:00',14),(6296,4484102,'2008-12-12 04:15:00',12),(6297,4484115,'2008-12-12 04:20:00',13),(6298,4484127,'2008-12-12 04:25:00',12),(6299,4484139,'2008-12-12 04:30:00',12),(6300,4484152,'2008-12-12 04:35:00',13),(6301,4484162,'2008-12-12 04:40:00',10),(6302,4484176,'2008-12-12 04:45:00',14),(6303,4484189,'2008-12-12 04:50:00',13),(6304,4484202,'2008-12-12 04:55:00',13),(6305,4484213,'2008-12-12 05:00:00',11),(6306,4484226,'2008-12-12 05:05:00',13),(6307,4484238,'2008-12-12 05:10:00',12),(6308,4484251,'2008-12-12 05:15:00',13),(6309,4484262,'2008-12-12 05:20:00',11),(6310,4484275,'2008-12-12 05:25:00',13),(6311,4484288,'2008-12-12 05:30:00',13),(6312,4484299,'2008-12-12 05:35:00',11),(6313,4484311,'2008-12-12 05:40:00',12),(6314,4484323,'2008-12-12 05:45:00',12),(6315,4484337,'2008-12-12 05:50:00',14),(6316,4484348,'2008-12-12 05:55:00',11),(6317,4484361,'2008-12-12 06:00:00',13),(6318,4484380,'2008-12-12 06:05:00',19),(6319,4484397,'2008-12-12 06:10:00',17),(6320,4484416,'2008-12-12 06:15:00',19),(6321,4484434,'2008-12-12 06:20:00',18),(6322,4484453,'2008-12-12 06:25:00',19),(6323,4484464,'2008-12-12 06:30:00',11),(6324,4484476,'2008-12-12 06:35:00',12),(6325,4484488,'2008-12-12 06:40:00',12),(6326,4484499,'2008-12-12 06:45:00',11),(6327,4484511,'2008-12-12 06:50:00',12),(6328,4484524,'2008-12-12 06:55:00',13),(6329,4484537,'2008-12-12 07:00:00',13),(6330,4484548,'2008-12-12 07:05:00',11),(6331,4484562,'2008-12-12 07:10:00',14),(6332,4484578,'2008-12-12 07:15:00',16),(6333,4484591,'2008-12-12 07:20:00',13),(6334,4484607,'2008-12-12 07:25:00',16),(6335,4484623,'2008-12-12 07:30:00',16),(6336,4484638,'2008-12-12 07:35:00',15),(6337,4484652,'2008-12-12 07:40:00',14),(6338,4484668,'2008-12-12 07:45:00',16),(6339,4484683,'2008-12-12 07:50:00',15),(6340,4484697,'2008-12-12 07:55:00',14),(6341,4484712,'2008-12-12 08:00:00',15),(6342,4484728,'2008-12-12 08:05:00',16),(6343,4484744,'2008-12-12 08:10:00',16),(6344,4484758,'2008-12-12 08:15:00',14),(6345,4484773,'2008-12-12 08:20:00',15),(6346,4484790,'2008-12-12 08:25:00',17),(6347,4484810,'2008-12-12 08:30:00',20),(6348,4484833,'2008-12-12 08:35:00',23),(6349,4484855,'2008-12-12 08:40:00',22),(6350,4484875,'2008-12-12 08:45:00',20),(6351,4484889,'2008-12-12 08:50:00',14),(6352,4484901,'2008-12-12 08:55:00',12),(6353,4484913,'2008-12-12 09:00:00',12),(6354,4484924,'2008-12-12 09:05:00',11),(6355,4484936,'2008-12-12 09:10:00',12),(6356,4484947,'2008-12-12 09:15:00',11),(6357,4484959,'2008-12-12 09:20:00',12),(6358,4484970,'2008-12-12 09:25:00',11),(6359,4484985,'2008-12-12 09:30:00',15),(6360,4484997,'2008-12-12 09:35:00',12),(6361,4485013,'2008-12-12 09:40:00',16),(6362,4485030,'2008-12-12 09:45:00',17),(6363,4485047,'2008-12-12 09:50:00',17),(6364,4485064,'2008-12-12 09:55:00',17),(6365,4485079,'2008-12-12 10:00:00',15),(6366,4485096,'2008-12-12 10:05:00',17),(6367,4485113,'2008-12-12 10:10:00',17),(6368,4485129,'2008-12-12 10:15:00',16),(6369,4485145,'2008-12-12 10:20:00',16),(6370,4485160,'2008-12-12 10:25:00',15),(6371,4485171,'2008-12-12 10:30:00',11),(6372,4485182,'2008-12-12 10:35:00',11),(6373,4485194,'2008-12-12 10:40:00',12),(6374,4485206,'2008-12-12 10:45:00',12),(6375,4485222,'2008-12-12 10:50:00',16),(6376,4485240,'2008-12-12 10:55:00',18),(6377,4485258,'2008-12-12 11:00:00',18),(6378,4485276,'2008-12-12 11:05:00',18),(6379,4485292,'2008-12-12 11:10:00',16),(6380,4485306,'2008-12-12 11:15:00',14),(6381,4485318,'2008-12-12 11:20:00',12),(6382,4485329,'2008-12-12 11:25:00',11),(6383,4485340,'2008-12-12 11:30:00',11),(6384,4485352,'2008-12-12 11:35:00',12),(6385,4485364,'2008-12-12 11:40:00',12),(6386,4485374,'2008-12-12 11:45:00',10),(6387,4485386,'2008-12-12 11:50:00',12),(6388,4485398,'2008-12-12 11:55:00',12),(6389,4485411,'2008-12-12 12:00:00',13),(6390,4485426,'2008-12-12 12:05:00',15),(6391,4485443,'2008-12-12 12:10:00',17),(6392,4485460,'2008-12-12 12:15:00',17),(6393,4485475,'2008-12-12 12:20:00',15),(6394,4485492,'2008-12-12 12:25:00',17),(6395,4485509,'2008-12-12 12:30:00',17),(6396,4485526,'2008-12-12 12:35:00',17),(6397,4485540,'2008-12-12 12:40:00',14),(6398,4485552,'2008-12-12 12:45:00',12),(6399,4485564,'2008-12-12 12:50:00',12),(6400,4485573,'2008-12-12 12:55:00',9),(6401,4485586,'2008-12-12 13:00:00',13),(6402,4485599,'2008-12-12 13:05:00',13),(6403,4485614,'2008-12-12 13:10:00',15),(6404,4485631,'2008-12-12 13:15:00',17),(6405,4485650,'2008-12-12 13:20:00',19),(6406,4485668,'2008-12-12 13:25:00',18),(6407,4485685,'2008-12-12 13:30:00',17),(6408,4485700,'2008-12-12 13:35:00',15),(6409,4485712,'2008-12-12 13:40:00',12),(6410,4485724,'2008-12-12 13:45:00',12),(6411,4485735,'2008-12-12 13:50:00',11),(6412,4485747,'2008-12-12 13:55:00',12),(6413,4485759,'2008-12-12 14:00:00',12),(6414,4485771,'2008-12-12 14:05:00',12),(6415,4485782,'2008-12-12 14:10:00',11),(6416,4485794,'2008-12-12 14:15:00',12),(6417,4485806,'2008-12-12 14:20:00',12),(6418,4485921,'2008-12-12 15:10:00',115),(6419,4486072,'2008-12-12 15:50:00',151),(6420,4486090,'2008-12-12 15:55:00',18),(6421,4486107,'2008-12-12 16:00:00',17),(6422,4486122,'2008-12-12 16:05:00',15),(6423,4486132,'2008-12-12 16:10:00',10),(6424,4486149,'2008-12-12 16:15:00',17),(6425,4486166,'2008-12-12 16:20:00',17),(6426,4486182,'2008-12-12 16:25:00',16),(6427,4486192,'2008-12-12 16:30:00',10),(6428,4486204,'2008-12-12 16:35:00',12),(6429,4486216,'2008-12-12 16:40:00',12),(6430,4486227,'2008-12-12 16:45:00',11),(6431,4486239,'2008-12-12 16:50:00',12),(6432,4486250,'2008-12-12 16:55:00',11),(6433,4486262,'2008-12-12 17:00:00',12),(6434,4486284,'2008-12-12 17:10:00',22),(6435,4486296,'2008-12-12 17:15:00',12),(6436,4486307,'2008-12-12 17:20:00',11),(6437,4486318,'2008-12-12 17:25:00',11),(6438,4486330,'2008-12-12 17:30:00',12),(6439,4486343,'2008-12-12 17:35:00',13),(6440,4486358,'2008-12-12 17:40:00',15),(6441,4486373,'2008-12-12 17:45:00',15),(6442,4486391,'2008-12-12 17:50:00',18),(6443,4486412,'2008-12-12 17:55:00',21),(6444,4486433,'2008-12-12 18:00:00',21),(6445,4486455,'2008-12-12 18:05:00',22),(6446,4486479,'2008-12-12 18:10:00',24),(6447,4486500,'2008-12-12 18:15:00',21),(6448,4486518,'2008-12-12 18:20:00',18),(6449,4486531,'2008-12-12 18:25:00',13),(6450,4486543,'2008-12-12 18:30:00',12),(6451,4486555,'2008-12-12 18:35:00',12),(6452,4486567,'2008-12-12 18:40:00',12),(6453,4486580,'2008-12-12 18:45:00',13),(6454,4486591,'2008-12-12 18:50:00',11),(6455,4486603,'2008-12-12 18:55:00',12),(6456,4486615,'2008-12-12 19:00:00',12),(6457,4486629,'2008-12-12 19:05:00',14),(6458,4486640,'2008-12-12 19:10:00',11),(6459,4486653,'2008-12-12 19:15:00',13),(6460,4486665,'2008-12-12 19:20:00',12),(6461,4486676,'2008-12-12 19:25:00',11),(6462,4486693,'2008-12-12 19:30:00',17),(6463,4486710,'2008-12-12 19:35:00',17),(6464,4486728,'2008-12-12 19:40:00',18),(6465,4486744,'2008-12-12 19:45:00',16),(6466,4486761,'2008-12-12 19:50:00',17),(6467,4486779,'2008-12-12 19:55:00',18),(6468,4486793,'2008-12-12 20:00:00',14),(6469,4486811,'2008-12-12 20:05:00',18),(6470,4486828,'2008-12-12 20:10:00',17),(6471,4486851,'2008-12-12 20:15:00',23),(6472,4486869,'2008-12-12 20:20:00',18),(6473,4486889,'2008-12-12 20:25:00',20),(6474,4486908,'2008-12-12 20:30:00',19),(6475,4486924,'2008-12-12 20:35:00',16),(6476,4486937,'2008-12-12 20:40:00',13),(6477,4486950,'2008-12-12 20:45:00',13),(6478,4486962,'2008-12-12 20:50:00',12),(6479,4486974,'2008-12-12 20:55:00',12),(6480,4486986,'2008-12-12 21:00:00',12),(6481,4486999,'2008-12-12 21:05:00',13),(6482,4487010,'2008-12-12 21:10:00',11),(6483,4487023,'2008-12-12 21:15:00',13),(6484,4487035,'2008-12-12 21:20:00',12),(6485,4487049,'2008-12-12 21:25:00',14),(6486,4487066,'2008-12-12 21:30:00',17),(6487,4487084,'2008-12-12 21:35:00',18),(6488,4487101,'2008-12-12 21:40:00',17),(6489,4487117,'2008-12-12 21:45:00',16),(6490,4487135,'2008-12-12 21:50:00',18),(6491,4487152,'2008-12-12 21:55:00',17),(6492,4487169,'2008-12-12 22:00:00',17),(6493,4487184,'2008-12-12 22:05:00',15),(6494,4487202,'2008-12-12 22:10:00',18),(6495,4487218,'2008-12-12 22:15:00',16),(6496,4487231,'2008-12-12 22:20:00',13),(6497,4487244,'2008-12-12 22:25:00',13),(6498,4487256,'2008-12-12 22:30:00',12),(6499,4487276,'2008-12-12 22:35:00',20),(6500,4487293,'2008-12-12 22:40:00',17),(6501,4487312,'2008-12-12 22:45:00',19),(6502,4487331,'2008-12-12 22:50:00',19),(6503,4487347,'2008-12-12 22:55:00',16),(6504,4487360,'2008-12-12 23:00:00',13),(6505,4487372,'2008-12-12 23:05:00',12),(6506,4487385,'2008-12-12 23:10:00',13),(6507,4487396,'2008-12-12 23:15:00',11),(6508,4487408,'2008-12-12 23:20:00',12),(6509,4487421,'2008-12-12 23:25:00',13),(6510,4487432,'2008-12-12 23:30:00',11),(6511,4487444,'2008-12-12 23:35:00',12),(6512,4487457,'2008-12-12 23:40:00',13),(6513,4487469,'2008-12-12 23:45:00',12),(6514,4487480,'2008-12-12 23:50:00',11),(6515,4487493,'2008-12-12 23:55:00',13),(6516,4487505,'2008-12-13 00:00:00',12),(6517,4487517,'2008-12-13 00:05:00',12),(6518,4487529,'2008-12-13 00:10:00',12),(6519,4487542,'2008-12-13 00:15:00',13),(6520,4487554,'2008-12-13 00:20:00',12),(6521,4487565,'2008-12-13 00:25:00',11),(6522,4487578,'2008-12-13 00:30:00',13),(6523,4487591,'2008-12-13 00:35:00',13),(6524,4487602,'2008-12-13 00:40:00',11),(6525,4487615,'2008-12-13 00:45:00',13),(6526,4487627,'2008-12-13 00:50:00',12),(6527,4487644,'2008-12-13 00:55:00',17),(6528,4487660,'2008-12-13 01:00:00',16),(6529,4487682,'2008-12-13 01:05:00',22),(6530,4487701,'2008-12-13 01:10:00',19),(6531,4487717,'2008-12-13 01:15:00',16),(6532,4487731,'2008-12-13 01:20:00',14),(6533,4487744,'2008-12-13 01:25:00',13),(6534,4487757,'2008-12-13 01:30:00',13),(6535,4487768,'2008-12-13 01:35:00',11),(6536,4487781,'2008-12-13 01:40:00',13),(6537,4487794,'2008-12-13 01:45:00',13),(6538,4487805,'2008-12-13 01:50:00',11),(6539,4487818,'2008-12-13 01:55:00',13),(6540,4487831,'2008-12-13 02:00:00',13),(6541,4487843,'2008-12-13 02:05:00',12),(6542,4487859,'2008-12-13 02:10:00',16),(6543,4487871,'2008-12-13 02:15:00',12),(6544,4487884,'2008-12-13 02:20:00',13),(6545,4487895,'2008-12-13 02:25:00',11),(6546,4487907,'2008-12-13 02:30:00',12),(6547,4487920,'2008-12-13 02:35:00',13),(6548,4487933,'2008-12-13 02:40:00',13),(6549,4487943,'2008-12-13 02:45:00',10),(6550,4487958,'2008-12-13 02:50:00',15),(6551,4487971,'2008-12-13 02:55:00',13),(6552,4487982,'2008-12-13 03:00:00',11),(6553,4487995,'2008-12-13 03:05:00',13),(6554,4488008,'2008-12-13 03:10:00',13),(6555,4488025,'2008-12-13 03:15:00',17),(6556,4488043,'2008-12-13 03:20:00',18),(6557,4488063,'2008-12-13 03:25:00',20),(6558,4488082,'2008-12-13 03:30:00',19),(6559,4488099,'2008-12-13 03:35:00',17),(6560,4488115,'2008-12-13 03:40:00',16),(6561,4488128,'2008-12-13 03:45:00',13),(6562,4488141,'2008-12-13 03:50:00',13),(6563,4488153,'2008-12-13 03:55:00',12),(6564,4488166,'2008-12-13 04:00:00',13),(6565,4488179,'2008-12-13 04:05:00',13),(6566,4488191,'2008-12-13 04:10:00',12),(6567,4488204,'2008-12-13 04:15:00',13),(6568,4488217,'2008-12-13 04:20:00',13),(6569,4488230,'2008-12-13 04:25:00',13),(6570,4488242,'2008-12-13 04:30:00',12),(6571,4488255,'2008-12-13 04:35:00',13),(6572,4488268,'2008-12-13 04:40:00',13),(6573,4488280,'2008-12-13 04:45:00',12),(6574,4488293,'2008-12-13 04:50:00',13),(6575,4488306,'2008-12-13 04:55:00',13),(6576,4488319,'2008-12-13 05:00:00',13),(6577,4488331,'2008-12-13 05:05:00',12),(6578,4488344,'2008-12-13 05:10:00',13),(6579,4488358,'2008-12-13 05:15:00',14),(6580,4488377,'2008-12-13 05:20:00',19),(6581,4488397,'2008-12-13 05:25:00',20),(6582,4488416,'2008-12-13 05:30:00',19),(6583,4488435,'2008-12-13 05:35:00',19),(6584,4488451,'2008-12-13 05:40:00',16),(6585,4488469,'2008-12-13 05:45:00',18),(6586,4488488,'2008-12-13 05:50:00',19),(6587,4488504,'2008-12-13 05:55:00',16),(6588,4488521,'2008-12-13 06:00:00',17),(6589,4488535,'2008-12-13 06:05:00',14),(6590,4488553,'2008-12-13 06:10:00',18),(6591,4488570,'2008-12-13 06:15:00',17),(6592,4488587,'2008-12-13 06:20:00',17),(6593,4488602,'2008-12-13 06:25:00',15),(6594,4488615,'2008-12-13 06:30:00',13),(6595,4488626,'2008-12-13 06:35:00',11),(6596,4488639,'2008-12-13 06:40:00',13),(6597,4488651,'2008-12-13 06:45:00',12),(6598,4488662,'2008-12-13 06:50:00',11),(6599,4488675,'2008-12-13 06:55:00',13),(6600,4488687,'2008-12-13 07:00:00',12),(6601,4488699,'2008-12-13 07:05:00',12),(6602,4488713,'2008-12-13 07:10:00',14),(6603,4488732,'2008-12-13 07:15:00',19),(6604,4488763,'2008-12-13 07:20:00',31),(6605,4488790,'2008-12-13 07:25:00',27),(6606,4488819,'2008-12-13 07:30:00',29),(6607,4488847,'2008-12-13 07:35:00',28),(6608,4488869,'2008-12-13 07:40:00',22),(6609,4488890,'2008-12-13 07:45:00',21),(6610,4488911,'2008-12-13 07:50:00',21),(6611,4488930,'2008-12-13 07:55:00',19),(6612,4488951,'2008-12-13 08:00:00',21),(6613,4488972,'2008-12-13 08:05:00',21),(6614,4488993,'2008-12-13 08:10:00',21),(6615,4489011,'2008-12-13 08:15:00',18),(6616,4489032,'2008-12-13 08:20:00',21),(6617,4489053,'2008-12-13 08:25:00',21),(6618,4489071,'2008-12-13 08:30:00',18),(6619,4489090,'2008-12-13 08:35:00',19),(6620,4489106,'2008-12-13 08:40:00',16),(6621,4489122,'2008-12-13 08:45:00',16),(6622,4489137,'2008-12-13 08:50:00',15),(6623,4489153,'2008-12-13 08:55:00',16),(6624,4489167,'2008-12-13 09:00:00',14),(6625,4489180,'2008-12-13 09:05:00',13),(6626,4489196,'2008-12-13 09:10:00',16),(6627,4489213,'2008-12-13 09:15:00',17),(6628,4489230,'2008-12-13 09:20:00',17),(6629,4489245,'2008-12-13 09:25:00',15),(6630,4489269,'2008-12-13 09:30:00',24),(6631,4489292,'2008-12-13 09:35:00',23),(6632,4489312,'2008-12-13 09:40:00',20),(6633,4489333,'2008-12-13 09:45:00',21),(6634,4489349,'2008-12-13 09:50:00',16),(6635,4489361,'2008-12-13 09:55:00',12),(6636,4489372,'2008-12-13 10:00:00',11),(6637,4489384,'2008-12-13 10:05:00',12),(6638,4489401,'2008-12-13 10:10:00',17),(6639,4489416,'2008-12-13 10:15:00',15),(6640,4489432,'2008-12-13 10:20:00',16),(6641,4489449,'2008-12-13 10:25:00',17),(6642,4489465,'2008-12-13 10:30:00',16),(6643,4489480,'2008-12-13 10:35:00',15),(6644,4489497,'2008-12-13 10:40:00',17),(6645,4489513,'2008-12-13 10:45:00',16),(6646,4489526,'2008-12-13 10:50:00',13),(6647,4489537,'2008-12-13 10:55:00',11),(6648,4489548,'2008-12-13 11:00:00',11),(6649,4489563,'2008-12-13 11:05:00',15),(6650,4489578,'2008-12-13 11:10:00',15),(6651,4489594,'2008-12-13 11:15:00',16),(6652,4489606,'2008-12-13 11:20:00',12),(6653,4489618,'2008-12-13 11:25:00',12),(6654,4489629,'2008-12-13 11:30:00',11),(6655,4489643,'2008-12-13 11:35:00',14),(6656,4489663,'2008-12-13 11:40:00',20),(6657,4489685,'2008-12-13 11:45:00',22),(6658,4489708,'2008-12-13 11:50:00',23),(6659,4489730,'2008-12-13 11:55:00',22),(6660,4489746,'2008-12-13 12:00:00',16),(6661,4489766,'2008-12-13 12:05:00',20),(6662,4489783,'2008-12-13 12:10:00',17),(6663,4489799,'2008-12-13 12:15:00',16),(6664,4489810,'2008-12-13 12:20:00',11),(6665,4489827,'2008-12-13 12:25:00',17),(6666,4489844,'2008-12-13 12:30:00',17),(6667,4489860,'2008-12-13 12:35:00',16),(6668,4489872,'2008-12-13 12:40:00',12),(6669,4489884,'2008-12-13 12:45:00',12),(6670,4489896,'2008-12-13 12:50:00',12),(6671,4489908,'2008-12-13 12:55:00',12),(6672,4489920,'2008-12-13 13:00:00',12),(6673,4489935,'2008-12-13 13:05:00',15),(6674,4489992,'2008-12-13 13:10:00',57),(6675,4490074,'2008-12-13 13:15:00',82),(6676,4490115,'2008-12-13 13:20:00',41),(6677,4490153,'2008-12-13 13:25:00',38),(6678,4490191,'2008-12-13 13:30:00',38),(6679,4490226,'2008-12-13 13:35:00',35),(6680,4490262,'2008-12-13 13:40:00',36),(6681,4490299,'2008-12-13 13:45:00',37),(6682,4490332,'2008-12-13 13:50:00',33),(6683,4490374,'2008-12-13 13:55:00',42),(6684,4490415,'2008-12-13 14:00:00',41),(6685,4490454,'2008-12-13 14:05:00',39),(6686,4490488,'2008-12-13 14:10:00',34),(6687,4490531,'2008-12-13 14:15:00',43),(6688,4490576,'2008-12-13 14:20:00',45),(6689,4490617,'2008-12-13 14:25:00',41),(6690,4490662,'2008-12-13 14:30:00',45),(6691,4490707,'2008-12-13 14:35:00',45),(6692,4490751,'2008-12-13 14:40:00',44),(6693,4490791,'2008-12-13 14:45:00',40),(6694,4490835,'2008-12-13 14:50:00',44),(6695,4490880,'2008-12-13 14:55:00',45),(6696,4490921,'2008-12-13 15:00:00',41),(6697,4490958,'2008-12-13 15:05:00',37),(6698,4490995,'2008-12-13 15:10:00',37),(6699,4491039,'2008-12-13 15:15:00',44),(6700,4491078,'2008-12-13 15:20:00',39),(6701,4491122,'2008-12-13 15:25:00',44),(6702,4491164,'2008-12-13 15:30:00',42),(6703,4491212,'2008-12-13 15:35:00',48),(6704,4491252,'2008-12-13 15:40:00',40),(6705,4491295,'2008-12-13 15:45:00',43),(6706,4491329,'2008-12-13 15:50:00',34),(6707,4491363,'2008-12-13 15:55:00',34),(6708,4491404,'2008-12-13 16:00:00',41),(6709,4491443,'2008-12-13 16:05:00',39),(6710,4491483,'2008-12-13 16:10:00',40),(6711,4491518,'2008-12-13 16:15:00',35),(6712,4491553,'2008-12-13 16:20:00',35),(6713,4491586,'2008-12-13 16:25:00',33),(6714,4491611,'2008-12-13 16:30:00',25),(6715,4491639,'2008-12-13 16:35:00',28),(6716,4491666,'2008-12-13 16:40:00',27),(6717,4491693,'2008-12-13 16:45:00',27),(6718,4491713,'2008-12-13 16:50:00',20),(6719,4491730,'2008-12-13 16:55:00',17),(6720,4491747,'2008-12-13 17:00:00',17),(6721,4491764,'2008-12-13 17:05:00',17),(6722,4491779,'2008-12-13 17:10:00',15),(6723,4491796,'2008-12-13 17:15:00',17),(6724,4491812,'2008-12-13 17:20:00',16),(6725,4491828,'2008-12-13 17:25:00',16),(6726,4491844,'2008-12-13 17:30:00',16),(6727,4491861,'2008-12-13 17:35:00',17),(6728,4491878,'2008-12-13 17:40:00',17),(6729,4491894,'2008-12-13 17:45:00',16),(6730,4491910,'2008-12-13 17:50:00',16),(6731,4491930,'2008-12-13 17:55:00',20),(6732,4491952,'2008-12-13 18:00:00',22),(6733,4491976,'2008-12-13 18:05:00',24),(6734,4492000,'2008-12-13 18:10:00',24),(6735,4492023,'2008-12-13 18:15:00',23),(6736,4492042,'2008-12-13 18:20:00',19),(6737,4492060,'2008-12-13 18:25:00',18),(6738,4492077,'2008-12-13 18:30:00',17),(6739,4492093,'2008-12-13 18:35:00',16),(6740,4492111,'2008-12-13 18:40:00',18),(6741,4492128,'2008-12-13 18:45:00',17),(6742,4492146,'2008-12-13 18:50:00',18),(6743,4492162,'2008-12-13 18:55:00',16),(6744,4492180,'2008-12-13 19:00:00',18),(6745,4492197,'2008-12-13 19:05:00',17),(6746,4492215,'2008-12-13 19:10:00',18),(6747,4492231,'2008-12-13 19:15:00',16),(6748,4492249,'2008-12-13 19:20:00',18),(6749,4492267,'2008-12-13 19:25:00',18),(6750,4492283,'2008-12-13 19:30:00',16),(6751,4492301,'2008-12-13 19:35:00',18),(6752,4492319,'2008-12-13 19:40:00',18),(6753,4492337,'2008-12-13 19:45:00',18),(6754,4492353,'2008-12-13 19:50:00',16),(6755,4492375,'2008-12-13 19:55:00',22),(6756,4492400,'2008-12-13 20:00:00',25),(6757,4492422,'2008-12-13 20:05:00',22),(6758,4492446,'2008-12-13 20:10:00',24),(6759,4492470,'2008-12-13 20:15:00',24),(6760,4492489,'2008-12-13 20:20:00',19),(6761,4492505,'2008-12-13 20:25:00',16),(6762,4492523,'2008-12-13 20:30:00',18),(6763,4492540,'2008-12-13 20:35:00',17),(6764,4492558,'2008-12-13 20:40:00',18),(6765,4492574,'2008-12-13 20:45:00',16),(6766,4492592,'2008-12-13 20:50:00',18),(6767,4492609,'2008-12-13 20:55:00',17),(6768,4492625,'2008-12-13 21:00:00',16),(6769,4492643,'2008-12-13 21:05:00',18),(6770,4492661,'2008-12-13 21:10:00',18),(6771,4492678,'2008-12-13 21:15:00',17),(6772,4492694,'2008-12-13 21:20:00',16),(6773,4492712,'2008-12-13 21:25:00',18),(6774,4492730,'2008-12-13 21:30:00',18),(6775,4492746,'2008-12-13 21:35:00',16),(6776,4492764,'2008-12-13 21:40:00',18),(6777,4492782,'2008-12-13 21:45:00',18),(6778,4492802,'2008-12-13 21:50:00',20),(6779,4492825,'2008-12-13 21:55:00',23),(6780,4492849,'2008-12-13 22:00:00',24),(6781,4492873,'2008-12-13 22:05:00',24),(6782,4492895,'2008-12-13 22:10:00',22),(6783,4492916,'2008-12-13 22:15:00',21),(6784,4492934,'2008-12-13 22:20:00',18),(6785,4492952,'2008-12-13 22:25:00',18),(6786,4492968,'2008-12-13 22:30:00',16),(6787,4492986,'2008-12-13 22:35:00',18),(6788,4493004,'2008-12-13 22:40:00',18),(6789,4493022,'2008-12-13 22:45:00',18),(6790,4493038,'2008-12-13 22:50:00',16),(6791,4493056,'2008-12-13 22:55:00',18),(6792,4493074,'2008-12-13 23:00:00',18),(6793,4493089,'2008-12-13 23:05:00',15),(6794,4493103,'2008-12-13 23:10:00',14),(6795,4493116,'2008-12-13 23:15:00',13),(6796,4493129,'2008-12-13 23:20:00',13),(6797,4493140,'2008-12-13 23:25:00',11),(6798,4493152,'2008-12-13 23:30:00',12),(6799,4493165,'2008-12-13 23:35:00',13),(6800,4493176,'2008-12-13 23:40:00',11),(6801,4493189,'2008-12-13 23:45:00',13),(6802,4493209,'2008-12-13 23:50:00',20),(6803,4493229,'2008-12-13 23:55:00',20),(6804,4493246,'2008-12-14 00:00:00',17),(6805,4493264,'2008-12-14 00:05:00',18),(6806,4493282,'2008-12-14 00:10:00',18),(6807,4493293,'2008-12-14 00:15:00',11),(6808,4493306,'2008-12-14 00:20:00',13),(6809,4493318,'2008-12-14 00:25:00',12),(6810,4493331,'2008-12-14 00:30:00',13),(6811,4493342,'2008-12-14 00:35:00',11),(6812,4493355,'2008-12-14 00:40:00',13),(6813,4493367,'2008-12-14 00:45:00',12),(6814,4493380,'2008-12-14 00:50:00',13),(6815,4493391,'2008-12-14 00:55:00',11),(6816,4493404,'2008-12-14 01:00:00',13),(6817,4493416,'2008-12-14 01:05:00',12),(6818,4493427,'2008-12-14 01:10:00',11),(6819,4493439,'2008-12-14 01:15:00',12),(6820,4493452,'2008-12-14 01:20:00',13),(6821,4493464,'2008-12-14 01:25:00',12),(6822,4493475,'2008-12-14 01:30:00',11),(6823,4493488,'2008-12-14 01:35:00',13),(6824,4493500,'2008-12-14 01:40:00',12),(6825,4493512,'2008-12-14 01:45:00',12),(6826,4493524,'2008-12-14 01:50:00',12),(6827,4493544,'2008-12-14 01:55:00',20),(6828,4493563,'2008-12-14 02:00:00',19),(6829,4493580,'2008-12-14 02:05:00',17),(6830,4493598,'2008-12-14 02:10:00',18),(6831,4493615,'2008-12-14 02:15:00',17),(6832,4493628,'2008-12-14 02:20:00',13),(6833,4493639,'2008-12-14 02:25:00',11),(6834,4493652,'2008-12-14 02:30:00',13),(6835,4493664,'2008-12-14 02:35:00',12),(6836,4493675,'2008-12-14 02:40:00',11),(6837,4493688,'2008-12-14 02:45:00',13),(6838,4493701,'2008-12-14 02:50:00',13),(6839,4493713,'2008-12-14 02:55:00',12),(6840,4493724,'2008-12-14 03:00:00',11),(6841,4493737,'2008-12-14 03:05:00',13),(6842,4493749,'2008-12-14 03:10:00',12),(6843,4493762,'2008-12-14 03:15:00',13),(6844,4493773,'2008-12-14 03:20:00',11),(6845,4493786,'2008-12-14 03:25:00',13),(6846,4493799,'2008-12-14 03:30:00',13),(6847,4493810,'2008-12-14 03:35:00',11),(6848,4493822,'2008-12-14 03:40:00',12),(6849,4493835,'2008-12-14 03:45:00',13),(6850,4493848,'2008-12-14 03:50:00',13),(6851,4493859,'2008-12-14 03:55:00',11),(6852,4493871,'2008-12-14 04:00:00',12),(6853,4493890,'2008-12-14 04:05:00',19),(6854,4493908,'2008-12-14 04:10:00',18),(6855,4493927,'2008-12-14 04:15:00',19),(6856,4493945,'2008-12-14 04:20:00',18),(6857,4493964,'2008-12-14 04:25:00',19),(6858,4493975,'2008-12-14 04:30:00',11),(6859,4493988,'2008-12-14 04:35:00',13),(6860,4494000,'2008-12-14 04:40:00',12),(6861,4494013,'2008-12-14 04:45:00',13),(6862,4494024,'2008-12-14 04:50:00',11),(6863,4494037,'2008-12-14 04:55:00',13),(6864,4494050,'2008-12-14 05:00:00',13),(6865,4494061,'2008-12-14 05:05:00',11),(6866,4494074,'2008-12-14 05:10:00',13),(6867,4494086,'2008-12-14 05:15:00',12),(6868,4494099,'2008-12-14 05:20:00',13),(6869,4494110,'2008-12-14 05:25:00',11),(6870,4494123,'2008-12-14 05:30:00',13),(6871,4494135,'2008-12-14 05:35:00',12),(6872,4494147,'2008-12-14 05:40:00',12),(6873,4494159,'2008-12-14 05:45:00',12),(6874,4494172,'2008-12-14 05:50:00',13),(6875,4494184,'2008-12-14 05:55:00',12),(6876,4494196,'2008-12-14 06:00:00',12),(6877,4494208,'2008-12-14 06:05:00',12),(6878,4494221,'2008-12-14 06:10:00',13),(6879,4494232,'2008-12-14 06:15:00',11),(6880,4494249,'2008-12-14 06:20:00',17),(6881,4494269,'2008-12-14 06:25:00',20),(6882,4494288,'2008-12-14 06:30:00',19),(6883,4494304,'2008-12-14 06:35:00',16),(6884,4494322,'2008-12-14 06:40:00',18),(6885,4494336,'2008-12-14 06:45:00',14),(6886,4494347,'2008-12-14 06:50:00',11),(6887,4494359,'2008-12-14 06:55:00',12),(6888,4494372,'2008-12-14 07:00:00',13),(6889,4494385,'2008-12-14 07:05:00',13),(6890,4494398,'2008-12-14 07:10:00',13),(6891,4494413,'2008-12-14 07:15:00',15),(6892,4494429,'2008-12-14 07:20:00',16),(6893,4494444,'2008-12-14 07:25:00',15),(6894,4494458,'2008-12-14 07:30:00',14),(6895,4494474,'2008-12-14 07:35:00',16),(6896,4494489,'2008-12-14 07:40:00',15),(6897,4494503,'2008-12-14 07:45:00',14),(6898,4494518,'2008-12-14 07:50:00',15),(6899,4494533,'2008-12-14 07:55:00',15),(6900,4494549,'2008-12-14 08:00:00',16),(6901,4494563,'2008-12-14 08:05:00',14),(6902,4494578,'2008-12-14 08:10:00',15),(6903,4494593,'2008-12-14 08:15:00',15),(6904,4494607,'2008-12-14 08:20:00',14),(6905,4494622,'2008-12-14 08:25:00',15),(6906,4494637,'2008-12-14 08:30:00',15),(6907,4494653,'2008-12-14 08:35:00',16),(6908,4494671,'2008-12-14 08:40:00',18),(6909,4494692,'2008-12-14 08:45:00',21),(6910,4494711,'2008-12-14 08:50:00',19),(6911,4494727,'2008-12-14 08:55:00',16),(6912,4494745,'2008-12-14 09:00:00',18),(6913,4494759,'2008-12-14 09:05:00',14),(6914,4494771,'2008-12-14 09:10:00',12),(6915,4494782,'2008-12-14 09:15:00',11),(6916,4494793,'2008-12-14 09:20:00',11),(6917,4494805,'2008-12-14 09:25:00',12),(6918,4494821,'2008-12-14 09:30:00',16),(6919,4494838,'2008-12-14 09:35:00',17),(6920,4494855,'2008-12-14 09:40:00',17),(6921,4494871,'2008-12-14 09:45:00',16),(6922,4494886,'2008-12-14 09:50:00',15),(6923,4494903,'2008-12-14 09:55:00',17),(6924,4494920,'2008-12-14 10:00:00',17),(6925,4494936,'2008-12-14 10:05:00',16),(6926,4494950,'2008-12-14 10:10:00',14),(6927,4494962,'2008-12-14 10:15:00',12),(6928,4494973,'2008-12-14 10:20:00',11),(6929,4494984,'2008-12-14 10:25:00',11),(6930,4494996,'2008-12-14 10:30:00',12),(6931,4495008,'2008-12-14 10:35:00',12),(6932,4495019,'2008-12-14 10:40:00',11),(6933,4495030,'2008-12-14 10:45:00',11),(6934,4495042,'2008-12-14 10:50:00',12),(6935,4495053,'2008-12-14 10:55:00',11),(6936,4495068,'2008-12-14 11:00:00',15),(6937,4495087,'2008-12-14 11:05:00',19),(6938,4495105,'2008-12-14 11:10:00',18),(6939,4495123,'2008-12-14 11:15:00',18),(6940,4495139,'2008-12-14 11:20:00',16),(6941,4495153,'2008-12-14 11:25:00',14),(6942,4495165,'2008-12-14 11:30:00',12),(6943,4495175,'2008-12-14 11:35:00',10),(6944,4495186,'2008-12-14 11:40:00',11),(6945,4495199,'2008-12-14 11:45:00',13),(6946,4495213,'2008-12-14 11:50:00',14),(6947,4495228,'2008-12-14 11:55:00',15),(6948,4495245,'2008-12-14 12:00:00',17),(6949,4495262,'2008-12-14 12:05:00',17),(6950,4495277,'2008-12-14 12:10:00',15),(6951,4495292,'2008-12-14 12:15:00',15),(6952,4495308,'2008-12-14 12:20:00',16),(6953,4495324,'2008-12-14 12:25:00',16),(6954,4495335,'2008-12-14 12:30:00',11),(6955,4495347,'2008-12-14 12:35:00',12),(6956,4495363,'2008-12-14 12:40:00',16),(6957,4495375,'2008-12-14 12:45:00',12),(6958,4495386,'2008-12-14 12:50:00',11),(6959,4495398,'2008-12-14 12:55:00',12),(6960,4495410,'2008-12-14 13:00:00',12),(6961,4495420,'2008-12-14 13:05:00',10),(6962,4495432,'2008-12-14 13:10:00',12),(6963,4495444,'2008-12-14 13:15:00',12),(6964,4495459,'2008-12-14 13:20:00',15),(6965,4495478,'2008-12-14 13:25:00',19),(6966,4495497,'2008-12-14 13:30:00',19),(6967,4495515,'2008-12-14 13:35:00',18),(6968,4495531,'2008-12-14 13:40:00',16),(6969,4495543,'2008-12-14 13:45:00',12),(6970,4495555,'2008-12-14 13:50:00',12),(6971,4495567,'2008-12-14 13:55:00',12),(6972,4495581,'2008-12-14 14:00:00',14),(6973,4495594,'2008-12-14 14:05:00',13),(6974,4495606,'2008-12-14 14:10:00',12),(6975,4495617,'2008-12-14 14:15:00',11),(6976,4495629,'2008-12-14 14:20:00',12),(6977,4495641,'2008-12-14 14:25:00',12),(6978,4495653,'2008-12-14 14:30:00',12),(6979,4495663,'2008-12-14 14:35:00',10),(6980,4495675,'2008-12-14 14:40:00',12),(6981,4495687,'2008-12-14 14:45:00',12),(6982,4495698,'2008-12-14 14:50:00',11),(6983,4495710,'2008-12-14 14:55:00',12),(6984,4495722,'2008-12-14 15:00:00',12),(6985,4495734,'2008-12-14 15:05:00',12),(6986,4495745,'2008-12-14 15:10:00',11),(6987,4495759,'2008-12-14 15:15:00',14),(6988,4495778,'2008-12-14 15:20:00',19),(6989,4495793,'2008-12-14 15:25:00',15),(6990,4495809,'2008-12-14 15:30:00',16),(6991,4495823,'2008-12-14 15:35:00',14),(6992,4495845,'2008-12-14 15:40:00',22),(6993,4495867,'2008-12-14 15:45:00',22),(6994,4495891,'2008-12-14 15:50:00',24),(6995,4495913,'2008-12-14 15:55:00',22),(6996,4495930,'2008-12-14 16:00:00',17),(6997,4495943,'2008-12-14 16:05:00',13),(6998,4495955,'2008-12-14 16:10:00',12),(6999,4495967,'2008-12-14 16:15:00',12),(7000,4495978,'2008-12-14 16:20:00',11),(7001,4495990,'2008-12-14 16:25:00',12),(7002,4496002,'2008-12-14 16:30:00',12),(7003,4496013,'2008-12-14 16:35:00',11),(7004,4496025,'2008-12-14 16:40:00',12),(7005,4496037,'2008-12-14 16:45:00',12),(7006,4496048,'2008-12-14 16:50:00',11),(7007,4496059,'2008-12-14 16:55:00',11),(7008,4496071,'2008-12-14 17:00:00',12),(7009,4496085,'2008-12-14 17:05:00',14),(7010,4496101,'2008-12-14 17:10:00',16),(7011,4496116,'2008-12-14 17:15:00',15),(7012,4496133,'2008-12-14 17:20:00',17),(7013,4496149,'2008-12-14 17:25:00',16),(7014,4496161,'2008-12-14 17:30:00',12),(7015,4496177,'2008-12-14 17:35:00',16),(7016,4496194,'2008-12-14 17:40:00',17),(7017,4496210,'2008-12-14 17:45:00',16),(7018,4496224,'2008-12-14 17:50:00',14),(7019,4496236,'2008-12-14 17:55:00',12),(7020,4496253,'2008-12-14 18:00:00',17),(7021,4496271,'2008-12-14 18:05:00',18),(7022,4496292,'2008-12-14 18:10:00',21),(7023,4496317,'2008-12-14 18:15:00',25),(7024,4496339,'2008-12-14 18:20:00',22),(7025,4496350,'2008-12-14 18:25:00',11),(7026,4496364,'2008-12-14 18:30:00',14),(7027,4496379,'2008-12-14 18:35:00',15),(7028,4496390,'2008-12-14 18:40:00',11),(7029,4496402,'2008-12-14 18:45:00',12),(7030,4496414,'2008-12-14 18:50:00',12),(7031,4496427,'2008-12-14 18:55:00',13),(7032,4496438,'2008-12-14 19:00:00',11),(7033,4496450,'2008-12-14 19:05:00',12),(7034,4496464,'2008-12-14 19:10:00',14),(7035,4496480,'2008-12-14 19:15:00',16),(7036,4496497,'2008-12-14 19:20:00',17),(7037,4496514,'2008-12-14 19:25:00',17),(7038,4496531,'2008-12-14 19:30:00',17),(7039,4496546,'2008-12-14 19:35:00',15),(7040,4496564,'2008-12-14 19:40:00',18),(7041,4496580,'2008-12-14 19:45:00',16),(7042,4496593,'2008-12-14 19:50:00',13),(7043,4496607,'2008-12-14 19:55:00',14),(7044,4496619,'2008-12-14 20:00:00',12),(7045,4496637,'2008-12-14 20:05:00',18),(7046,4496653,'2008-12-14 20:10:00',16),(7047,4496669,'2008-12-14 20:15:00',16),(7048,4496688,'2008-12-14 20:20:00',19),(7049,4496706,'2008-12-14 20:25:00',18),(7050,4496735,'2008-12-14 20:30:00',29),(7051,4496815,'2008-12-14 20:35:00',80),(7052,4496852,'2008-12-14 20:40:00',37),(7053,4496879,'2008-12-14 20:45:00',27),(7054,4497088,'2008-12-14 21:25:00',209),(7055,4497116,'2008-12-14 21:30:00',28),(7056,4497156,'2008-12-14 21:35:00',40),(7057,4497184,'2008-12-14 21:40:00',28),(7058,4497212,'2008-12-14 21:45:00',28),(7059,4497256,'2008-12-14 21:55:00',44);
/*!40000 ALTER TABLE `power_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_fullmoon`
--

DROP TABLE IF EXISTS `remarks_fullmoon`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_fullmoon` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_fullmoon`
--

LOCK TABLES `remarks_fullmoon` WRITE;
/*!40000 ALTER TABLE `remarks_fullmoon` DISABLE KEYS */;
INSERT INTO `remarks_fullmoon` VALUES (1,'Hide your children.'),(2,'I wouldn\'t go outside if I were you.'),(3,'My, what nice teeth you have tonight.'),(4,'Kind of creepy.'),(5,'Thank goodness Michel Jackson is retired.'),(6,'Lets go snipe hunting.');
/*!40000 ALTER TABLE `remarks_fullmoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_humid`
--

DROP TABLE IF EXISTS `remarks_humid`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_humid` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_humid`
--

LOCK TABLES `remarks_humid` WRITE;
/*!40000 ALTER TABLE `remarks_humid` DISABLE KEYS */;
INSERT INTO `remarks_humid` VALUES (1,'The rain of pain falls mainly on the plane!'),(2,'Yuck.'),(3,'Kind of wet eh?'),(4,'Slicker weather.'),(5,'I get the umbrella.'),(6,'Scuba gear required.'),(7,'Humid is doomid.'),(8,'Bet its wet.'),(9,'Wet smet.'),(10,'No need for a shower today.'),(11,'Wet as a cows toung.'),(12,'Rain in spain is a pain to sang.'),(13,'Non purple rain.'),(14,'Wet you get.'),(15,'Wet you bet.'),(16,'Bet you wet.'),(17,'Rain gear required.'),(18,'Protect the chips.'),(19,'Drier than a steam room.'),(20,'Wetter than the outback.'),(21,'Kind of humid.'),(22,'Humid enough you don\'t have to lick stamps.'),(23,'Must be raining.');
/*!40000 ALTER TABLE `remarks_humid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_personal`
--

DROP TABLE IF EXISTS `remarks_personal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_personal` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_personal`
--

LOCK TABLES `remarks_personal` WRITE;
/*!40000 ALTER TABLE `remarks_personal` DISABLE KEYS */;
INSERT INTO `remarks_personal` VALUES (1,'Are you getting fat? Where did those love handles come from?'),(2,'Your so stupid you got locked in a bathroom and peed your pants.'),(3,'Your so stupid you got locked in the grocery store and starved to death.'),(4,'Your so stupid it takes you 2 hours to watch 60 minutes.'),(5,'Your so stupid it takes you a half an hour to make minute rice.'),(6,'Your so stupid you bought a solar powered flashlight.'),(7,'Your so stupid you thought Taco Bell was a Mexican Phone Company.'),(8,'Your so stupid you bought hamburger helper thinking it came with another person.'),(9,'Your so stupid you sold your car for gas money.'),(10,'Your so stupid you thought cheerios were dough nut seeds.'),(11,'Your so stupid you fell up the stairs.'),(12,'Your so stupid you tried to steel a free sample.'),(13,'Your so stupid you can make your eyes twinkle by shining a light in your ear.'),(14,'Your so ugly you make blind kids cry.'),(15,'Your butt is so big, your taller when you sit down.'),(16,'Your so old you fart dust.'),(17,'Your so skinny you can look through a key hole with both eyes'),(18,'Your so old you took your drivers test on a dinosaur.'),(19,'Your so old the key on Ben franklins kite is the key to your apartment.'),(20,'Your so old you used to baby-sit Yoda.'),(21,'You wuss, you hit like a gnome!'),(22,'Did you just cut the cheese?'),(23,'What, you call that music? I could do better with a Sound Blaster Pro!'),(24,'What is wrong with your head? Oh, that\'s your hair? Eww!'),(25,'You\'ll be living in a van down by the river!'),(26,'You could get a job in politics.'),(27,'I could wear an I Mac case and look better than you in those clothes!'),(28,'Looks like you woke up on the wrong side of your bed today.'),(29,'Can I recomend a new hair stylist?  How about John Luke Pick ard.'),(30,'Did you forget to shower last month?'),(31,'I always wondered what ugly ment.'),(32,'Sorry, I didn\'t mean to be mean.  Its just, you look so awful.'),(33,'Does your face hurt?  Its killing me.'),(34,'My calculator could whip your computer'),(35,'Please don\'t hurt me, O great one!'),(36,'You are way better than your brother.'),(37,'Do you want a burrito? They are good!'),(38,'Your father loves you so much he will give you money to type lame remarks like this if you want.'),(39,'Yeah, you know what I\'m saying.'),(40,'You are the master of all.'),(41,'My, you look mighty fine today.'),(42,'Did I ever tell you how much I admire your left ear?'),(43,'Your hair styleing looks very stylish today.'),(44,'Nice looking outfit you have on.');
/*!40000 ALTER TABLE `remarks_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_plants`
--

DROP TABLE IF EXISTS `remarks_plants`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_plants` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_plants`
--

LOCK TABLES `remarks_plants` WRITE;
/*!40000 ALTER TABLE `remarks_plants` DISABLE KEYS */;
INSERT INTO `remarks_plants` VALUES (1,'If you don\'t give us water, we will have to suck it out of a cute little bunny rabbit.'),(2,'Hey, desert madmen have water and they\'re only level 12!'),(3,'You can buy water for only one silver with a crude stein. Or is that too much to ask?'),(4,'Plants auction, \"Want to buy water! Will pay well! Gimme a tell.\"'),(5,'If you have enough for your toilets, surely you have enough for us!'),(6,'We all need water, except for Bob. We want him to die.'),(7,'If you don\'t water us, we will sic our coconut on you! He\'s evil, I tells ya!'),(8,'Of course, we could just cut our coconut up for milk. No! I didn\'t mean it coconut! Nooooooo! Put the feathered headdress and spears down!'),(9,'Give us water or our throats will become so dry we\'ll talk like Harry Kissinger and revert to the Ursula voice!'),(10,'Feed us or we will go on strike.'),(11,'We want water.  We must have water.   Water is good.'),(12,'You had better feed us water.  We know where you live.'),(13,'Feed us water or we will suck it out of you while you sleep.'),(14,'Pour Fa vor Senior.   Agua en la pot.  Muchas gracious.'),(15,'Give us water or we will become carnivores.'),(16,'Let\'s make a deal.  You give us water and we will give you oxygen.'),(17,'If we don\'t get water soon, we will die and become brown, ugly, works of art, and who needs more works of art around here?'),(18,'You don\'t want to get houseplants mad.  Can you spell Carbon Di-oxide?'),(19,'You should pay us a little more respect.  We were here first you know.'),(20,'If you don\'t water us, I\'ll invite my Uncle Venus over.  He is a man eating plant and he is usually really hungry.'),(21,'Please give us water.  We promise that we won\'t squirt it all over like last time.'),(22,'Water, we need water.  We are so dry, we are about to spontaneously combust!'),(23,'Whats wrong, is the sink busted again?  Or maybe it is the watering pot this time.  You always have some excuse.  Sheez!'),(24,'Paaaaaaaaaaaaaaaaaaa leeeeeeeeeeeeeeeeeeeezzzzzzzzz!  Just a little water!  I know you have it.  I\'ve seen you drink it.  '),(25,'Come on!  Water is not that hard to find.  Just grab a couple of oxygen molecules and squish them together with some of those hydrogen dudes.'),(26,'Water, please, any kind of water will do.  Except the yellow kind.'),(27,'Heres a deal for you:  You give us water, and we will not eat your children.'),(28,'Water, Koolaid, Orange Juice, Beer, Coffie, we don\'t care.  Please give us something!'),(29,'Pretty please, with a little oxygen on top.  Give us water and we won\'t bug you again ... till next week.');
/*!40000 ALTER TABLE `remarks_plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_tags`
--

DROP TABLE IF EXISTS `remarks_tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_tags` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1144 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_tags`
--

LOCK TABLES `remarks_tags` WRITE;
/*!40000 ALTER TABLE `remarks_tags` DISABLE KEYS */;
INSERT INTO `remarks_tags` VALUES (1,'No decorations necessary.'),(2,'Dulce bellum inexpertis.'),(3,'JUST ROOTIN\' AROUND.'),(4,'Common sense isn\'t.'),(5,'C\'est la vie.'),(6,'I\'m in shape ... round\'s a shape isn\'t it?'),(7,'((wrong && wrong) != right) '),(8,'Quoth the Raven, \"Eat My Shorts.\"'),(9,'\"Said the fly, \"Let us flee.\" Said the flea \"Let us fly.\"'),(10,'Diplomacy is saying \"nice doggy\" until you find a rock. '),(11,'I just steal \'em, I don\'t explain \'em.'),(12,'Just My Opinion (But I\'m Right!)'),(13,'Wanna giggle? Try (EDITOR=EDLIN !) in anything.'),(14,'Backup not found: (P) Panic (Any Other Key) Panic.'),(15,'Youth + confidence + myopia = naivete.'),(16,'Press <CTRL>-<ALT>-<DEL> to continue ... '),(17,'Buy a 486-33 you can reboot faster..'),(18,'An appeaser feeds a crocodile, hoping to be eaten last.'),(19,'Success is just a matter of luck.  Ask any failure.'),(20,'Irony: Giving father a billfold for Christmas.'),(21,'Every politician has a price, some hold bargain sales.'),(22,'The world is a beautiful book, for those who can read it.'),(23,'A person in a passion rides a mad horse.'),(24,'Hard work has a future payoff.  Laziness pays off now.'),(25,'Celery raw develops a jaw. But stewed, is quietly chewed'),(26,'Where there is a stink feces there is the odor of being.'),(27,'A yawn is a silent shout.'),(28,'\"A newspaper is a collection of half-injustices\"'),(29,'If this is a battle, then you have already lost.'),(30,'\"Every why hath a wherefore.\"'),(31,'An optimist is a guy without much experience... '),(32,'Life is not a spectacle or a feast, it is a predicament.'),(33,'A person is a lion in his own cause.'),(34,'Today has been a long year!!!!!!!!!!'),(35,'Any certainty is a delusion.'),(36,'\"Beulah, peel me a grape.\" '),(37,'I sighed as a lover, I obeyed as a child.'),(38,'Every crowd has a silver lining.'),(39,'Old MacDonald had a computer with EIA I/O.'),(40,'Dammit Jim, I\'m a doctor, not a tagline writer.'),(41,'Strange but not a stranger...'),(42,'He bellows like a cow standing on her tit.'),(43,'Good luck is a lazy man\'s estimate of a worker\'s success.'),(44,'Fiddle: Friction of a horse\'s tail on a cat\'s entrails.'),(45,'In this world a man must either be anvil or hammer.'),(46,'When you see a snake, never mind where he came from.'),(47,'Better to marry a man who loves you than one you love.'),(48,'Some men without a god are like fish without bicycles.'),(49,'A person without a navel lives within all of us.'),(50,'The trouble with a kitten is that, eventually it\'s a cat.'),(51,'To avoid seeing a fool, break your mirror.'),(52,'\"Woman must be a genius to create a good husband.\" Balzac'),(53,'The wife of a careless man is almost a widow.'),(54,'The mouse with a single hole is quickly caught by the cat'),(55,'I am not a dictator.  It\'s just I have a grumpy face.'),(56,'Misfortunes always enter a door left open for them.'),(57,'\"Too much of a good thing is wonderful.\" <Mae West> '),(58,'Self-made man: A horrible example of unskilled labor.'),(59,'COFFEE.COM not found: A)dd more, R)eheat F)reak out.'),(60,'The more known about people, the more to admire in dogs.'),(61,'The worst thing about censorship is . '),(62,'I never rise above the noise and confusion...'),(63,'Prosperity makes friends, adversity tries them.'),(64,'The best defense against logic is stupidity.'),(65,'The arrogance of age must submit to be taught by youth.'),(66,'Time goes? No.  Alas time stays, we go.'),(67,'When everyone thinks alike, then everyone is stupid.'),(68,'When all think alike, then no one is thinking.'),(69,'As for me, all I know is that I know nothing.'),(70,'Manuals out, after all possible keystrokes have failed.'),(71,'\"May you live all the days of your life.\" Swift'),(72,'Waiting to overcome all objections, results in nothing.'),(73,'Overestimation: Thinking that all your geese are swans.'),(74,'Be suspicious of all native-born Esperanto speakers.'),(75,'No answer is also an answer.'),(76,'Round numbers are always false.'),(77,'Friendships are not always preserved in alcohol.'),(78,'Our future is always uncertain our end is always too near'),(79,'A farmer is always going to be rich next year.'),(80,'God heals, but always someone else wants a fee.'),(81,'One who is always in a stew generally goes to pot.'),(82,'The wrong way always seems the more reasonable.'),(83,'Bureaucracy: That place always in need of a laxative.'),(84,'Sysoping, not just an adventure, sometimes it\'s emesis.'),(85,'A hen is an egg\'s way of making another egg.'),(86,'I am not an animal!  I am ... well, not an animal. '),(87,'If this were an actual tagline, it might be funny.'),(88,'If this were an actual tagline, it _might_ be funny.'),(89,'O Oysters come and walk with us, the Walrus did beseech.'),(90,'Surly to bed, and surly to rise.'),(91,'Take two crows and caw me in the morning'),(92,'\"Help! I\'ve fallen and can\'t get up.\" A. Tree'),(93,'Beware! I\'m armed and have suffered from PMS all my life.'),(94,'Wisdom of many and the wit of a half.'),(95,'Man loves little and often, woman much and rarely.'),(96,'Some nonsense now and then is relished by the wisest men'),(97,'Take egotism out, and you castrate the benefactors.'),(98,'Words, words, words.  And no place to put them all!'),(99,'There are no answers at best a few possibly good guesses.'),(100,'When you find anything that works, it usually fails.'),(101,'Adam ate the apple, and our teeth still ache.'),(102,'Pedestrian: The most approachable chap in the world.'),(103,'Shhhhhh.....the topic cops are coming'),(104,'Words and ideas are what change our world.'),(105,'Actions from sanity are not necessarily from feeling.'),(106,'Silly rabbit, tricks are for hookers!'),(107,'\"All humans things are subject to decay.\"'),(108,'The only realities are the atoms and empty space.'),(109,'Silly Wabbit, QWKs are for kids. '),(110,'\"But once you are real, you can\'t become unreal again.\" '),(111,'\"Men, in general, are but great great children\" Napoleon'),(112,'Noble deeds that are concealed are most esteemed.'),(113,'I am not arguing with you, I\'m telling you.'),(114,'Window-screen: An arrangement for keeping flies in.'),(115,'*FLASH* Energizer Bunny arrested, charged with battery.'),(116,'Architecture is the art of how to waste space.'),(117,'A nose in artificial manure is not studying nature.'),(118,'Actions are neither as good nor as evil as impulses.'),(119,'\"With our judgements as our watches, none go just alike.\"'),(120,'No one does as much harm as one going about doing good.'),(121,'I\'m as innocent as a new-laid egg.'),(122,'Sharper than an asp\'s tooth to have a thankless child.'),(123,'All reality is aspect dependent.'),(124,'Today, take an astronaut to launch.'),(125,'The best blood at times gets into fools and mosquitoes.'),(126,'Hasten to laugh at everything lest you be obliged to weep'),(127,'Childish Game: One at which your spouse beats you.'),(128,'Please don\'t yell at me.  I\'m new at this. '),(129,'\"We must laugh at man, to avoid crying for him\" Napoleon'),(130,'Sandwich: An faulty attempt to make both ends meat.'),(131,'That\'s a smug aura of respectability you see in a mirror?'),(132,'Genealogy: tracing us back to the same brother and sister'),(133,'Memoirs are the backstairs of history.'),(134,'Since GOD spelled backwards is DOG, is my poodle Satan? '),(135,'Modesty is good bait when fishing for praise.'),(136,'You tell \'em, Bald Head, You\'re smooth.'),(137,'You tell \'em Banana, You\'ve been skinned.'),(138,'You tell \'em Bank, You\'re safe.'),(139,'Look out for barking dogs that bite.'),(140,'A good dog barks when told.'),(141,'This door is baroque; please call Bach later.'),(142,'I may not be perfect, but I am all I got!'),(143,'Most allies must be watched just like the enemy.'),(144,'Caution:  Breathing may be hazardous to your health.'),(145,'Things could only be worse in Cleveland.'),(146,'Every child should be given the desire to learn.'),(147,'You tell \'em Bean, He\'s stringing you.'),(148,'A thing of beauty is in the eye of the beholder.'),(149,'Save trees, eat  beavers. '),(150,'No person ever became wicked all at once.'),(151,'History repeats itself because nobody listens'),(152,'Envy is thin because it bites but never eats.'),(153,'Misery brings strange bedfellows.'),(154,'They who drink beer will think beer.'),(155,'Where do honey bees go potty?  At a BP station naturally.'),(156,'The woman cries before the wedding; the man afterward.'),(157,'Honesty: Fear of being caught.'),(158,'It\'s hard to believe it, but some teens are humans.'),(159,'A liar isn\'t believed even when he speaks the truth.'),(160,'Beware of true believers you may be duped by a false god.'),(161,'Some thoughts are best guillotined before actions result.'),(162,'Sex isn\'t the best nor the worst thing in the world.'),(163,'We\'re off doing beta, the wonderful beta of oooz'),(164,'Old age is better than the alternative.'),(165,'Is wetter REALLY better?'),(166,'Monologue: A conversation between realtor and prospect.'),(167,'Don\'t use a big word where a diminutive one will suffice.'),(168,'If you can\'t bite, don\'t show your teeth.'),(169,'ZMODEM has bigger bits, softer blocks, and tighter ASCII.'),(170,'When no wind blows, even the weather vane has character.'),(171,'We are in bondage to the law so that we may be free.'),(172,'If it ain\'t borken, don\'t fix it.'),(173,'Boys will be boys, and so will a lot of middle-aged men.'),(174,'Fat heads, lean brains.'),(175,'You tell \'em Brake, You\'ve got the drag.'),(176,'Please!  Do not break character! '),(177,'The only heavy breathing I ever hear is after aerobics.'),(178,'Engraving is, in brief terms, the art of scratch.'),(179,'Politics: Passing the buck or passing the doe.'),(180,'An actor without buck teeth can play the Easter Bunny.'),(181,'That\'s not a bug, that\'s a feature.'),(182,'We ask advice but we mean approbation.'),(183,'Love thy neighbor, but keep the hedge in tact.'),(184,'I\'m incredibly jealous, but still glad for you.'),(185,'I\'m terribly sorry, but I\'m afraid you\'re just a mirage. '),(186,'Time is precious, but truth is more so.'),(187,'Marriage, a romance but the hero dies in the 1st chapter.'),(188,'OK, I\'m weird! But I\'m saving up to become eccentric.'),(189,'You tell \'em Butcher, You\'ve got a lot of tongue.'),(190,'Hm..what\'s this red button foº½¯°·¼NO CARRIER'),(191,'Bad officials: elected by good citizens who fail to vote.'),(192,'<<< Tagline deleted by Natl Endowment for the Arts >>>'),(193,'The mind grows by what it feeds upon.'),(194,'Birds are trapped by their feet, people by their tongues.'),(195,'This tagline stolen by Silly Little Mail Reader!'),(196,'You tell \'em cabbage, You\'ve got the head.'),(197,'You tell \'em calendar, You\'ve got lots of dates.'),(198,'It\'s okay to call someone stupid; just don\'t prove it.'),(199,'Only the stupidest calves chose their own butcher.'),(200,'Even the blind can see money.'),(201,'Of course I can cook, but I never do it on the first date'),(202,'A thick head can do as much damage as a hard heart.'),(203,'A red nose can be the result of sunshine or moonshine.'),(204,'Few of us can stand prosperity -- someone else\'s.'),(205,'Genius: One who can do anything except earn a living.'),(206,'By trying we can learn to endure another\'s adversity.'),(207,'A good tree cannot bring forth evil fruit.'),(208,'Without fingers you cannot even thumb your nose.'),(209,'\"Oh captain! my captain! our fearful trip is done.\" WW'),(210,'Collector: Person few care to see but ask to call again.'),(211,'If you don\'t care where you are, then you can\'t get lost.'),(212,'Judge not a carpenter on how fast chips fly.'),(213,'A jug is carried under your coat for a dishonest reason.'),(214,'You tell \'em Cashier, I\'m a poor teller.'),(215,'To the old cat, the tender mouse.'),(216,'You tell \'em Cat, That\'s what you\'re fur.'),(217,'Gotta run, the cat\'s caught in the printer.'),(218,'If one cannot catch a bird of paradise, grab a wet hen.'),(219,'The highest bidder catches the most politicians.'),(220,'You tell \'em Cemetery, You are so grave.'),(221,'Adventure is the champagne of life.'),(222,'Getting a second chance is never a certainty.'),(223,'Everything changes except change itself.'),(224,'When in doubt; Cheat !'),(225,'\"Man\'s the bad child of the universe.\" Oppenheim'),(226,'HELP! Protect America\'s children, soil, and water today.'),(227,'You tell \'em Chloroform, You can put them to sleep.'),(228,'Jury: A group chosen to decide who has the best lawyer.'),(229,'You tell \'em Church Bell, I told you.'),(230,'You tell \'em Cigarette, You\'re lit up.'),(231,'The devil can cite Scripture for his purpose.'),(232,'To be too clever is to be stupid.'),(233,'Choose heaven for climate, hell for society.'),(234,'You tell \'em Clock, You\'ve got the time.'),(235,'Unable to locate Coffee -- Operator Halted!'),(236,'It was so cold, I almost got married.'),(237,'Save the whales. Collect the whole set.'),(238,'When the bad combine, the good must associate.'),(239,'The World: A comedy for thinkers; a tragedy for feelers.'),(240,'The world is coming to an end!'),(241,'Don\'t steal.....Politicians hate competition.'),(242,'Born crying, live complaining, die disappointed.'),(243,'Whatever is well conceived can be well expressed.'),(244,'Reality: Only a concept and the home of the brave.'),(245,'Only hey can conquer who believe they can.'),(246,'Nothing is ever constant, unless it is dead. '),(247,'We have resumed control...we have resumed control...'),(248,'It\'s a poor cook who cannot lick his own fingers.'),(249,'A sleeping fox counts hens in his dreams.'),(250,'Pants: Trousers\' country cousins.'),(251,'Many would be cowards if they had courage enough.'),(252,'Society prepares the crime; the criminal commits it.'),(253,'Straight trees have crooked roots.'),(254,'A good rooster crows in any hen house.'),(255,'What youth deemed crystal, age finds was dew.'),(256,'You tell \'em Cucumber, I\'ve been pickled.'),(257,'No medicine can cure a vulgar person.'),(258,'It\'s easier to curse the candle than light the darkness.'),(259,'You tell \'em Custard Pie, You\'ve got the crust.'),(260,'Other times, other customs.'),(261,'Cynicism is intellectual dandyism.'),(262,'Clever father, clever daughter; clever mother, clever son'),(263,'Today is a day for making firm decisions!!!!!  Or is it?'),(264,'Each day a day goes by.'),(265,'I\'ve had BETA days ... and nights!!!'),(266,'Happy couple: A deaf husband and a blind wife.'),(267,'Skeptics are seldom deceived.'),(268,'Let no good deed go unpunished.'),(269,'There is no defense except stupidity against a new idea.'),(270,'Fishing is a delusion surrounded by liars in old clothes.'),(271,'Living: The best demonstration of victory over mortality.'),(272,'You tell \'em Dentist, You\'ve got the pull.'),(273,'You tell \'em Dictionary, You\'re full of information.'),(274,'\"Old soldiers never die, they just fade away..\"'),(275,'Old musicians never die, they just decompose.'),(276,'Not everything more difficult is more meritorious.'),(277,'A gentleman can disagree without being disagreeable.'),(278,'America was not discovered by Americans, shame on them.'),(279,'Talking is another disease of age.'),(280,'On a clear disk you can seek forever.'),(281,'I had a dislocated funny bone, <OUCH> but it\'s better now'),(282,'Detour: The roughest distance between two points.'),(283,'Those without heads do not need hats.'),(284,'How many times do you need to be tolled anyway? '),(285,'It\'s 11:56 pm. Do you know where your modem is?'),(286,'Those who can, Do. Those who can\'t, Criticize.'),(287,'You tell \'em Doctor, You\'ve got the patience.'),(288,'Raising your voice does not reinforce your argument.'),(289,'Dachshund: Half a dog high by a dog and a half long.'),(290,'Even a noseless dog can stink.'),(291,'An inch of dog is better than a mile of pedigree.'),(292,'You tell \'em Dough, You\'re well bred.'),(293,'When we can\'t dream the time for death has arrived.'),(294,'America is a dream to most of the world.'),(295,'Camels have wet dreams too.'),(296,'Only in your dreams are you really free.'),(297,'Time is the dressmaker specializing in alterations.'),(298,'What soberness conceals, drunkenness reveals.'),(299,'Users: Keep them dry and don\'t feed them after midnight.'),(300,'And God said: E = «mvý - Zeý/r ...and there *WAS* light!'),(301,'\"Earth was not earth before her sons appeared.\"'),(302,'Character is much easier kept than recovered.'),(303,'If you don\'t eat garlic, they\'ll never smell it on you.'),(304,'Cats, proof that eating and sleeping isn\'t all bad.'),(305,'Dan Quayle: the EDLIN of Vice-Presidents.'),(306,'Scrute the inscrutable;  eff the ineffable.'),(307,'Every hard-boiled egg is yellow inside.'),(308,'Apology is only egotism wrong side out.'),(309,'You tell \'em Electricity, You can shock \'em.'),(310,'Silence is more eloquent at times than words.'),(311,'Outside noisy, inside empty.'),(312,'Madre que consiente engorda una serpiente.'),(313,'This fellow\'s wise enough to play the fool.'),(314,'Adult: One old enough to know better.'),(315,'Excess is never enough.'),(316,'You tell \'em Envelope, You\'re well posted.'),(317,'The cautious seldom err.'),(318,'The child had every toy his father wanted.'),(319,'Communication.. without it, everyone\'s a mushroom.'),(320,'I can resist everything except temptation.'),(321,'I can resist everything/anything except temptation.'),(322,'PCs are OK except when you use them as bowling balls.'),(323,'Stupidity is no excuse for not thinking.'),(324,'Assassination is the extreme form of censorship.'),(325,'Poker Face: The face that launched a thousand chips.'),(326,'If you don\'t fall down, you\'re not trying!'),(327,'The ripest fruit falls first..'),(328,'\"Modesty died when false modesty was born.\" Mark Twain'),(329,'A great many family trees were started by grafting.'),(330,'The greatest of faults is to be conscious of none.'),(331,'Both of his feet are firmly planted in the air.'),(332,'Bachelor: Plays the field until the field comes in.'),(333,'His face was filled with broken commandments.'),(334,'Don\'t knock President Fillmore; he kept us out of VietNam'),(335,'Notice: All incoming fire has the right of way.'),(336,'To live now, first come to terms with your past.'),(337,'God made the first garden, Cain the first city.'),(338,'Ivo Andric - Yugoslavia\'s First Nobel Laureate.'),(339,'Learning makes people fit company for themselves.'),(340,'Where are those flashbacks they promised me?'),(341,'\"Don\'t worry, I\'m fluent in weirdo\"'),(342,'\"Oh could I fly, I\'d fly with thee ...\"'),(343,'Seek not to follow footsteps but what they sought.'),(344,'Words are not food, though sometimes we must eat them.'),(345,'Meetings are indispensable for not doing anything.'),(346,'SHIN - A device for finding furniture in the dark.'),(347,'Nickel: Once good for getting the wrong number with.'),(348,'Solution Series: Works for Windows, Publisher and Money'),(349,'A fool searches for a greater fool to find admiration.'),(350,'Are you waiting for your prey?'),(351,'What are friends for? - R.M. Nixon'),(352,'Wait!  That\'s the FORBIDDEN dance! '),(353,'You aren\'t here forever, Enjoy each day as a miracle.'),(354,'Life is lived forwards, but understood backwards.'),(355,'Swell-head: Nature\'s frantic effort to fill a vacuum.'),(356,'\"A book, a friend, a song, a glass, a chaste loving lass\"'),(357,'A pest: A friend in need.'),(358,'Young gorillas are friendly, but they soon learn.'),(359,'Mischief all comes from too much opening of the mouth.'),(360,'Genealogy. Tracing descent from someone who didn\'t.'),(361,'Cats are like furry dilettanti, or the reverse? '),(362,'You tell \'em Gambler, You\'ve got winning ways.'),(363,'Security is a game but the final goal is never reached.'),(364,'The thing most generally raised on land is taxes.'),(365,'Everyone is a genius at least once a year.'),(366,'Criminal: One who gets caught.'),(367,'Even a philosopher gets upset with a toothache.'),(368,'Monotheism is a gift from the gods!'),(369,'Angling: The name given to fishing by non-fishermen.'),(370,'Remember................. Wherever you go, there you are.'),(371,'Mosquito: Designed by God to make flies seem better.'),(372,'Those whom the gods love grow young.'),(373,'\"I thank whatever gods may be for my unconquerable soul.\"'),(374,'Against stupidity, the Gods themselves, contend in vain !'),(375,'A pitcher that goes to a well too often is broken first.'),(376,'As I was going up the stair, I met a man who wasn\'t there'),(377,'You tell \'em Goldfish, You\'ve been around the globe.'),(378,'Obesity: A surplus gone to waist.'),(379,'This is a good day to let down old friends who need help.'),(380,'Women take to good hearted men. Also from.'),(381,'Hero-worship: Idol gossip.'),(382,'No person should govern another without their permission.'),(383,'Misteaching: Telling one\'s grandmother how to suck eggs.'),(384,'Dancing with a grass widow brings on hay fever.'),(385,'Always do right: Gratify some and astonish the rest.'),(386,'Epitaph on a gravestone: Cheerio, see you soon.'),(387,'Many foxes grow gray, but few grow good.'),(388,'\"Life has a great deal up its sleeve.\" '),(389,'Greed is good, greed works.'),(390,'Make two grins grow where there was only a grouch before.'),(391,'Today I have grown taller from walking with the trees.'),(392,'I wish Adam had died with all his ribs in his body.'),(393,'If youth only had a chance or old age any brains.'),(394,'Well begun is half done.'),(395,'A big enough hammer fixes anything'),(396,'Use your enemy\'s hand to catch a snake.'),(397,'Politics: The glad hand and the marble heart.'),(398,'Many kiss the hand that they wish cut off.'),(399,'Money can\'t buy happiness, but allows a choice of misery.'),(400,'Freedom is a hard-bought thing - A gift no man can give.'),(401,'A miser is hard to live with, but makes a fine ancestor. '),(402,'A miser is hard to live with, but makes a fine ancestor. '),(403,'Old birds are hard to pluck.'),(404,'That\'s right, try hard to be good at the game of life.'),(405,'You tell \'em Hard-Boiled Egg, You\'re hard to beat.'),(406,'Back Up My Hard Drive? I Can\'t Find The Reverse Switch! '),(407,'Carelessness does more harm than a want of knowledge.'),(408,'A KGB keyboard has no <ESC> key!'),(409,'Even the lion has to protect himself against flies.'),(410,'The Caldecott Tunnel has less traffic than that vagina.'),(411,'Friend: Anyone who has the same enemies you have.'),(412,'How much memory have you got?  One brain, one memory.'),(413,'Some settling may have occurred in shipping. '),(414,'Thousands of journeys have a start but no end.'),(415,'Drop your carrier...We have you surrounded! '),(416,'Sir Lancelot, you have chain mail in Knight\'s Conf'),(417,'Only the rich have distant relatives.'),(418,'Teaching: Appearing to have known your subject forever.'),(419,'Do well, you hear it never. Do ill, hear it forever.'),(420,'\"Shake off your heavy trance! And leap into a dance.\"'),(421,'A little truth helps the lie go down.'),(422,'What we have here is a failure to communicate.'),(423,'So crowded in here, I must go outside to change my mind!'),(424,'If I were here more often, I wouldn\'t be gone so much.'),(425,'Evil is a hill.  We stand on ours, speak about others.'),(426,'To a dog his owner is Napoleon; hence their popularity.'),(427,'It\'s only a hobby ... only a hobby ... only a.'),(428,'Fiction: It can\'t hold a scandal to biography.'),(429,'Charity begins at home, and mostly ends where it begins.'),(430,'Fishing rod: a hook at one end, a fool at the other.'),(431,'You tell \'em Horse, You carry a tale.'),(432,'If wishes were horses, beggars would ride.'),(433,'Tact is knowing how far to go in going too far.'),(434,'To be a human without passion is to be dead.'),(435,'You tell \'em Hunter, I\'m game.'),(436,'The truth doesn\'t hurt unless it ought to.'),(437,'Fear not, for I have given you authority '),(438,'To the Caliph I am dirt, but to dirt, I am Caliph.'),(439,'\"Frankly my dear, I don\'t give a download!\" -Rhett Sysop'),(440,'If I die, I forgive you, if I recover, we shall see.'),(441,'Not now ... I have to go mow the laundry.'),(442,'As long as I live, I shall be, myself, no other, just me.'),(443,'Trust me, would I lie to you..... TWICE?'),(444,'To whom should I go to for some self-help?'),(445,'Shut up, or I\'ll nail your other foot to the floor.'),(446,'\"I\'m so bored, I\'m starting to miss my husband.\"'),(447,'I think that I\'m the friendliest guy in my zipcode.'),(448,'--T-A+G-L-I+N-E--+M-E-A+S-U-R+I-N-G+--G-A+U-G-E--.'),(449,'It works better if you plug it in *AND THEN* turn it on.'),(450,'Youngsters remember anything if it happened or not.'),(451,'It works better if you plug it in where it should be.'),(452,'Is it progress if a cannibal uses a knife and fork?'),(453,'The greater the ignorance the greater the dogmatism.'),(454,'Power is an illusion; only stupidity is real.'),(455,'Planned parenthood --- the impossible dream.'),(456,'We all live in a yellow subroutine.'),(457,'One who is in peril thinks with their legs.'),(458,'Blessings never come in pairs; misfortunes never alone.'),(459,'It is hereditary in my family to have no children.'),(460,'What is learned in youth is understood in age.'),(461,'ROM wasn\'t built in a day.'),(462,'He who falls in love with himself will have no rivals.'),(463,'Don\'t hate yourself in the morning - sleep till noon.'),(464,'Do not sleep in a eucalyptus tree tonight.'),(465,'There\'s no skeletons in my closet! '),(466,'A jerk present in a group indicates a jerk in charge.'),(467,'When uncertain, or in doubt, run in circles and scream.'),(468,'\"A Robin redbreast in a cage puts all heaven in a rage.\"'),(469,'Instinct is intelligence incapable of self-consciousness.'),(470,'Corruption. The most infallible symptom of liberty.'),(471,'Human Being: An ingenious assembly of portable plumbing.'),(472,'Tact is the intelligence of the heart.'),(473,'Worry is the interest paid on trouble in advance.'),(474,'All rivers run into the sea, yet the sea is not full.'),(475,'Travel important today;  IRS men arrive tomorrow.'),(476,'A learned fool is more foolish than an ignorant fool.'),(477,'At 19, everything is possible; tomorrow looks friendly.'),(478,'The greatest fault is to be conscious of none.'),(479,'When all else is lost, the future still remains.'),(480,'Living on earth is better than loafing around Hades.'),(481,'The worst hatred is that of relatives.'),(482,'One person\'s <grin> is another\'s <groan>.'),(483,'To tolerate everything is to teach nothing.'),(484,'The greatest cunning is to have none at all.'),(485,'Talking of bulls is not like being in the bull ring.'),(486,'The shortest answer is doing.'),(487,'A good memory is one trained to forget the trivial.'),(488,'The only certainty is that nothing is certain.'),(489,'Hi.  My name is Rover, I\'ll paint your car yellow free.'),(490,'A belly button is for salt when you eat celery in bed.'),(491,'Society like air, is necessary but not complete for life.'),(492,'The best armor is to keep out of range.'),(493,'Too often justice is incidental to law and order.'),(494,'Not to know is bad, but not to wish to know is worse.'),(495,'The best doctor is the one you run for and can\'t find.'),(496,'Non-fiction often is more unrealistic than fiction.'),(497,'The trodden path is the safest.'),(498,'Rebellion to tyrants is obedience to God.'),(499,'An accommodating vice is better than an obstinate virtue.'),(500,'Firmness in politics is called obstinacy in a donkey.'),(501,'Learning without thought is labor lost.'),(502,'A good scare is better than good advice.'),(503,'A leap year is never a good sheep year.'),(504,'A lawyer\'s opinion is worth nothing unless paid for.'),(505,'A hen tomorrow is more valuable than an egg today.'),(506,'A leap year is never a good sheep year.'),(507,'To do nothing is in every person\'s power.'),(508,'Unless to thought is added will, Apollo is an imbecile.'),(509,'Acting without thinking is like shooting without aiming.'),(510,'The living world is a continuum in each and every aspect.'),(511,'A verbal contract isn\'t worth the paper its written on'),(512,'If you find it, it is always in the last place you look.'),(513,'Love your enemies -- it makes them so damned mad.'),(514,'What good does it do an ass to be called a lion?'),(515,'I finally got it all together, but forgot where I put it'),(516,'Good printers do it without wrinkling the sheets.'),(517,'Money is round, it rolls away.'),(518,'Your sin, was it of omission, commission, or emission?'),(519,'I don\'t want it now, I want it RIGHT now!'),(520,'\"To live long, it is necessary to live slowly.\" Cicero'),(521,'Difficult? I wish it had been impossible!'),(522,'Yield to temptation; It may not pass your way again.'),(523,'Spaghetti code = job security.'),(524,'There is no joy in Mudville, mighty Casey has struck out.'),(525,'The Day of Judgement is approaching, or it is not.'),(526,'You tell \'em June, And don\'t July.'),(527,'My reality check just bounced.'),(528,'What the heck just happened here? '),(529,'Poker: It\'s darkest just before you\'ve drawn.'),(530,'Santa\'s elves are just a bunch of subordinate Clauses.'),(531,'Nobody can be just like me. Even I have trouble.'),(532,'Retreat hell! We\'re just fighting in another direction.'),(533,'Humpty Dumpty DOS - Just a shell of himself.'),(534,'Little boats should keep near the shore.'),(535,'DANGER! Human at keyboard! '),(536,'Drink! for you know not whence you came, nor why...'),(537,'To live well, know the difference between good and evil.'),(538,'Psychic Con: You know where and when '),(539,'Drink! for you know not why you go, nor where...'),(540,'A child prodigy knows not to bother with it.'),(541,'To climb a ladder, you begin with the first rung.'),(542,'Tact: Recalling a lady\'s birthday but forgetting her age.'),(543,'No wonder can last more than three days.'),(544,'Consistency is the last refuge of the unimaginative.'),(545,'\"Our first and last love is -- self-love.\" Bovee'),(546,'Happiness is no laughing matter.'),(547,'Custom is the law of fools.'),(548,'He is no lawyer who cannot take two sides. '),(549,'A hen who lays an egg cackles as if it was an asteroid.'),(550,'Philosophy: A route leading from nowhere to nothing.'),(551,'One lie always leads to another.'),(552,'I\'d give my left arm to be ambidextrous '),(553,'ATTENTION ..............Elvis has left the echo.'),(554,'\"And God said, Let there be light: and there was light.\"'),(555,'Beware when God lets loose a thinker on this planet.'),(556,'The tree of liberty is watered with the blood of tyrants.'),(557,'A beard signifies lice, not brains.'),(558,'Art is a lie that makes us realize the truth.'),(559,'\"What is a lie but the truth in masquerade.\" Byron'),(560,'All your future lies beneath your hat.'),(561,'A well-written life is as rare as a well-spent one.'),(562,'That concept looks like a chicken in a windstorm.'),(563,'Nobody can be like me. Even I have trouble doing so.'),(564,'Network management is like trying to herd cats... '),(565,'Things are more like they used to be than they are now.'),(566,'The earth is like a tiny grain of sand, only heavier'),(567,'The world is like a cactus except the pricks are inside.'),(568,'Stupidity has no limits, genius does.'),(569,'Let\'s have a little fun, let\'s do a pun.'),(570,'Better to understand little than misunderstand a lot.'),(571,'Think much, speak little, and write less.'),(572,'I\'d like to live like a poor person with lots of money.'),(573,'I want to live with a synonym girl... '),(574,'God dislikes money -- look who he gives it to.'),(575,'Civilized people need love for full sexual satisfaction.'),(576,'It\'s love, it\'s love that makes the world go round.'),(577,'Everyone as they loveth, some people kiss cows.'),(578,'Usually insane; in lucid moments merely stupid.'),(579,'It is bad luck to be superstitious.'),(580,'Diplomacy: The patriotic lying for one\'s country.'),(581,'We are as made by God us, and often a great deal worse. '),(582,'If you can\'t make it work, make a statistic of it.'),(583,'When you can\'t make it GOOD, make it BIG!'),(584,'Two writes don\'t make a novel!'),(585,'Silver and gold make even pigs seem clean.'),(586,'The wildest colts make the best steeds.'),(587,'Too many pages make a tome.'),(588,'Money: A mint makes it first and we try to make it last.'),(589,'Bigamist: One who makes the same mistake twice.'),(590,'Behind every successful man stands a surprised MIL.'),(591,'A truly wise man never plays leapfrog with a moose.'),(592,'\"A man\'s a man for a\' that!\" Burns'),(593,'A worthless wise man always charms the rabble.'),(594,'Man\'s inhumanity to man makes countless thousands mourn.'),(595,'You tell \'em Manicurist, I\'ve been trimmed.'),(596,'He has too many lice to feel an itch.'),(597,'\"Every woman should marry -- and no man.\" Disraeli'),(598,'\"All clowns are masked, all personae flow from choices\"'),(599,'Fame: Chiefly a matter of dying at the right moment.'),(600,'Does it really matter which cola I drink?'),(601,'What a day may bring, a day may take away.'),(602,'Scotty! Hurry! Beam me uragg^*úþœ NO CARRIER'),(603,'Do you like me for my brain, or my BAUD?'),(604,'Never agree with me, it shakes my self confidence.'),(605,'Where you\'ve been means much less than where you\'re going'),(606,'Blessed are the meek, for they make great scapegoats.'),(607,'\"Love -- a grave mental disease.\"  Plato'),(608,'\"Maytag\" is my middle name; I\'m an agitator.'),(609,'To keep your milk sweet, leave it in the cow.'),(610,'Theater: Holding a mirror up to a keyhole.'),(611,'To understand other\'s miseries, look at their pleasures.'),(612,'Man is the missing link between apes and human beings.'),(613,'Computers don\'t make mistakes, but foolish people do.'),(614,'Flattery is counterfeit money, circulated by vanity.'),(615,'You tell \'em Moon, You\'re out all night.'),(616,'\"Everything\'s got a moral if only you can find it.\" '),(617,'What fools these morals be!'),(618,'There\'s always 1 more SOB than you counted on'),(619,'The wise learn more from fools than fools from the wise.'),(620,'Cow\'s breath attracts mosquitoes and tsetse flies!'),(621,'He is the most sensible looking man talking nonsense.'),(622,'Leisure is the mother of philosophy.'),(623,'Russian Express Card motto: Don\'t leave home!'),(624,'You tell \'em Mountain, I\'m only a bluff.'),(625,'An elephant: A mouse built to government specifications.'),(626,'Honey in the mouth and knives in the heart.'),(627,'Civilization is a movement, it is a voyage not a harbor.'),(628,'You must know much before you know how little you know.'),(629,'You learn as much by writing as you do by reading.'),(630,'If you throw mud,  you will have dirty hands.'),(631,'None but a mule denies his family.'),(632,'Mister!  Here\'s your mule! '),(633,'Rap is to music as Etch-A-Sketch is to art. '),(634,'With foxes we must play the fox.'),(635,'Philosophic enjoyment = mutual  misunderstanding.'),(636,'I may have my faults, but being wrong ain\'t one of them.'),(637,'I haven\'t lost my mind..It must be backed-up somewhere.'),(638,'I use windows...on my car, on my house, but not on my...'),(639,'If you want my advice, pay me!'),(640,'hAS ANYONE SEEN MY cAPSLOCK KEY?'),(641,'Ethics is not necessarily the handmaiden of theology.'),(642,'Children have more need of models than of critics.'),(643,'What this country needs is a good five-cent nickel.'),(644,'Remember, the end never justifies the meanness.'),(645,'The sun is never the worse for shining on a dunghill.'),(646,'Women and elephants never forget real or supposed injury.'),(647,'\"Women and elephants never forget.\" Parker'),(648,'Just got a new car for my wife... Great trade... '),(649,'\"God said, \"Let Newton be!\" and all was light.\" Pope'),(650,'Homo sum; humani nihil a me alienum puto.'),(651,'An atheist has no invisible means of support.'),(652,'Beauty faded has no second spring.'),(653,'Judicial reform is no sport for the short-winded.'),(654,'Where there is no shame, there is no honor.'),(655,'En boca cerrada no entran moscas.'),(656,'Easy as pie, no fuss, no muss, no crust....'),(657,'Dios tarda pero no olvida.'),(658,'When we are not sure, we are alive.'),(659,'The past is not what it will be.'),(660,'The cinema is not a slice of life but a piece of cake.'),(661,'Closed eyes are not always sleeping. '),(662,'The future is not what it used to be.'),(663,'The consumer is not a moron, it is your spouse.'),(664,'Incorrigible punster -- do not incorrige!'),(665,'\"The law hath not been dead, though it hath slept.\" Shake'),(666,'The city is not a concrete jungle.  It is a human zoo.'),(667,'Education which is not modern, faces the organic fate.'),(668,'A crappie is not a sunfish found in a toilet.'),(669,'Honesty pays, but not enough for some.'),(670,'It\'s nobody\'s business, not even mine.'),(671,'A mother is not a dust rag.'),(672,'A bigot will not reason, a fool cannot, a slave dare not.'),(673,'Art is vision not expression.'),(674,'One crow will not peck out another crow\'s eyes.'),(675,'All things change, nothing is extinguished.'),(676,'A hole is nothing, but you can break your neck in it.'),(677,'Man: There is nothing more miserable and more arrogant.'),(678,'God gives the nuts, but He does not crack them.'),(679,'Penguin: The headwaiter of the Antarctic.'),(680,'This open hand of desire wants everything.'),(681,'Vulgarity: The conduct of others.'),(682,'Oh well, half of one, six dozen of the other. '),(683,'In the country of the blind, the one-eyed man is king.'),(684,'A living example of Artificial Intelligence.'),(685,'Graveyards are full of the indispensable.'),(686,'Shake, a man of note, wrote so many things to quote.'),(687,'.... a deluge of words and drop of sense.'),(688,'The only winner of the War of 1812 was Tchaikovsky.'),(689,'A male rite of passage: Writing your name in the snow.'),(690,'Often the test of courage is not to die but to live.'),(691,'The eventual supremacy of reason should be accepted.'),(692,'Admiration: Polite recognition of self-reflection.'),(693,'Psychoceramics: The study of crackpots.'),(694,'Solve the problems of the world: Vote anarchist.'),(695,'Rainforest: a scarcity of animals a plethora of tourists.'),(696,'Endocannibalism: The result of a really hungry cannibal.'),(697,'\"The first sigh of love is the last of wisdom.\" Bret'),(698,'Every valuable idea offends someone.'),(699,'Lean books are often larded with the fat of others\' works'),(700,'Blond Mating Call:  Oh, I\'m so drunk [giggle]!!'),(701,'If you\'re too old to learn, you were born so.'),(702,'Marriages are based on believing you won the arguments.'),(703,'Since life goes on - you might as well get on with it.'),(704,'The Devil falls on account of his gravity.'),(705,'If God lived on earth, people would break his windows.'),(706,'Knowledge rests not on truth alone, but upon error also.'),(707,'The truth is one thing that nobody will believe.'),(708,'All for one; one for all; ME above all!'),(709,'An ass thinks one thing, his rider another.'),(710,'\"Let\'s win this one and go home.\" - George A. Custer '),(711,'An agreeable person: One who agrees with you.'),(712,'Life is an onion and one peels it crying.'),(713,'Don\'t shoot! I\'m only the Casio player! '),(714,'Everybody is ignorant, only on different subjects.'),(715,'This tagline is only for the living.'),(716,'He is not only dull within, but causes dullness without.'),(717,'Many receive advice, only the wise profit by it.'),(718,'People are the only creatures with the power of laughter.'),(719,'America'),(720,'Marriage is the only adventure open to the cowardly.'),(721,'You tell \'em Operator, You\'ve got their number.'),(722,'Drama in her opinion is knowing how to fill a sweater.'),(723,'Radical: Anyone whose opinion differs from ours.'),(724,'Beware of the opinion of someone without any facts.'),(725,'Ever wonder why Oprah spelled backwards is Harpo?'),(726,'Lunatic asylum: where optimism most flourishes.'),(727,'Either he\'s dead or my watch has stopped.'),(728,'Adam\'s Rib: The original bone of contention.'),(729,'Shame is an ornament to the young, a disgrace to the old.'),(730,'The best way out of a difficulty is through it.'),(731,'When puns are outlawed only outlaws will have puns'),(732,'\"The only victory over love is flight.\"  Napoleon'),(733,'I can\'t be overdrawn, I still have checks! '),(734,'You tell \'em Owl, You\'re wise.'),(735,'We make our own fortunes and call them our fate.'),(736,'Quien da el pan impone la ley.'),(737,'Love truth but pardon error.'),(738,'Chance makes our parents, but choice makes our friends.'),(739,'Hello, I am part number ³ºÞº³º³Û³ºÝ³ºÝ³³.'),(740,'Confirmation of the past is often the greatest surprise.'),(741,'Tips: Wages we pay other people\'s hired help.'),(742,'Mountains culminate in peaks, and nations in people.'),(743,'All words are pegs on which to hang ideas.'),(744,'All words are pegs on which to hang ideas.'),(745,'Guns don\'t kill people, off-line readers do.'),(746,'Of all the people I have met, you are certainly one'),(747,'Whenever Possible, Put People On Hold '),(748,'Sinner: A stupid person who gets found out.'),(749,'Strength of mind: Person who can eat one salted peanut.'),(750,'No sense being pessimistic.  It wouldn\'t work anyway. '),(751,'You tell \'em Piano, You\'re upright and square.'),(752,'Hollywood is like Picasso\'s bathroom.'),(753,'\"Man is a piece of the universe made alive.\" Emerson'),(754,'Whoso diggeth a pit shall fall therein.'),(755,'Restaurant: An eating place that does not sell drugs.'),(756,'Art is either plagiarism or revolution.'),(757,'Originality is undetected plagiarism.'),(758,'You tell \'em playing cards, You know the joker.'),(759,'Reader not found, please notify tagline.'),(760,'It is double pleasure to deceive the deceiver.'),(761,'\"A pound of pluck is worth a ton of luck.\"  Garfield'),(762,'*NOW* is a point in time that is already gone.'),(763,'That was a pointing device? My cat thought it was dinner.'),(764,'Bedfellows make strange politicians.'),(765,'The purification of politics is an iridescent dream. '),(766,'Ambition destroys its possessor.'),(767,'Never underestimate the power of human stupidity.'),(768,'Keyboard not connected, press <F1> to continue.'),(769,'I do not pretend to know what the ignorant are sure of.'),(770,'A ounce of pretension = a pound of manure!'),(771,'You tell \'em Printer, I\'m not your type.'),(772,'As lacking in privacy as a goldfish.'),(773,'Morality is a private and costly luxury.'),(774,'College: Guarantee the quality of the product or return.'),(775,'Assumption #1: Dan Quayle is smarter than broccoli.'),(776,'Dime de lo que blasonas, y te dire de lo quwe careces.'),(777,'Fax me no questions, I\'ll Fax you no lies!'),(778,'\"Heaven has no rage like love to hatred turned.\" Congreve'),(779,'You tell \'em Railroad, It\'s not along my line.'),(780,'Sailors curse the rain that farmers prayed for in vain.'),(781,'f u cn rd ths, u cn gt a gd jb n cmptr prgmmng '),(782,'I used to read books.  Now I read .qwk files. '),(783,'Prejudice is the reason of fools. Voltaire.'),(784,'Praise: What you receive when you are no longer alive.'),(785,'We are all related...relatively speaking '),(786,'Computers can never replace human stupidity.'),(787,'Art does not reproduce the visible; it makes visible.'),(788,'Disease is the retribution of an outraged nature.'),(789,'Actions are usually right, but the reasons seldom are.'),(790,'To know the road ahead, ask those coming back.'),(791,'Doubt is the root of education, not faith.'),(792,'Once uttered, words run faster than the horses i bet on.'),(793,'Ostrich: He often runs so fast he leaves himself behind.'),(794,'Carasvemos, corazones no sabemos.'),(795,'Self-sacrifice: to sacrifice others without blushing.'),(796,'Art for art\'s sake is a philosophy of the well-fed.'),(797,'Nobody shoots at Santa Claus.'),(798,'Stulti timent fortunam sapientes ferunit.'),(799,'Being able to say NO is the root to reclaiming your life.'),(800,'If three people say you are an ass, put on a bridle.'),(801,'Today is the scene of the accident.'),(802,'Iron sharpens iron; scholar, the scholar.'),(803,'Art is I; Science is We.'),(804,'Sub omni lapide scorpio dormit.'),(805,'\"Beam me aboard, Scotty.\" \"Sure. Will a 2x10 do?\"'),(806,'Quien con perros se acuesta con pulgas se levanta.'),(807,'Put on your seatbelt. I\'m gonna try something new. '),(808,'All sentences that seem true should be questioned.'),(809,'A wise person sees as much as ought, not as much can.'),(810,'He is a self-made man, and worships his creator.'),(811,'\"Everyone lives by selling something.\" - R.L. Stevenson '),(812,'You tell \'em September Morn, No one has anything on you.'),(813,'How do I set my Laser Printer to \"Stun\"?'),(814,'Boot & ye shall see. Replace & all will be made clear.'),(815,'Let art alone. She\'s got enough guys sleeping with her.'),(816,'He is a sheep in sheep\'s clothing.'),(817,'You tell \'em Shoemaker, You know awl.'),(818,'You realize how short a month when you pay alimony.'),(819,'God gave burdens shoulders also.'),(820,'Si jeunesse savoit, si vieillesse pouvoit.'),(821,'Movement To Ban Silly Tag Lines; Send Donations to:'),(822,'You tell \'em Simon, I\'ll Legree.'),(823,'It is a sin peculiar to people to hate their victims.'),(824,'Angels can fly since they take themselves lightly.'),(825,'Money is the sinews of both love and war.'),(826,'Of all thirty-six alternatives, running away is best.'),(827,'If the family skeleton must remain, make it dance.'),(828,'There is a skeleton in every old house.'),(829,'Doctrine is the skin of truth set up and stuffed.'),(830,'Never trust a skinny cook. '),(831,'You tell \'em Skyscraper, You have more than one story.'),(832,'Nothing is so smiple that it can\'t get screwed up.'),(833,'Don\'t be a snob. Never lie when truth is more profitable.'),(834,'Old age isn\'t so bad when you consider the alternative.'),(835,'My mind ain\'t so open that anything can crawl right in. '),(836,'Subway: A place so crowded even men can\'t all get seats.'),(837,'Why are there so many gnarly limbs on my family tree? '),(838,'if you want someone to keep a secret, keep it yourself.'),(839,'Teamwork gives you someone else to blame.'),(840,'Nature, like people sometimes weeps for gladness.'),(841,'The deeper the sorrow, the less tongue hath it.'),(842,'It\'s a poor sort of memory that only works backwards.'),(843,'You may be Southern -- but you\'re no Comfort.'),(844,'Computers also eliminate spare time.'),(845,'She devotes her spare time to neglecting duties.'),(846,'Wit is the spice of conversation, not the food.'),(847,'Army food: The spoils of war.'),(848,'A word '),(849,'All wiyht.  Rho sritched mg kegtops awound?'),(850,'43% of all statistics are totally worthless !!!'),(851,'Isn\'t there a statute of limitations on stupidity?'),(852,'DANGER DANGER Computer store ahead...hide wallet.'),(853,'A true diplomat struts sitting down.'),(854,'I can\'t be stupid, I completed third grade!'),(855,'I may be stupid, but that still makes me smarter than you'),(856,'Ignorance is temporary; stupid is forever.'),(857,'The race from stupidity is to the driven, not the swift.'),(858,'Malice is merely stupidity raised to a higher power.'),(859,'You tell \'em Submarine, I can\'t seaplane.'),(860,'Earth: A solid substance, much desired by the seasick.'),(861,'There is no such thing as bravery; only degrees of fear.'),(862,'Your sweet words suck the morning dew off the honeysuckle'),(863,'I would have suffered a lot more if understood.'),(864,'\"And when fate summons monarchs must obey;\"'),(865,'A day without sunshine is like night.'),(866,'Error reading FAT Table...Try Skinny one ? (Y/N)'),(867,'Let\'s see your tagline hunting permit, sir.'),(868,'To steal this tagline press <CTL> <ALT> <DEL> now. '),(869,'Not a real tagline, but an incredible soy substitute.'),(870,'The UARTs won\'t take this speed, Captain.'),(871,'Stick to your talent and the cows will be well tended.'),(872,'You tell \'em teacher, You\'ve got the class.'),(873,'Dew is the tears which the stars weep.'),(874,'\"No, I didn\'t.\" - Teddy Kennedy'),(875,'Only I can tell where my own shoe pinches me.'),(876,'Any fool can tell the truth, it takes sense to lie well.'),(877,'A person never tells you anything until contradicted.'),(878,'Enough research will tend to support your theory. '),(879,'\"A lie is terminological inexactitude.\" Churchill'),(880,'Sysoping: More fun than being beaten with a sledgehammer.'),(881,'Actions speak louder than words -- but not so often.'),(882,'I\'m more humble than you are!'),(883,'Prevention is better than cure.'),(884,'Blood is thicker than water, and much more tastier.'),(885,'Software, hardware, -- is that you talking Sigmund?'),(886,'SYSOP: The guy that is laughing at your typing!'),(887,'Been there, done that, got the T-shirt.'),(888,'Committee: A body that keeps minutes and wastes hours.'),(889,'A thief believes that everybody steals.'),(890,'Only the hand that erases can write the true thing.'),(891,'Prune: A plum that has seen better days.'),(892,'Dan Quayle thinks that Cheerios are donut seeds.'),(893,'It\'s a tragedy that no man become like their mothers.'),(894,'Echo: Only thing that cheats some out of the last word.'),(895,'You can\'t do that. It\'s been digitally cursed. '),(896,'Th-th-th-that\'s all, folks!'),(897,'\"Logic is logic. That\'s all I say.\" Holmes'),(898,'Hot air sometimes thaws out a cold reception.'),(899,'Indiscriminate study bloats the mind.'),(900,'Hmmm, When is the last time the Tooth Fairy visited you?'),(901,'Every person is the architect of their own fortune.'),(902,'The young know the rules, the old know the exceptions.'),(903,'(A)bort, (R)etry, (S)mack the @#$&*~ thing!'),(904,'It runs in the blood like wooden legs.'),(905,'Feather by feather the goose is plucked.'),(906,'A bachelor enjoys the chase but doesn\'t eat the game.'),(907,'The fish in the sea are as good as the fish removed.'),(908,'A bird in the hand\'s better than one overhead.'),(909,'Ancient custom has the force of law.'),(910,'Bastard toadflax: not the result nearsighted horny toads.'),(911,'A pain in the butt may be a friend in need.'),(912,'A bird in the bush can\'t make a mess in your hand.'),(913,'The pen is the tongue of the mind.'),(914,'\"Look at all the Indians!\" - General Custer'),(915,'Good taste is the flower of good sense.'),(916,'Applied emotion is the key to success with happiness.'),(917,'A book is the only immortality.'),(918,'So dumb: Chewing the stick, not sucking the lollipop.'),(919,'The hole and the patch should be commensurate.'),(920,'A teetotaller makes the worst drunkard.'),(921,'TV advertising is the rattling inside a swill bucket.'),(922,'We have met the enemy, and he\'s all yours!'),(923,'The proof is the phylogeny of plant-animal interactions.'),(924,'\"Forgotten men at the bottom of the economic pyramid\" FDR'),(925,'If I save the whales, where do I keep them?'),(926,'The footprint of the owner is the best manure.'),(927,'A statesman shears the sheep; the politician skins them.'),(928,'\"Fountains mingle with the river, rivers with the ocean.\"'),(929,'Live so that the family parrot can live afterwards.'),(930,'Celery farmers play the stalk market.'),(931,'To live in the hearts we leave behind, is not to die.'),(932,'Parents: One of the hardships of a minor\'s life.'),(933,'I only wrote the thing, I don\'t have to understand it!'),(934,'Biography: One of the terrors of death.'),(935,'Hospitals: Places where the run down wind up.'),(936,'\"The welfare of the people is the chief law.\"  Cicero'),(937,'Yeah, but what\'s the speed of DARK? '),(938,'A vote on the tally sheet is worth two in the box.'),(939,'No one test the depth of a river with both feet.'),(940,'I have seen the future and it is now the past.'),(941,'Forget RTFM - Call The Author At Home! (@ 23:45)'),(942,'Every person constructs their own bed of nails.'),(943,'Where law ends, there tyranny begins.'),(944,'Where\'s there\'s smoke, there\'s toast. '),(945,'I think ... therefore I am overqualified.'),(946,'Mistrust first impulses, they are always good.'),(947,'Blessed our young they will inherit our national debt.'),(948,'\"How wise are they that are but fools in love!\" Cooke'),(949,'Unbelief in one thing springs = blind belief in another.'),(950,'Postscript: The only thing of interest in some letters.'),(951,'there are three things that come next, uh four... '),(952,'Nobody notices when things go right, I\'m always noticed. '),(953,'Nobody notices when things go right, and I\'m noticed. '),(954,'Facts are stubborn things.'),(955,'No one can think clearly with clenched fists.'),(956,'The characters in this message are recyclable'),(957,'That was then, this is now.'),(958,'May we kiss those we please, and please those we kiss.'),(959,'He says a thousand pleasant things, but never \"Adieu.\"'),(960,'Hollywood: A trip through a sewer in a glass bottom boat.'),(961,'Put off procrastinating till a later time.'),(962,'Yawn: The only time some men get to open their mouths.'),(963,'Mr. Bullfrog says: Time is fun when you\'re having flies. '),(964,'The longer the title, the less important the job.'),(965,'It is easier to catch flies with honey than with vinegar.'),(966,'It is easy to propose impossible remedies.'),(967,'If worst comes to worst, you *CAN* turn most things off.'),(968,'It is easier to admire hard work if you don\'t do it.'),(969,'Modem.... A deterrent to phone solicitors. '),(970,'It is meaningless to speak of domesticating a child.'),(971,'It is dangerous to confuse children with angels.'),(972,'Uh, yeah...I MEANT to do that!'),(973,'A noisy exhaust to some almost amounts to a mating call.'),(974,'Every person gets to heaven in their own way.'),(975,'When you go to the market, use your eyes, not your ears.'),(976,'Women\'s clothes: Go to extremes, seldom to extremities.'),(977,'It is hard to believe that even his friends like him.'),(978,'Never lean forward to push an invisible object.'),(979,'Luxury: Costs $7.69 to make and $20.00 to market.'),(980,'Everyone IS entitled to my opinion.'),(981,'Dogmatism: Puppyism come to its full growth.'),(982,'Cleanliness is next to \"clean-limbed,\" in the dictionary.'),(983,'Everyone is entitled to my opinion.'),(984,'What garlic is to salad, insanity is to art.'),(985,'Press any key to continue or any other key to quit.'),(986,'It is better to know useless things than to know nothing.'),(987,'If people listened to themselves, they would shut up.'),(988,'It is better to know nothing than to know what ain\'t so.'),(989,'The only way to get rid of a temptation is to yield to it'),(990,'The only way to judge the future is by knowing the past.'),(991,'We hired you to baby sit. You cooked and ate them BOTH? '),(992,'\'Tis the season to be punny......'),(993,'If you want to hide your face, walk naked.'),(994,'Flattery: Cologne water, to smell but not swallow.'),(995,'Are we supposed to be having fun yet? '),(996,'Here I run, to steal the secret of the sun.'),(997,'Is it OK to yell \'MOVIE\' in a crowded firehouse? '),(998,'A person slow to anger is better than the mighty.'),(999,'Maybe it\'s right to be nervous now... '),(1000,'If you try to be too sharp, you will cut yourself.'),(1001,'The best way to save face is to keep the lower part shut.'),(1002,'It takes two to make a bargain.'),(1003,'What grammar is to speech, logic is to reason.'),(1004,'Stupid: Being unable to find your own butt in the dark.'),(1005,'Here today, dawn tomorrow.'),(1006,'Bubble, Bubble..Am I too late to jump the ship ??'),(1007,'You cannot be too careful in the choice of your enemies.'),(1008,'\"Men know life too early, women too late\" Wilde'),(1009,'He who talks too much commits a sin.'),(1010,'Seeing is believing, Touching is convincing..'),(1011,'The first step towards philosophy is incredulity.'),(1012,'Life is a tragedy for feelers and a comedy for thinkers.'),(1013,'If it isn\'t true, at least it is a happy invention.'),(1014,'Legal Marijuana needs true glaucoma patients. '),(1015,'The course of true anything never does run smooth.'),(1016,'What is the True meaning of DOS?'),(1017,'Without love and trust all you can be in life is alone.'),(1018,'In God we trust; all others must pay cash.'),(1019,'Autobiography: Unrivalled telling truth about others.'),(1020,'America is a tune.  It must be sung together.'),(1021,'You can\'t step twice in the same river.'),(1022,'When choosing between two evils, select the newer one.'),(1023,'Hypocrisy is the type of homage vice pays to virtue.'),(1024,'This tagline is umop apisdn.'),(1025,'She has been under more drunken sailors than a head.'),(1026,'With consequences,  the unexpected always predominate.'),(1027,'Sculptor: A poor unfortunate who makes faces and busts.'),(1028,'Always remember you\'re unique - just like everyone else.'),(1029,'Reality.Sys corrupted -- Reboot Universe (Y/N)?'),(1030,'Anybody can win, unless there is a second entry.'),(1031,'Talk is cheap, until you hire a lawyer.'),(1032,'It\'s not over until the FAT table sings'),(1033,'We NEVER grow up, we just get older, and older, and ...'),(1034,'Hey! Don\'t pick up that pho×¯»’á‰½ÃÒç  NO CARRIER '),(1035,'Contraceptives: to be used on all conceivable occasions.'),(1036,'*  <|-)  User is Chinese.'),(1037,'*  :-*   User just ate something sour.'),(1038,'What results from using spot remover on your dog Spot?'),(1039,'A father is usually a banker provided by nature.'),(1040,'This tagline no verb.'),(1041,'Se non e vero, e molto ben trovato.'),(1042,'Seriousness is the very next step to being dull.'),(1043,'Two of perfect virtue: one dead, the other yet unborn.'),(1044,'No wanna work.  Wanna bang on keyboard. '),(1045,'Do I even WANT ancestors? Some found I wish I could lose.'),(1046,'The fewer our wants, the more we resemble the gods.'),(1047,'The bird of war is not the eagle but the stork.'),(1048,'Oh, pardon me, was that *your* culture? So sorry.'),(1049,'Oh that?  It was playing leap frog with a unicorn.'),(1050,'\"To love her was a liberal education.\" Steele'),(1051,'WARNING... drinking tap water may kill your thirst!'),(1052,'Everyone meets their Waterloo at last.'),(1053,'Hug: A roundabout way of expressing affection.'),(1054,'Hick: Looks both ways before crossing a one-way street.'),(1055,'The world, as we know it, has come to an end!!'),(1056,'Madam, an error, we did a hysterectomy on your husband'),(1057,'We\'re lost, but we\'re making good time.'),(1058,'Illustrate your Sermons! Wear \"far side\" ties. '),(1059,'My Hard Disk went on a diet and lost it\'s FAT'),(1060,'What if there were no hypothetical situations?'),(1061,'To excel at what you do, you must love doing it.'),(1062,'Used Car: Not what it is jacked up to be.'),(1063,'MacIntosh:Computer with training wheels you can\'t remove.'),(1064,'How time flies, when you are in a heap of problems..'),(1065,'Wear old clothes when you fight for truth and liberty.'),(1066,'Public opinion flourishes where there are no ideas.'),(1067,'Wedding: A funeral where you smell your own flowers.'),(1068,'A conclusion is where you got tired of thinking.'),(1069,'You always swat where he\'s not, or if he is aha! a spot.'),(1070,'Resort: A place where the tired grow more tired.'),(1071,'Laundry: A place where clothes are mangled.'),(1072,'Gnaw the bone which has fallen to thy lot.'),(1073,'Think hard now!  Which one is Shinola?'),(1074,'Never trust anyone who speaks well of everyone.'),(1075,'Yes-men: Fellows who hang around the man nobody noes.'),(1076,'Creditor: A man who has a longer memory than a debtor.'),(1077,'\"They also serve who only stand and wait.\"'),(1078,'Hobo: A person who builds palaces and lives in shacks.'),(1079,'They are slaves who fear to speak for the fallen & weak.'),(1080,'Bore: A person who talks when you wish him to listen.'),(1081,'Golfer: A person who hits and tells.'),(1082,'Honest Politician: One who stays bought.'),(1083,'No generalization is wholly true, not even this one.'),(1084,'Religious people are wicked, how would they be without?'),(1085,'Cities, like cats, will reveal themselves at night.'),(1086,'Faint hearts never win in love nor sell life insurance.'),(1087,'From listening comes wisdom, from speaking, repentance.'),(1088,'Many possess the wisdom of many and only the wit of one.'),(1089,'Adversity makes people wise but not rich.'),(1090,'Some are weather-wise, some are otherwise.'),(1091,'How dieth the wise man? As the fool.'),(1092,'\"But, if ye wish her gratefu\' prayer, Gie her a haggis!\"'),(1093,'Think carefully before wishing, it might just come true.'),(1094,'I\'m a hero with coward\'s legs.'),(1095,'(A)bort (R)etry (I)nfluence with large hammer.'),(1096,'Repartee: An insult with a suit and tie on.'),(1097,'The only argument with the wind is to put on a coat.'),(1098,'Tabloid: A newspaper with a permanent crime wave.'),(1099,'Kibitzer: A person with an interferiority complex.'),(1100,'\"You spotted snakes with double tongue... be not seen.\"'),(1101,'Memories keep the wolf of insignificance from the door.'),(1102,'\"Man, born of woman is of few days; full of trouble.\" Job'),(1103,'Think and you won\'t sink.'),(1104,'Please! Take my word for it.'),(1105,'Software independent: Won\'t work with ANY software.'),(1106,'Minds, like parachutes, work only when open.'),(1107,'Shareware it only works if you pay.'),(1108,'It\'s better the world wonder why you *AREN\'T* President.'),(1109,'What is the world to a man when his wife is a widow?'),(1110,'\"Men die and worms eat them - but not for love\"  Shake'),(1111,'Some cures are worse than the disease.'),(1112,'If it\'s not worth doing, it\'s not worth doing well.'),(1113,'A hangover  the wrath of grapes '),(1114,'Biography should be written by an acute enemy.'),(1115,'Abandon all hope, ye who press ÄÄÙ here '),(1116,'All hope abandon, ye who enter messages here.'),(1117,'Dollars cannot buy yesterday.'),(1118,'Do well and you will have no need for ancestors.'),(1119,'The hard disk you save may be your own.'),(1120,'At all ages you are certain you still have another year.'),(1121,'A gun gives you the body, not the bird.'),(1122,'I be nibble, you be quick, he jumped over the Joystick.'),(1123,'If at first you don\'t succeed; Blame everyone else'),(1124,'If at first you don\'t succeed, skydiving is not for you.'),(1125,'If at first you doubt, doubt again.'),(1126,'It\'s what inside you, not the outside that counts.'),(1127,'If at first you don\'t succeed: Blame everyone else.'),(1128,'Simple rule: If you don\'t treat me right, shame on you.'),(1129,'If at first you doubt, doubt again, and again ...'),(1130,'Youthful figure: What you get when asking a woman\'s age.'),(1131,'Hotel: A place you give good dollars for bad quarters.'),(1132,'If I were you, who\'d be me?'),(1133,'No matter where you go, there you are.'),(1134,'It is when you take for yourself that you truly take.'),(1135,'Synonym: A word you use when you can\'t spell the other.'),(1136,'Spring makes everything young again except humans.'),(1137,'You can close your eyes to reality but not to memories.'),(1138,'A penny for your thoughts; $20 to act it out.'),(1139,'Without my ignorance, your knowledge would be meaningless'),(1140,'You can\'t eat your friends and have them too.'),(1141,'Be nice on your way up, you\'ll meet on the way down.'),(1142,'Middle age: When your age starts to show at your middle.'),(1143,'Before advising \"Be yourself!\" reassess his character.');
/*!40000 ALTER TABLE `remarks_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_tempbelow5`
--

DROP TABLE IF EXISTS `remarks_tempbelow5`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_tempbelow5` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_tempbelow5`
--

LOCK TABLES `remarks_tempbelow5` WRITE;
/*!40000 ALTER TABLE `remarks_tempbelow5` DISABLE KEYS */;
INSERT INTO `remarks_tempbelow5` VALUES (1,'It\'s a bit nippy out, mate.'),(2,'This is nothing. Try talking to Eliza, SHE is cold!'),(3,'And school isn\'t even canceled. Bah!'),(4,'The brocolli is dying! Bwahahahaha!'),(5,'Take me down to the Paradise City where it isn\'t so cold!'),(6,'You could freeze an Altoid in this weather.'),(7,'Watch out for vicious snow men!'),(8,'You know, if you get cold enough, your snot will freeze solid in your nose.'),(9,'Warm enough for to go swiming.'),(10,'Snowball weather.'),(11,'Anyone up for a game of cricket?'),(12,'I think I just saw a snowman making a run for it.'),(13,'My, isn\'t that nippy.'),(14,'It is cold.'),(15,'OK, I will make a lame remark.');
/*!40000 ALTER TABLE `remarks_tempbelow5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks_tempbelowmin5`
--

DROP TABLE IF EXISTS `remarks_tempbelowmin5`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `remarks_tempbelowmin5` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `remarks_tempbelowmin5`
--

LOCK TABLES `remarks_tempbelowmin5` WRITE;
/*!40000 ALTER TABLE `remarks_tempbelowmin5` DISABLE KEYS */;
INSERT INTO `remarks_tempbelowmin5` VALUES (1,'Bur.'),(2,'Ya, you betcha. Oop nort, it was real cold, ya darn tootin!'),(3,'In Antarctica, the penguins are breeding.'),(4,'If you were a chocolate egg outside right now, you would be dark chocolate.'),(5,'I dare you to go outside with no shirt on and stay there for two minutes!'),(6,'I think hell has frozen over now, better watch out for a demon ice skating contest.'),(7,'Santa only lives in the North Pole because it was too cold here!'),(8,'It\'s not co co co cold!'),(9,'Put another log on the fire.'),(10,'Warm up the hot chocolate.'),(11,'Go hammer a nail with a bananna.'),(12,'Anyone for a game of tennis?'),(13,'That is cold enough to freeze a rock.'),(14,'Any colder and I am moving to Florida.'),(15,'Thats nothing.  When I was an diode, it was 0 degress kelvin.'),(16,'That is so cold, Zack might even stop sking!');
/*!40000 ALTER TABLE `remarks_tempbelowmin5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_aibo`
--

DROP TABLE IF EXISTS `settings_aibo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_aibo` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_aibo`
--

LOCK TABLES `settings_aibo` WRITE;
/*!40000 ALTER TABLE `settings_aibo` DISABLE KEYS */;
INSERT INTO `settings_aibo` VALUES (0,0,60,0),(1,0,600,0);
/*!40000 ALTER TABLE `settings_aibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_asterisk`
--

DROP TABLE IF EXISTS `settings_asterisk`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_asterisk` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `polltime` int(11) default NULL,
  `user` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_asterisk`
--

LOCK TABLES `settings_asterisk` WRITE;
/*!40000 ALTER TABLE `settings_asterisk` DISABLE KEYS */;
INSERT INTO `settings_asterisk` VALUES (0,0,'localhost',5038,300,'asterisk','secret',0),(1,0,'192.168.100.2',5038,300,'asterisk','password',0);
/*!40000 ALTER TABLE `settings_asterisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_astro`
--

DROP TABLE IF EXISTS `settings_astro`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_astro` (
  `id` int(11) NOT NULL,
  `latitude` varchar(32) default NULL,
  `longitude` varchar(32) default NULL,
  `timezone` int(11) default NULL,
  `twilight` varchar(32) default NULL,
  `seasons` varchar(32) default NULL,
  `seasonstarts` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  `temperature` varchar(6) default NULL,
  `currency` varchar(6) default NULL,
  `dst` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_astro`
--

LOCK TABLES `settings_astro` WRITE;
/*!40000 ALTER TABLE `settings_astro` DISABLE KEYS */;
INSERT INTO `settings_astro` VALUES (0,'52.8167','-5.7667',2,'civil','winter,spring,summer,fall','20,20,21,22',0,'°C','€',1),(1,'52.8167','-5.7667',1,'civil','winter,spring,summer,fall','20,20,21,22',0,'°C','€',0);
/*!40000 ALTER TABLE `settings_astro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_bluetooth`
--

DROP TABLE IF EXISTS `settings_bluetooth`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_bluetooth` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `device` varchar(32) default NULL,
  `threshold` int(11) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_bluetooth`
--

LOCK TABLES `settings_bluetooth` WRITE;
/*!40000 ALTER TABLE `settings_bluetooth` DISABLE KEYS */;
INSERT INTO `settings_bluetooth` VALUES (0,0,'hci0',30,120,0),(1,0,'hci0',-20,300,0);
/*!40000 ALTER TABLE `settings_bluetooth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_bwiredmap`
--

DROP TABLE IF EXISTS `settings_bwiredmap`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_bwiredmap` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `website` varchar(64) default NULL,
  `websitepicurl` varchar(64) default NULL,
  `title` varchar(64) default NULL,
  `city` varchar(64) default NULL,
  `user` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `screenname` varchar(64) default NULL,
  `gpslat` varchar(64) default NULL,
  `gpslong` varchar(64) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_bwiredmap`
--

LOCK TABLES `settings_bwiredmap` WRITE;
/*!40000 ALTER TABLE `settings_bwiredmap` DISABLE KEYS */;
INSERT INTO `settings_bwiredmap` VALUES (0,0,'http://www.domotiga.nl',NULL,'DomotiGa User','Sliedrecht','LoginUser','LoginPassword',NULL,NULL,NULL,0),(1,0,'www.domotiga.nl',NULL,'DomotiGa User','Earth','LoginUser','LoginPassword','ScreenName','51.8','4.75',0);
/*!40000 ALTER TABLE `settings_bwiredmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_ctx35`
--

DROP TABLE IF EXISTS `settings_ctx35`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_ctx35` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` varchar(32) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_ctx35`
--

LOCK TABLES `settings_ctx35` WRITE;
/*!40000 ALTER TABLE `settings_ctx35` DISABLE KEYS */;
INSERT INTO `settings_ctx35` VALUES (0,0,'/dev/ttyUSB0','19200',500,0),(1,0,'/dev/ttyUSB0','19200',500,0);
/*!40000 ALTER TABLE `settings_ctx35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_domotica`
--

DROP TABLE IF EXISTS `settings_domotica`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_domotica` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_domotica`
--

LOCK TABLES `settings_domotica` WRITE;
/*!40000 ALTER TABLE `settings_domotica` DISABLE KEYS */;
INSERT INTO `settings_domotica` VALUES (0,0,'/dev/ttyUSB6',0),(1,0,'/dev/ttyUSB4',0);
/*!40000 ALTER TABLE `settings_domotica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_dsc`
--

DROP TABLE IF EXISTS `settings_dsc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_dsc` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_dsc`
--

LOCK TABLES `settings_dsc` WRITE;
/*!40000 ALTER TABLE `settings_dsc` DISABLE KEYS */;
INSERT INTO `settings_dsc` VALUES (0,0,'/dev/ttyS0',9600,0),(1,0,'/dev/ttyS0',9600,0);
/*!40000 ALTER TABLE `settings_dsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_eib`
--

DROP TABLE IF EXISTS `settings_eib`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_eib` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_eib`
--

LOCK TABLES `settings_eib` WRITE;
/*!40000 ALTER TABLE `settings_eib` DISABLE KEYS */;
INSERT INTO `settings_eib` VALUES (0,0,'localhost',6720,1),(1,0,'localhost',6720,-1);
/*!40000 ALTER TABLE `settings_eib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_email`
--

DROP TABLE IF EXISTS `settings_email`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_email` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `fromaddress` varchar(32) default NULL,
  `toaddress` varchar(32) default NULL,
  `smtpserver` varchar(32) default NULL,
  `smtpport` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_email`
--

LOCK TABLES `settings_email` WRITE;
/*!40000 ALTER TABLE `settings_email` DISABLE KEYS */;
INSERT INTO `settings_email` VALUES (0,0,'domotiga@somedomain.com','admin@somedomain.com','localhost',25,0),(1,0,'domotiga@yourdomain.nl','ron@yourdomain.nl','smtp.yourprovider.nl',25,0);
/*!40000 ALTER TABLE `settings_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_fritzbox`
--

DROP TABLE IF EXISTS `settings_fritzbox`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_fritzbox` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_fritzbox`
--

LOCK TABLES `settings_fritzbox` WRITE;
/*!40000 ALTER TABLE `settings_fritzbox` DISABLE KEYS */;
INSERT INTO `settings_fritzbox` VALUES (0,0,'192.168.100.1',1),(1,0,'192.168.100.1',-1);
/*!40000 ALTER TABLE `settings_fritzbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_gmail`
--

DROP TABLE IF EXISTS `settings_gmail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_gmail` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `user` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_gmail`
--

LOCK TABLES `settings_gmail` WRITE;
/*!40000 ALTER TABLE `settings_gmail` DISABLE KEYS */;
INSERT INTO `settings_gmail` VALUES (0,0,'gmailuser','password',120,1),(1,0,'user@gmail.com','test',60,0);
/*!40000 ALTER TABLE `settings_gmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_gps`
--

DROP TABLE IF EXISTS `settings_gps`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_gps` (
  `id` int(11) NOT NULL,
  `polltime` int(11) default NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_gps`
--

LOCK TABLES `settings_gps` WRITE;
/*!40000 ALTER TABLE `settings_gps` DISABLE KEYS */;
INSERT INTO `settings_gps` VALUES (0,300,0,'/dev/ttyUSB7',38400,0),(1,300,0,'/dev/ttyUSB7',38400,0);
/*!40000 ALTER TABLE `settings_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_hddtemp`
--

DROP TABLE IF EXISTS `settings_hddtemp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_hddtemp` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `polltime` int(11) default NULL,
  `threshold` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_hddtemp`
--

LOCK TABLES `settings_hddtemp` WRITE;
/*!40000 ALTER TABLE `settings_hddtemp` DISABLE KEYS */;
INSERT INTO `settings_hddtemp` VALUES (0,0,'localhost',7634,600,60,0),(1,0,'localhost',7634,300,40,0);
/*!40000 ALTER TABLE `settings_hddtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_heyu`
--

DROP TABLE IF EXISTS `settings_heyu`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_heyu` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `command` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_heyu`
--

LOCK TABLES `settings_heyu` WRITE;
/*!40000 ALTER TABLE `settings_heyu` DISABLE KEYS */;
INSERT INTO `settings_heyu` VALUES (0,0,'/usr/local/bin/heyu',0),(1,0,'/usr/local/bin/heyu',0);
/*!40000 ALTER TABLE `settings_heyu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_irman`
--

DROP TABLE IF EXISTS `settings_irman`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_irman` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_irman`
--

LOCK TABLES `settings_irman` WRITE;
/*!40000 ALTER TABLE `settings_irman` DISABLE KEYS */;
INSERT INTO `settings_irman` VALUES (0,0,'/dev/ttyUSB2',0),(1,0,'/dev/ttyUSB2',0);
/*!40000 ALTER TABLE `settings_irman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_main`
--

DROP TABLE IF EXISTS `settings_main`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_main` (
  `id` int(11) NOT NULL,
  `sleeptime` int(11) default NULL,
  `flushtime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  `logbuffer` int(11) default NULL,
  `authentication` tinyint(1) default NULL,
  `startpage` varchar(32) default NULL,
  `debugevents` tinyint(1) default NULL,
  `debugdevices` tinyint(1) default NULL,
  `debugenergy` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_main`
--

LOCK TABLES `settings_main` WRITE;
/*!40000 ALTER TABLE `settings_main` DISABLE KEYS */;
INSERT INTO `settings_main` VALUES (0,250,5000,0,15000,1,'Home',NULL,NULL,NULL),(1,250,10000,0,15000,0,'FHome',0,0,0);
/*!40000 ALTER TABLE `settings_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_mpd`
--

DROP TABLE IF EXISTS `settings_mpd`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_mpd` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `autoconnect` tinyint(1) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_mpd`
--

LOCK TABLES `settings_mpd` WRITE;
/*!40000 ALTER TABLE `settings_mpd` DISABLE KEYS */;
INSERT INTO `settings_mpd` VALUES (0,0,'192.168.100.2',6600,0,0),(1,0,'192.168.100.2',6600,-1,0);
/*!40000 ALTER TABLE `settings_mpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_onewire`
--

DROP TABLE IF EXISTS `settings_onewire`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_onewire` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_onewire`
--

LOCK TABLES `settings_onewire` WRITE;
/*!40000 ALTER TABLE `settings_onewire` DISABLE KEYS */;
INSERT INTO `settings_onewire` VALUES (0,0,'/dev/ttyUSB4',9600,0),(1,0,'/dev/ttyUSB4',9600,0);
/*!40000 ALTER TABLE `settings_onewire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_plugwise`
--

DROP TABLE IF EXISTS `settings_plugwise`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_plugwise` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_plugwise`
--

LOCK TABLES `settings_plugwise` WRITE;
/*!40000 ALTER TABLE `settings_plugwise` DISABLE KEYS */;
INSERT INTO `settings_plugwise` VALUES (0,1,'/dev/ttyUSB7',300,1),(1,0,'/dev/ttyUSB7',300,-1);
/*!40000 ALTER TABLE `settings_plugwise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_rfxcomrx`
--

DROP TABLE IF EXISTS `settings_rfxcomrx`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_rfxcomrx` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `type` varchar(32) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  `relayenabled` tinyint(1) default NULL,
  `relayport` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_rfxcomrx`
--

LOCK TABLES `settings_rfxcomrx` WRITE;
/*!40000 ALTER TABLE `settings_rfxcomrx` DISABLE KEYS */;
INSERT INTO `settings_rfxcomrx` VALUES (0,0,'192.168.100.7',10001,'tcp','/dev/ttyUSB3','4800',0,0,10001),(1,0,'192.168.100.7',10001,'serial','/dev/ttyUSB0','4800',0,-1,10001);
/*!40000 ALTER TABLE `settings_rfxcomrx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_rfxcomtx`
--

DROP TABLE IF EXISTS `settings_rfxcomtx`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_rfxcomtx` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `type` varchar(32) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  `relayenabled` tinyint(1) NOT NULL,
  `handshake` tinyint(1) default NULL,
  `relayport` int(11) default NULL,
  PRIMARY KEY  (`id`,`relayenabled`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_rfxcomtx`
--

LOCK TABLES `settings_rfxcomtx` WRITE;
/*!40000 ALTER TABLE `settings_rfxcomtx` DISABLE KEYS */;
INSERT INTO `settings_rfxcomtx` VALUES (0,0,'192.168.100.7',10002,'serial','/dev/ttyUSB7','4800',0,0,NULL,10002),(1,0,'192.168.100.7',10003,'serial','/dev/ttyUSB6','4800',0,0,-1,10002);
/*!40000 ALTER TABLE `settings_rfxcomtx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_rrdtool`
--

DROP TABLE IF EXISTS `settings_rrdtool`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_rrdtool` (
  `id` int(11) NOT NULL,
  `polltime` int(11) default NULL,
  `enabled` tinyint(1) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_rrdtool`
--

LOCK TABLES `settings_rrdtool` WRITE;
/*!40000 ALTER TABLE `settings_rrdtool` DISABLE KEYS */;
INSERT INTO `settings_rrdtool` VALUES (0,600,0,0),(1,300,0,0);
/*!40000 ALTER TABLE `settings_rrdtool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_serverstats`
--

DROP TABLE IF EXISTS `settings_serverstats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_serverstats` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `enabled` tinyint(1) default NULL,
  `servername` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_serverstats`
--

LOCK TABLES `settings_serverstats` WRITE;
/*!40000 ALTER TABLE `settings_serverstats` DISABLE KEYS */;
INSERT INTO `settings_serverstats` VALUES (1,-1,'DomotiGa Server',0),(2,1,'cyberjunky.nl',1);
/*!40000 ALTER TABLE `settings_serverstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_sms`
--

DROP TABLE IF EXISTS `settings_sms`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_sms` (
  `id` int(11) NOT NULL,
  `polltime` int(11) default NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` varchar(32) default NULL,
  `pin` varchar(32) default NULL,
  `servicecentre` varchar(32) default NULL,
  `contact` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_sms`
--

LOCK TABLES `settings_sms` WRITE;
/*!40000 ALTER TABLE `settings_sms` DISABLE KEYS */;
INSERT INTO `settings_sms` VALUES (0,120,0,'/dev/ttyUSB6','38400','3363','+31653131313','+31612341234',0),(1,120,0,'/dev/ttyUSB0','38400','3363','+31613131314','+31612341234',-1);
/*!40000 ALTER TABLE `settings_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_sound`
--

DROP TABLE IF EXISTS `settings_sound`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_sound` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `debug` tinyint(1) default NULL,
  `volume` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_sound`
--

LOCK TABLES `settings_sound` WRITE;
/*!40000 ALTER TABLE `settings_sound` DISABLE KEYS */;
INSERT INTO `settings_sound` VALUES (0,0,0,100),(1,0,0,0);
/*!40000 ALTER TABLE `settings_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_tvguide`
--

DROP TABLE IF EXISTS `settings_tvguide`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_tvguide` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `grabcmd` varchar(128) default NULL,
  `grabconf` varchar(128) default NULL,
  `grabdays` int(11) default NULL,
  `usecache` tinyint(1) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_tvguide`
--

LOCK TABLES `settings_tvguide` WRITE;
/*!40000 ALTER TABLE `settings_tvguide` DISABLE KEYS */;
INSERT INTO `settings_tvguide` VALUES (0,0,'tv_grab_nl_C','tv_grab_nl_C.conf',7,1,0),(1,0,'tv_grab_nl_C','tv_grab_nl_C.conf',3,-1,0);
/*!40000 ALTER TABLE `settings_tvguide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_twitter`
--

DROP TABLE IF EXISTS `settings_twitter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_twitter` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `username` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_twitter`
--

LOCK TABLES `settings_twitter` WRITE;
/*!40000 ALTER TABLE `settings_twitter` DISABLE KEYS */;
INSERT INTO `settings_twitter` VALUES (0,0,'twitteraccount','password',0),(1,0,'twitteraccount','password',0);
/*!40000 ALTER TABLE `settings_twitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_ups`
--

DROP TABLE IF EXISTS `settings_ups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_ups` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `polltime` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_ups`
--

LOCK TABLES `settings_ups` WRITE;
/*!40000 ALTER TABLE `settings_ups` DISABLE KEYS */;
INSERT INTO `settings_ups` VALUES (0,0,'localhost',3493,3000,0),(1,0,'192.168.100.2',3493,300,0);
/*!40000 ALTER TABLE `settings_ups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_videoserver`
--

DROP TABLE IF EXISTS `settings_videoserver`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_videoserver` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `tcphost` varchar(32) default NULL,
  `tcpport` int(11) default NULL,
  `user` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `channel1` varchar(32) default NULL,
  `channel2` varchar(32) default NULL,
  `channel3` varchar(32) default NULL,
  `channel4` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_videoserver`
--

LOCK TABLES `settings_videoserver` WRITE;
/*!40000 ALTER TABLE `settings_videoserver` DISABLE KEYS */;
INSERT INTO `settings_videoserver` VALUES (0,0,'192.168.100.8',NULL,NULL,NULL,'Camera Backyard','Camera Frontdoor',NULL,NULL,0),(1,0,'192.168.100.8',80,'','','Backyard','Frontdoor','','',0);
/*!40000 ALTER TABLE `settings_videoserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_visca`
--

DROP TABLE IF EXISTS `settings_visca`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_visca` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `baudrate` varchar(32) default NULL,
  `cameraaddress` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  `device` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_visca`
--

LOCK TABLES `settings_visca` WRITE;
/*!40000 ALTER TABLE `settings_visca` DISABLE KEYS */;
INSERT INTO `settings_visca` VALUES (0,0,'/dev/ttyUSB5','9600',1,0,'/dev/video0'),(1,0,'/dev/ttyUSB5','9600',1,0,'/dev/video0');
/*!40000 ALTER TABLE `settings_visca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_voicetext`
--

DROP TABLE IF EXISTS `settings_voicetext`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_voicetext` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `engine` varchar(32) default NULL,
  `prefixcmd` varchar(32) default NULL,
  `voicesmale` varchar(32) default NULL,
  `voicesfemale` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_voicetext`
--

LOCK TABLES `settings_voicetext` WRITE;
/*!40000 ALTER TABLE `settings_voicetext` DISABLE KEYS */;
INSERT INTO `settings_voicetext` VALUES (0,0,'cepstral','padsp','david','allison,diane',0),(1,0,'cepstral','/usr/bin/padsp','','linda,emily',0);
/*!40000 ALTER TABLE `settings_voicetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_webserver`
--

DROP TABLE IF EXISTS `settings_webserver`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_webserver` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `docroot` varchar(32) default NULL,
  `httpport` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_webserver`
--

LOCK TABLES `settings_webserver` WRITE;
/*!40000 ALTER TABLE `settings_webserver` DISABLE KEYS */;
INSERT INTO `settings_webserver` VALUES (0,1,'~/domotiga/www',8001,0),(1,-1,'~/domotiga/www',8001,0);
/*!40000 ALTER TABLE `settings_webserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_weeder`
--

DROP TABLE IF EXISTS `settings_weeder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_weeder` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `serialport` varchar(32) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_weeder`
--

LOCK TABLES `settings_weeder` WRITE;
/*!40000 ALTER TABLE `settings_weeder` DISABLE KEYS */;
INSERT INTO `settings_weeder` VALUES (0,0,'/dev/ttyUSB1',1),(1,0,'/dev/ttyUSB1',0);
/*!40000 ALTER TABLE `settings_weeder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_xmlrpc`
--

DROP TABLE IF EXISTS `settings_xmlrpc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings_xmlrpc` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) default NULL,
  `httpport` int(11) default NULL,
  `maxconn` int(11) default NULL,
  `debug` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings_xmlrpc`
--

LOCK TABLES `settings_xmlrpc` WRITE;
/*!40000 ALTER TABLE `settings_xmlrpc` DISABLE KEYS */;
INSERT INTO `settings_xmlrpc` VALUES (0,0,9000,3,1),(1,0,9000,10,-1);
/*!40000 ALTER TABLE `settings_xmlrpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `stock` (
  `ean` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `quantity` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `stockid` bigint(20) unsigned NOT NULL auto_increment,
  `target` int(11) NOT NULL default '0',
  `price` double NOT NULL default '0',
  PRIMARY KEY  (`stockid`),
  UNIQUE KEY `eanid` (`ean`),
  KEY `nameid` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (8710400190868,'Biologische Pindakaas AH',7,0,1,0,0),(8710400136880,'Bloemenhoning AH',1,0,2,0,0),(8710496503986,'De Ruijter Chocoladehagel Puur',1,0,3,0,0),(8722700208945,'Knorr Chicken Tonight Sate',2,0,4,3,6.9),(8713300042435,'Dubbel Frisss Appel en Perzik',4,0,5,0,0),(8717644239766,'OMO Waspoeder Wit',1,0,6,1,0),(8715700016504,'Heinz Tomaten Ketchup',1,0,7,0,0),(8710406212885,'Belegen Geraspte Kaas Super de Boer',1,0,8,12,1.2),(8710243922381,'Maaslander Plakjes Komijn Kaas',1,0,9,0,0),(8711000194645,'Senseo Mocca Gourmet Pads 36 stuks',2,0,10,6,3.05),(5410041360608,'Liga Milk Break Melk - Aardbei',1,0,11,2,3.95),(8710408108056,'Penne Pasta 500gr C1000',1,0,13,1,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trafficfeeds`
--

DROP TABLE IF EXISTS `trafficfeeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `trafficfeeds` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `url` varchar(64) default NULL,
  `description` text,
  `enabled` tinyint(1) default NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `trafficfeeds`
--

LOCK TABLES `trafficfeeds` WRITE;
/*!40000 ALTER TABLE `trafficfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `trafficfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggers`
--

DROP TABLE IF EXISTS `triggers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `triggers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `type` int(11) default NULL,
  `description` text,
  `param1` varchar(32) default NULL,
  `param2` varchar(32) default NULL,
  `param3` varchar(32) default NULL,
  `param4` varchar(32) default NULL,
  `param5` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `triggers`
--

LOCK TABLES `triggers` WRITE;
/*!40000 ALTER TABLE `triggers` DISABLE KEYS */;
INSERT INTO `triggers` VALUES (1,'Time is SunSet',1,'Test description.','17','15','','',''),(2,'Time is SunRise',1,NULL,'08','00','','',''),(3,'Bathroom is Humid',3,NULL,'9','Value2','>','60',''),(4,'Movement in Kitchen is Detected',3,NULL,'17','Value','=','Motion',''),(5,'No Movement in Kitchen is Detected',3,NULL,'17','Value','=','No Motion',''),(6,'Bathroom Humidity is Normal',3,NULL,'9','Value3','=','Normal',''),(7,'Movement Outside Detected',3,NULL,'38','Value','=','Motion',''),(8,'Outside No Movement Detected',3,NULL,'38','Value','=','No Motion',''),(9,'Test Time trigger',1,NULL,'03','01','','','');
/*!40000 ALTER TABLE `triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggertypes`
--

DROP TABLE IF EXISTS `triggertypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `triggertypes` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `tab` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `triggertypes`
--

LOCK TABLES `triggertypes` WRITE;
/*!40000 ALTER TABLE `triggertypes` DISABLE KEYS */;
INSERT INTO `triggertypes` VALUES (1,'Time Now',0),(2,'Variable',1),(3,'Device Status',2);
/*!40000 ALTER TABLE `triggertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvchannels`
--

DROP TABLE IF EXISTS `tvchannels`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tvchannels` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `callsign` varchar(32) default NULL,
  `icon` varchar(64) default NULL,
  `channum` int(11) default NULL,
  `description` text,
  `enabled` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tvchannels`
--

LOCK TABLES `tvchannels` WRITE;
/*!40000 ALTER TABLE `tvchannels` DISABLE KEYS */;
/*!40000 ALTER TABLE `tvchannels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(32) default NULL,
  `password` varchar(64) default NULL,
  `fullname` varchar(32) default NULL,
  `admin` tinyint(1) default NULL,
  `comments` text,
  `lastlogin` varchar(32) default NULL,
  `emailaddress` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','Admin',1,'','2008-11-06 14:12:13','admin@mydomain.com'),(2,'user','user','User',0,'','2008-11-06 14:10:21','user@mydomain.com'),(3,'rakker','','AIBO Rakker',0,'','','aibo@mydomain.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `version` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `db` varchar(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'0.1.166');
INSERT INTO `version` VALUES (2,'0.1.167');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_usage`
--

DROP TABLE IF EXISTS `water_usage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `water_usage` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `counter` bigint(20) default NULL,
  `stamp` datetime default NULL,
  `consumption` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `water_usage`
--

LOCK TABLES `water_usage` WRITE;
/*!40000 ALTER TABLE `water_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weatherfeeds`
--

DROP TABLE IF EXISTS `weatherfeeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `weatherfeeds` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(32) default NULL,
  `url` varchar(64) default NULL,
  `description` text,
  `enabled` tinyint(1) default NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `weatherfeeds`
--

LOCK TABLES `weatherfeeds` WRITE;
/*!40000 ALTER TABLE `weatherfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `weatherfeeds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-07-11 11:09:38
